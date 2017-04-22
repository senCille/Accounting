unit UFiltroSitPgGgModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  DBClient, frxClass, frxDBSet, frxExportPDF;

type
  TWhatConnection = (wcEjAnterior, wcContab, wcConsolida);
  
  TDataModuleFiltroSitPgGg = class(TDataModule)
    QSubCuentas: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    SSubcuentas: TDataSource;
    QEmpresas: TIBDataSet;
    QEmpresasNOMBRE: TIBStringField;
    QEmpresasCERRADA: TIBStringField;
    QEmpresasUBICACION: TIBStringField;
    QEmpresasID_EMPRESA: TIntegerField;
    QEmpresasULTIMA: TIBStringField;
    SEmpresas: TDataSource;
    DBEmpresa: TIBDatabase;
    Transaccion: TIBTransaction;
    QAnaliticas: TIBDataSet;
    SAnaliticas: TDataSource;
    QDelegaciones: TIBDataSet;
    SDelegaciones: TDataSource;
    QDepartamentos: TIBDataSet;
    SDepartamentos: TDataSource;
    QSecciones: TIBDataSet;
    SSecciones: TDataSource;
    QProyectos: TIBDataSet;
    SProyectos: TDataSource;
    QAnaliticasID_PROYECTO: TIBStringField;
    QAnaliticasID_SECCION: TIBStringField;
    QAnaliticasID_DEPARTAMENTO: TIBStringField;
    QAnaliticasID_DELEGACION: TIBStringField;
    QAnaliticasNOMBRE: TIBStringField;
    QAnaliticasCUENTA: TIBStringField;
    QDelegacionesID_DELEGACION: TIBStringField;
    QDelegacionesNOMBRE: TIBStringField;
    QDepartamentosID_DEPARTAMENTO: TIBStringField;
    QDepartamentosNOMBRE: TIBStringField;
    QSeccionesID_SECCION: TIBStringField;
    QSeccionesNOMBRE: TIBStringField;
    QProyectosID_PROYECTO: TIBStringField;
    QProyectosNOMBRE: TIBStringField;
    QInformesConta: TClientDataSet;
    QInformesContaFechaInicial: TDateTimeField;
    QInformesContaFecha: TDateTimeField;
    QInformesContaFechaFinal: TDateTimeField;
    QInformesContaAsiento: TIntegerField;
    QInformesContaApunte: TIntegerField;
    QInformesContaSubcuenta: TStringField;
    QInformesContaDescSubcuenta: TStringField;
    QInformesContaDescApunte: TStringField;
    QInformesContaContrapartida: TStringField;
    QInformesContaDebe: TFloatField;
    QInformesContaHaber: TFloatField;
    QInformesContaSaldo: TFloatField;
    QInformesContaFechaImpresion: TDateField;
    QInformesContaDebeHaber: TStringField;
    QInformesContaImporte: TFloatField;
    QInformesContaDescripcion: TStringField;
    QInformesContaFechaPrevista: TDateField;
    QInformesContaObservaciones: TStringField;
    QInformesContaNombreCliente: TStringField;
    QInformesContaID_Cliente: TIntegerField;
    QInformesContaNumLinea: TIntegerField;
    QInformesContaFactura: TStringField;
    QInformesContaNIF: TStringField;
    QInformesContaBaseImponible: TFloatField;
    QInformesContaCuotaIVA: TFloatField;
    QInformesContaTotalFactura: TFloatField;
    QInformesContaIVA: TFloatField;
    QInformesContaTitulo: TStringField;
    QInformesContaClienteProveedor: TStringField;
    QInformesContaProvincia: TStringField;
    QInformesContaImporteVentas: TFloatField;
    QInformesContaImporteCompras: TFloatField;
    QInformesContaTotalSumaDebe: TFloatField;
    QInformesContaTotalSumaHaber: TFloatField;
    QInformesContaTotalSumaSaldo: TFloatField;
    QInformesContaGasto: TIntegerField;
    QInformesContaBaseSinIVA: TFloatField;
    QInformesContaBaseConIVA: TFloatField;
    QInformesContaDescConcepto: TStringField;
    QInformesContaEjercicio: TIntegerField;
    QInformesContaDescPeriodo: TStringField;
    QInformesContaIngresos: TFloatField;
    QInformesContaGastos: TFloatField;
    QInformesContaRetenciones: TFloatField;
    QInformesContaMes: TIntegerField;
    QInformesContaTrimestre: TIntegerField;
    QInformesContaTotalBruto: TFloatField;
    QInformesContaTotalBruto16: TFloatField;
    QInformesContaTotalBruto0: TFloatField;
    QInformesContaBaseSinIVA16: TFloatField;
    QInformesContaBaseSinIVA0: TFloatField;
    QInformesContaBaseConIVA16: TFloatField;
    QInformesContaBaseConIVA0: TFloatField;
    QInformesContaCuotaIVA16: TFloatField;
    QInformesContaCuotaIVA0: TFloatField;
    QInformesContaRetenciones16: TFloatField;
    QInformesContaRetenciones0: TFloatField;
    QInformesContaTotalFactura16: TFloatField;
    QInformesContaTotalFactura0: TFloatField;
    QInformesContaDescInforme: TStringField;
    QInformesContaRecargo: TFloatField;
    QInformesContaCuotaRecargo: TFloatField;
    QInformesContaId_Conceptos: TStringField;
    QInformesContaCuenta_Analitica: TStringField;
    QInformesContaPUNTEO: TStringField;
    QInformesContaFSubcuenta: TStringField;
    QInformesContaFDescSubcuenta: TStringField;
    SInformesConta: TDataSource;
    HInfBalTitulos: TClientDataSet;
    HInfBalTitulosTitulo: TStringField;
    HInfBalTitulosTituloReves: TStringField;
    HInfBalTitulosDescripcionTitulo: TStringField;
    HInfBalTitulosTipoPagina: TStringField;
    HInfBalTitulosFormula: TStringField;
    HInfBalTitulosSaldoActualTitulo: TFloatField;
    HInfBalTitulosSaldoAnteriorTitulo: TFloatField;
    HInfBalTitulosSuma1: TStringField;
    HInfBalTitulosSuma2: TStringField;
    HInfBalTitulosSuma3: TStringField;
    HInfBalTitulosSuma4: TStringField;
    HInfBalTitulosSuma5: TStringField;
    HInfBalTitulosSuma6: TStringField;
    HInfBalTitulosSuma7: TStringField;
    HInfBalTitulosSuma8: TStringField;
    HInfBalTitulosResta1: TStringField;
    HInfBalTitulosResta2: TStringField;
    HInfBalTitulosResta3: TStringField;
    HInfBalTitulosResta4: TStringField;
    HInfBalTitulosResta5: TStringField;
    HInfBalTitulosResta6: TStringField;
    HInfBalTitulosResta7: TStringField;
    HInfBalTitulosResta8: TStringField;
    SInfBalTitulos: TDataSource;
    HInfBalGrupos: TClientDataSet;
    HInfBalGruposGrupo: TStringField;
    HInfBalGruposDescripcionGrupo: TStringField;
    HInfBalGruposSaldoActualGrupo: TFloatField;
    HInfBalGruposSaldoAnteriorGrupo: TFloatField;
    HInfBalGruposTitulo: TStringField;
    SInfBalGrupos: TDataSource;
    HInfBalCuentas: TClientDataSet;
    HInfBalCuentasFechaInicial: TDateTimeField;
    HInfBalCuentasFechaFinal: TDateTimeField;
    HInfBalCuentasFechaImpresion: TDateTimeField;
    HInfBalCuentasTitulo: TStringField;
    HInfBalCuentasTituloReves: TStringField;
    HInfBalCuentasDescripcionTitulo: TStringField;
    HInfBalCuentasTipoPagina: TStringField;
    HInfBalCuentasFormula: TStringField;
    HInfBalCuentasSaldoActualTitulo: TFloatField;
    HInfBalCuentasSaldoAnteriorTitulo: TFloatField;
    HInfBalCuentasSuma1: TStringField;
    HInfBalCuentasSuma2: TStringField;
    HInfBalCuentasSuma3: TStringField;
    HInfBalCuentasSuma4: TStringField;
    HInfBalCuentasSuma5: TStringField;
    HInfBalCuentasSuma6: TStringField;
    HInfBalCuentasSuma7: TStringField;
    HInfBalCuentasSuma8: TStringField;
    HInfBalCuentasResta1: TStringField;
    HInfBalCuentasResta2: TStringField;
    HInfBalCuentasResta3: TStringField;
    HInfBalCuentasResta4: TStringField;
    HInfBalCuentasResta5: TStringField;
    HInfBalCuentasResta6: TStringField;
    HInfBalCuentasResta7: TStringField;
    HInfBalCuentasResta8: TStringField;
    HInfBalCuentasGrupo: TStringField;
    HInfBalCuentasDescripcionGrupo: TStringField;
    HInfBalCuentasSaldoActualGrupo: TFloatField;
    HInfBalCuentasSaldoAnteriorGrupo: TFloatField;
    HInfBalCuentasCuenta: TStringField;
    HInfBalCuentasDescripcionCuenta: TStringField;
    HInfBalCuentasSaldoAnteriorCuenta: TFloatField;
    HInfBalCuentasSaldoActualCuenta: TFloatField;
    HInfBalCuentasTituloImpreso: TStringField;
    SInfBalCuentas: TDataSource;
    FRBalanceSituacionAnterior: TfrxReport;
    PDFExport: TfrxPDFExport;
    DBXENLACE1: TfrxDBDataset;
    DBXENLACE2: TfrxDBDataset;
    FRBalanceSituacion: TfrxReport;
    FRCuentaPPGGAnterior: TfrxReport;
    FRCuentaPPGG: TfrxReport;
    procedure QInformesContaBeforeInsert(DataSet: TDataSet);
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TFiltroSitPgGgModel = class(TCustomModel)
  private
    DM :TDataModuleFiltroSitPgGg;
    function Empty(prmCadena :string):Boolean;
    function PerteneceAnalitica(prmCuentaAnalitica :string;
                                FiltroCuenta       :string;
                                FiltroCuentaH      :string;
                                FiltroDelegacion   :string;
                                FiltroDepartamento :string;
                                FiltroSeccion      :string;
                                FiltroProyecto     :string;
                                prmConexion        :TWhatConnection):Boolean;
    procedure RellenaDatosDescripcion(prmFechaInicial   :TDateTime;
                                      prmFechaFinal     :TDateTime;
                                      prmFechaImpresion :TDateTime);
    procedure Formula(prmSuma :string; prmSigno :Integer);
    procedure RellenaSaldosCuentas(prmFechaInicial   :TDateTime;
                                   prmFechaFinal     :TDateTime;
                                   prmFechaImpresion :TDateTime);

    procedure FiltraRegistros(prmTipoInforme             :Integer;
                              prmSaldosEjercicioAnterior :Boolean;
                              prmEmpresaAnterior         :Integer);

    procedure InsertaLineasFormulas(prmFechaInicial   :TDateTime;
                                    prmFechaFinal     :TDateTime;
                                    prmFechaImpresion :TDateTime);

    procedure InicializarFicherosInformes;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure EmptyInformesContab;
    procedure GetFiltroDiario(var nPrimerAsiento, nUltimoAsiento :Integer;
                              var dPrimeraFecha , dUltimaFecha   :TDateTime);
    procedure ProcesaInfBalanceSituacion(prmTipoInforme             :Integer;
                                         prmFechaInicial            :TDateTime;
                                         prmFechaFinal              :TDateTime;
                                         prmFechaImpresion          :TDateTime;
                                         prmSaldosEjercicioAnterior :Boolean;
                                         prmTipoConcepto            :string;
                                         prmCuentaAnalitica         :string;
                                         prmDelegacion              :string;
                                         prmDepartamento            :string;
                                         prmSeccion                 :string;
                                         prmProyecto                :string;
                                         prmEmpresas                :TStrings;
                                         prmEmpresaAnterior         :Integer);
  end;

var
  DataModuleFiltroSitPgGg: TDataModuleFiltroSitPgGg;

implementation

uses Forms, UEspere, Math, IBX.IBQuery, DateUtils,
     Globales, DMControl, DM;

{$R *.dfm}

{ TFiltroSitPgGgModel }

constructor TFiltroSitPgGgModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleFiltroSitPgGg.Create(Application);
   if Initialize then DoInitialize;
end;

function TFiltroSitPgGgModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TFiltroSitPgGgModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TFiltroSitPgGgModel.DoInitialize;
begin
   inherited;
   DM.QEmpresas.Database := DMControlRef.BDControl;
   //DM.QEmpresas.Transaction.Active := True;
   DM.QEmpresas.Open;

   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;

   DM.QAnaliticas.Database := DB;
   DM.QAnaliticas.Open;

   DM.QDelegaciones.Database := DB;
   DM.QDelegaciones.Open;

   DM.QDepartamentos.Database := DB;
   DM.QDepartamentos.Open;

   DM.QSecciones.Database := DB;
   DM.QSecciones.Open;

   DM.QProyectos.Database := DB;
   DM.QProyectos.Open;

   DM.QInformesConta.IndexDefs.Clear;
   DM.QInformesConta.IndexDefs.Add('SUBCUENTA'  , 'SUBCUENTA', []);
   DM.QInformesConta.IndexDefs.Add('DESCRIPCION', 'DESCSUBCUENTA', []);

   DM.QInformesConta.CreateDataSet;
   DM.QInformesConta.Active := True;

   {-----------------------------------------------------------------------------------------------------------------------------}
   // Títulos
   DM.HInfBalTitulos.Active       := False;

   (*HInfBalTitulos.FieldDefs.Clear;
   HInfBalTitulos.FieldDefs.Add('Titulo'             , ftString,  2, False);
   HInfBalTitulos.FieldDefs.Add('TituloReves'        , ftString,  2, False);
   HInfBalTitulos.FieldDefs.Add('DescripcionTitulo'  , ftString, 50, False);
   HInfBalTitulos.FieldDefs.Add('TipoPagina'         , ftString, 10, False);
   HInfBalTitulos.FieldDefs.Add('Formula'            , ftString, 50, False);
   HInfBalTitulos.FieldDefs.Add('SaldoActualTitulo'  , ftFloat ,  0, False);
   HInfBalTitulos.FieldDefs.Add('SaldoAnteriorTitulo', ftFloat ,  0, False);
   HInfBalTitulos.FieldDefs.Add('Suma1'              , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Suma2'              , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Suma3'              , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Suma4'              , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Suma5'              , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Suma6'              , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Suma7'              , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Suma8'              , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Resta1'             , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Resta2'             , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Resta3'             , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Resta4'             , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Resta5'             , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Resta6'             , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Resta7'             , ftString,  3, False);
   HInfBalTitulos.FieldDefs.Add('Resta8'             , ftString,  3, False);*)

   DM.HInfBalTitulos.IndexDefs.Clear;
   DM.HInfBalTitulos.IndexDefs.Add('', 'Titulo;TituloReves', [ixPrimary]);
   DM.HInfBalTitulos.IndexDefs.Add('TituloReves', 'TituloReves', []);

   DM.HInfBalTitulos.CreateDataSet;
   DM.HInfBalTitulos.Active := True;

   // Grupos
   DM.HInfBalGrupos.Active       := False;

   (*HInfBalGrupos.FieldDefs.Clear;
   HInfBalGrupos.FieldDefs.Add('Grupo'             , ftString,  3, False);
   HInfBalGrupos.FieldDefs.Add('Titulo'            , ftString,  2, False);
   HInfBalGrupos.FieldDefs.Add('DescripcionGrupo'  , ftString, 50, False);
   HInfBalGrupos.FieldDefs.Add('SaldoActualGrupo'  , ftFloat ,  0, False);
   HInfBalGrupos.FieldDefs.Add('SaldoAnteriorGrupo', ftFloat ,  0, False);*)

   DM.HInfBalGrupos.IndexDefs.Clear;
   DM.HInfBalGrupos.IndexDefs.Add('', 'Grupo;Titulo', [ixPrimary]);
   DM.HInfBalGrupos.IndexDefs.Add('Titulo', 'Titulo;Grupo', []);

   DM.HInfBalGrupos.CreateDataSet;
   DM.HInfBalGrupos.Active := True;

   // Cuentas
   DM.HInfBalCuentas.Active       := False;
   
   (*HInfBalCuentas.FieldDefs.Clear;
   HInfBalCuentas.FieldDefs.Add('Cuenta'             , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Grupo'              , ftString  ,  3, False);
         // Títulos
   HInfBalCuentas.FieldDefs.Add('Titulo'             , ftString  ,  2, False);
   HInfBalCuentas.FieldDefs.Add('TituloReves'        , ftString  ,  2, False);
   HInfBalCuentas.FieldDefs.Add('TituloImpreso'      , ftString  ,  2, False);
   HInfBalCuentas.FieldDefs.Add('SaldoActualTitulo'  , ftFloat   ,  0, False);
   HInfBalCuentas.FieldDefs.Add('SaldoAnteriorTitulo', ftFloat   ,  0, False);
   HInfBalCuentas.FieldDefs.Add('DescripcionTitulo'  , ftString  , 50, False);
   HInfBalCuentas.FieldDefs.Add('TipoPagina'         , ftString  , 10, False);
   HInfBalCuentas.FieldDefs.Add('Formula'            , ftString  , 50, False);
   HInfBalCuentas.FieldDefs.Add('Suma1'              , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Suma2'              , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Suma3'              , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Suma4'              , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Suma5'              , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Suma6'              , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Suma7'              , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Suma8'              , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Resta1'             , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Resta2'             , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Resta3'             , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Resta4'             , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Resta5'             , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Resta6'             , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Resta7'             , ftString  ,  3, False);
   HInfBalCuentas.FieldDefs.Add('Resta8'             , ftString  ,  3, False);
            // Grupos
   HInfBalCuentas.FieldDefs.Add('DescripcionGrupo'   , ftString  , 50, False);
   HInfBalCuentas.FieldDefs.Add('SaldoActualGrupo'   , ftFloat   ,  0, False);
   HInfBalCuentas.FieldDefs.Add('SaldoAnteriorGrupo' , ftFloat   ,  0, False);
            // Cuentas
   HInfBalCuentas.FieldDefs.Add('DescripcionCuenta'  , ftString  , 50, False);
   HInfBalCuentas.FieldDefs.Add('SaldoActualCuenta'  , ftFloat   ,  0, False);
   HInfBalCuentas.FieldDefs.Add('SaldoAnteriorCuenta', ftFloat   ,  0, False);

   HInfBalCuentas.FieldDefs.Add('FechaInicial'       , ftDateTime,  0, False);
   HInfBalCuentas.FieldDefs.Add('FechaFinal'         , ftDateTime,  0, False);
   HInfBalCuentas.FieldDefs.Add('FechaImpresion'     , ftDateTime,  0, False);*)

   DM.HInfBalCuentas.IndexDefs.Clear;
   DM.HInfBalCuentas.IndexDefs.Add('', 'Cuenta;Grupo;Titulo', [ixPrimary]);
   //DM.HInfBalCuentas.IndexDefs.Add('', 'Cuenta;Grupo;Titulo;TituloReves;TituloImpreso;SaldoActualTitulo', [ixPrimary]);
   DM.HInfBalCuentas.IndexDefs.Add('Grupo' , 'Grupo;Cuenta'       , []);
   DM.HInfBalCuentas.IndexDefs.Add('Titulo', 'Titulo;Grupo;Cuenta', []);

   DM.HInfBalCuentas.CreateDataSet;
   DM.HInfBalCuentas.Active := True;
end;

procedure TFiltroSitPgGgModel.Refresh;
begin

end;

function TFiltroSitPgGgModel.Empty(prmCadena :string):Boolean;
begin
   Result := Trim(prmCadena) = '';
end;

procedure TFiltroSitPgGgModel.GetFiltroDiario(var nPrimerAsiento, nUltimoAsiento :Integer;
                                              var dPrimeraFecha , dUltimaFecha   :TDateTime);
var Q :TIBSQL;
begin
   {$Message Warn 'This stored procs shall be substituted by estandard queries, to improve compatibility'}
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DB;
      Q.SQL.Add('EXECUTE PROCEDURE DAME_PRIMER_ASIENTO');
      Q.ExecQuery;
      nPrimerAsiento := Q.FieldByName('ASIENTO').AsInteger;

      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('EXECUTE PROCEDURE DAME_ULTIMO_ASIENTO');
      Q.ExecQuery;
      nUltimoAsiento := Q.FieldByName('ASIENTO').AsInteger;

      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('EXECUTE PROCEDURE DAME_PRIMERA_FECHA_ASIENTO');
      Q.ExecQuery;
      dPrimeraFecha := Q.FieldByName('FECHA').AsDateTime;

      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('EXECUTE PROCEDURE DAME_ULTIMA_FECHA_ASIENTO');
      Q.ExecQuery;
      dUltimaFecha := Q.FieldByName('FECHA').AsDateTime;
   finally
      Q.Free;
   end;
end;

function TFiltroSitPgGgModel.PerteneceAnalitica(prmCuentaAnalitica :string;
                                                FiltroCuenta       :string;
                                                FiltroCuentaH      :string;
                                                FiltroDelegacion   :string;
                                                FiltroDepartamento :string;
                                                FiltroSeccion      :string;
                                                FiltroProyecto     :string;
                                                prmConexion        :TWhatConnection):Boolean;
var Q :TIBQuery;
begin
   if (FiltroCuenta       <> '') or
      (FiltroDelegacion   <> '') or
      (FiltroDepartamento <> '') or
      (FiltroSeccion      <> '') or
      (FiltroProyecto     <> '') then begin

      case prmConexion of
         wcEjAnterior : Q := DMRef.CreateQueryEjAnterior(['']);
         wcContab     : Q := DMRef.CreateQuery          (['']);
         wcConsolida  : Q := DMRef.CreateQueryConsolida (['']);
      end;

      //Q.Transaction := Database.DefaultTransaction;
                                       Q.SQL.Add('SELECT COUNT(*) CUANTAS                                       ');
                                       Q.SQL.Add('FROM   ANALITICAS                                             ');
                                       Q.SQL.Add('WHERE CUENTA          = :prmCUENTA_ANALITICA                  ');
      if FiltroCuentaH      <> '' then Q.SQL.Add('AND   CUENTA         >= :prmCUENTA AND CUENTA <= :prmCUENTA_H ') else
      if FiltroCuenta       <> '' then Q.SQL.Add('AND   CUENTA          = :prmCUENTA                            ');
      if FiltroDelegacion   <> '' then Q.SQL.Add('AND   ID_DELEGACION   = :prmID_DELEGACION                     ');
      if FiltroDepartamento <> '' then Q.SQL.Add('AND   ID_DEPARTAMENTO = :prmID_DEPARTAMENTO                   ');
      if FiltroSeccion      <> '' then Q.SQL.Add('AND   ID_SECCION      = :prmID_SECCION                        ');
      if FiltroProyecto     <> '' then Q.SQL.Add('AND   ID_PROYECTO     = :prmID_PROYECTO                       ');

      Q.ParamByName('prmCUENTA_ANALITICA').AsString := prmCuentaAnalitica;

      if FiltroCuenta       <> '' then Q.ParamByName('prmCUENTA'         ).AsString := FiltroCuenta;
      if FiltroCuentaH      <> '' then Q.ParamByName('prmCUENTA_H'       ).AsString := FiltroCuentaH;
      if FiltroDelegacion   <> '' then Q.ParamByName('prmID_DELEGACION'  ).AsString := FiltroDelegacion;
      if FiltroDepartamento <> '' then Q.ParamByName('prmID_DEPARTAMENTO').AsString := FiltroDepartamento;
      if FiltroSeccion      <> '' then Q.ParamByName('prmID_SECCION'     ).AsString := FiltroSeccion;
      if FiltroProyecto     <> '' then Q.ParamByName('prmID_PROYECTO'    ).AsString := FiltroProyecto;

      try Q.Open;
          Result := Q.FieldByName('CUANTAS').AsInteger > 0;
      finally Q.Free;
      end;
   end
   else Result := True;
end;

procedure TFiltroSitPgGgModel.RellenaDatosDescripcion(prmFechaInicial   :TDateTime;
                                                      prmFechaFinal     :TDateTime;
                                                      prmFechaImpresion :TDateTime);
begin
   { Indica la fechas del informe para incluirlas en la descripción. }
   DM.HInfBalCuentasFECHAINICIAL.AsDateTime   := prmFechaInicial;
   DM.HInfBalCuentasFECHAFINAL.AsDateTime     := prmFechaFinal;
   DM.HInfBalCuentasFECHAIMPRESION.AsDateTime := prmFechaImpresion;
end;

procedure TFiltroSitPgGgModel.Formula(prmSuma :string; prmSigno :Integer);
var nPor         :Integer;
    nActual1     :Double;
    nAnterior1   :Double;
    cTituloReves :string;
begin
   cTituloReves := DM.HInfBalTitulosTITULOREVES.AsString;
   if not (Trim(prmSuma) = '') then begin
      if Copy(prmSuma, 1, 1) = 'H' then nPor := -1
                                   else nPor :=  1;
      if Length(Trim(prmSuma)) > 2 then begin
         { GRUPO }
         if DM.HInfBalGrupos.Locate('GRUPO', prmSuma, []) then begin
            DM.HInfBalTitulos.Edit;
            if prmSigno = 1 then begin
               DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat   := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat   + (nPor * DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat);
               DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat := DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat + (nPor * DM.HInfBalGruposSALDOANTERIORGRUPO.AsFloat);
            end
            else begin
               DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat   := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat   - (nPor * DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat);
               DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat := DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat - (nPor * DM.HInfBalGruposSALDOANTERIORGRUPO.AsFloat);
            end;
            DM.HInfBalTitulos.Post;
         end;
      end else
      if DM.HInfBalTitulos.Locate('TITULO', Copy(prmSuma, 2, 1) + Copy(prmSuma, 1, 1), []) then begin { TITULO }
         nActual1   := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat;
         nAnterior1 := DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat;

         if DM.HInfBalTitulos.Locate('TITULO', cTituloReves, []) then begin
            DM.HInfBalTitulos.Edit;
            if prmSigno = 1 then begin
               DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat   := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat   + (nPor * nActual1);
               DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat := DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat + (nPor * nAnterior1);
            end
            else begin
               DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat   := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat   - (nPor * nActual1);
               DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat := DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat - (nPor * nAnterior1);
            end;
            DM.HInfBalTitulos.Post;
         end;
      end;
   end;
end;

procedure TFiltroSitPgGgModel.RellenaSaldosCuentas(prmFechaInicial   :TDateTime;
                                                   prmFechaFinal     :TDateTime;
                                                   prmFechaImpresion :TDateTime);
var j     :Integer;
    Campo :string;
    Letra :string;
begin
   DM.HInfBalCuentas.IndexName := 'Titulo';
   DM.HInfBalGrupos.IndexName  := 'Titulo';
   DM.HInfBalTitulos.IndexName := '';

   DM.HInfBalCuentas.First;
   DM.HInfBalTitulos.First;
   DM.HInfBalGrupos.First;

   while not DM.HInfBalTitulos.EOF do begin
      while not DM.HInfBalGrupos.EOF and
         (DM.HInfBalTitulosTITULO.AsString = DM.HInfBalGruposTITULO.AsString) do begin
         while not DM.HInfBalCuentas.EOF and (DM.HInfBalGruposGRUPO.AsString = DM.HInfBalCuentasGRUPO.AsString) do begin
            DM.HInfBalCuentas.Edit;
            RellenaDatosDescripcion(prmFechaInicial, prmFechaFinal, prmFechaImpresion);

            for j := 0 to DM.HInfBalTitulos.FieldCount - 1 do begin
               Campo := DM.HInfBalTitulos.Fields[j].FieldName;
               DM.HInfBalCuentas.FieldByName(Campo).Value := DM.HInfBalTitulos.FieldByName(Campo).Value;
            end;

            for j := 0 to DM.HInfBalGrupos.FieldCount - 1 do begin
               Campo := DM.HInfBalGrupos.Fields[j].FieldName;
               DM.HInfBalCuentas.FieldByName(Campo).Value := DM.HInfBalGrupos.FieldByName(Campo).Value;
            end;

            Letra := Copy(DM.HInfBalCuentasTITULO.AsString, 1, 1);
            if (Letra = 'P') or (Letra = 'H') then begin
               DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat   := (-1) * DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat;
               DM.HInfBalCuentasSALDOACTUALGRUPO.AsFloat    := (-1) * DM.HInfBalCuentasSALDOACTUALGRUPO.AsFloat;
               DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat   := (-1) * DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat;

               DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat := (-1) * DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat;
               DM.HInfBalCuentasSALDOANTERIORGRUPO.AsFloat  := (-1) * DM.HInfBalCuentasSALDOANTERIORGRUPO.AsFloat;
               DM.HInfBalCuentasSALDOANTERIORCUENTA.AsFloat := (-1) * DM.HInfBalCuentasSALDOANTERIORCUENTA.AsFloat;
            end;

            if (Letra = 'D') or (Letra = 'H') then begin
               DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat   := Abs(DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat  );
               DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat := Abs(DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat);
            end;

            DM.HInfBalCuentas.Post;
            DM.HInfBalCuentas.Next;
         end;
         DM.HInfBalGrupos.Next;
      end;
      DM.HInfBalTitulos.Next;
   end;
end;

procedure TFiltroSitPgGgModel.FiltraRegistros(prmTipoInforme             :Integer;
                                              prmSaldosEjercicioAnterior :Boolean;
                                              prmEmpresaAnterior         :Integer);
begin
   DM.HInfBalCuentas.IndexName := 'Titulo';
   DM.HInfBalCuentas.First;

   while not DM.HInfBalCuentas.EOF do begin
      if prmTipoInforme = INF_BALANCE_SITUACION then begin
         if (DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat   = 0) and
            (DM.HInfBalCuentasSALDOANTERIORCUENTA.AsFloat = 0) then begin
            DM.HInfBalCuentas.Delete;
         end else
         if (not prmSaldosEjercicioAnterior) and (prmEmpresaAnterior = 0) and
            (DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat = 0) then
         begin
            DM.HInfBalCuentas.Delete;
         end
         else DM.HInfBalCuentas.Next;
      end
      else begin
         if (DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat    = 0) and
            (DM.HInfBalCuentasSALDOANTERIORCUENTA.AsFloat  = 0) and
            (DM.HInfBalCuentasCUENTA.AsString             <> '') then begin
            DM.HInfBalCuentas.Delete;
         end
         else DM.HInfBalCuentas.Next;
      end;
   end;
end;

procedure TFiltroSitPgGgModel.InsertaLineasFormulas(prmFechaInicial   :TDateTime;
                                                    prmFechaFinal     :TDateTime;
                                                    prmFechaImpresion :TDateTime);
var Campo  :string;
    Letra  :string;
    Titulo :string;
    j      :Integer;
begin
   DM.HInfBalTitulos.IndexName := '';
   DM.HInfBalTitulos.First;

   DM.HInfBalCuentas.IndexName := 'Titulo';

   while not DM.HInfBalTitulos.EOF do begin
      if (DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat +
         DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat) <> 0 then begin
         DM.HInfBalCuentas.First;
         Titulo := DM.HInfBalTitulosTITULO.AsString;
         if not DM.HInfBalCuentas.Locate('TITULO', Titulo, []) then begin
            DM.HInfBalCuentas.Append;
            //DM.HInfBalCuentas.Edit;
            RellenaDatosDescripcion(prmFechaInicial, prmFechaFinal, prmFechaImpresion);
            for J := 0 to DM.HInfBalTitulos.FieldCount - 1 do begin
               Campo := DM.HInfBalTitulos.Fields[J].FieldName;
               DM.HInfBalCuentas.FieldByName(Campo).Value := DM.HInfBalTitulos.FieldByName(Campo).Value;
            end;

            Letra := Copy(DM.HInfBalCuentasTITULO.AsString, 1, 1);
            if (Letra = 'P') or (Letra = 'H') then begin
               DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat   := (-1) * DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat;
               DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat := (-1) * DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat;
            end;

            if (Letra = 'D') or (Letra = 'H') then begin
               DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat   := Abs(DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat);
               DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat := Abs(DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat);
            end;

            DM.HInfBalCuentas.Post;
         end;
      end;
      DM.HInfBalTitulos.Next;
   end;
end;

procedure TFiltroSitPgGgModel.InicializarFicherosInformes;
begin
   DM.HInfBalCuentas.EmptyDataSet;
   DM.HInfBalGrupos.EmptyDataSet;
   DM.HInfBalTitulos.EmptyDataSet;
end;

procedure TDataModuleFiltroSitPgGg.QInformesContaBeforeInsert( DataSet: TDataSet);
begin
   Application.ProcessMessages;
   if Config.AbortedProcess then begin
      Config.AbortedProcess := False;
      DatabaseError('Proceso cancelado');
   end;
end;

procedure TFiltroSitPgGgModel.EmptyInformesContab;
begin
   DM.QInformesConta.EmptyDataSet;
end;

procedure TFiltroSitPgGgModel.ProcesaInfBalanceSituacion(prmTipoInforme             :Integer;
                                                         prmFechaInicial            :TDateTime;
                                                         prmFechaFinal              :TDateTime;
                                                         prmFechaImpresion          :TDateTime;
                                                         prmSaldosEjercicioAnterior :Boolean;
                                                         prmTipoConcepto            :string;
                                                         prmCuentaAnalitica         :string;
                                                         prmDelegacion              :string;
                                                         prmDepartamento            :string;
                                                         prmSeccion                 :string;
                                                         prmProyecto                :string;
                                                         prmEmpresas                :TStrings;
                                                         prmEmpresaAnterior         :Integer);
var
   InProgress           :TEspere;
   {-----------------------------}
   QCuentas             :TIBQuery;
   QTitulos             :TIBQuery;
   QGrupos              :TIBQuery;
   QDiario              :TIBQuery;
   QDiarioConsolida     :TIBQuery;
   QConsolida           :TIBQuery;
   QSaldoAnteriorCuenta :TIBQuery;
   {-----------------------------}
   nIndice              :Integer;
   MesInicio            :Integer;
   MesFinal             :Integer;
   IndCons              :Integer;
   j                    :Integer;
   aFormula             :array [0..8] of string;
   aSaldo               :array [0..8] of Double;
   Cuenta               :string;
   DebeHaber            :string;
   Grupo1               :string;
   Grupo2               :string;
   Grupo                :string;
   Letra1               :string;
   Letra2               :string;
   Letra                :string;
   Titulo               :string;
   TipoPagina           :string;
   nImporteAnt          :Double;
   nImporte             :Double;
   nImporteCons         :Double;
   nTotDb               :Double;
   nTotHb               :Double;
   nTot129              :Double;
   nTotDbEjAnt          :Double;
   nTotHbEjAnt          :Double;
   nTotAnt129           :Double;
   nTotDbAnt129         :Double;
   nTotHbAnt129         :Double;
   nSaldoAux            :Double;
   aMeses               :array[1..12] of Double;
   Campo                :string;
   TextoFormula         :string;
   IncluirEnInforme     :Boolean;
   lBorraAnterior       :Boolean;
   FechaInicialAnterior :TDateTime;
   FechaFinalAnterior   :TDateTime;
   nEjercicio           :Word;
   nMes                 :Word;
   nDia                 :Word;
   ListaQuery           :TStringList;
begin
   InProgress := InProgressView('Generando informe ...');
   try 
      Config.AbortedProcess := False;

      DM.HInfBalTitulos.Open;
      DM.HInfBalGrupos.Open;        
      DM.HInfBalCuentas.Open;

      DM.HInfBalTitulos.EmptyDataSet;
      DM.HInfBalGrupos.EmptyDataSet;
      DM.HInfBalCuentas.EmptyDataSet;

      { Establece índices }
      DM.HInfBalTitulos.IndexName := '';
      DM.HInfBalGrupos.IndexName  := '';
      DM.HInfBalCuentas.IndexName := '';

      { Inicialización de variables }
      for j := 0 to 8 do begin
         aFormula[j] := '';
         aSaldo  [j] := 0;
      end;

      MesInicio := MonthOf(prmFechaInicial);
      MesFinal  := MonthOf(prmFechaFinal  );

      { Consolida empresas }
      QConsolida := DMRef.CreateQueryConsolida(['']);

      { Selección de títulos }
      QTitulos := DMRef.CreateQuery(['SELECT * FROM TITULOS ORDER BY TITULO']);
      QTitulos.Prepare;
      QTitulos.Open;

      { Selección de grupos }
      QGrupos := DMRef.CreateQuery(['SELECT * FROM GRUPOS ORDER BY GRUPO']);
      QGrupos.Prepare;
      QGrupos.Open;

      { Selección de cuentas }
      QCuentas := DMRef.CreateQuery(['SELECT * FROM CUENTAS ORDER BY CUENTA']);
      QCuentas.Prepare;
      QCuentas.Open;

      if prmEmpresaAnterior <> 0 then begin
         { Inicializacion de Fechas para la consulta }
         DecodeDate(prmFechaInicial, nEjercicio, nMes, nDia);
         FechaInicialAnterior := EncodeDate(nEjercicio - 1, nMes, nDia);
         DecodeDate(prmFechaFinal, nEjercicio, nMes, nDia);
         FechaFinalAnterior := EncodeDate(nEjercicio - 1, nMes, nDia);

         { Conexion de empresa año anterior }
         DMRef.ConectarEmpresaAnterior(prmEmpresaAnterior);

         { Consulta de los importes }
         QSaldoAnteriorCuenta := DMRef.CreateQueryEjAnterior(
             ['SELECT D.IMPORTE         ,                       ',
              '       D.CUENTA_ANALITICA,                       ',
              '       D.DEBEHABER                               ',
              'FROM DIARIO    D,                                ',
              '     CONCEPTOS T                                 ',
              'WHERE D.FECHA                  >= :FECHAINICIAL  ',
              'AND   D.FECHA                  <= :FECHAFINAL    ',
              'AND   D.ID_CONCEPTOS            = T.ID_CONCEPTOS ', {no deben aparecer los apuntes con conceptos de cierre Y sólo }
              'AND   T.TIPOCONCEPTO           <> "C"            ', {los conceptos de tipo de contabilidad/clase normales         }
              'AND   T.TIPOCONTABILIDAD        = "N"            ',
              'AND   SUBSTR(D.SUBCUENTA, 1, 3) = :CUENTA        ']);
      end;

      try
         { Carga de CUENTAS }
         while not QCuentas.EOF do begin
            Grupo1 := QCuentas.FieldByName('GRUPO1').AsString;
            Grupo2 := QCuentas.FieldByName('GRUPO2').AsString;
            Letra1 := Copy(Grupo1, 1, 1);
            Letra2 := Copy(Grupo2, 1, 1);

            if (prmTipoInforme = INF_BALANCE_SITUACION) and ((Empty(Grupo1) and Empty(Grupo2) ) or
               (Empty(Grupo1) and ((Letra2 = 'D') or (Letra2 = 'H'))) or
               (Empty(Grupo2) and ((Letra1 = 'D') or (Letra1 = 'H'))) or
               (((Letra1 = 'D') or (Letra1 = 'H')) and ((Letra2 = 'D') or (Letra2 = 'H')))) then
            begin
               QCuentas.Next;
               Continue;
            end;

            if (prmTipoInforme = INF_BALANCE_PERDIDAS_Y_GANANCIAS) and
               ((Empty(Grupo1) and Empty(Grupo2)) or (Empty(Grupo1) and
               ((Letra2 = 'A') or (Letra2 = 'P'))) or (Empty(Grupo2) and ((Letra1 = 'A') or (Letra1 = 'P'))) or
               (((Letra1 = 'A') or (Letra1 = 'P')) and ((Letra2 = 'A') or (Letra2 = 'P')))) then
            begin
               QCuentas.Next;
               Continue;
            end;

            { Calcula saldo ejercicio anterior }
            nImporteAnt := 0;
            if prmSaldosEjercicioAnterior then begin
               aMeses[1]  := QCuentas.FieldByName('ANTDB01').AsFloat - QCuentas.FieldByName('ANTHB01').AsFloat;
               aMeses[2]  := QCuentas.FieldByName('ANTDB02').AsFloat - QCuentas.FieldByName('ANTHB02').AsFloat;
               aMeses[3]  := QCuentas.FieldByName('ANTDB03').AsFloat - QCuentas.FieldByName('ANTHB03').AsFloat;
               aMeses[4]  := QCuentas.FieldByName('ANTDB04').AsFloat - QCuentas.FieldByName('ANTHB04').AsFloat;
               aMeses[5]  := QCuentas.FieldByName('ANTDB05').AsFloat - QCuentas.FieldByName('ANTHB05').AsFloat;
               aMeses[6]  := QCuentas.FieldByName('ANTDB06').AsFloat - QCuentas.FieldByName('ANTHB06').AsFloat;
               aMeses[7]  := QCuentas.FieldByName('ANTDB07').AsFloat - QCuentas.FieldByName('ANTHB07').AsFloat;
               aMeses[8]  := QCuentas.FieldByName('ANTDB08').AsFloat - QCuentas.FieldByName('ANTHB08').AsFloat;
               aMeses[9]  := QCuentas.FieldByName('ANTDB09').AsFloat - QCuentas.FieldByName('ANTHB09').AsFloat;
               aMeses[10] := QCuentas.FieldByName('ANTDB10').AsFloat - QCuentas.FieldByName('ANTHB10').AsFloat;
               aMeses[11] := QCuentas.FieldByName('ANTDB11').AsFloat - QCuentas.FieldByName('ANTHB11').AsFloat;
               aMeses[12] := QCuentas.FieldByName('ANTDB12').AsFloat - QCuentas.FieldByName('ANTHB12').AsFloat;

               for j := MesInicio to MesFinal do begin
                  nImporteAnt := nImporteAnt + aMeses[j];
               end;

               { Empresas consolidadas }
               for IndCons := 0 to prmEmpresas.Count - 1 do begin
                  DMRef.ConectarBDEmpresa(prmEmpresas.Strings[IndCons]);
                  QConsolida.Close;
                  QConsolida.Database    := DMRef.IBDConsolida;
                  QConsolida.Transaction := DmRef.IBDConsolida.DefaultTransaction;
                  QConsolida.SQL.Clear;
                  QConsolida.SQL.Add('SELECT * FROM CUENTAS WHERE CUENTA = :prmCUENTA');
                  QConsolida.ParamByName('CUENTA').AsString := QCuentas.FieldByName('prmCUENTA').AsString;
                  if not QConsolida.EOF then begin
                     nImporteCons := 0;
                     aMeses[1]    := QConsolida.FieldByName('ANTDB01').AsFloat - QConsolida.FieldByName('ANTHB01').AsFloat;
                     aMeses[2]    := QConsolida.FieldByName('ANTDB02').AsFloat - QConsolida.FieldByName('ANTHB02').AsFloat;
                     aMeses[3]    := QConsolida.FieldByName('ANTDB03').AsFloat - QConsolida.FieldByName('ANTHB03').AsFloat;
                     aMeses[4]    := QConsolida.FieldByName('ANTDB04').AsFloat - QConsolida.FieldByName('ANTHB04').AsFloat;
                     aMeses[5]    := QConsolida.FieldByName('ANTDB05').AsFloat - QConsolida.FieldByName('ANTHB05').AsFloat;
                     aMeses[6]    := QConsolida.FieldByName('ANTDB06').AsFloat - QConsolida.FieldByName('ANTHB06').AsFloat;
                     aMeses[7]    := QConsolida.FieldByName('ANTDB07').AsFloat - QConsolida.FieldByName('ANTHB07').AsFloat;
                     aMeses[8]    := QConsolida.FieldByName('ANTDB08').AsFloat - QConsolida.FieldByName('ANTHB08').AsFloat;
                     aMeses[9]    := QConsolida.FieldByName('ANTDB09').AsFloat - QConsolida.FieldByName('ANTHB09').AsFloat;
                     aMeses[10]   := QConsolida.FieldByName('ANTDB10').AsFloat - QConsolida.FieldByName('ANTHB10').AsFloat;
                     aMeses[11]   := QConsolida.FieldByName('ANTDB11').AsFloat - QConsolida.FieldByName('ANTHB11').AsFloat;
                     aMeses[12]   := QConsolida.FieldByName('ANTDB12').AsFloat - QConsolida.FieldByName('ANTHB12').AsFloat;
                     for j := MesInicio to MesFinal do begin
                        nImporteCons := nImporteCons + aMeses[j];
                     end;
                     nImporteAnt  := nImporteAnt + nImporteCons;
                  end;
               end;
            end else
            if prmEmpresaAnterior <> 0 then begin
               { No se puede consolidar de esta forma con años anteriores }
               QSaldoAnteriorCuenta.Close;
               QSaldoAnteriorCuenta.ParamByName('FechaInicial').AsDateTime := FechaInicialAnterior;
               QSaldoAnteriorCuenta.ParamByName('FechaFinal'  ).AsDateTime := FechaFinalAnterior;
               QSaldoAnteriorCuenta.ParamByName('Cuenta'      ).AsString   := QCuentas.FieldByName('Cuenta').AsString;
               QSaldoAnteriorCuenta.Open;
               nTotDbEjAnt := 0;
               nTotHbEjAnt := 0;
               while not QSaldoAnteriorCuenta.EOF do begin
                  if not PerteneceAnalitica(QSaldoAnteriorCuenta.FieldByName('CUENTA_ANALITICA').AsString,
                                            prmCuentaAnalitica,
                                            '',
                                            prmDelegacion,
                                            prmDepartamento,
                                            prmSeccion,
                                            prmProyecto,
                                            wcEjAnterior) then begin
                     QSaldoAnteriorCuenta.Next;
                     Continue;
                  end;
                  if QSaldoAnteriorCuenta.FieldByName('DebeHaber').AsString = 'D' then begin
                     nTotDbEjAnt := nTotDbEjAnt + QSaldoAnteriorCuenta.FieldByName('Importe').AsFloat;
                  end
                  else begin
                     nTotHbEjAnt := nTotHbEjAnt + QSaldoAnteriorCuenta.FieldByName('Importe').AsFloat;
                  end;
                  QSaldoAnteriorCuenta.Next;
               end;
               nImporteAnt := nTotDbEjAnt - nTotHbEjAnt;
            end;

            if not Empty(Grupo1) then begin
               DM.HInfBalCuentas.Append;
               //HInfBalCuentas.Edit;

               { Título, Grupo y descripción de cuenta }
               DM.HInfBalCuentasCUENTA.AsString            := QCuentas.FieldByName('CUENTA').AsString;
               DM.HInfBalCuentasDESCRIPCIONCUENTA.AsString := QCuentas.FieldByName('DESCRIPCION').AsString;
               DM.HInfBalCuentasGRUPO.AsString             := Grupo1;
               DM.HInfBalCuentasTITULO.AsString            := Copy(Grupo1, 1, 2);

               { Saldo del ejercicio anterior }
               DM.HInfBalCuentasSALDOANTERIORCUENTA.AsFloat := nImporteAnt;

               DM.HInfBalCuentas.Post;
            end;

            if not Empty(Grupo2) then begin
               DM.HInfBalCuentas.Append;
               //DM.HInfBalCuentas.Edit;

               { Título, Grupo y descripción de cuenta }
               DM.HInfBalCuentasCUENTA.AsString             := QCuentas.FieldByName('CUENTA').AsString;
               DM.HInfBalCuentasDESCRIPCIONCUENTA.AsString  := QCuentas.FieldByName('DESCRIPCION').AsString;
               DM.HInfBalCuentasGRUPO.AsString              := Grupo2;
               DM.HInfBalCuentasTITULO.AsString             := Copy(Grupo2, 1, 2);
               { Saldo del ejercicio anterior }
               DM.HInfBalCuentasSALDOANTERIORCUENTA.AsFloat := nImporteAnt;
               DM.HInfBalCuentas.Post;
            end;
            QCuentas.Next;
         end; {QCuentas.EOF}

         { Carga de TITULOS }
         while not QTitulos.EOF do begin
            Titulo := QTitulos.FieldByName('TITULO').AsString;
            Letra  := Copy(Titulo, 1, 1);

            if (prmTipoInforme = INF_BALANCE_SITUACION) then begin
               if ((Letra = 'D') or (Letra = 'H')) then begin
                  QTitulos.Next;
                  Continue;
               end
               else begin
                  if (Letra = 'A') then TipoPagina := 'ACTIVO' else
                  if (Letra = 'P') then TipoPagina := 'PASIVO';
               end;
            end;

            if (prmTipoInforme = INF_BALANCE_PERDIDAS_Y_GANANCIAS) then begin
               if ((Letra = 'A') or (Letra = 'P')) then begin
                  QTitulos.Next;
                  Continue;
               end
               else begin
                  if (Letra = 'D') then TipoPagina := 'DEBE' else
                  if (Letra = 'H') then TipoPagina := 'HABER';
               end;
            end;

            DM.HInfBalTitulos.Append;
            DM.HInfBalTitulosTIPOPAGINA.AsString        := TipoPagina;
            DM.HInfBalTitulosTITULO.AsString            := QTitulos.FieldByName('TITULO').AsString;
            DM.HInfBalTitulosTITULOREVES.AsString       := Copy(QTitulos.FieldByName('TITULO').AsString, 2, 1) + Letra;
            DM.HInfBalTitulosDESCRIPCIONTITULO.AsString := QTitulos.FieldByName('DESCRIPCION').AsString;
            DM.HInfBalTitulosSUMA1.AsString             := QTitulos.FieldByName('SUMA1' ).AsString;
            DM.HInfBalTitulosSUMA2.AsString             := QTitulos.FieldByName('SUMA2' ).AsString;
            DM.HInfBalTitulosSUMA3.AsString             := QTitulos.FieldByName('SUMA3' ).AsString;
            DM.HInfBalTitulosSUMA4.AsString             := QTitulos.FieldByName('SUMA4' ).AsString;
            DM.HInfBalTitulosSUMA5.AsString             := QTitulos.FieldByName('SUMA5' ).AsString;
            DM.HInfBalTitulosSUMA6.AsString             := QTitulos.FieldByName('SUMA6' ).AsString;
            DM.HInfBalTitulosSUMA7.AsString             := QTitulos.FieldByName('SUMA7' ).AsString;
            DM.HInfBalTitulosSUMA8.AsString             := QTitulos.FieldByName('SUMA8' ).AsString;
            DM.HInfBalTitulosRESTA1.AsString            := QTitulos.FieldByName('RESTA1').AsString;
            DM.HInfBalTitulosRESTA2.AsString            := QTitulos.FieldByName('RESTA2').AsString;
            DM.HInfBalTitulosRESTA3.AsString            := QTitulos.FieldByName('RESTA3').AsString;
            DM.HInfBalTitulosRESTA4.AsString            := QTitulos.FieldByName('RESTA4').AsString;
            DM.HInfBalTitulosRESTA5.AsString            := QTitulos.FieldByName('RESTA5').AsString;
            DM.HInfBalTitulosRESTA6.AsString            := QTitulos.FieldByName('RESTA6').AsString;
            DM.HInfBalTitulosRESTA7.AsString            := QTitulos.FieldByName('RESTA7').AsString;
            DM.HInfBalTitulosRESTA8.AsString            := QTitulos.FieldByName('RESTA8').AsString;

            TextoFormula := '';
            if not Empty(QTitulos.FieldByName('SUMA1' ).AsString) then TextoFormula := QTitulos.FieldByName('SUMA1').AsString;
            if not Empty(QTitulos.FieldByName('SUMA2' ).AsString) then TextoFormula := TextoFormula + '+' + QTitulos.FieldByName('SUMA2' ).AsString;
            if not Empty(QTitulos.FieldByName('SUMA3' ).AsString) then TextoFormula := TextoFormula + '+' + QTitulos.FieldByName('SUMA3' ).AsString;
            if not Empty(QTitulos.FieldByName('SUMA4' ).AsString) then TextoFormula := TextoFormula + '+' + QTitulos.FieldByName('SUMA4' ).AsString;
            if not Empty(QTitulos.FieldByName('SUMA5' ).AsString) then TextoFormula := TextoFormula + '+' + QTitulos.FieldByName('SUMA5' ).AsString;
            if not Empty(QTitulos.FieldByName('SUMA6' ).AsString) then TextoFormula := TextoFormula + '+' + QTitulos.FieldByName('SUMA6' ).AsString;
            if not Empty(QTitulos.FieldByName('SUMA7' ).AsString) then TextoFormula := TextoFormula + '+' + QTitulos.FieldByName('SUMA7' ).AsString;
            if not Empty(QTitulos.FieldByName('SUMA8' ).AsString) then TextoFormula := TextoFormula + '+' + QTitulos.FieldByName('SUMA8' ).AsString;
            if not Empty(QTitulos.FieldByName('RESTA1').AsString) then TextoFormula := TextoFormula + '-' + QTitulos.FieldByName('RESTA1').AsString;
            if not Empty(QTitulos.FieldByName('RESTA2').AsString) then TextoFormula := TextoFormula + '-' + QTitulos.FieldByName('RESTA2').AsString;
            if not Empty(QTitulos.FieldByName('RESTA3').AsString) then TextoFormula := TextoFormula + '-' + QTitulos.FieldByName('RESTA3').AsString;
            if not Empty(QTitulos.FieldByName('RESTA4').AsString) then TextoFormula := TextoFormula + '-' + QTitulos.FieldByName('RESTA4').AsString;
            if not Empty(QTitulos.FieldByName('RESTA5').AsString) then TextoFormula := TextoFormula + '-' + QTitulos.FieldByName('RESTA5').AsString;
            if not Empty(QTitulos.FieldByName('RESTA6').AsString) then TextoFormula := TextoFormula + '-' + QTitulos.FieldByName('RESTA6').AsString;
            if not Empty(QTitulos.FieldByName('RESTA7').AsString) then TextoFormula := TextoFormula + '-' + QTitulos.FieldByName('RESTA7').AsString;
            if not Empty(QTitulos.FieldByName('RESTA8').AsString) then TextoFormula := TextoFormula + '-' + QTitulos.FieldByName('RESTA8').AsString;

            DM.HInfBalTitulosFORMULA.AsString := TextoFormula;
            DM.HInfBalTitulos.Post;

            QTitulos.Next;
         end; {WHILE NOT QTitulos.EOF}

         { Carga GRUPOS }
         while not QGrupos.EOF do begin
            Grupo := QGrupos.FieldByName('GRUPO').AsString;
            Letra := Copy(Grupo, 1, 1);

            if (prmTipoInforme = INF_BALANCE_SITUACION) and ((Letra = 'D') or (Letra = 'H')) then begin
               QGrupos.Next;
               Continue;
            end;

            if (prmTipoInforme = INF_BALANCE_PERDIDAS_Y_GANANCIAS) and ((Letra = 'A') or (Letra = 'P')) then begin
               QGrupos.Next;
               Continue;
            end;

            DM.HInfBalGrupos.Append;
            //DM.HInfBalGrupos.Edit;
            DM.HInfBalGruposGRUPO.AsString            :=      QGrupos.FieldByName('GRUPO'      ).AsString;
            DM.HInfBalGruposDESCRIPCIONGRUPO.AsString :=      QGrupos.FieldByName('DESCRIPCION').AsString;
            DM.HInfBalGruposTITULO.AsString           := Copy(QGrupos.FieldByName('GRUPO'      ).AsString, 1, 2);
            DM.HInfBalGrupos.Post;
            QGrupos.Next;
         end;

         { Carga de saldos anteriores por acumulados de cuentas ya cargados antes, por meses o por seleccion de empresa año anterior }
         if prmSaldosEjercicioAnterior or (prmEmpresaAnterior <> 0) then begin
            DM.HInfBalCuentas.IndexName := 'Titulo';
            DM.HInfBalCuentas.First;
            while not DM.HInfBalCuentas.EOF do begin
               { Carga GRUPOS }
               if DM.HInfBalGrupos.Locate('GRUPO', DM.HInfBalCuentasGRUPO.AsString, []) then begin
                  DM.HInfBalGrupos.Edit;
                  DM.HInfBalGruposSALDOANTERIORGRUPO.AsFloat := DM.HInfBalGruposSALDOANTERIORGRUPO.AsFloat + DM.HInfBalCuentasSALDOANTERIORCUENTA.AsFloat;
                  DM.HInfBalGrupos.Post;
               end;
               { Carga TITULOS }
               if DM.HInfBalTitulos.Locate('TITULO', Copy(DM.HInfBalCuentasGRUPO.AsString, 1, 2), []) then begin
                  DM.HInfBalTitulos.Edit;
                  DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat := DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat + DM.HInfBalCuentasSALDOANTERIORCUENTA.AsFloat;
                  DM.HInfBalTitulos.Post;
               end;
               DM.HInfBalCuentas.Next;
            end;
            DM.HInfBalCuentas.IndexName := '';
         end;

         { Carga de saldos actuales según fecha }
         nTotDb := 0;
         nTotHb := 0;

         { Selecciona los apuntes de la empresa actual }
         QDiario := TIBQuery.Create(nil);
         QDiario.Close;
         QDiario.SQL.Clear;
         QDiario.Database    := DMRef.BDContab;
         QDiario.Transaction := DMRef.BDContab.DefaultTransaction;
         //QDiario.Add('SELECT CAST(SUM(D.IMPORTE) AS NUMERIC(15, 2)) SUMA, D.MONEDA, D.CUENTA_ANALITICA,');
         QDiario.SQL.Add('SELECT D.IMPORTE, D.MONEDA, D.CUENTA_ANALITICA,');
         if prmTipoConcepto <> 'T' then begin
            QDiario.SQL.Add('T.TIPOCONTABILIDAD,');
         end;
         QDiario.SQL.Add(' D.DEBEHABER, c.CUENTA ');
         QDiario.SQL.Add('FROM DIARIO D, CUENTAS C,CONCEPTOS T');
         QDiario.SQL.Add('WHERE D.FECHA >= :FECHAINICIAL AND D.FECHA <= :FECHAFINAL');
         {{ En la query no deben aparecer los apuntes con conceptos de cierre}
         QDiario.SQL.Add('AND D.ID_CONCEPTOS=T.ID_CONCEPTOS AND T.TIPOCONCEPTO<>"C" ');
         QDiario.SQL.Add(' AND SUBSTR(D.SUBCUENTA, 1, 3) = C.CUENTA ');

         if (prmTipoInforme = INF_BALANCE_SITUACION) then begin
            // QDiario.SQL.Add(' AND (SUBSTR(C.GRUPO1,1,1)="A" OR SUBSTR(C.GRUPO2,1,1)="A" OR ');
            // QDiario.SQL.Add(' SUBSTR(C.GRUPO1,1,1)="P" OR SUBSTR(C.GRUPO2,1,1)="P") ');
         end
         else begin
            QDiario.SQL.Add(' AND (SUBSTR(C.GRUPO1, 1, 1) = "D" OR SUBSTR(C.GRUPO2, 1, 1) = "D" OR ');
            QDiario.SQL.Add(' SUBSTR(C.GRUPO1, 1, 1) = "H" OR SUBSTR(C.GRUPO2, 1, 1) = "H") ');
         end;
         //QDiario.SQL.Add('GROUP BY C.CUENTA, D.DEBEHABER, D.CUENTA_ANALITICA, D.MONEDA');
         QDiario.SQL.Add('ORDER BY D.FECHA');

         if prmTipoConcepto <> 'T' then begin
            QDiario.SQL.Add(', T.TIPOCONTABILIDAD');
         end;

         QDiario.ParamByName('FECHAINICIAL').AsDateTime := prmFechaInicial;
         QDiario.ParamByName('FECHAFINAL'  ).AsDateTime := prmFechaFinal;

         QDiario.Prepare;
         QDiario.Open;

         DM.HInfBalCuentas.IndexName := '';
         DM.HInfBalGrupos.IndexName  := '';
         DM.HInfBalTitulos.IndexName := '';

         while not QDiario.EOF do begin
            if (prmTipoConcepto <> 'T') and (QDiario.FieldByName('TipoContabilidad').AsString <> prmTipoConcepto) then begin
               QDiario.Next;
               Continue;
            end;
            if not PerteneceAnalitica(QDiario.FieldByName('CUENTA_ANALITICA').AsString,
                                      prmCuentaAnalitica,
                                      '',
                                      prmDelegacion,
                                      prmDepartamento,
                                      prmSeccion,
                                      prmProyecto,
                                      wcContab) then begin
               QDiario.Next;
               Continue;
            end;

            Cuenta    := QDiario.FieldByName('CUENTA'   ).AsString;
            DebeHaber := QDiario.FieldByName('DEBEHABER').AsString;
            nImporte  := QDiario.FieldByName('IMPORTE'  ).AsFloat;

            IncluirEnInforme := True;
            if (Cuenta >= '6') and (Cuenta < '8') then begin
               if DebeHaber = 'D' then begin
                  nTotDb := nTotDb + nImporte;
               end
               else begin
                  nTotHb := nTotHb + nImporte;
               end;
               IncluirEnInforme := prmTipoInforme <> INF_BALANCE_SITUACION;
            end;

            if IncluirEnInforme then begin
               { Incluye CUENTAS }
               if DM.HInfBalCuentas.Locate('CUENTA', QDiario.FieldByName('CUENTA').AsString, []) then begin
                  DM.HInfBalCuentas.Edit;
                  if DebeHaber = 'D' then begin
                     DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat := DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat + nImporte;
                  end
                  else begin
                     DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat := DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat - nImporte;
                  end;
                  DM.HInfBalCuentas.Post;
               end;

               { Incluye GRUPOS }
               if DM.HInfBalGrupos.Locate('GRUPO', DM.HInfBalCuentasGRUPO.AsString, []) then begin
                  DM.HInfBalGrupos.Edit;
                  if DebeHaber = 'D' then begin
                     DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat := DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat + nImporte;
                  end
                  else begin
                     DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat := DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat - nImporte;
                  end;
                  DM.HInfBalGrupos.Post;
               end;

               { Incluye TITULOS }
               if DM.HInfBalTitulos.Locate('TITULO', Copy(DM.HInfBalGruposGRUPO.AsString, 1, 2), []) then begin
                  DM.HInfBalTitulos.Edit;
                  if DebeHaber = 'D' then begin
                     DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat + nImporte;
                  end
                  else begin
                     DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat - nImporte;
                  end;
                  DM.HInfBalTitulos.Post;
               end;
            end;
            QDiario.Next;
         end;


         ListaQuery := TStringList.Create;
                                        ListaQuery.Add('SELECT D.IMPORTE         ,                  ');
                                        ListaQuery.Add('       D.MONEDA          ,                  ');
                                        ListaQuery.Add('       D.CUENTA_ANALITICA,                  ');
         if prmTipoConcepto <> 'T' then ListaQuery.Add('       T.TIPOCONTABILIDAD,                  ');
                                        ListaQuery.Add('       D.DEBEHABER       ,                  ');
                                        ListaQuery.Add('       C.CUENTA                             ');
                                        ListaQuery.Add('FROM   DIARIO    D,                         ');
                                        ListaQuery.Add('       CUENTAS   C,                         ');
                                        ListaQuery.Add('       CONCEPTOS T                          ');
                                        ListaQuery.Add('WHERE  D.FECHA >= :FECHAINICIAL             ');
                                        ListaQuery.Add('AND    D.FECHA <= :FECHAFINAL               ');
                                        ListaQuery.Add('AND    D.ID_CONCEPTOS = T.ID_CONCEPTOS      '); { No deben aparecer los apuntes }
                                        ListaQuery.Add('AND    T.TIPOCONCEPTO <> "C"                '); {      con conceptos de cierre  }
                                        ListaQuery.Add('AND    SUBSTR(D.SUBCUENTA, 1, 3) = C.CUENTA ');
         if (prmTipoInforme = INF_BALANCE_SITUACION) then begin
            // Add(' AND (SUBSTR(C.GRUPO1,1,1)="A" OR SUBSTR(C.GRUPO2,1,1)="A" OR ');
            // Add(' SUBSTR(C.GRUPO1,1,1)="P" OR SUBSTR(C.GRUPO2,1,1)="P") ');
         end
         else begin
            ListaQuery.Add('AND (   SUBSTR(C.GRUPO1, 1, 1) = "D" ');
            ListaQuery.Add('     OR SUBSTR(C.GRUPO2, 1, 1) = "D" ');
            ListaQuery.Add('     OR SUBSTR(C.GRUPO1, 1, 1) = "H" ');
            ListaQuery.Add('     OR SUBSTR(C.GRUPO2, 1, 1) = "H" ');
            ListaQuery.Add('    )                                ');
         end;
         ListaQuery.Add('ORDER BY D.FECHA ');

         if prmTipoConcepto <> 'T' then begin
            ListaQuery.Add(', T.TIPOCONTABILIDAD');
         end;
         QDiarioConsolida := DMRef.CreateQueryConsolida([ListaQuery.Text]);

         { Empresas consolidadas }
         for IndCons := 0 to prmEmpresas.Count - 1 do begin
            DMRef.ConectarBDEmpresa(prmEmpresas.Strings[IndCons]);


            QDiarioConsolida.ParamByName('FECHAINICIAL').AsDateTime := prmFechaInicial;
            QDiarioConsolida.ParamByName('FECHAFINAL'  ).AsDateTime := prmFechaFinal;

            QDiarioConsolida.Prepare;
            QDiarioConsolida.Open;

            DM.HInfBalCuentas.IndexName := '';
            DM.HInfBalGrupos.IndexName  := '';
            DM.HInfBalTitulos.IndexName := '';

            while not QDiarioConsolida.EOF do begin
               if (prmTipoConcepto <> 'T') and (QDiarioConsolida.FieldByName('TIPOCONTABILIDAD').AsString <> prmTipoConcepto) then begin
                  QDiarioConsolida.Next;
                  Continue;
               end;
               if not PerteneceAnalitica(QDiarioConsolida.FieldByName('CUENTA_ANALITICA').AsString,
                                         prmCuentaAnalitica,
                                         '',
                                         prmDelegacion,
                                         prmDepartamento,
                                         prmSeccion,
                                         prmProyecto,
                                         wcConsolida) then begin
                  QDiarioConsolida.Next;
                  Continue;
               end;

               Cuenta    := QDiarioConsolida.FieldByName('CUENTA'   ).AsString;
               DebeHaber := QDiarioConsolida.FieldByName('DEBEHABER').AsString;
               nImporte  := QDiarioConsolida.FieldByName('IMPORTE'  ).AsFloat;

               IncluirEnInforme := True;
               if (Cuenta >= '6') and (Cuenta < '8') then begin
                  if DebeHaber = 'D' then nTotDb := nTotDb + nImporte
                                     else nTotHb := nTotHb + nImporte;
                  IncluirEnInforme := prmTipoInforme <> INF_BALANCE_SITUACION;
               end;

               if IncluirEnInforme then begin
                  { Carga CUENTAS }
                  if DM.HInfBalCuentas.Locate('CUENTA', QDiarioConsolida.FieldByName('CUENTA').AsString, []) then begin
                     DM.HInfBalCuentas.Edit;
                     if DebeHaber = 'D' then begin
                        DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat := DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat + nImporte;
                     end
                     else begin
                        DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat := DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat - nImporte;
                     end;
                     DM.HInfBalCuentas.Post;
                  end;

                  { Carga GRUPOS }
                  if DM.HInfBalGrupos.Locate('GRUPO', DM.HInfBalCuentasGRUPO.AsString, []) then begin
                     DM.HInfBalGrupos.Edit;
                     if DebeHaber = 'D' then begin
                        DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat := DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat + nImporte;
                     end
                     else begin
                        DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat := DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat - nImporte;
                     end;
                     DM.HInfBalGrupos.Post;
                  end;

                  { Carga TITULOS }
                  if DM.HInfBalTitulos.Locate('TITULO', Copy(DM.HInfBalGruposGRUPO.AsString, 1, 2), []) then begin
                     DM.HInfBalTitulos.Edit;
                     if DebeHaber = 'D' then begin
                        DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat + nImporte;
                     end
                     else begin
                        DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat - nImporte;
                     end;
                     DM.HInfBalTitulos.Post;
                  end;
               end;
               QDiarioConsolida.Next;
            end;
         end;



         { CÁLCULO DE PÉRDIDAS Y GANANCIAS PARA BALANCE DE SITUACIÓN }
         if prmTipoInforme = INF_BALANCE_SITUACION then begin
            nTot129 := nTotDb - nTotHb;
            if RoundTo(nTot129, -3) <> 0 then begin
               if prmSaldosEjercicioAnterior or (prmEmpresaAnterior <> 0) then begin
                  { Suma todas las 6 y resta todas las 7 }
                  QCuentas.Close;
                  QCuentas.Open;
                  while not QCuentas.EOF and (QCuentas.FieldByName('CUENTA').AsString <> '600') do begin
                     QCuentas.Next;
                  end;
                  nTotAnt129   := 0;
                  nTotDbAnt129 := 0;
                  nTotHbAnt129 := 0;

                  { Saldo empresa actual }
                  while not QCuentas.EOF do begin
                     nImporteAnt := 0;
                     if prmEmpresaAnterior <> 0 then begin
                        QSaldoAnteriorCuenta.Close;
                        QSaldoAnteriorCuenta.ParamByName('FechaInicial').AsDateTime := FechaInicialAnterior;
                        QSaldoAnteriorCuenta.ParamByName('FechaFinal'  ).AsDateTime := FechaFinalAnterior;
                        QSaldoAnteriorCuenta.ParamByName('Cuenta'      ).AsString   := QCuentas.FieldByName('CUENTA').AsString;
                        QSaldoAnteriorCuenta.Open;
                        nTotDbEjAnt := 0;
                        nTotHbEjAnt := 0;
                        while not QSaldoAnteriorCuenta.EOF do begin
                           if not PerteneceAnalitica(QSaldoAnteriorCuenta.FieldByName('CUENTA_ANALITICA').AsString,
                                                     prmCuentaAnalitica,
                                                     '',
                                                     prmDelegacion,
                                                     prmDepartamento,
                                                     prmSeccion,
                                                     prmProyecto,
                                                     wcEjAnterior) then begin
                              QSaldoAnteriorCuenta.Next;
                              Continue;
                           end;
                           if QSaldoAnteriorCuenta.FieldByName('DebeHaber').AsString = 'D' then begin
                              nTotDbEjAnt := nTotDbEjAnt + QSaldoAnteriorCuenta.FieldByName('Importe').AsFloat;
                           end
                           else begin
                              nTotHbEjAnt := nTotHbEjAnt + QSaldoAnteriorCuenta.FieldByName('Importe').AsFloat;
                           end;
                           QSaldoAnteriorCuenta.Next;
                        end;
                        nImporteAnt := nTotDbEjAnt - nTotHbEjAnt;
                     end
                     else begin
                        { Calcular saldo ejercicio anterior }
                        aMeses[1]  := QCuentas.FieldByName('ANTDB01').AsFloat - QCuentas.FieldByName('ANTHB01').AsFloat;
                        aMeses[2]  := QCuentas.FieldByName('ANTDB02').AsFloat - QCuentas.FieldByName('ANTHB02').AsFloat;
                        aMeses[3]  := QCuentas.FieldByName('ANTDB03').AsFloat - QCuentas.FieldByName('ANTHB03').AsFloat;
                        aMeses[4]  := QCuentas.FieldByName('ANTDB04').AsFloat - QCuentas.FieldByName('ANTHB04').AsFloat;
                        aMeses[5]  := QCuentas.FieldByName('ANTDB05').AsFloat - QCuentas.FieldByName('ANTHB05').AsFloat;
                        aMeses[6]  := QCuentas.FieldByName('ANTDB06').AsFloat - QCuentas.FieldByName('ANTHB06').AsFloat;
                        aMeses[7]  := QCuentas.FieldByName('ANTDB07').AsFloat - QCuentas.FieldByName('ANTHB07').AsFloat;
                        aMeses[8]  := QCuentas.FieldByName('ANTDB08').AsFloat - QCuentas.FieldByName('ANTHB08').AsFloat;
                        aMeses[9]  := QCuentas.FieldByName('ANTDB09').AsFloat - QCuentas.FieldByName('ANTHB09').AsFloat;
                        aMeses[10] := QCuentas.FieldByName('ANTDB10').AsFloat - QCuentas.FieldByName('ANTHB10').AsFloat;
                        aMeses[11] := QCuentas.FieldByName('ANTDB11').AsFloat - QCuentas.FieldByName('ANTHB11').AsFloat;
                        aMeses[12] := QCuentas.FieldByName('ANTDB12').AsFloat - QCuentas.FieldByName('ANTHB12').AsFloat;
                        for j := MesInicio to MesFinal do begin
                           nImporteAnt := nImporteAnt + aMeses[j];
                        end;
                     end;

                     if (QCuentas.FieldByName('CUENTA').AsString < '700') and
                        (QCuentas.FieldByName('CUENTA').AsString > '599') then begin
                        nTotDbAnt129 := nTotDbAnt129 + nImporteAnt;
                     end;
                     if (QCuentas.FieldByName('CUENTA').AsString < '800') and
                        (QCuentas.FieldByName('CUENTA').AsString > '699') then begin
                        nTotHbAnt129 := nTotHbAnt129 + nImporteAnt;
                     end;

                     { Empresas consolidadas }
                     for IndCons := 0 to prmEmpresas.Count - 1 do begin
                        DMRef.ConectarBDEmpresa(prmEmpresas.Strings[IndCons]);
                        QConsolida.Close;
                        QConsolida.Database    := DmRef.IBDConsolida;
                        QConsolida.Transaction := DmRef.IBDConsolida.DefaultTransaction;
                        QConsolida.SQL.Clear;
                        QConsolida.SQL.Add('SELECT * FROM CUENTAS WHERE CUENTA = :CUENTA');
                        QConsolida.ParamByName('CUENTA').AsString := QCuentas.FieldByName('CUENTA').AsString;
                        if not QConsolida.EOF then begin
                           { Calcular saldo ejercicio anterior }
                           aMeses[1]  := QConsolida.FieldByName('ANTDB01').AsFloat - QConsolida.FieldByName('ANTHB01').AsFloat;
                           aMeses[2]  := QConsolida.FieldByName('ANTDB02').AsFloat - QConsolida.FieldByName('ANTHB02').AsFloat;
                           aMeses[3]  := QConsolida.FieldByName('ANTDB03').AsFloat - QConsolida.FieldByName('ANTHB03').AsFloat;
                           aMeses[4]  := QConsolida.FieldByName('ANTDB04').AsFloat - QConsolida.FieldByName('ANTHB04').AsFloat;
                           aMeses[5]  := QConsolida.FieldByName('ANTDB05').AsFloat - QConsolida.FieldByName('ANTHB05').AsFloat;
                           aMeses[6]  := QConsolida.FieldByName('ANTDB06').AsFloat - QConsolida.FieldByName('ANTHB06').AsFloat;
                           aMeses[7]  := QConsolida.FieldByName('ANTDB07').AsFloat - QConsolida.FieldByName('ANTHB07').AsFloat;
                           aMeses[8]  := QConsolida.FieldByName('ANTDB08').AsFloat - QConsolida.FieldByName('ANTHB08').AsFloat;
                           aMeses[9]  := QConsolida.FieldByName('ANTDB09').AsFloat - QConsolida.FieldByName('ANTHB09').AsFloat;
                           aMeses[10] := QConsolida.FieldByName('ANTDB10').AsFloat - QConsolida.FieldByName('ANTHB10').AsFloat;
                           aMeses[11] := QConsolida.FieldByName('ANTDB11').AsFloat - QConsolida.FieldByName('ANTHB11').AsFloat;
                           aMeses[12] := QConsolida.FieldByName('ANTDB12').AsFloat - QConsolida.FieldByName('ANTHB12').AsFloat;

                           nImporteCons := 0;
                           for j := MesInicio to MesFinal do begin
                              nImporteCons := nImporteCons + aMeses[j];
                           end;

                           if (QCuentas.FieldByName('CUENTA').AsString < '700') and
                              (QCuentas.FieldByName('CUENTA').AsString > '599') then begin
                              nTotDbAnt129 := nTotDbAnt129 + nImporteCons;
                           end;
                           if (QCuentas.FieldByName('CUENTA').AsString < '800') and
                              (QCuentas.FieldByName('CUENTA').AsString > '699') then begin
                              nTotHbAnt129 := nTotHbAnt129 + nImporteCons;
                           end;
                        end;
                     end;
                     QCuentas.Next;
                  end;

                  nTotAnt129 := nTotDbAnt129 + nTotHbAnt129;

                  if DM.HInfBalCuentas.Locate('CUENTA', '129', []) then begin
                     DM.HInfBalCuentas.Edit;
                  end
                  else begin
                     DM.HInfBalCuentas.Insert;
                     RellenaDatosDescripcion(prmFechaInicial, prmFechaFinal, prmFechaImpresion);
                     DM.HInfBalCuentasCUENTA.AsString := '129';
                     DM.HInfBalCuentasGRUPO.AsString  := 'PA6';
                     DM.HInfBalCuentasTITULO.AsString := 'PA';
                     // DM.HInfBalCuentasTITULOREVES.AsString := 'AP';
                  end;

                  DM.HInfBalCuentasSALDOANTERIORCUENTA.AsFloat := nTotAnt129;
                  DM.HInfBalCuentas.Post;
               end;

               { Cargar CUENTAS }
               if DM.HInfBalCuentas.Locate('CUENTA', '129', []) then begin { PPGG }
                  DM.HInfBalCuentas.Edit;
                  if RoundTo(nTot129, -3) > 0 then begin
                     DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat := DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat + nTot129;
                  end
                  else begin
                     DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat := DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat - (-1 * nTot129);
                  end;
                  DM.HInfBalCuentas.Post;
               end;

               { Cargar GRUPOS }
               if DM.HInfBalGrupos.Locate('GRUPO', DM.HInfBalCuentasGRUPO.AsString, []) then begin
                  DM.HInfBalGrupos.Edit;
                  if RoundTo(nTot129, -3) > 0 then begin
                     DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat := DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat + nTot129;
                  end
                  else begin
                     DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat := DM.HInfBalGruposSALDOACTUALGRUPO.AsFloat - (-1 * nTot129);
                  end;
                  if prmSaldosEjercicioAnterior or (prmEmpresaAnterior <> 0) then begin
                     if RoundTo(nTotAnt129, -3) > 0 then begin
                        DM.HInfBalGruposSALDOANTERIORGRUPO.AsFloat := DM.HInfBalGruposSALDOANTERIORGRUPO.AsFloat + nTotAnt129;
                     end
                     else begin
                        DM.HInfBalGruposSALDOANTERIORGRUPO.AsFloat := DM.HInfBalGruposSALDOANTERIORGRUPO.AsFloat - (-1 * nTotAnt129);
                     end;
                  end;
                  DM.HInfBalGrupos.Post;
               end;

               { Carga TÍTULOS }
               if DM.HInfBalTitulos.Locate('TITULO', Copy(DM.HInfBalGruposGRUPO.AsString, 1, 2), []) then begin
                  DM.HInfBalTitulos.Edit;
                  if RoundTo(nTot129, -3) > 0 then begin
                     DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat + nTot129;
                  end
                  else begin
                     DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat - (-1 * nTot129);
                  end;
                  if prmSaldosEjercicioAnterior or (prmEmpresaAnterior <> 0) then begin
                     if RoundTo(nTotAnt129, -3) > 0 then begin
                        DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat := DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat + nTotAnt129;
                     end
                     else begin
                        DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat := DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat - (-1 * nTotAnt129);
                     end;
                  end;
                  DM.HInfBalTitulos.Post;
               end;
            end;
         end;

         { CÁLCULO DE FÓRMULAS PARA BALANCE DE PÉRDIDAS Y GANANCIAS }
         if prmTipoInforme = INF_BALANCE_PERDIDAS_Y_GANANCIAS then begin
            DM.HInfBalCuentas.IndexName := 'Titulo';
            DM.HInfBalGrupos.IndexName  := '';
            DM.HInfBalTitulos.IndexName := 'TituloReves';
            DM.HInfBalTitulos.First;
            while not DM.HInfBalTitulos.EOF do begin
               Titulo := DM.HInfBalTitulosTITULO.AsString;
               Letra  := Copy(Titulo, 1, 1);
               if (Letra = 'A') or (Letra = 'P') or (Empty(DM.HInfBalTitulosSUMA1.AsString) and
                  Empty(DM.HInfBalTitulosSUMA2.AsString ) and
                  Empty(DM.HInfBalTitulosSUMA3.AsString ) and
                  Empty(DM.HInfBalTitulosSUMA4.AsString ) and
                  Empty(DM.HInfBalTitulosSUMA5.AsString ) and
                  Empty(DM.HInfBalTitulosSUMA6.AsString ) and
                  Empty(DM.HInfBalTitulosSUMA7.AsString ) and
                  Empty(DM.HInfBalTitulosSUMA8.AsString ) and
                  Empty(DM.HInfBalTitulosRESTA1.AsString) and
                  Empty(DM.HInfBalTitulosRESTA2.AsString) and
                  Empty(DM.HInfBalTitulosRESTA3.AsString) and
                  Empty(DM.HInfBalTitulosRESTA4.AsString) and
                  Empty(DM.HInfBalTitulosRESTA5.AsString) and
                  Empty(DM.HInfBalTitulosRESTA6.AsString) and
                  Empty(DM.HInfBalTitulosRESTA7.AsString) and
                  Empty(DM.HInfBalTitulosRESTA8.AsString))then begin
                  DM.HInfBalTitulos.Next;
                  Continue;
               end;

               { Inicializar }
               DM.HInfBalTitulos.Edit;
               DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat   := 0;
               DM.HInfBalTitulosSALDOANTERIORTITULO.AsFloat := 0;
               DM.HInfBalTitulos.Post;
               nIndice := StrToInt(Copy(Titulo, 2, 1));

               { Leer fórmula }
               Formula(DM.HInfBalTitulosSUMA1.AsString ,  1);
               Formula(DM.HInfBalTitulosSUMA2.AsString ,  1);
               Formula(DM.HInfBalTitulosSUMA3.AsString ,  1);
               Formula(DM.HInfBalTitulosSUMA4.AsString ,  1);
               Formula(DM.HInfBalTitulosSUMA5.AsString ,  1);
               Formula(DM.HInfBalTitulosSUMA6.AsString ,  1);
               Formula(DM.HInfBalTitulosSUMA7.AsString ,  1);
               Formula(DM.HInfBalTitulosSUMA8.AsString ,  1);
               Formula(DM.HInfBalTitulosRESTA1.AsString, -1);
               Formula(DM.HInfBalTitulosRESTA2.AsString, -1);
               Formula(DM.HInfBalTitulosRESTA3.AsString, -1);
               Formula(DM.HInfBalTitulosRESTA4.AsString, -1);
               Formula(DM.HInfBalTitulosRESTA5.AsString, -1);
               Formula(DM.HInfBalTitulosRESTA6.AsString, -1);
               Formula(DM.HInfBalTitulosRESTA7.AsString, -1);
               Formula(DM.HInfBalTitulosRESTA8.AsString, -1);

               if Copy(Titulo, 1, 1) = 'D' then begin
                  if RoundTo(DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat, -3) > 0 then begin
                     aSaldo[nIndice]   := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat;
                     aFormula[nIndice] := 'D';
                  end;
               end else
               if Empty(aFormula[nIndice]) then begin
                  aSaldo[nIndice]   := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat;
                  aFormula[nIndice] := 'H';
               end;
               DM.HInfBalTitulos.Next;
            end;
            DM.HInfBalTitulos.IndexName := '';
         end;

         if prmTipoInforme = INF_BALANCE_PERDIDAS_Y_GANANCIAS then begin
            { Poner en H5 y H6 lo que tenga en D5 y D6 (Saldo actual) }
            if DM.HInfBalTitulos.Locate('TITULO', 'D5', []) then begin
               nSaldoAux := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat;
               if DM.HInfBalTitulos.Locate('TITULO', 'H5', []) then begin
                  DM.HInfBalTitulos.Edit;
                  DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat := nSaldoAux;
                  DM.HInfBalTitulos.Post;
               end;
            end;

            if DM.HInfBalTitulos.Locate('TITULO', 'D6', []) then begin
               nSaldoAux := DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat;
               if DM.HInfBalTitulos.Locate('TITULO', 'H6', []) then begin
                  DM.HInfBalTitulos.Edit;
                  DM.HInfBalTitulosSALDOACTUALTITULO.AsFloat := nSaldoAux;
                  DM.HInfBalTitulos.Post;
               end;
            end;
         end;
      except
         on E: Exception do begin
            QCuentas.Close;
            QCuentas.Free;
            QTitulos.Close;
            QTitulos.Free;
            QGrupos.Close;
            QGrupos.Free;
            QConsolida.Close;
            QConsolida.Free;
            if prmEmpresaAnterior <> 0 then begin
               QSaldoAnteriorCuenta.Close;
               QSaldoAnteriorCuenta.Free;
            end;
            DatabaseError(E.Message);
         end;
      end;

      QCuentas.Close;
      QCuentas.Free;
      QTitulos.Close;
      QTitulos.Free;
      QGrupos.Close;
      QGrupos.Free;
      QConsolida.Close;
      QConsolida.Free;
      if prmEmpresaAnterior <> 0 then begin
         QSaldoAnteriorCuenta.Close;
         QSaldoAnteriorCuenta.Free;
      end;
   finally
      InProgress.Free;
   end;

{+-+-+-    PRIMER BLOQUE DE CÓDIGO  -+-+-+}

   { Rellena saldos de título y grupo }
   RellenaSaldosCuentas(prmFechaInicial, prmFechaFinal, prmFechaImpresion);

   { Filtra registros a imprimir }
   FiltraRegistros(prmTipoInforme, prmSaldosEjercicioAnterior, prmEmpresaAnterior);

   { Añadir registros de fórmulas }
   InsertaLineasFormulas(prmFechaInicial, prmFechaFinal, prmFechaImpresion);

   lBorraAnterior := False;
   DM.HInfBalCuentas.IndexName := 'Titulo';
   if prmTipoInforme = INF_BALANCE_PERDIDAS_Y_GANANCIAS then begin
      DM.HInfBalCuentas.First;
      while not DM.HInfBalCuentas.EOF do begin
         Letra1  := Copy(DM.HInfBalCuentasTITULO.AsString, 1, 1);
         Letra2  := Copy(DM.HInfBalCuentasTITULO.AsString, 2, 1);
         nIndice := StrToInt(Letra2);

         DM.HInfBalCuentas.Edit;
         DM.HInfBalCuentasTITULOIMPRESO.AsString := DM.HInfBalCuentasTITULO.AsString;
         DM.HInfBalCuentas.Post;

         if ((Trim(DM.HInfBalCuentasTITULO.AsString) = 'H5') or
             (Trim(DM.HInfBalCuentasTITULO.AsString) = 'H6')) and lBorraAnterior then begin
            DM.HInfBalCuentas.Edit;
            DM.HInfBalCuentasSALDOAnteriorTITULO.AsFloat := 0;
            DM.HInfBalCuentas.Post;
            DM.HInfBalCuentas.Next;
            Continue;
         end;

         if (nIndice <> 0) and (Letra1 <> aFormula[nIndice]) then begin
            if DM.HInfBalCuentasSALDOACTUALCUENTA.AsFloat = 0 then begin
               if ((Trim(DM.HInfBalCuentasTITULO.AsString) = 'D5') or
                   (Trim(DM.HInfBalCuentasTITULO.AsString) = 'D6')) then begin
                  lBorraAnterior := True;
               end;
               DM.HInfBalCuentas.Edit;
               DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat := 0;
               DM.HInfBalCuentas.Post;
            end
            else begin
               DM.HInfBalCuentas.Edit;
               DM.HInfBalCuentasTITULOIMPRESO.AsString      := '';
               DM.HInfBalCuentasDESCRIPCIONTITULO.AsString  := '';
               DM.HInfBalCuentasFORMULA.AsString            := '';
               DM.HInfBalCuentasSALDOACTUALTITULO.AsFloat   :=  0;
               DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat :=  0;
               DM.HInfBalCuentas.Post;
            end;
            DM.HInfBalCuentas.Next;
         end
         else begin
            DM.HInfBalCuentas.Next;
         end;
      end;
   end;

   { Si saca D3,D4,D5 y D6 de anterior, se pone a cero  H5 y H6 de anterior. }
   DM.HInfBalCuentas.Locate('TITULO', 'D3', []);
   if DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat <> 0 then begin
      if DM.HInfBalCuentas.Locate('TITULO', 'H3', []) then begin
         DM.HInfBalCuentas.Edit;
         DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat := 0;
         DM.HInfBalCuentas.Post;
      end;
   end;

   DM.HInfBalCuentas.Locate('TITULO', 'D4', []);
   if DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat <> 0 then begin
      if DM.HInfBalCuentas.Locate('TITULO', 'H4', []) then begin
         DM.HInfBalCuentas.Edit;
         DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat := 0;
         DM.HInfBalCuentas.Post;
      end;
   end;

   DM.HInfBalCuentas.Locate('TITULO', 'D5', []);
   if DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat <> 0 then begin
      if DM.HInfBalCuentas.Locate('TITULO', 'H5', []) then begin
         DM.HInfBalCuentas.Edit;
         DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat := 0;
         DM.HInfBalCuentas.Post;
      end;
   end;

   DM.HInfBalCuentas.Locate('TITULO', 'D6', []);
   if DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat <> 0 then begin
      if DM.HInfBalCuentas.Locate('TITULO', 'H6', []) then begin
         DM.HInfBalCuentas.Edit;
         DM.HInfBalCuentasSALDOANTERIORTITULO.AsFloat := 0;
         DM.HInfBalCuentas.Post;
      end;
   end;

   DM.PDFExport.Author          := 'senCille Accounting';
   DM.PDFExport.ShowDialog      := False;
   DM.PDFExport.OpenAfterExport := True;
   DM.DBXENLACE1.DataSet        := DM.HInfBalCuentas;

   if prmTipoInforme = INF_BALANCE_SITUACION then begin
      if prmSaldosEjercicioAnterior or (prmEmpresaAnterior <> 0) then begin
         DM.PDFExport.FileName := 'BalanceSituacionAnterior.pdf';
         DM.FRBalanceSituacionAnterior.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
         DM.FRBalanceSituacionAnterior.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
         DM.FRBalanceSituacionAnterior.PrepareReport(True);
         DM.FRBalanceSituacionAnterior.Export(DM.PDFExport);
      end
      else begin
         DM.PDFExport.FileName := 'BalanceSituacion.pdf';
         DM.FRBalanceSituacion.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
         DM.FRBalanceSituacion.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
         DM.FRBalanceSituacion.PrepareReport(True);
         DM.FRBalanceSituacion.Export(DM.PDFExport);
      end;
   end
   else begin
      if prmSaldosEjercicioAnterior or (prmEmpresaAnterior <> 0) then begin
         DM.PDFExport.FileName := 'CuentaPPGGAnterior.pdf';
         DM.FRCuentaPPGGAnterior.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
         DM.FRCuentaPPGGAnterior.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
         DM.FRCuentaPPGGAnterior.PrepareReport(True);
         DM.FRCuentaPPGGAnterior.Export(DM.PDFExport);
      end
      else begin
         DM.PDFExport.FileName := 'CuentaPPGG.pdf';
         DM.FRCuentaPPGG.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
         DM.FRCuentaPPGG.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
         DM.FRCuentaPPGG.PrepareReport(True);
         DM.FRCuentaPPGG.Export(DM.PDFExport);
      end;
   end;
   InicializarFicherosInformes;
end;

end.
