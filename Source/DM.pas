unit DM;

interface

uses Classes, Controls, Db, Dialogs, Forms, Graphics, Messages, SysUtils, Variants, Windows,
     Globales, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBSQL, IBX.IBQuery;

type
  TDMRef = class(TDataModule)
    BDContab: TIBDatabase;
    IBT1: TIBTransaction;
    QAuxiliar: TIBSQL;
    QProvinciasNom: TIBDataSet;
    QPaisNom: TIBDataSet;
    QParametros: TIBDataSet;
    QProvinciasNomPROVINCIA: TIBStringField;
    QProvinciasNomNOMBRE: TIBStringField;
    QProvinciasNomCODIGO: TIBStringField;
    QPaisNomPAIS: TIBStringField;
    QPaisNomNOMBRE: TIBStringField;
    QAnaliticas: TIBDataSet;
    QAnaliticasID_PROYECTO: TIBStringField;
    QAnaliticasID_SECCION: TIBStringField;
    QAnaliticasID_DEPARTAMENTO: TIBStringField;
    QAnaliticasID_DELEGACION: TIBStringField;
    QAnaliticasNOMBRE: TIBStringField;
    QAnaliticasCUENTA: TIBStringField;
    QAnaliticasNom: TIBDataSet;
    IBStringField41: TIBStringField;
    IBStringField42: TIBStringField;
    IBStringField43: TIBStringField;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    IBStringField46: TIBStringField;
    QDelegacionNom: TIBDataSet;
    QDelegacionNomNOMBRE: TIBStringField;
    QDelegacionNomID_DELEGACION: TIBStringField;
    QDepartamentoNom: TIBDataSet;
    QDepartamentoNomNOMBRE: TIBStringField;
    QDepartamentoNomID_DEPARTAMENTO: TIBStringField;
    QProyectoNom: TIBDataSet;
    QProyectoNomNOMBRE: TIBStringField;
    QProyectoNomID_PROYECTO: TIBStringField;
    QSeccionNom: TIBDataSet;
    QSeccionNomNOMBRE: TIBStringField;
    QSeccionNomID_SECCION: TIBStringField;
    QDelegacion: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    QDepartamento: TIBDataSet;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    QProyecto: TIBDataSet;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    QSeccion: TIBDataSet;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    QComercial: TIBDataSet;
    QComercialNOMBRE: TIBStringField;
    QComercialCOMERCIAL: TIBStringField;
    QComercialNom: TIBDataSet;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    QFormaPago: TIBDataSet;
    QFormaPagoFORMAPAGO: TIBStringField;
    QFormaPagoCLASE: TIBStringField;
    QFormaPagoDESCRIBE: TIBStringField;
    QFormaPagoINTERVALO: TSmallintField;
    QFormaPagoNUMVENCI: TSmallintField;
    QFormaPagoOBSOLETO: TIBStringField;
    QFormaPagoNom: TIBDataSet;
    IBStringField11: TIBStringField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    IBStringField14: TIBStringField;
    QTipoDiario: TIBDataSet;
    QTipoDiarioDESCRIPCION: TIBStringField;
    QTipoDiarioTIPODIARIO: TIBStringField;
    QTipodiarioNom: TIBDataSet;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBDConsolida: TIBDatabase;
    IBTConsolida: TIBTransaction;
    TransBdEjanterior: TIBTransaction;
    BDEjAnterior: TIBDatabase;
    SPaisNom: TDataSource;
    SProvinciasNom: TDataSource;
    SFormaPago: TDataSource;
    SFormaPagoNom: TDataSource;
    QParametrosID_PARAMETROS: TSmallintField;
    QParametrosLONGITUD_SUBCUENTAS: TSmallintField;
    QParametrosFECHA_INICIO_APLICACION: TDateTimeField;
    QParametrosFECHA_INICIO_EJERCICIO: TDateTimeField;
    QParametrosFECHA_FIN_EJERCICIO: TDateTimeField;
    QParametrosCTO_REGULARIZACION: TIBStringField;
    QParametrosSUBCUENTA_CIERRE: TIBStringField;
    QParametrosMONEDA: TIBStringField;
    QParametrosNOMBREFISCAL: TIBStringField;
    QParametrosDIRECCION: TIBStringField;
    QParametrosDIRECCION1: TIBStringField;
    QParametrosPOBLACION: TIBStringField;
    QParametrosCODPOSTAL: TIBStringField;
    QParametrosPROVINCIA: TIBStringField;
    QParametrosNIF: TIBStringField;
    QParametrosCONTACTO: TIBStringField;
    QParametrosDOCCLIENTE: TIBStringField;
    QParametrosDOCPROVEEDOR: TIBStringField;
    QParametrosDOC347: TIBStringField;
    QParametrosFECHABLOQUEO: TDateTimeField;
    QParametrosCTO_APERTURA: TIBStringField;
    QParametrosCTO_REGULARIZACION_ESP: TIBStringField;
    QParametrosFECHAAMORTIZACION: TDateTimeField;
    QParametrosRECARGO: TIBStringField;
    QParametrosCTO_APERTURA_ESP: TIBStringField;
    QParametrosSCTAIVANORMAL: TIBStringField;
    QParametrosSCTAIVAEXENTO: TIBStringField;
    QParametrosSCTAIVAINTRA: TIBStringField;
    QParametrosSCTAVENTAS: TIBStringField;
    QParametrosSCTADEVOLUCION: TIBStringField;
    QParametrosCTOIVANORMAL: TIBStringField;
    QParametrosCTOIVAEXENTO: TIBStringField;
    QParametrosCTOIVAINTRA: TIBStringField;
    QParametrosCTOVENTAS: TIBStringField;
    QParametrosCTODEVOLUCION: TIBStringField;
    QParametrosCTOCLIENTES: TIBStringField;
    QParametrosSCTADESCUENTO: TIBStringField;
    QParametrosSCTACOMPRAS: TIBStringField;
    QParametrosCTODESCUENTO: TIBStringField;
    QParametrosCTOCOMPRAS: TIBStringField;
    QParametrosSCTAIVAREDUCIDO: TIBStringField;
    QParametrosCTOIVAREDUCIDO: TIBStringField;
    QParametrosSCTAIVASUPER: TIBStringField;
    QParametrosCTOIVASUPER: TIBStringField;
    QParametrosCTOPROVEEDORES: TIBStringField;
    QParametrosSCTAIVACNORMAL: TIBStringField;
    QParametrosCTOIVACNORMAL: TIBStringField;
    QParametrosSCTAIVACREDUCIDO: TIBStringField;
    QParametrosCTOIVACREDUCIDO: TIBStringField;
    QParametrosSCTAIVACSUPER: TIBStringField;
    QParametrosCTOIVACSUPER: TIBStringField;
    QParametrosSCTARECNORMAL: TIBStringField;
    QParametrosCTORECNORMAL: TIBStringField;
    QParametrosSCTARECREDUCIDO: TIBStringField;
    QParametrosCTORECREDUCIDO: TIBStringField;
    QParametrosSCTARECSUPER: TIBStringField;
    QParametrosCTORECSUPER: TIBStringField;
    QParametrosCTORECIBOVENTAS: TIBStringField;
    QParametrosVGENERICA: TIBStringField;
    QParametrosSUBCAJA: TIBStringField;
    QParametrosCTOCOBROF: TIBStringField;
    QParametrosCTONOME: TIBStringField;
    QParametrosCTONOMT: TIBStringField;
    QParametrosSCTANOMSUELDO: TIBStringField;
    QParametrosSCTANOMIRPF: TIBStringField;
    QParametrosSCTANOMPAGO: TIBStringField;
    QParametrosSCTANOMSSE: TIBStringField;
    QParametrosSCTANOMSST: TIBStringField;
    QParametrosSCTANOMCARGO: TIBStringField;
    QParametrosSCTADTOPPV: TIBStringField;
    QParametrosSCTADTOPPC: TIBStringField;
    QParametrosCTODTOPPV: TIBStringField;
    QParametrosCTODTOPPC: TIBStringField;
    QParametrosSCTARETPROF: TIBStringField;
    QParametrosSCTARETARRE: TIBStringField;
    QParametrosCTORETPROF: TIBStringField;
    QParametrosCTORETARRE: TIBStringField;
    QParametrosTANTORETPROF: TFloatField;
    QParametrosTANTORETARRE: TFloatField;
    QParametrosSCTAHACIVA: TIBStringField;
    QParametrosCTOHACIVA: TIBStringField;
    QParametrosSCTAIVACEXENTO: TIBStringField;
    QParametrosCTOIVACEXENTO: TIBStringField;
    QParametrosCTOPAGOF: TIBStringField;
    QParametrosVGENERICAC: TIBStringField;
    QParametrosTELEFONO: TIBStringField;
    QParametrosFAX: TIBStringField;
    QParametrosDOCIMPRIMIR: TIBStringField;
    QParametrosSIGLAVIA: TIBStringField;
    QParametrosNUMEROCALLE: TIBStringField;
    QParametrosESCALERA: TIBStringField;
    QParametrosPISO: TIBStringField;
    QParametrosPUERTA: TIBStringField;
    QParametrosCCC: TIBStringField;
    QParametrosCODADMON: TIBStringField;
    QParametrosGESTIONA_CARTERA_EFECTOS: TIBStringField;
    QParametrosFILTRO_ASIENTOS_INICIO: TIBStringField;
    QParametrosINCLUIR_ABREV: TIBStringField;
    QParametrosSCTAEFECTDESCONTADOS: TIBStringField;
    QParametrosSCTADEUDASDESCUENTOS: TIBStringField;
    QParametrosASIENTOS_INICIO_INTERVALO_BQDA: TSmallintField;
    QParametrosASIENTOS_FIN_INTERVALO_BQDA: TSmallintField;
    QParametrosMOSTRAR_FILTRO_MAYOR: TIBStringField;
    QParametrosCTOPROVINTRA: TIBStringField;
    QParametrosASIENTO_INICIO_INTERVALO_FILTRO: TSmallintField;
    QParametrosASIENTO_FIN_INTERVALO_FILTRO: TSmallintField;
    QParametrosSCTAIVAINTRADEDUCIBLE: TIBStringField;
    QParametrosSCTAIVACINTRADEDUCIBLE: TIBStringField;
    QParametrosSCTAIVACINTRAREPERCUTIDO: TIBStringField;
    QParametrosSCTAGENINTRACOM: TIBStringField;
    QParametrosASIENTO_NOMINA_INDIVIDUAL: TIBStringField;
    QParametrosSCTAIVAEXENTOCEE: TIBStringField;
    QParametrosSCTAINTERESES: TIBStringField;
    QParametrosSCTAEXPORTACIONES: TIBStringField;
    QParametrosBUSQUEDA_SUBCTAS: TIBStringField;
    QParametrosSCTAOTRASREMUN: TIBStringField;
    QParametrosSCTABANCO: TIBStringField;
    QParametrosCTOCOBRO: TIBStringField;
    QParametrosCTOPAGO: TIBStringField;
    QParametrosSCTAEFECTOSCOMERCIALES: TIBStringField;
    QParametrosCTOEFECTOSCOMERCIALES: TIBStringField;
    QParametrosCTODEUDASDESCUENTOS: TIBStringField;
    QParametrosSCTAREMESAEFECTOS: TIBStringField;
    QParametrosCTOREMESAEFECTOS: TIBStringField;
    QParametrosDESCPROV_CARTERAEFECTOS: TIBStringField;
    QParametrosDESCCLI_CARTERAEFECTOS: TIBStringField;
    QParametrosTIPOEMPRESA: TIBStringField;
    QParametrosFILTROSUBCTAS: TIBStringField;
    QParametrosOFFICE2003: TIBStringField;
    QParametrosTRATASERIE: TIBStringField;
    QParametrosACTCOMENTARIO: TIBStringField;
    SAnaliticas: TDataSource;
    SDelegacion: TDataSource;
    SProyecto: TDataSource;
    SSeccion: TDataSource;
    SDepartamento: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  protected
    procedure Loaded; override;
  private
    procedure OpenQuery(AQuery :TIBDataSet; Select :string);
  public
    procedure AbrirDataSets;
    procedure CerrarDataSets;
    procedure ConectarBDEmpresa(prmCD_EMPRESA :string);
    procedure ConectarEmpresaAnterior(prmCD_EMPRESA :Integer);
    procedure EjecutarSQL(Sentencia: String);
    function  ExistenRegistros(Tabla, Condicion: String): Boolean;
    function  ObtenerValor(Campo, Tabla, Condicion: String; Orden: String = ''): Variant;
    function  CreateQuery          (const prmSQL :array of string):TIBQuery;
    function  CreateQueryConsolida (const prmSQL :array of string):TIBQuery;
    function  CreateQueryEjAnterior(const prmSQL :array of string):TIBQuery;
  end;

var DMRef: TDMRef;

implementation

uses DMControl;

{$R *.DFM}

procedure TDMRef.OpenQuery(AQuery :TIBDataSet; Select :string);
begin
   AQuery.Close;
   AQuery.SelectSQL.Clear;
   AQuery.SelectSQL.Add(Select);
   AQuery.Open;
end;

function TDMRef.CreateQuery(const prmSQL :array of string):TIBQuery;
var Query :TIBQuery;
    i     :Integer;
begin
   Query := TIBQuery.Create(nil);
   Query.DataBase    := BDContab;
   Query.Transaction := BDContab.DefaultTransaction;
   for i := Low(prmSQL) to High(prmSQL) do begin
       Query.SQL.Add(prmSQL[i]);
   end;
   Result := Query;
end;

function TDMRef.CreateQueryConsolida(const prmSQL :array of string):TIBQuery;
var Query :TIBQuery;
    i     :Integer;
begin
   Query := TIBQuery.Create(nil);
   Query.DataBase    := IBDConsolida;
   Query.Transaction := IBDConsolida.DefaultTransaction;
   for i := Low(prmSQL) to High(prmSQL) do begin
       Query.SQL.Add(prmSQL[i]);
   end;
   Result := Query;
end;

function TDMRef.CreateQueryEjAnterior(const prmSQL :array of string):TIBQuery;
var Query :TIBQuery;
    i     :Integer;
begin
   Query := TIBQuery.Create(nil);
   Query.DataBase    := BDEjAnterior;
   Query.Transaction := BdEjAnterior.DefaultTransaction;
   for i := Low(prmSQL) to High(prmSQL) do begin
       Query.SQL.Add(prmSQL[i]);
   end;
   Result := Query;
end;

procedure TDMRef.AbrirDataSets;
begin
   OpenQuery(QParametros, 'SELECT * FROM PARAMETROS ORDER BY ID_PARAMETROS DESC');

   OpenQuery(QPaisNom, 'SELECT * FROM PAISES ORDER BY NOMBRE');

   OpenQuery(QProvinciasNom  , 'SELECT * FROM PROVINCIAS   ORDER BY NOMBRE         ');
   OpenQuery(QSeccionNom     , 'SELECT * FROM SECCION      ORDER BY ID_SECCION     ');
   OpenQuery(QSeccionNom     , 'SELECT * FROM SECCION      ORDER BY NOMBRE         ');
   OpenQuery(QProyecto       , 'SELECT * FROM PROYECTO     ORDER BY ID_PROYECTO    ');
   OpenQuery(QProyectoNom    , 'SELECT * FROM PROYECTO     ORDER BY NOMBRE         ');
   OpenQuery(QDepartamento   , 'SELECT * FROM DEPARTAMENTO ORDER BY ID_DEPARTAMENTO');
   OpenQuery(QDepartamentoNom, 'SELECT * FROM DEPARTAMENTO ORDER BY NOMBRE         ');
   OpenQuery(QDelegacion     , 'SELECT * FROM DELEGACION   ORDER BY ID_DELEGACION  ');
   OpenQuery(QDelegacionNom  , 'SELECT * FROM DELEGACION   ORDER BY NOMBRE         ');
   OpenQuery(QAnaliticas     , 'SELECT * FROM ANALITICAS   ORDER BY CUENTA         ');
   OpenQuery(QAnaliticasNom  , 'SELECT * FROM ANALITICAS   ORDER BY NOMBRE         ');
   OpenQuery(QComercial      , 'SELECT * FROM COMERCIALES  ORDER BY COMERCIAL      ');
   OpenQuery(QComercialNom   , 'SELECT * FROM COMERCIALES  ORDER BY NOMBRE         ');
   OpenQuery(QFormaPago      , 'SELECT * FROM FORMAS WHERE OBSOLETO <> "S" ORDER BY FORMAPAGO');
   OpenQuery(QFormaPagoNom   , 'SELECT * FROM FORMAS WHERE OBSOLETO <> "S" ORDER BY DESCRIBE');
   OpenQuery(QTipodiario     , 'SELECT * FROM TIPODIARIO   ORDER BY TIPODIARIO     ');
   OpenQuery(QTipodiarioNom  , 'SELECT * FROM TIPODIARIO   ORDER BY DESCRIPCION    ');

   Config.ActiveDS_BUSINESS := DmRef.QParametrosNOMBREFISCAL.AsString;
end;

procedure TDMRef.CerrarDataSets;
var i: Integer;
begin
   for i := 0 to ComponentCount - 1 do begin
      if Components[i] is TDataSet then begin
         try
            TDataSet(Components[i]).Close;
         except
            ShowMessage('Error datamodulo al cerrar la tabla ' + TDataSet(Components[i]).Name);
         end;
      end;
   end;
end;

procedure TDMRef.ConectarBDEmpresa(prmCD_EMPRESA :string);
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try Q.Database := DMControlRef.BDControl;
       Q.SQL.Add('SELECT NOMBRE, UBICACION                 ');
       Q.SQL.Add('FROM   EMPRESAS                          ');
       Q.SQL.Add('WHERE  UPPER(NOMBRE) = UPPER(:prmNOMBRE) ');
       Q.ParamByName('prmNOMBRE').AsString := prmCD_EMPRESA;
       Q.Open;
       if not Q.EOF then begin
          try IBDConsolida.Close;
              IBDConsolida.DatabaseName := Config.ActiveServerRoot+Trim(Q.FieldByName('UBICACION').AsString);
              IBDConsolida.Connected := True;
              IBTConsolida.Active    := True;
          except Q.Close;
                 Q.Free;
                 DatabaseError('Error al conectar base de datos ' + prmCD_EMPRESA);
          end;
       end
       else DatabaseError('Error al conectar base de datos ' + prmCD_EMPRESA);
   finally Q.Close;
           Q.Free;
   end;
end;

procedure TDMRef.ConectarEmpresaAnterior(prmCD_EMPRESA :Integer);
var NomEmpresa: string;
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   Q.Database := DMControlRef.BDControl;
   try
      Q.SQL.Add('SELECT NOMBRE   ,           ');
      Q.SQL.Add('       UBICACION            ');
      Q.SQL.Add('FROM   EMPRESAS             ');
      Q.SQL.Add('WHERE ID_EMPRESA = :EMPRESA ');
      Q.ParamByName('EMPRESA').AsInteger := prmCD_EMPRESA;
      Q.Open;
      if not Q.EOF then begin
         try
            NomEmpresa := Q.FieldByName('NOMBRE').AsString;
            BDEjAnterior.Connected := False;
            BDEjAnterior.DatabaseName := Config.ActiveServerRoot+Trim(Q.FieldByName('UBICACION').AsString);
            BDEjAnterior.Connected   := True;
            TransBdEjAnterior.Active := True;
         except
            DatabaseError('Error al conectar base de datos ' + NomEmpresa);
         end;
      end
      else begin
         DatabaseError('Error al conectar base de datos ' + NomEmpresa);
      end;
   finally
      Q.Close;
      Q.Free;
   end;
end;

procedure TDMRef.EjecutarSQL(Sentencia: String);
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   Q.DataBase := BDContab;
   Q.SQL.Add(Sentencia);
   try     Q.ExecQuery;
           Q.Transaction.CommitRetaining;
   finally Q.Free;
   end;
end;

function TDMRef.ExistenRegistros(Tabla, Condicion: String): Boolean;
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

procedure TDMRef.Loaded;
var Directorio :string;
begin
   inherited;
   IBDConsolida.Connected := False;
   BDContab.Connected     := False;
   Directorio             := ExtractFilePath(Application.ExeName);
   IBT1.Active            := False;
   IBTConsolida.Active    := False;

   BDContab.Params.Clear;
   BDContab.Params.Add('user_name=SYSDBA');
   BDContab.Params.Add('password=masterkey');
   BDContab.DatabaseName := Config.ActiveServerRoot + Config.ActiveDBName;
   BDContab.Connected := True;
   IBT1.Active        := True;

   IBDConsolida.Params.Clear;
   IBDConsolida.Params.Add('user_name=SYSDBA');
   IBDConsolida.Params.Add('password=masterkey');
end;

function TDMRef.ObtenerValor(Campo, Tabla, Condicion: String; Orden: String): Variant;
begin
   QAuxiliar.Close;
   QAuxiliar.SQL.Clear;
   QAuxiliar.SQL.Add('SELECT ' + Campo + ' VALOR FROM ' + Tabla);
   if Trim(Condicion) <> '' then begin
      QAuxiliar.SQL.Add('WHERE ' + Condicion);
   end;
   if Trim(Orden) <> '' then begin
      QAuxiliar.SQL.Add('ORDER BY ' + Orden);
   end;
   QAuxiliar.Prepare;
   QAuxiliar.ExecQuery;
   if QAuxiliar.RecordCount <> 0 then begin
      Result := QAuxiliar.FieldByName('VALOR').AsVariant;
   end
   else begin
      Result := Null;
   end;
end;

procedure TDMRef.DataModuleCreate(Sender: TObject);
var i :Integer;
begin
   //activar transacciones
   for i := 0 to (ComponentCount - 1) do begin
      if Components[i] is TibTransaction then begin
         TibTransaction(Components[i]).Active := False;
         TibTransaction(Components[i]).Params.Clear;
         TibTransaction(Components[i]).Params.Add('Read_committed');
         TibTransaction(Components[i]).Params.Add('Rec_version');
         TibTransaction(Components[i]).Params.Add('Write');
         if (TibTransaction(Components[i]) <> IBTConsolida) and
            (TibTransaction(Components[i]) <> TransBdEjAnterior) then begin
            TibTransaction(Components[i]).Active := True;
         end;
      end;
   end;

   AbrirDataSets;

   DMRef.QParametros.Close;
   //DMRef.QParametros.Regenerar := True;
   DMRef.QParametros.Close;
   DMRef.QParametros.Open;

   Config.MaxLengthAccounts   := QParametrosLONGITUD_SUBCUENTAS.AsInteger;
   Config.ActiveWithSurcharge := QParametrosRECARGO.AsString = 'S';
end;

procedure TDMRef.DataModuleDestroy(Sender: TObject);
begin
   CerrarDataSets;
end;

end.
