unit DMControl;

interface

uses Classes, Controls, Db, Dialogs, Forms, Graphics, Messages, SysUtils, Windows, IBX.IBSQL,
     IBX.IBCustomDataSet, IBX.IBDatabase, Globales, IBX.IBQuery;

type
  TDMControlRef = class(TDataModule)
    BDControl: TIBDatabase;
    TransaccionControl: TIBTransaction;
    QEmpresas: TIBDataSet;
    QUsuarios: TIBDataSet;
    QUsuariosID_USUARIO: TIntegerField;
    QUsuariosID_EMPRESA: TIntegerField;
    QUsuariosCLAVE: TIBStringField;
    QUsuariosNOMBRE: TIBStringField;
    QControl: TIBDataSet;
    QControlPEDIR_CLAVE: TIBStringField;
    QControlID_CONTROL: TSmallintField;
    QAuxiliar: TIBSQL;
    sEmpresas: TDataSource;
    QEmpresasID_EMPRESA: TIntegerField;
    QEmpresasNOMBRE: TIBStringField;
    QEmpresasUBICACION: TIBStringField;
    QEmpresasCERRADA: TIBStringField;
    QEmpresasULTIMA: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  protected
    procedure Loaded; override;
  private
    function GetTestRunning:Boolean;
  public
    procedure AbrirDataSets;
    procedure CerrarDataSets;
    procedure AbrirEmpresa(AID_EMPRESA :Integer);
    function ObtenerNumeroUsuario: Integer;
    function AccesoUsuario(IDUsuario: Integer; Window: String): Boolean;
    function ExistenRegistros(Tabla, Condicion: String): Boolean;
    function PermisoUsuario(prmIDUsuario :Integer; prmVentana: String; prmPermiso: TPermiso): Boolean;
    property TestRunning :Boolean read GetTestRunning;
    function CreateQuery(const prmSQL :array of string):TIBQuery;
  end;

var DMControlRef: TDMControlRef;

implementation
uses System.IOUtils,
     General, IniFiles, DMConta, DM;
{$R *.DFM}

function TDMControlRef.GetTestRunning:Boolean;
begin
   Result := ExtractFileName(LowerCase(ParamStr(0))) = LowerCase('Test_Contabilidad.exe');
end;

function TDMControlRef.CreateQuery(const prmSQL :array of string):TIBQuery;
var Query :TIBQuery;
    i     :Integer;
begin
   Query := TIBQuery.Create(nil);
   Query.DataBase := BDControl;
   for i := Low(prmSQL) to High(prmSQL) do begin
       Query.SQL.Add(prmSQL[i]);
   end;
   Result := Query;
end;

procedure TDMControlRef.Loaded;
var INIFile    :TIniFile;
begin
   inherited;
   BDControl.Connected       := False;
   TransaccionControl.Active := False;

   Config.AppFolder     := ExtractFilePath(Application.ExeName);

   Config.ImagesFolder  := Config.AppFolder + FOLDER_IMAGES_NAME  +'\';
   if not TDirectory.Exists(Config.ImagesFolder) then begin
      raise Exception.Create('No existe el directorio : '+Config.ImagesFolder);
   end;

   Config.ReportsFolder := Config.AppFolder + FOLDER_REPORTS_NAME +'\';
   if not TDirectory.Exists(Config.ReportsFolder) then begin
      TDirectory.CreateDirectory(Config.ReportsFolder);
   end;

   INIFile := TIniFile.Create(Config.AppFolder + 'SENCILLE.INI');
   try
      Config.ServerName       := UpperCase(INIFile.ReadString('DATABASE', 'SERVERNAME' , '' ));
      Config.ServerDataFolder := UpperCase(INIFile.ReadString('DATABASE', 'DATA_FOLDER', '' ));
      Config.ActiveServerRoot := Config.ServerName + ':' + Config.ServerDataFolder + '\';
   finally
      INIFile.Free;
   end;

   if not TestRunning then begin
      BDControl.Params.Clear;
      BDControl.Params.Add('USER_NAME=SYSDBA'  );
      BDControl.Params.Add('PASSWORD=masterkey');
      BDControl.DatabaseName := Config.ActiveServerRoot+'SENCILLE.GDB';
      BDControl.Connected       := True;
      TransaccionControl.Active := True;
   end;
end;

procedure TDMControlRef.DataModuleCreate(Sender: TObject);
var i :Integer;
begin
   if TestRunning then Exit;
   { Activate transactions }
   for i := 0 to (ComponentCount - 1) do begin
      if (Components[i] is TIBTransaction) then begin
         TIBTransaction(Components[i]).Active := False;
         TIBTransaction(Components[i]).Params.Clear;
         TIBTransaction(Components[i]).Params.Add('Read_committed');
         TIBTransaction(Components[i]).Params.Add('Rec_version');
         TIBTransaction(Components[i]).Params.Add('Write');
         TIBTransaction(Components[i]).Active := True;
      end;
   end;
   AbrirDataSets;
end;

procedure TDMControlRef.AbrirDataSets;
begin
   QueryOpen(QUsuarios, 'SELECT * FROM USUARIOS ORDER BY NOMBRE     ');
   QueryOpen(QControl , 'SELECT * FROM CONTROL  ORDER BY ID_CONTROL ');
   QueryOpen(QEmpresas, 'SELECT * FROM EMPRESAS ORDER BY NOMBRE     ');
end;

procedure TDMControlRef.CerrarDataSets;
var i :Integer;
begin
   for i := 0 to ComponentCount - 1 do begin
      if Components[i] is TDataSet then begin
         try    TDataSet(Components[i]).Close;
         except ShowMessage('Error datamodulo al cerrar la tabla ' + TDataSet(Components[i]).Name);
         end;
      end;
   end;
end;

procedure TDMControlRef.DataModuleDestroy(Sender: TObject);
var Q :TIBQuery;
begin
   if TestRunning then Exit;

   Q := TIBQuery.Create(nil);
   Q.DataBase := BDControl;
   try
      { Set al enterprises as ULTIMA = N }
      Q.SQL.Add('UPDATE EMPRESAS SET ULTIMA = "N" ');
      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
      Q.SQL.Clear;
      { Set current active enterprise as ULTIMA = S  }
      Q.SQL.Add('UPDATE EMPRESAS                    ');
      Q.SQL.Add('SET    ULTIMA = "S"                ');
      Q.SQL.Add('WHERE ID_EMPRESA = :prmID_EMPRESA  ');
      Q.ParamByName('prmID_EMPRESA').AsInteger := Config.ActiveID_ENTERPRISE;
      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
   CerrarDataSets;
end;

procedure TDMControlRef.AbrirEmpresa(AID_EMPRESA :Integer);
var Q     :TIBQuery;
    SQL   :TStringList;
    QUser :TIBQuery;
begin
   { Si empresa vale -1, hay que abrir la empresa que tiene valor de ultima }
   SQL := TStringList.Create;
   SQL.Add('SELECT ID_EMPRESA, ');
   SQL.Add('       NOMBRE    , ');
   SQL.Add('       UBICACION , ');
   SQL.Add('       ULTIMA      ');
   SQL.Add('FROM EMPRESAS      ');

   if AID_EMPRESA = -1 then SQL.Add('WHERE ULTIMA = ''S'' ')
   else begin
      SQL.Add('WHERE ID_EMPRESA = :prmID_EMPRESA');
   end;

   Q := DMControlRef.CreateQuery([SQL.Text]);
   if AID_EMPRESA <> -1 then Q.ParamByName('prmID_EMPRESA').AsInteger := AID_EMPRESA;
   try
      Q.Open;

      if not Q.IsEmpty then begin
         Config.ActiveID_ENTERPRISE := AID_EMPRESA;
         Config.ActiveDBName        := Trim(Q.FieldByName('UBICACION').AsString);
         Config.ActiveDS_ENTERPRISE := Trim(Q.FieldByName('NOMBRE'   ).AsString);
         if AID_EMPRESA = -1 then begin
            Config.ActiveID_ENTERPRISE := Q.FieldByName('ID_EMPRESA').AsInteger;
         end;
      end
      else begin
         raise Exception.Create('Empresa Incorrecta.');
      end;
   finally Q.Free;
   end;

   QUser := DMControlRef.CreateQuery(['UPDATE USUARIOS                    ',
                                      'SET    ID_EMPRESA = :prmID_EMPRESA ',
                                      'WHERE  ID_USUARIO = :prmID_USUARIO ']);
   try
      QUser.ParamByName('prmID_EMPRESA').AsInteger := Config.ActiveID_ENTERPRISE;
      QUser.ParamByName('prmID_USUARIO').AsInteger := Config.IdUser;
      QUser.ExecSQL;
      QUser.Transaction.CommitRetaining;
   finally
      QUser.Free;
   end;

   //if Assigned(DMBlnc    ) then FreeAndNil(DMBlnc    );
   if Assigned(DMContaRef) then FreeAndNil(DMContaRef);
   if Assigned(DMRef     ) then FreeAndNil(DMRef     );

   { Open the other Datamodules }
   Application.CreateForm(TDMRef     , DMRef     );
   Application.CreateForm(TDMContaRef, DMContaRef);
   //Application.CreateForm(TDMBlnc    , DMBlnc    );
end;

function TDMControlRef.ObtenerNumeroUsuario: Integer;
var Numero : Integer;
    Q      :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DmControlRef.BDControl;
      Q.SQL.Clear;
      Q.SQL.Add('execute procedure Dame_NumeroUsuario');
      Q.ExecQuery;
      Numero := Q.FieldByName('ID_USUARIO').AsInteger;
   finally
      Q.Free;
   end;
   Result := Numero;
end;

function TDMControlRef.AccesoUsuario(IDUsuario: Integer; Window: String): Boolean;
begin
   Result := (IDUsuario = 0) or ExistenRegistros('PERMISOS_USUARIOS P, MANTENIMIENTOS M',
      'P.IDMODULO = M.IDMODULO AND P.IDMANTENIMIENTO = M.IDMANTENIMIENTO AND ' +
      'P.IDUSUARIO = ' + IntToStr(IDUsuario) + ' AND ' + 'M.WINDOWNAME = ' + QuotedStr(Window));
end;

function TDMControlRef.ExistenRegistros(Tabla, Condicion: String): Boolean;
begin
   QAuxiliar.Close;
   QAuxiliar.SQL.Clear;
   QAuxiliar.SQL.Add('SELECT COUNT(*) NUM FROM ' + Tabla);
   if Trim(Condicion) <> '' then begin
      QAuxiliar.SQL.Add('WHERE ' + Condicion);
   end;
   QAuxiliar.Prepare;
   QAuxiliar.ExecQuery;
   Result := (QAuxiliar.FieldByName('NUM').AsInteger <> 0);
end;

function TDMControlRef.PermisoUsuario(prmIDUsuario :Integer; prmVentana :string; prmPermiso :TPermiso):Boolean;
var Q :TIBQuery;
begin
   Q := CreateQuery(['SELECT ANIADIR, MODIFICAR, BORRAR, IMPRESION ',
                     'FROM   PERMISOS_USUARIOS P,                  ',
                     '       MANTENIMIENTOS    M                   ',
                     'WHERE  P.IDMODULO        = M.IDMODULO        ',
                     'AND    P.IDMANTENIMIENTO = M.IDMANTENIMIENTO ',
                     'AND    P.IDUSUARIO       = :prmIDUSUARIO     ',
                     'AND    M.WINDOWNAME      = :prmVENTANA       ']);
   Q.ParamByName('prmIDUSUARIO').AsInteger := prmIDUSUARIO;
   Q.ParamByName('prmVENTANA'  ).AsString  := UpperCase(prmVentana);
   Q.Open;
   try case prmPermiso of
          ANIADIR   :Result := Q.FieldByName('ANIADIR'  ).AsString = 'S';
          MODIFICAR :Result := Q.FieldByName('MODIFICAR').AsString = 'S';
          BORRAR    :Result := Q.FieldByName('BORRAR'   ).AsString = 'S';
          IMPRESION :Result := Q.FieldByName('IMPRESION').AsString = 'S';
          else raise Exception.Create('Permiso Usuario prmPermiso incorrecto.');
       end;
   finally Q.Free;
   end;

   Result := (prmIDUsuario = 0) or Result;
end;

end.
