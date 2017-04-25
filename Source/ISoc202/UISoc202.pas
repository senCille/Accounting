unit UIsoc202;

interface

uses Buttons, Classes, ComCtrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, WinTypes,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, shellapi, StdCtrls, SysUtils, WinProcs,
     UISoc202Model;
     
type
  TWISoc202 = class(TForm)
    Datos: TGroupBox;
    Label1: TLabel;
    QIsoc202: TClientDataSet;
    sISoc202: TDataSource;
    RadioGroupFORMA_PAGO: TRadioGroup;
    EditBASE_DESDE: TDBEdit;
    Label2: TLabel;
    EditPERIODO: TDBEdit;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    EditCASILLA_01: TDBEdit;
    Label8: TLabel;
    CheckBoxCopaDeclarante: TCheckBox;
    EditCASILLA_02: TDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EditCASILLA_03: TDBEdit;
    EditCASILLA_04: TDBEdit;
    Label5: TLabel;
    EditCASILLA_05: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditCASILLA_06: TDBEdit;
    EditCASILLA_07b: TDBEdit;
    EditCASILLA_06b: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    EditCASILLA_08: TDBEdit;
    EditCASILLA_07: TDBEdit;
    Label13: TLabel;
    EditCASILLA_09: TDBEdit;
    Label14: TLabel;
    EditCASILLA_10: TDBEdit;
    Label15: TLabel;
    EditCASILLA_11: TDBEdit;
    Label16: TLabel;
    EditCASILLA_12: TDBEdit;
    Label17: TLabel;
    EditCASILLA_13: TDBEdit;
    Label18: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    EditCCC: TDBEdit;
    Label84: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnVerErrores: TButton;
    BtnProcess: TButton;
    Shape1: TShape;
    lTitulo: TLabel;
    QIsoc202EJERCICIO: TIntegerField;
    QIsoc202PERIODO: TStringField;
    QIsoc202CASILLA_00: TFloatField;
    QIsoc202CASILLA_01: TFloatField;
    QIsoc202CASILLA_03: TFloatField;
    QIsoc202CASILLA_02: TFloatField;
    QIsoc202CASILLA_04: TFloatField;
    QIsoc202CASILLA_05: TFloatField;
    QIsoc202CASILLA_06: TFloatField;
    QIsoc202CASILLA_06B: TFloatField;
    QIsoc202CASILLA_07: TFloatField;
    QIsoc202CASILLA_07B: TFloatField;
    QIsoc202CASILLA_08: TFloatField;
    QIsoc202CASILLA_09: TFloatField;
    QIsoc202CASILLA_10: TFloatField;
    QIsoc202CASILLA_11: TFloatField;
    QIsoc202CASILLA_12: TFloatField;
    QIsoc202CASILLA_13: TFloatField;
    QIsoc202INGRESO: TFloatField;
    QIsoc202FECHA_IMPRESION: TDateField;
    QIsoc202CCC: TStringField;
    QIsoc202OBSERVACIONES: TStringField;
    procedure BtnProcessClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    //procedure CalcularResultado(Sender: TObject);
    procedure BtnVerErroresClick(Sender: TObject);
    procedure EditCASILLA_01Exit(Sender: TObject);
    procedure CalculoB(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TISoc202Model;
    function FormatoImporte(importe: Double; Longitud: Integer): String;
    procedure CalcularResultadoB;
  public
  end;

var WISoc202: TWISoc202;

implementation

uses System.Math, System.DateUtils, System.StrUtils,
     DM, Globales, Processing, ccStr;

{$R *.DFM}

procedure TWISoc202.FormCreate(Sender: TObject);
begin
   FModel := TISoc202Model.Create(DMRef.BDContab);
   Self.Caption := '';

   QISoc202.CreateDataSet;
   QISoc202.Active := True;
   QISoc202.Append;
   QIsoc202FECHA_IMPRESION.AsDateTime := date;
   QIsoc202EJERCICIO.AsInteger       := YearOf(Date);
   if (MonthOf(Date) >= 1) and (MonthOf(Date) <=  6) then QIsoc202PERIODO.AsString := '1P' else
   if (MonthOf(Date) >= 7) and (MonthOf(Date) <= 10) then QIsoc202PERIODO.AsString := '2P'
   else QIsoc202PERIODO.AsString := '3P';
   QISoc202CCC.AsString := DMRef.QParametrosCCC.AsString;
end;

procedure TWISoc202.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWISoc202.BtnProcessClick(Sender: TObject);
var
   F:          TextFile;
   Registro:   String;
   cProvincia: String;
   nIngreso:   Double;
   cNombreFiscal, cApellidos, cNombre: String;
   nPosComa:   Cardinal;
   Q           :TIBSQL;
begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);
   if QISoc202.State in dsEditModes then begin
      QISoc202.Post;
   end;

   // Buscar provincia
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('SELECT NOMBRE FROM PROVINCIAS');
      Q.SQL.Add('WHERE PROVINCIA=:PROVINCIA');
      Q.parambyname('provincia').AsString := DmRef.QParametrosPROVINCIA.AsString;
      Q.ExecQuery;
      cProvincia := Q.FieldByName('nombre').AsString;
   finally
      Q.Free;
   end;

   // Preparacion registro a imprimir por impresor de Hacienda
   AssignFile(F, Config.AppFolder + 'Hacienda\Entrada.txt');
   Rewrite(F);
   Registro      := '202' +                // Modelo 202
      '01' +                 // Pagina 01
      ' ' +                  // Indicador pag. complementaria
      ' ' +                  // Tipo de declaracion
      // Codigo de administracion  (5)
      TStrTools.BackChar(DmRef.QParametrosCODADMON.AsString, '0', 5) +
      TStrTools.LeadChar(Copy(Trim(DmRef.QParametrosNIF.AsString), 1, 9), '0', 9) +
      // Nif de 9 posiciones
      DupeString(' ', 4);             // Letras de la etiqueta
      // Si es persona fisica es obligatorio poner el campo de nombre
      // Se pondra una coma para separar el nombre de los apellidos (Formato: Apellidos, Nombre)
   cNombreFiscal := Trim(Uppercase(DmRef.QParametrosNOMBREFISCAL.AsString));
   nPosComa := Pos(',', cNombreFiscal);
   if DmRef.QParametrosTIPOEMPRESA.AsString = 'F' then // Persona fisica 
   begin
      // Apellidos o Razón Social (30)
      cApellidos := TStrTools.Backchar(copy(cNombreFiscal, 1, nPoscoma - 1), ' ', 30);
      // Nombre (15)
      cNombre    := TStrTools.Backchar(Trim(copy(cNombreFiscal, nPoscoma + 1, 15)), ' ', 15);
      Registro   := Registro + cApellidos + cNombre;
   end
   else begin  // Empresa
      Registro := Registro +
         // Apellidos o Razón Social (30)
         TStrTools.Backchar(copy(
         Trim(Uppercase(DmRef.QParametrosNOMBREFISCAL.AsString)), 1, 30), ' ', 30) +
         TStrTools.Backchar(copy(
         Trim(UpperCase(DmRef.QParametrosNOMBREFISCAL.AsString)), 31, 15), ' ', 15);
   end;

   Registro := Registro +
      // Sigla Via   (2)
      TStrTools.Backchar(DmRef.QParametrosSIGLAVIA.AsString, ' ', 2) +
      // Nombre de via publica  (17)
      TStrTools.Backchar(copy(Trim(UpperCase(DmRef.QParametrosDIRECCION.AsString)), 1, 17), ' ', 17) +
      // Numero (4)
      TStrTools.BackChar(DmRef.QParametrosNUMEROCALLE.AsString, ' ', 4) +
      // Escalera  (2)
      TStrTools.BackChar(DmRef.QParametrosESCALERA.AsString, ' ', 2) +
      // Piso (2)
      TStrTools.BackChar(DmRef.QParametrosPISO.AsString, ' ', 2) +
      // Puerta (2)
      TStrTools.BackChar(DmRef.QParametrosPUERTA.AsString, ' ', 2) +
      // Telefono
      TStrTools.Backchar(copy(Trim(DmRef.QParametrosTELEFONO.AsString), 1, 9), ' ', 9) +
      // Municipio
      TStrTools.Backchar(copy(Trim(Uppercase(DmRef.QParametrosPOBLACION.AsString)), 1, 20), ' ', 20) +
      // Provincia
      TStrTools.Backchar(Uppercase(copy(Trim(cProvincia), 1, 15)), ' ', 15) +
      // Cod. Postal
      TStrTools.Leadchar(copy(Trim(DmRef.QParametrosCODPOSTAL.AsString), 1, 5), '0', 5) +
      // Textos en mayusculas <------------------------------------ OJO -------->
      TStrTools.LeadChar(QIsoc202EJERCICIO.AsString, '0', 4) +  // Ejercicio
      TStrTools.BackChar(QIsoc202PERIODO.AsString, ' ', 2) +    // Periodo

      // a) Base Pago fraccionado [01]
      FormatoImporte(QIsoc202CASILLA_01.AsFloat, 13) +
      // a) Resultado de la declaracion anterior si complementaria [02]
      FormatoImporte(QIsoc202CASILLA_00.AsFloat, 13) +
      // a) A ingresar  (18% sobre casilla 01) [03]
      FormatoImporte(QIsoc202CASILLA_02.AsFloat, 13) +
      // B1) Base Pago Fraccionado  [04]
      FormatoImporte(QIsoc202CASILLA_03.AsFloat, 13) +
      // B1) Porcentaje [05]
      FormatoImporte(QIsoc202CASILLA_04.AsFloat, 4) +
      // B1) Resultado [06]
      FormatoImporte(QIsoc202CASILLA_05.AsFloat, 13) +
      // B2) Base Pago Fraccionado  [07]
      FormatoImporte(QIsoc202CASILLA_06.AsFloat, 13) +
      // B2) Base Pago Fraccionado  Hasta [07 Bis]
      FormatoImporte(QIsoc202CASILLA_06B.AsFloat, 13) +
      // B2) Base Pago Fraccionado  21% [08]
      FormatoImporte(QIsoc202CASILLA_07.AsFloat, 13) +
      // B2) Base Pago Fraccionado  Resto [08 Bis]
      FormatoImporte(QIsoc202CASILLA_07B.AsFloat, 13) +
      // B2) Base Pago Fraccionado , 25% [09]
      FormatoImporte(QIsoc202CASILLA_08.AsFloat, 13) +
      // B2) Resultado  [10]
      FormatoImporte(QIsoc202CASILLA_09.AsFloat, 13) +
      // B3) Base pago fraccionado. Parte General [11]
      FormatoImporte(QIsoc202CASILLA_00.AsFloat, 13) +
      // B3) Importe pago fraccionado. Parte general [12]
      FormatoImporte(QIsoc202CASILLA_00.AsFloat, 13) +
      // B3) Base pago fraccionado. Parte especial [13]
      FormatoImporte(QIsoc202CASILLA_00.AsFloat, 13) +
      // B3) Importe pago fraccionado. Parte especial [14]
      FormatoImporte(QIsoc202CASILLA_00.AsFloat, 13) +
      // B3) Resultado  [15]
      FormatoImporte(QIsoc202CASILLA_00.AsFloat, 13) +
      // B3) Bonificaciones  [16]
      FormatoImporte(QIsoc202CASILLA_10.AsFloat, 13) +
      // B3) Retenciones y pagos a cuenta practicados  [17]
      FormatoImporte(QIsoc202CASILLA_11.AsFloat, 13) +
      // B3) Resultado de la decl.anterior si complementaria  [18]
      FormatoImporte(QIsoc202CASILLA_00.AsFloat, 13) +
      // B3) Pagos fraccionados de declaraciones anteriores  [19]
      FormatoImporte(QIsoc202CASILLA_12.AsFloat, 13) +
      // B3) A ingresar [20]
      FormatoImporte(QIsoc202CASILLA_13.AsFloat, 13) +
      // Complementaria. Codigo electronico declaracion anterior.
      DupeString(' ', 16) +
      // Complementaria. Justificante declaracion anterior
      DupeString(' ', 13);

   Registro := Registro +
      // Firma. dia
      TStrTools.Leadchar(IntToStr(DayOf(QIsoc202FECHA_IMPRESION.AsDateTime)), '0', 2) +
      // Firma. mes
      TStrTools.BackChar(Uppercase(Trim(FormatDateTime('mmmm', QIsoc202FECHA_IMPRESION.AsDateTime))),
      ' ', 10) +
      // Firma. año
      TStrTools.Leadchar(copy(IntToStr(YearOf(QIsoc202FECHA_IMPRESION.AsDateTime)), 1, 4), '0', 4);

   // Ingreso. Forma de pago, efectivo (1)
   // Ingreso. Forma de pago, adeudo en cuenta (1)
   if RadioGroupFORMA_PAGO.ItemIndex = 1 then begin
      Registro := Registro + 'X ';
   end
   else begin
      Registro := Registro + ' X';
   end;

   if RoundTo(QIsoc202CASILLA_02.AsFloat, -2) <> 0 then   begin
      nIngreso := QIsoc202CASILLA_02.AsFloat;
   end
   else begin
      nIngreso := QIsoc202CASILLA_02.AsFloat;
   end;

   Registro := Registro +
      // Ingreso. Importe
      FormatoImporte(nIngreso, 13);

   if RadioGroupFORMA_PAGO.ItemIndex = 0 then   begin
      Registro := Registro +
         // Ingreso. CCC Entidad
         TStrTools.LeadChar(Copy(QIsoc202CCC.AsString, 1, 4), ' ', 4) +
         // Ingreso. CCC Oficina
         TStrTools.LeadChar(Copy(QIsoc202CCC.AsString, 6, 4), ' ', 4) +
         // Ingreso. CCC DC
         TStrTools.LeadChar(Copy(QIsoc202CCC.AsString, 11, 2), ' ', 2) +
         // Ingreso. CCC Cuenta
         TStrTools.LeadChar(Copy(QIsoc202CCC.AsString, 14, 10), ' ', 10);
   end
   else begin
      Registro := Registro +
         // Ingreso. CCC Entidad
         TStrTools.LeadChar(DupeString(' ', 4), ' ', 4) +
         // Ingreso. CCC Oficina
         TStrTools.LeadChar(DupeString(' ', 4), ' ', 4) +
         // Ingreso. CCC DC
         TStrTools.LeadChar(DupeString(' ', 2), ' ', 2) +
         // Ingreso. CCC Cuenta
         TStrTools.LeadChar(DupeString(' ', 10), ' ', 10);
   end;

   Registro := Registro +
      // Persona de contacto
      TStrTools.BackChar(Uppercase(Trim(Copy(DmRef.QParametrosCONTACTO.AsString, 1, 100))),
      ' ', 100) +
      // Telefono de contacto
      TStrTools.BackChar(DupeString(' ', 9), ' ', 9) +
      // Observaciones
      TStrTools.BackChar(Uppercase(QIsoc202OBSERVACIONES.AsString), ' ', 350);
   // Fin de Registro
   //           Showmessage(IntToStr(Length(Registro)));

   Writeln(F, Registro);
   CloseFile(F);

   // Impresion modelo IVA 202
   if CheckBoxCopaDeclarante.Checked then  begin
      ShellExecute(Application.handle, 'open',
         PChar(Config.AppFolder + '\hacienda\ejecutar2.bat'), nil, nil, SW_HIDE);
   end
   else begin
      ShellExecute(Application.handle, 'open',
         PChar(Config.AppFolder + '\hacienda\ejecutar.bat'), nil, nil, SW_HIDE);
   end;

   MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
   Datos.Update;
end;

procedure TWISoc202.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

procedure TWISoc202.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action   := caFree;
   WIsoc202 := nil;
end;

function TWISoc202.FormatoImporte(Importe: Double; Longitud: Integer): String;
var cEuro    :string;
    nPosComa :Cardinal;
begin
   cEuro := Trim(FloattostrF(RoundTo(importe, -2), ffFixed, Longitud, 2));
   nPosComa := Pos(',', cEuro);
   if RoundTo(Importe, -2) < 0 then  begin
      Result := 'N' + TStrTools.LeadChar(Copy(cEuro, 2, nPosComa - 2) + TStrTools.BackChar(Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', Longitud - 1);
   end
   else begin
      Result := TStrTools.LeadChar(Copy(cEuro, 1, nPosComa - 1) + TStrTools.BackChar(Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', Longitud);
   end;
end;

(*procedure TWISoc202.CalcularResultado(Sender: TObject);
begin
   if not (QISoc202.State in dseditmodes) then begin
      QISoc202.Edit;
   end;

   QISoc202Total_Devengado.AsFloat := RoundTo(QISoc202cuota_03.AsFloat + FieldByName('cuota06').AsFloat +
      FieldByName('cuota09').AsFloat + FieldByName('cuota12').AsFloat +
      FieldByName('cuota15').AsFloat + FieldByName('cuota18').AsFloat +
      FieldByName('cuota20').AsFloat, -2);
   FieldByName('TotalDeducible').AsFloat :=
      RoundTo(FieldByName('deducible22').AsFloat + FieldByName('deducible23').AsFloat +
      FieldByName('deducible24').AsFloat, -2);
   FieldByName('Diferencia').AsFloat     :=
      RoundTo(FieldByName('TotalDevengado').AsFloat -
      FieldByName('TotalDeducible').AsFloat, -2);
   FieldByName('Resultado').AsFloat      := FieldByName('Diferencia').AsFloat;
   if RoundTo(FieldByName('Resultado').AsFloat, -2) > 0 then   begin
      FieldByName('ingreso').AsFloat    := FieldByName('Resultado').AsFloat;
      FieldByName('devolucion').AsFloat := 0;
   end
   else begin
      FieldByName('devolucion').AsFloat := FieldByName('Resultado').AsFloat;
      FieldByName('ingreso').AsFloat    := 0;
   end;
end;*)

procedure TWISoc202.BtnVerErroresClick(Sender: TObject);
begin
   if FileExists(Config.AppFolder + 'hacienda\errores.txt') then begin
      ShellExecute(Application.handle, 'open', PChar(Config.AppFolder + '\hacienda\errores.txt'), nil, nil, SW_SHOWNORMAL);
   end
   else begin
      DatabaseError('No hay errores a visualizar.');
   end;
end;

procedure TWISoc202.EditCASILLA_01Exit(Sender: TObject);
begin
   if not (QISoc202.State in dsEditModes) then begin
      QISoc202.Edit;
   end;
   QIsoc202CASILLA_00.AsFloat := RoundTo(18 * 0.01 * QIsoc202CASILLA_01.AsFloat, -2);
end;

procedure TWISoc202.CalculoB(Sender: TObject);
begin
   CalcularResultadoB;
end;

procedure TWISoc202.CalcularResultadoB;
begin
   if not (QISoc202.State in dsEditModes) then begin
      QISoc202.Edit;
   end;

   QIsoc202CASILLA_05.AsFloat  := RoundTo(QIsoc202CASILLA_04.AsFloat * 0.01 * QIsoc202CASILLA_03.AsFloat, -2);
   QIsoc202CASILLA_07.AsFloat  := RoundTo(21 * 0.01 * QIsoc202CASILLA_06B.AsFloat                       , -2);
   QIsoc202CASILLA_07B.AsFloat := RoundTo(QIsoc202CASILLA_06.AsFloat - QIsoc202CASILLA_06B.AsFloat      , -2);
   QIsoc202CASILLA_08.AsFloat  := RoundTo(25 * 0.01 * QIsoc202CASILLA_07B.AsFloat                       , -2);
   QIsoc202CASILLA_09.AsFloat  := RoundTo(QIsoc202CASILLA_07.AsFloat + QIsoc202CASILLA_08.AsFloat       , -2);

   if RoundTo(QIsoc202CASILLA_05.AsFloat, -2) <> 0 then   begin
      QIsoc202CASILLA_13.AsFloat := QIsoc202CASILLA_05.AsFloat;
   end
   else begin
      QIsoc202CASILLA_13.AsFloat := QIsoc202CASILLA_09.AsFloat;
   end;
   QIsoc202CASILLA_13.AsFloat := RoundTo(QIsoc202CASILLA_13.AsFloat -
                                         QIsoc202CASILLA_10.AsFloat - QIsoc202CASILLA_11.AsFloat -
                                         QIsoc202CASILLA_12.AsFloat, -2);

   if RoundTo(QIsoc202CASILLA_02.AsFloat, -2) <> 0 then begin
      QIsoc202INGRESO.AsFloat := QIsoc202CASILLA_02.AsFloat;
   end
   else begin
      QIsoc202INGRESO.AsFloat := QIsoc202CASILLA_13.AsFloat;
   end;
end;

end.
