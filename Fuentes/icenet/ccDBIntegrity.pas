unit ccDBIntegrity;
{¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯}
{ NUMUN FrameWork Version 4.0                             }
{                                                         }
{ Copyright (c) 2006 by juan.carlos@cilleruelo.es         }
{                                                         }
{ Components : TccDBIntegrity                             }
{_________________________________________________________}
interface

uses Classes, Graphics, WinTypes, IBX.IBTable;

type
  TccOperationKind = (okEdit, okAppend, okDelete, okCancel, okPost, okRefresh);

  TccDBIntegrity = class
  private
    //FPrimaryKey     :string; // Clave Primaria de la tabla Base.
    //FTableNames     :TStrings;
    //FMasterFields   :TStrings;
    //FForeignFields  :TStrings;
    Table          :TIBTable; {<=}
    OriginalValues  :TStrings;
    function EqualListValues(prmOriginals, prmActuals :TStrings):Boolean;
  protected
    //function  ccGetTableNames    :TStrings;
    //function  ccGetMasterFields  :TStrings;
    //function  ccGetForeignFields :TStrings;

    //procedure ccSetTableNames   (Value :TStrings);
    //procedure ccSetMasterFields (Value :TStrings);
    //procedure ccSetForeignFields(Value :TStrings);
    procedure GetCurrentValues(prmFields :String; prmValues :TStrings);
  public
    PrimaryKey     :string; //
    TableNames     :TStrings;
    MasterFields   :TStrings;
    ForeignFields  :TStrings;
    constructor Create(prmTable :TIBTable);
    destructor  Destroy;                    override;
    function  Exists:Boolean;
    function  Preserve:Boolean;                        overload;
    function  Preserve(var TableName :string):Boolean; overload;
    function  Operation(Operation: TccOperationKind):Boolean;                         overload;
    function  Operation(Operation: TccOperationKind; var TextMessage :string):Boolean; overload;
    procedure GetExistsQueryText(prmQueryLines :TStrings; prmFields, prmTableName :string);
    procedure GetPrimaryKeyFields(prmLines :TStrings);
    function  ccExits(prmQuery:TStrings; prmFields:string; prmValues :TStrings):Boolean;
    procedure AddReference(prmMasterFields, prmTableName, prmForeignFields :string);
  published
    //property PrimaryKey    :string         read FPrimaryKey        write FPrimaryKey;
    //property TableNames    :TStrings       read ccGetTableNames    write ccSetTableNames    stored True;
    //property MasterFields  :TStrings       read ccGetMasterFields  write ccSetMasterFields  stored True;
    //property ForeignFields :TStrings       read ccGetForeignFields write ccSetForeignFields stored True;
    //property Table         :TIBTable       read FTable             write FTable;   {<=}
  end;

implementation
uses SysUtils, db, Forms, Dialogs, IBX.IBQuery;

procedure RaiseException(Error: string);
begin
   raise EInvalidOperation.Create(Error);
end;

procedure StrBreakApart(s :string; Delimeter :string; Parts :TStrings);
var CurrentPos :Integer;
    CurrentStr :string;
begin
   Parts.Clear;
   CurrentStr := s;
   repeat CurrentPos := AnsiPos(Delimeter, CurrentStr);
          if (CurrentPos > 0) then begin
             Parts.Add(Copy(CurrentStr, 1, CurrentPos -1));
             CurrentStr := Copy(CurrentStr, CurrentPos +1, Length(CurrentStr)-(CurrentPos));
          end
          else Parts.Add(CurrentStr);
   until CurrentPos = 0;
end;

procedure TccDBIntegrity.AddReference(prmMasterFields, prmTableName, prmForeignFields :string);
begin
   TableNames.Add   (prmTableName);
   MasterFields.Add (prmMasterFields);
   ForeignFields.Add(prmForeignFields);
end;

constructor TccDBIntegrity.Create(prmTable :TIBTable);
begin
   Table := prmTable;
   TableNames    := TStringList.Create;  { Must be a TStringList type }
   MasterFields  := TStringList.Create;
   ForeignFields := TStringList.Create;
   OriginalValues := TStringList.Create;
end;

destructor TccDBIntegrity.Destroy;
begin
   OriginalValues.Free;
   ForeignFields.Free;
   MasterFields.Free;
   TableNames.Free;

   inherited Destroy;
end;

//function TccDBIntegrity.ccGetTableNames :TStrings;
//begin
//   Result := FTableNames;
//end;

//procedure TccDBIntegrity.ccSetTableNames(Value :TStrings);
//begin
//   FTableNames.Assign(Value);
//end;

//function TccDBIntegrity.ccGetMasterFields :TStrings;
//begin
//   Result := FMasterFields;
//end;

//procedure TccDBIntegrity.ccSetMasterFields(Value :TStrings);
//begin
//   FMasterFields.Assign(Value);
//end;

//function TccDBIntegrity.ccGetForeignFields :TStrings;
//begin
//   Result := FForeignFields;
//end;

//procedure TccDBIntegrity.ccSetForeignFields(Value :TStrings);
//begin
//   FForeignFields.Assign(Value);
//end;

function ccStrGetToken(prmStr: string; var prmPos:Integer):string;
const SUBS_CHAR = 'ñ';
var tmpStr       :string;
    i            :Integer;
    BeginToken   :Integer;
    EndToken     :Integer;
begin
   Result := '';
   { Change the single ' by ; }
   for i := 1 to Length(prmStr) do begin
       if (prmStr[i] = '''') then prmStr[i] := SUBS_CHAR;
   end;
   { Put marks between delimiters }
   tmpStr := Copy(prmStr,prmPos,Length(prmStr));
   BeginToken := Pos(SUBS_CHAR,tmpStr)+1;
   EndToken   := Pos(SUBS_CHAR,Copy(tmpStr,BeginToken,Length(tmpStr)))-1;
   if BeginToken <= 0              then Exit;
   if Begintoken >  Length(prmStr) then Exit;
   { Return the Display Name of the Field }
   prmPos := prmPos + EndToken + 1;
   Result := Copy(tmpStr, BeginToken, EndToken);
end;


procedure HandleEDatabaseError(Error :EDatabaseError);
var APos :Integer;
begin
   if Pos('must have a value',Error.Message) > 0 then begin
      APos := 1;
      MessageBox(Application.Handle,PChar(Format('Falta el campo obligatorio "%s"',[ccStrGetToken(Error.Message, APos)])),
                 PChar(Application.Title),mb_Ok or mb_IconStop or mb_DefButton1);
   end else
   if Pos('Cannot perform this operation on an empty dataset', Error.Message) > 0 then begin
      MessageBox(Application.Handle,PChar('La tabla ya está vacia'),
                 PChar(Application.Title),mb_Ok or mb_IconInformation or mb_DefButton1);
   end
   else MessageBox(Application.Handle,PChar('Error no contemplado : '+Error.Message),
                   PChar(Application.Title), mb_OK or mb_IconInformation or mb_DefButton1);
end;

function TccDBIntegrity.Operation(Operation: TccOperationKind):Boolean;
var TableName :string;
begin
   Result := False;
   try
      case Operation of
         okEdit   :begin
            if Table.IsEmpty then begin
               MessageDlg('La tabla está vacía.', mtInformation, [mbOK], 1);
               Result := False;
               Exit;
            end;
            GetCurrentValues(PrimaryKey, OriginalValues);
            Table.Edit;
            Result := True;
         end;
         okAppend :begin
            OriginalValues.Clear;
            Table.Append;
            Result := True;
         end;
         okDelete :begin
            if Table.IsEmpty then begin
              MessageDlg('La tabla está vacía.', mtInformation, [mbOK], 1);
              Result := False;
              Exit;
            end;
            if Preserve(TableName) then begin
               MessageDlg('No es posible. Existe al menos una referencia en '+TableName, mtInformation, [mbOK], 1);
               Result := False;
               Exit;
            end;
            Table.Delete;
            Table.ApplyUpdates;
            Result := True;
         end;
         okCancel :begin
            Table.Cancel;
            Table.ApplyUpdates;
            Result := True;
         end;
         okPost   :begin
            Table.Post;
            Table.ApplyUpdates;
            Result := True;
         end;
         okRefresh:begin
            Table.Refresh;
            Result := True;
         end;
      end;
   except MessageDlg('TccDBIntegrity Error', mtInformation, [mbOK], 0);
   end;
end;

function TccDBIntegrity.Operation(Operation :TccOperationKind; var TextMessage :string):Boolean;
var TableName :string;
begin
   Result := False;
   try
      case Operation of
         okEdit   :begin
            if Table.IsEmpty then begin
               TextMessage := 'La tabla está vacía.';
               Result := False;
               Exit;
            end;
            GetCurrentValues(PrimaryKey, OriginalValues);
            Table.Edit;
            Result := True;
         end;
         okAppend :begin
            OriginalValues.Clear;
            Table.Append;
            Result := True;
         end;
         okDelete :begin
            if Table.IsEmpty then begin
              TextMessage := 'La tabla está vacía.';
              Result := False;
              Exit;
            end;
            if Preserve(TableName) then begin
               TextMessage := 'No es posible. Existe al menos una referencia en '+TableName;
               Result := False;
               Exit;
            end;
            Table.Delete;
            Table.ApplyUpdates;
            Result := True;
         end;
         okCancel :begin
            Table.Cancel;
            Table.ApplyUpdates;
            Result := True;
         end;
         okPost   :begin
            Table.Post;
            Table.ApplyUpdates;
            Result := True;
         end;
         okRefresh:begin
            Table.Refresh;
            Result := True;
         end;
      end;
   except TextMessage := 'TccDBIntegrity Error';
   end;
end;

procedure TccDBIntegrity.GetExistsQueryText(prmQueryLines :TStrings; prmFields, prmTableName :string);
var i     :Integer;
    Parts :TStrings;
begin
   Parts := TStringList.Create;
   try StrBreakApart(prmFields, ';', Parts);
       prmQueryLines.Clear;
       prmQueryLines.Add('SELECT COUNT(*) FROM '+prmTableName);
       for i := 0  to Parts.Count -1 do begin
           if i = 0 then prmQueryLines.Add('WHERE '+Parts[i]+' = :prmPARAM'+FormatFloat('00',i))
                    else prmQueryLines.Add('AND   '+Parts[i]+' = :prmPARAM'+FormatFloat('00',i));
       end;
   finally Parts.Free;
   end;
end;

procedure TccDBIntegrity.GetPrimaryKeyFields(prmLines :TStrings);
var Parts :TStrings;
begin
   Parts := TStringList.Create;
   try StrBreakApart(PrimaryKey, ';', Parts);
       prmLines.Assign(Parts);
   finally Parts.Free;
   end;
end;

function TccDBIntegrity.EqualListValues(prmOriginals, prmActuals :TStrings):Boolean;
var i :Integer;
begin
   { Si alguno de los Valores Originales es igual a '', quiere decir que es un valor NULL                    }
   { Normalmente los campos pertenecen a la clave primaria, la cual no permite valores NULOS                 }
   { Si encontramos un algún valor NULL en los valores originales quiere decir que no hay valores originales }
   { Devolvemos False indicando que no son iguales que se puede realizar la grabación                        }
   Result := True;
   if prmOriginals.Count = prmActuals.Count then begin
      for i := 0 to prmOriginals.Count -1 do begin
          if (Trim(prmOriginals[i]) = '') or (UpperCase(prmOriginals[i]) <> UpperCase(prmActuals[i])) then begin
             Result := False;
             Break;
          end;
      end;
   end
   else Result := False;
end;


function TccDBIntegrity.ccExits(prmQuery:TStrings; prmFields:string; prmValues :TStrings):Boolean;
var i            :Integer;
    Q            :TIBQuery;
    CurrentField :TField;
    locFields    :TStrings;
begin
   locFields := TStringList.Create;
   StrBreakApart(prmFields, ';', locFields);

   Q := TIBQuery.Create(nil);
   Q.Database := Table.Database;
   try Q.SQL.Assign(prmQuery);
       Q.Prepared := True;
       for i := 0 to locFields.Count -1 do begin
          CurrentField := Table.FindField(locFields[i]);
          if CurrentField <> nil then begin
             case CurrentField.DataType of
                ftFixedChar:Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := prmValues[i];               // Character or string field of fixed long
                ftString   :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := prmValues[i];               // Character or string field
                ftSmallint :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := StrToInt(prmValues[i]);     // 16-bit integer field
                ftInteger  :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := StrToInt(prmValues[i]);     // 32-bit integer field
                ftWord     :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := StrToInt(prmValues[i]);     // 16-bit unsigned integer field
                ftBoolean  :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := prmValues[i] = 'S';         // Boolean field
                ftFloat    :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := StrToFloat(prmValues[i]);   // Floating-point numeric field
                ftCurrency :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := StrToFloat(prmValues[i]);   // Money field
                ftBCD      :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := StrToFloat(prmValues[i]);   // Binary-Coded Decimal field
                ftDate     :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := StrToDate(prmValues[i]);    // Date field
                ftTime     :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := StrToTime(prmValues[i]);    // Time field
                ftDateTime :Q.ParamByName('prmPARAM'+FormatFloat('00',i)).Value := StrToDateTime(prmValues[i]);// Date and time field
                ftUnknown :RaiseException('TccDBIntegrity.ccExists: Field DataType = ftUnknown'); // Unknown or undetermined
                ftBlob       ,                                                           // Binary Large OBject field
                ftMemo       ,                                                           // Text memo field
                ftBytes      ,                                                           // Fixed number of bytes (binary storage)
                ftVarBytes   ,                                                           // Variable number of bytes (binary storage)
                ftAutoInc    ,                                                           // Auto-incrementing 32-bit integer counter field
                ftGraphic    ,                                                           // Bitmap field
                ftFmtMemo    ,                                                           // Formatted text memo field
                ftParadoxOle ,                                                           // Paradox OLE field
                ftDBaseOle   ,                                                           // dBASE OLE field
                ftTypedBinary,                                                           // Typed binary field
                ftCursor     ,                                                           // Output cursor from an Oracle stored procedure (TParam only)
                ftWideString ,                                                           // Wide string field
                ftLargeInt   ,                                                           // Large integer field
                ftADT        ,                                                           // Abstract Data Type field
                ftArray      ,                                                           // Array field
                ftReference  ,                                                           // REF field
                ftDataSet                                                                // DataSet field
                             :RaiseException('TccDBIntegrity.ccExists: Field DataType not Valid for a Primary Key');
                else RaiseException('TccDBIntegrity.ccExists: Field DataType Unknown but not fkUnknown');
             end;
          end;
       end;

       try Q.Open;
           Result := Q.Fields.Fields[0].AsInteger > 0;
       except Result := False;
       end;
   finally Q.Free;
   end;
end;


function TccDBIntegrity.Exists:Boolean;
{¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯}
{ Funcionalidades de esta procedure                                                                              }
{ 1ª : Saber si el valor correspondiente existe ya en la Primary Key de la tabla sobre la que estamos actuando.  }
{      Un usuario da de alta un nuevo código. Con este procedimiento le podemos decir si el código que está      }
{      introduciendo existe ya en la tabla, al pulsar Aceptar.( o al salir del campo código).                    }
{      OriginalValues contendrá todos los campos vacios.                                                         }
{                                                                                                                }
{ 2ª : Un usuario Edita un elemento, pero al salir del campo código puede haber tecleado un código, que no siendo}
{      el mismo que tenía, ya exista en la tabla. Esta es la principal utilidad del parámetro prmOriginales. Si  }
{      el valor de esta cadena es igual al valor de prmValues significa que no ha cambiado el código original, de}
{      manera que el resultado es inmediatamente False. El código no existe.                                     }
{                                                                                                                }
{ 3ª : Llamado desde el procedimiento PreserveCode nos irá diciendo si un determinado valor existe en la prmTable}
{      En este caso prmOriginales, siempre será una cadena vacia.                                                }
{                                                                                                                }
{ prmTableName : Contiene el nombre físico de la tabla SQL en la que vamos a buscar el/los valores               }
{ prmFields    : Contiene los campos de la tabla con los que se va a buscar (normalmente la PrimaryKey)          }
{ prmValues    : Contiene una lista de valores separados por ';'. Por lo tanto todos iran en formato string.     }
{                Para las conversiónes de String a su formato correspondiente se utilizarán las plantillas       }
{                especificadas en el archivo .INI del programa                                                   }
{ prmOriginales: Contiene una serie de valores separados por ';'. Si esta cadena es igual que la cadena prmValues}
{                el resultado de la función será False.                                                          }
{                                                                                                                }
{________________________________________________________________________________________________________________}
var Q             :TIBQuery;
    StrQuery      :TStrings;
    CurrentValues :TStrings;
begin
   Result := False;

   CurrentValues := TStringList.Create;
   // Puede ocurrir que no exista PrimaryKey
   GetCurrentValues(PrimaryKey, CurrentValues);
   if EqualListValues(OriginalValues, CurrentValues) then Exit;

   Q := TIBQuery.Create(nil);
   StrQuery := TStringList.Create;
   try
      Q.Database := Table.Database;
      GetExistsQueryText(StrQuery, PrimaryKey, Table.TableName);
      Result := ccExits(StrQuery, PrimaryKey, CurrentValues);
   finally  CurrentValues.Free;
            Q.Free;
   end;
end;

function TccDBIntegrity.Preserve:Boolean;
var DummyText :string;
begin
   Result := Preserve(DummyText);
end;

function TccDBIntegrity.Preserve(var TableName :string):Boolean;
{¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯}
{ Funcionalidades de este procedure:                                                                             }
{ Saber si el valor correspondiente existe ya en la Foreign Key de alguna de las tablas que se pasan como        }
{ parámetro. Un usuario decide borrar un CLIENTE. Con este procedimiento podremos ver si dicho Código existe     }
{ en la tabla FACTURAS, ALBARANES, ETC.                                                                          }
{                                                                                                                }
{ prmValues    : Contiene el valor/es que buscamos separados por ';'. Por lo tanto todos iran en formato string. }
{                Para las conversiónes de String a su formato correspondiente se utilizarán las plantillas       }
{                especificadas en el archivo .INI del programa                                                   }
{________________________________________________________________________________________________________________}
var i               :Integer;
    locTableName    :string;
    locMasterFields :string;
    locForeignKeys  :string;
    CurrentValues   :TStrings;
    StrQuery        :TStrings;
begin
   Result := False;
   CurrentValues := TStringList.Create;
   StrQuery      := TStringList.Create;

   try
      for i := 0 to TableNames.Count -1 do begin {Para cada una de las tablas}
         locTableName    := TableNames[i];    {Conseguir la Query actual}
         locMasterFields := MasterFields[i];  {Conseguir los campos a buscar}
         locForeignKeys  := ForeignFields[i];

         GetCurrentValues(locMasterFields, CurrentValues);  {Conseguir los valores actuales}
         GetExistsQueryText(StrQuery, ForeignFields[i], TableNames[i]);
         if ccExits(StrQuery, ForeignFields[i], CurrentValues) then begin {Verificar si existe.}
            TableName := locTableName;
            Result    := True;
            Break;
         end;
      end;
   finally StrQuery.Free;
           CurrentValues.Free;
   end;
end;

procedure TccDBIntegrity.GetCurrentValues(prmFields :String; prmValues :TStrings);
var Parts        :TStrings;
    i            :Integer;
    CurrentField :TField;
begin
   if PrimaryKey <> '' then begin
      Parts := TStringList.Create;
      try StrBreakApart(prmFields, ';', Parts);
          prmValues.Clear;
          for i := 0 to Parts.Count -1 do begin
              CurrentField := Table.FindField(Parts[i]);
              if CurrentField <> nil then begin
                 case CurrentField.DataType of
                      ftFixedChar:prmValues.Add(Trim(CurrentField.AsString)); // Character or string field of fixed long
                      ftString   :prmValues.Add(Trim(CurrentField.AsString)); // Character or string field
                      ftSmallint :prmValues.Add(CurrentField.AsString); // 16-bit integer field
                      ftInteger  :prmValues.Add(CurrentField.AsString); // 32-bit integer field
                      ftWord     :prmValues.Add(CurrentField.AsString); // 16-bit unsigned integer field
                      ftBoolean  :prmValues.Add(CurrentField.AsString); // Boolean field
                      ftFloat    :prmValues.Add(CurrentField.AsString); // Floating-point numeric field
                      ftCurrency :prmValues.Add(CurrentField.AsString); // Money field
                      ftBCD      :prmValues.Add(CurrentField.AsString); // Binary-Coded Decimal field
                      ftDate     :prmValues.Add(CurrentField.AsString); // Date field
                      ftTime     :prmValues.Add(CurrentField.AsString); // Time field
                      ftDateTime :prmValues.Add(CurrentField.AsString); // Date and time field
                      ftUnknown  :RaiseException('TccDBIntegrity.GetCurrentValues: Field DataType = ftUnknown'); // Unknown or undetermined
                      ftBlob       ,                                                           // Binary Large OBject field
                      ftMemo       ,                                                           // Text memo field
                      ftBytes      ,                                                           // Fixed number of bytes (binary storage)
                      ftVarBytes   ,                                                           // Variable number of bytes (binary storage)
                      ftAutoInc    ,                                                           // Auto-incrementing 32-bit integer counter field
                      ftGraphic    ,                                                           // Bitmap field
                      ftFmtMemo    ,                                                           // Formatted text memo field
                      ftParadoxOle ,                                                           // Paradox OLE field
                      ftDBaseOle   ,                                                           // dBASE OLE field
                      ftTypedBinary,                                                           // Typed binary field
                      ftCursor     ,                                                           // Output cursor from an Oracle stored procedure (TParam only)
                      ftWideString ,                                                           // Wide string field
                      ftLargeInt   ,                                                           // Large integer field
                      ftADT        ,                                                           // Abstract Data Type field
                      ftArray      ,                                                           // Array field
                      ftReference  ,                                                           // REF field
                      ftDataSet                                                                // DataSet field
                            :RaiseException('TccDBIntegrity.GetCurrentValues: Field DataType not Valid for a Primary Key');
               else RaiseException('TccDBIntegrity.GetCurrentValuesValues: Field DataType Unknown but not fkUnknown');
                 end;
                 //ListBoxPrimaryKey.Items.Add(Parts[i]);
              end;
          end;
      finally Parts.Free;
      end;
   end;
end;

end.
