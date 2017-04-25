unit UFiltroListadosMayorModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, frxExportPDF, DBClient;

type
  TDataModuleFiltroListadosMayor = class(TDataModule)
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
    QConceptos: TIBDataSet;
    SConceptos: TDataSource;
    QConceptosID_CONCEPTOS: TIBStringField;
    QConceptosDESCRIPCION: TIBStringField;
    FastReportMayor: TfrxReport;
    PDFExport: TfrxPDFExport;
    Enlace1: TfrxDBDataset;
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
    QInfDiario: TIBDataSet;
    QInfDiarioASIENTO: TIntegerField;
    QInfDiarioAPUNTE: TSmallintField;
    QInfDiarioFECHA: TDateTimeField;
    QInfDiarioSUBCUENTA: TIBStringField;
    QInfDiarioID_CONCEPTOS: TIBStringField;
    QInfDiarioDescApunte: TStringField;
    QInfDiarioDEBEHABER: TIBStringField;
    QInfDiarioCONTRAPARTIDA: TIBStringField;
    QInfDiarioPUNTEO: TIBStringField;
    QInfDiarioDESCSUBCUENTA: TIBStringField;
    QInfDiarioDESCCONCEPTO: TIBStringField;
    QInfDiarioDebe: TFloatField;
    QInfDiarioHaber: TFloatField;
    QInfDiarioCOMENTARIO: TIBStringField;
    QInfDiarioIMPORTE: TFloatField;
    QInfDiarioNUMEROFACTURA: TIBStringField;
    QInfDiarioDESCCONTRAPARTIDA: TIBStringField;
    QInfDiarioABREVIATURA: TIBStringField;
    QInfDiarioID_DIARIO: TIntegerField;
    QInfDiarioEJERCICIO: TIntegerField;
    QInfDiarioSERIE: TIBStringField;
    SInfDiario: TDataSource;
    QSubcuentasMayor: TClientDataSet;
    SSubcuentasMayor: TDataSource;
    SLinesDiario: TDataSource;
    QLinesDiario: TClientDataSet;
    QSubcuentasMayorSUBCUENTA: TStringField;
    QSubcuentasMayorDESCRIPCION: TStringField;
    Enlace2: TfrxDBDataset;
    procedure QInfDiarioCalcFields(DataSet: TDataSet);
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TFiltroListadosMayorModel = class(TCustomModel)
  private
    DM :TDataModuleFiltroListadosMayor;
    function Pertenece_Analitica(ADataBase    :TIBDatabase;
                                 AAnalitica   ,
                                 ACuentaDesde ,
                                 ACuentaHasta ,
                                 ADelegacion  ,
                                 ADepartamento,
                                 ASeccion     ,
                                 AProyecto    :string): Boolean;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure EmptyMayor;
    procedure EmptyLinesDiario;
    procedure PrintMayor;
    procedure LanzarInfMayor(SeleccionPorSubcuenta   ,
                             SeleccionPorDescripcion :Boolean;
                             Subcuenta_Desde         ,
                             Subcuenta_Hasta         ,
                             DescSubctaInicial       ,
                             DescSubctaFinal         :string;
                             FechaInicial            ,
                             FechaFinal              ,
                             FechaImpresion          :TDateTime;
                             TipoConcepto            ,
                             Concepto                ,
                             Cuenta                  ,
                             Delegacion              ,
                             Departamento            ,
                             Seccion                 ,
                             Proyecto                ,
                             sNif                    ,
                             sContenga               :string;
                             SaltoPaginaPorSubcta    :Boolean = True;
                             SaldosAcumulados        :Boolean = False;
                             FormatoOficial          :Boolean = False;
                             SoloSinPuntear          :Boolean = False; Orden: String = 'S');
  end;

var
  DataModuleFiltroListadosMayor: TDataModuleFiltroListadosMayor;

implementation

uses System.Math,
     VCL.Forms, VCL.ComCtrls, VCL.Controls, VCL.Graphics,
     IBX.IBQuery,
     DM, DMConta, Processing, ccStr, Globales, DMControl;

{$R *.dfm}

{ TFiltroListadosMayorModel }

constructor TFiltroListadosMayorModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleFiltroListadosMayor.Create(Application);
   if Initialize then DoInitialize;
end;

function TFiltroListadosMayorModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TFiltroListadosMayorModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TFiltroListadosMayorModel.DoInitialize;
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

   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;

   (*DM.QInformesConta.Active := False;

   DM.QInformesConta.FieldDefs.Clear;
   DM.QInformesConta.FieldDefs.Add('DescInforme'     , ftString  , 255, False);
   DM.QInformesConta.FieldDefs.Add('Fecha'           , ftDateTime,   0, False);
   DM.QInformesConta.FieldDefs.Add('FechaPrevista'   , ftDateTime,   0, False);
   DM.QInformesConta.FieldDefs.Add('FechaInicial'    , ftDateTime,   0, False);
   DM.QInformesConta.FieldDefs.Add('FechaFinal'      , ftDateTime,   0, False);
   //DM.QInformesConta.FieldDefs.Add('Titulo'          , ftString  , 100, False);
   //DM.QInformesConta.FieldDefs.Add('ClienteProveedor', ftString  ,  10, False);

   DM.QInformesConta.FieldDefs.Add('PUNTEO'          , ftString  ,   1, False);
   DM.QInformesConta.FieldDefs.Add('Gasto'           , ftInteger ,   0, False);
   DM.QInformesConta.FieldDefs.Add('ASIENTO'         , ftInteger ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Apunte'          , ftInteger ,   0, False);
   DM.QInformesConta.FieldDefs.Add('FSubcuenta'      , ftString  ,  10, False);
   DM.QInformesConta.FieldDefs.Add('FDescSubcuenta'  , ftString  ,  80, False);
   DM.QInformesConta.FieldDefs.Add('Subcuenta'       , ftString  ,  10, False);
   DM.QInformesConta.FieldDefs.Add('DescSubcuenta'   , ftString  ,  80, False);
   DM.QInformesConta.FieldDefs.Add('DescApunte'      , ftString  , 100, False);
   DM.QInformesConta.FieldDefs.Add('Contrapartida'   , ftString  ,  10, False);
   DM.QInformesConta.FieldDefs.Add('Debe'            , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Haber'           , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('TotalSumaDebe'   , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('TotalSumaHaber'  , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Importe'         , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('DebeHaber'       , ftString  ,   1, False);
   DM.QInformesConta.FieldDefs.Add('Saldo'           , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('TotalSumaSaldo'  , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Descripcion'     , ftString  ,  50, False);
   DM.QInformesConta.FieldDefs.Add('Observaciones'   , ftString  , 255, False);
   DM.QInformesConta.FieldDefs.Add('ID_Cliente'      , ftInteger ,   0, False);
   DM.QInformesConta.FieldDefs.Add('NombreCliente'   , ftString  ,  85, False);

   DM.QInformesConta.FieldDefs.Add('NumLinea'        , ftInteger ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Factura'         , ftString  ,  10, False);
   DM.QInformesConta.FieldDefs.Add('NIF'             , ftString  ,  15, False);
   DM.QInformesConta.FieldDefs.Add('BaseImponible'   , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('BaseConIVA'      , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('BaseSinIVA'      , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('IVA'             , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('CuotaIVA'        , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Recargo'         , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('CuotaRecargo'    , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('TotalFactura'    , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('TotalBruto'      , ftFloat   ,   0, False);

   DM.QInformesConta.FieldDefs.Add('Provincia'       , ftString  ,  25, False);
   DM.QInformesConta.FieldDefs.Add('ImporteVentas'   , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('ImporteCompras'  , ftFloat   ,   0, False);

   DM.QInformesConta.FieldDefs.Add('FechaImpresion'  , ftDateTime,   0, False);

   DM.QInformesConta.FieldDefs.Add('ID_Conceptos'    , ftString  ,   3, False);
   DM.QInformesConta.FieldDefs.Add('DescConcepto'    , ftString  ,  30, False);

   DM.QInformesConta.FieldDefs.Add('Ejercicio'       , ftInteger ,   0, False);
   DM.QInformesConta.FieldDefs.Add('DescPeriodo'     , ftString  ,  20, False);

   DM.QInformesConta.FieldDefs.Add('Ingresos'        , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Gastos'          , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Retenciones'     , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Mes'             , ftInteger ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Trimestre'       , ftInteger ,   0, False);

   DM.QInformesConta.FieldDefs.Add('TotalBruto16'    , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('TotalBruto0'     , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('BaseSinIVA16'    , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('BaseSinIVA0'     , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('BaseConIVA16'    , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('BaseConIVA0'     , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('CuotaIVA16'      , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('CuotaIVA0'       , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Retenciones16'   , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('Retenciones0'    , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('TotalFactura16'  , ftFloat   ,   0, False);
   DM.QInformesConta.FieldDefs.Add('TotalFactura0'   , ftFloat   ,   0, False);

   DM.QInformesConta.FieldDefs.Add('Cuenta_Analitica', ftString  ,  10, False);

   DM.QInformesConta.IndexDefs.Clear;
   DM.QInformesConta.IndexDefs.Add('SUBCUENTA'  , 'SUBCUENTA', []);
   DM.QInformesConta.IndexDefs.Add('DESCRIPCION', 'DESCSUBCUENTA', []);

   DM.QInformesConta.CreateDataSet;
   DM.QInformesConta.Active := True;

   DM.QInfDiario.SelectSQL.Clear;
   DM.QInfDiario.SelectSQL.Add('SELECT	D.ASIENTO                       ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.APUNTE                        ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.SUBCUENTA                     ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.ID_CONCEPTOS                  ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.IMPORTE                       ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.CONTRAPARTIDA                 ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.NUMEROFACTURA                 ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.SERIE                         ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.EJERCICIO                     ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.FECHA                         ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.DEBEHABER                     ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.PUNTEO                        ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.COMENTARIO                    ,                     ');
   DM.QInfDiario.SelectSQL.Add('       S1.DESCRIPCION DESCSUBCUENTA    ,                     ');
   DM.QInfDiario.SelectSQL.Add('       S1.ABREVIATURA                  ,                     ');
   DM.QInfDiario.SelectSQL.Add('       S2.DESCRIPCION DESCCONTRAPARTIDA,                     ');
   DM.QInfDiario.SelectSQL.Add('       C.DESCRIPCION DESCCONCEPTO      ,                     ');
   DM.QInfDiario.SelectSQL.Add('       D.ID_DIARIO                                           ');
   DM.QInfDiario.SelectSQL.Add('FROM DIARIO D                                                ');
   DM.QInfDiario.SelectSQL.Add('LEFT JOIN CONCEPTOS C  ON D.ID_CONCEPTOS  = C.ID_CONCEPTOS   ');
   DM.QInfDiario.SelectSQL.Add('LEFT JOIN SUBCTAS   S1 ON D.SUBCUENTA     = S1.SUBCUENTA     ');
   DM.QInfDiario.SelectSQL.Add('LEFT JOIN SUBCTAS   S2 ON D.CONTRAPARTIDA = S2.SUBCUENTA     ');
   DM.QInfDiario.SelectSQL.Add('WHERE D.SUBCUENTA = :SUBCUENTA                               ');
   DM.QInfDiario.SelectSQL.Add('ORDER BY D.ASIENTO,                                          ');
   DM.QInfDiario.SelectSQL.Add('         D.APUNTE                                            ');

   DM.QInfDiario.Database := DB;*)
   //DM.QInfDiario.Open;

   //DM.QSubcuentasMayor.Active := False;
   DM.QSubcuentasMayor.IndexDefs.Clear;
   DM.QSubcuentasMayor.IndexDefs.Add('SUBCUENTA'  , 'SUBCUENTA', []);
   DM.QSubcuentasMayor.IndexDefs.Add('DESCRIPCION', 'DESCSUBCUENTA', []);

   DM.QSubcuentasMayor.CreateDataSet;
   DM.QSubcuentasMayor.Active := True;

   //DM.QSubcuentasMayor.Active := False;
   DM.QLinesDiario.CreateDataSet;
   DM.QLinesDiario.Active := True;
end;

procedure TFiltroListadosMayorModel.Refresh;
begin

end;

procedure TFiltroListadosMayorModel.LanzarInfMayor(SeleccionPorSubcuenta   ,
                                                   SeleccionPorDescripcion :Boolean;
                                                   Subcuenta_desde         ,
                                                   Subcuenta_hasta         ,
                                                   DescSubctaInicial       ,
                                                   DescSubctaFinal         :string;
                                                   FechaInicial            ,
                                                   FechaFinal              ,
                                                   FechaImpresion          :TDateTime;
                                                   TipoConcepto            ,
                                                   Concepto                ,
                                                   Cuenta                  ,
                                                   Delegacion              ,
                                                   Departamento            ,
                                                   Seccion                 ,
                                                   Proyecto                ,
                                                   sNif                    ,
                                                   sContenga               :string;
                                                   SaltoPaginaPorSubcta    :Boolean = True;
                                                   SaldosAcumulados        :Boolean = False;
                                                   FormatoOficial          :Boolean = False;
                                                   SoloSinPuntear          :Boolean = False; Orden: String = 'S');
var
   Q              :TIBQuery;
   QSubcuentas    :TIBQuery;
   QConceptos     :TIBQuery;
   QAcumulados    :TIBQuery;
   InProgress     :TProcessingView;
   DescApunte     :string;
   nSubcuenta     :string;
   nDescSubcuenta :string;
   nSaldo         :Double;
   nAcuDebe       :Double;
   nAcuHaber      :Double;
   Abreviatura    :string;
   DescConcepto   :string;
   NumeroFactura  :string;
   FechaAcumIni   :TDateTime;
   FechaAcumFin   :TDateTime;
   PrimerAsiento  :Integer;
   SubctaAcum     :string;
   DescSubctaAcum :string;
begin
   {$Message Warn 'This report requires to be create newly starting from zero'}
   {This report has in his style of ReportBuilde a very complex structure, to allow it the
   interaction with the user. The user can delete or query the program based on the information
   showed at preview window. The new version shall drop this feature an be more simple.   }
   DM.QSubcuentasMayor.IndexName := 'SUBCUENTA';

   InProgress := InProgressView('Generando informe ...', True);
   try
      Config.AbortedProcess := False;

      if Subcuenta_Hasta = '' then begin
         Subcuenta_Hasta := Subcuenta_Desde;
      end;

      if Length(Subcuenta_Desde) < Config.MaxLengthAccounts then begin
         Subcuenta_Desde := TStrTools.BackChar(Subcuenta_Desde, '0', Config.MaxLengthAccounts);
      end;
      
      if Length(Subcuenta_Hasta) < Config.MaxLengthAccounts then begin
         Subcuenta_Hasta := TStrTools.Backchar(Subcuenta_Hasta, '9', Config.MaxLengthAccounts);
      end;

      if DescSubctaFinal = '' then begin
         DescSubctaFinal := DescSubctaInicial;
      end;

      DescSubctaFinal := TStrTools.BackChar(DescSubctaFinal, 'Z', 80);

      // Selección de datos de subcuenta
      QSubcuentas := TIBQuery.Create(nil);
      QSubcuentas.Database := DMRef.BDContab;
      QSubcuentas.SQL.Add('SELECT S.SUBCUENTA  ,       ');
      QSubcuentas.SQL.Add('       S.DESCRIPCION,       ');
      QSubcuentas.SQL.Add('       S.ABREVIATURA        ');
      QSubcuentas.SQL.Add('FROM SUBCTAS S              ');
      QSubcuentas.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA');
      QSubcuentas.Prepare;

      // Selección de datos de concepto
      QConceptos := TIBQuery.Create(nil);
      QConceptos.Database := DMRef.BDContab;
      QConceptos.SQL.Add('SELECT ID_CONCEPTOS    ,          ');
      QConceptos.SQL.Add('       DESCRIPCION     ,          ');
      QConceptos.SQL.Add('       TIPOCONTABILIDAD           ');
      QConceptos.SQL.Add('FROM CONCEPTOS                    ');
      QConceptos.SQL.Add('WHERE ID_CONCEPTOS = :ID_CONCEPTOS');
      QConceptos.Prepare;

      // Saldos Acumulados
      (*if SaldosAcumulados then begin
         FechaAcumIni := DMRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime;
         FechaAcumFin := FechaInicial - 1;

         QAcumulados := TIBQuery.Create(nil);
         QAcumulados.Database := DMRef.BDContab;

         QAcumulados.SQL.Add('SELECT S.SUBCUENTA       ,    ');
         QAcumulados.SQL.Add('       S.DESCRIPCION     ,    ');
         QAcumulados.SQL.Add('       D.IMPORTE         ,    ');
         QAcumulados.SQL.Add('       D.MONEDA          ,    ');
         QAcumulados.SQL.Add('       D.DEBEHABER       ,    ');
         QAcumulados.SQL.Add('       D.ID_CONCEPTOS    ,    ');
         QAcumulados.SQL.Add('       D.CUENTA_ANALITICA     ');
         QAcumulados.SQL.Add('FROM DIARIO  D,               ');
         QAcumulados.SQL.Add('     SUBCTAS S                ');
         QAcumulados.SQL.Add('WHERE D.FECHA >= :FECHAINICIO ');
         QAcumulados.SQL.Add('AND   D.FECHA <= :FECHAFIN    ');
         if sNif <> '' then QAcumulados.SQL.Add('AND UPPER(S.NIF) LIKE UPPER(:NIF) ');
         if SeleccionPorSubcuenta and (Subcuenta_Desde <> '') then begin
            QAcumulados.SQL.Add('  AND S.SUBCUENTA >= :SUBCUENTA_DESDE');
            QAcumulados.SQL.Add('  AND S.SUBCUENTA <= :SUBCUENTA_HASTA');
         end;
         if SeleccionPorDescripcion and (DescSubctaInicial <> '') then begin
            QAcumulados.SQL.Add('  AND S.DESCRIPCION >= :DESCRIPCION_DESDE');
            QAcumulados.SQL.Add('  AND S.DESCRIPCION <= :DESCRIPCION_HASTA');
         end;
         if (sContenga <> '') then begin
            QAcumulados.SQL.Add('   AND S.DESCRIPCION CONTAINING :CONTENGA ');
         end;
         QAcumulados.SQL.Add('   AND D.SUBCUENTA = S.SUBCUENTA ');
         QAcumulados.SQL.Add('ORDER BY S.SUBCUENTA, D.FECHA    ');

         QAcumulados.ParamByName('FECHAINICIO').AsDateTime := FechaAcumIni;
         QAcumulados.ParamByName('FECHAFIN'   ).AsDateTime := FechaAcumFin;

         if sNIF <> '' then QAcumulados.Parambyname('NIF').AsString := Copy(sNIF + '%', 1, 20);

         if (sContenga <> '') then begin
            QAcumulados.ParamByName('CONTENGA').AsString := Trim(sContenga);
         end;

         if SeleccionPorSubcuenta and (subcuenta_desde <> '') then begin
            QAcumulados.ParamByName('SUBCUENTA_DESDE').AsString := subcuenta_desde;
            QAcumulados.ParamByName('SUBCUENTA_HASTA').AsString := subcuenta_hasta;
         end;

         if SeleccionPorDescripcion and (DescSubctaInicial <> '') then begin
            QAcumulados.ParamByName('DESCRIPCION_DESDE').AsString := DescSubctaInicial;
            QAcumulados.ParamByName('DESCRIPCION_HASTA').AsString := DescSubctaFinal;
         end;
         QAcumulados.Open;

         while not QAcumulados.EOF do begin
            SubctaAcum     := QAcumulados.FieldByName('SUBCUENTA'  ).AsString;
            DescSubctaAcum := QAcumulados.FieldByName('DESCRIPCION').AsString;
            nAcuDebe       := 0;
            nAcuHaber      := 0;
            while not QAcumulados.EOF and (QAcumulados.FieldByName('SUBCUENTA').AsString = SubctaAcum) do begin
               // Chequeo conceptos
               if (TipoConcepto <> 'T') and (not QAcumulados.FieldByName('ID_CONCEPTOS').IsNull) then begin
                  QConceptos.Close;
                  QConceptos.ParamByName('ID_CONCEPTOS').AsString := QAcumulados.FieldByName('ID_CONCEPTOS').AsString;
                  QConceptos.Open;
                  if (QConceptos.FieldByName('TipoContabilidad').AsString <> TipoConcepto) then begin
                     QAcumulados.Next;
                     Continue;
                  end;
               end;

               if not Pertenece_Analitica(DMRef.BDContab,
                                          QAcumulados.FieldByName('CUENTA_ANALITICA').AsString,
                                          Cuenta,
                                          '',
                                          Delegacion,
                                          Departamento,
                                          Seccion,
                                          Proyecto) then begin
                  QAcumulados.Next;
                  Continue;
               end;

               if QAcumulados.FieldByName('DEBEHABER').AsString = 'D' then begin
                  nAcuDebe := nAcuDebe + QAcumulados.FieldByName('IMPORTE').AsFloat;
               end
               else begin
                  nAcuHaber := nAcuHaber + QAcumulados.FieldByName('IMPORTE').AsFloat;
               end;

               QAcumulados.Next;
            end;  // while not QAcumulados.Eof

            nSaldo := RoundTo(nAcuDebe - nAcuHaber, -3);

            if RoundTo(nSaldo, -2) <> 0 then begin
               DM.QMayor.Insert;
               DM.QMayorSUBCUENTA.AsString        := SubctaAcum;
               DM.QMayorDESCSUBCUENTA.AsString    := DescSubctaAcum;
               DM.QMayorDESCAPUNTE.AsString       := 'SALDO ACUMULADO';
               DM.QMayorDEBE.AsFloat              := RoundTo(nAcuDebe,  -2);
               DM.QMayorHABER.AsFloat             := RoundTo(nAcuHaber, -2);
               DM.QMayorSALDO.AsFloat             := RoundTo(nSaldo,    -2);
               { Fechas incluidas para la descripción del informe. }
               DM.QMayorFECHAINICIAL.AsDateTime   := FechaInicial;
               DM.QMayorFECHAFINAL.AsDateTime     := FechaFinal;
               DM.QMayorFECHAIMPRESION.AsDateTime := FechaImpresion;
               {???????????????????????????????????????????????????????????????}
               PrimerAsiento := DMContaRef.ObtenerUltimoAsientoSubcuenta(SubctaAcum,
                                                                         DMRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime,
                                                                         FechaInicial - 1);
               if PrimerAsiento = 0 then PrimerAsiento := 1;
               {---------------------------------------------------------------}
               DM.QMayorASIENTO.AsInteger := PrimerAsiento;
               DM.QMayor.Post;
            end;  // if RoundTo(nSaldo, -2) <> 0 then

            //QAcumulados.Next;
         end;  // while not QAcumulados.Eof do

         QAcumulados.Close;
         QAcumulados.Free;
      end;  // SaldosAcumulados*)


      // Selección de asientos
      Q := TIBQuery.Create(nil);
      try
         Q.Database := DMRef.BDContab;

         Q.SQL.Add('SELECT SUBCUENTA  ,  ');
         Q.SQL.Add('       DESCRIPCION   ');
         Q.SQL.Add('FROM   SUBCTAS       ');
         Q.SQL.Add('WHERE                ');
         if SeleccionPorSubcuenta and (Subcuenta_Desde <> '') then begin
            Q.SQL.Add('  SUBCUENTA >= :SUBCUENTA_DESDE AND ');
            Q.SQL.Add('  SUBCUENTA <= :SUBCUENTA_HASTA     ');
         end;

         if (sContenga <> '') then begin
            Q.SQL.Add(' AND DESCRIPCION CONTAINING :CONTENGA ');
         end;

         if (sNIF <> '') then begin
            Q.SQL.Add('AND UPPER(S.NIF) LIKE UPPER(:NIF) ');
         end;

         (*if Concepto <> '' then begin
            QAsientos.SQL.Add('  D.ID_CONCEPTOS = :ID_CONCEPTOS AND');
         end;

         if SoloSinPuntear then begin
            QAsientos.SQL.Add('  (D.PUNTEO IS NULL OR D.PUNTEO = "" OR D.PUNTEO = "N") AND');
         end;

         if FechaInicial = 0 then begin
            QAsientos.SQL.Add('   (D.FECHA IS NULL OR (D.FECHA >= :FECHAINICIAL AND FECHA <= :FECHAFINAL))');
         end
         else begin
            QAsientos.SQL.Add('   D.FECHA >= :FECHAINICIAL AND FECHA <= :FECHAFINAL');
         end;

         QAsientos.SQL.Add('   AND D.SUBCUENTA = S.SUBCUENTA');*)

         Q.SQL.Add('ORDER BY SUBCUENTA'); //, D.FECHA, D.ASIENTO, D.APUNTE');

         Q.Prepare;

         if SeleccionPorSubcuenta and (Subcuenta_desde <> '') then begin
            Q.ParamByName('SUBCUENTA_DESDE').AsString := Subcuenta_desde;
            Q.ParamByName('SUBCUENTA_HASTA').AsString := Subcuenta_hasta;
         end;

         if (sNIF <> '') then begin
            Q.Parambyname('NIF').AsString := Copy(sNIF + '%', 1, 20);
         end;

         if (sContenga <> '') then begin
            Q.Parambyname('CONTENGA').AsString := Trim(sContenga);
         end;

         (*if Concepto <> '' then begin
            QAsientos.ParamByName('ID_CONCEPTOS').AsString := Concepto;
         end;

         QAsientos.ParamByName('FECHAINICIAL').AsDateTime := FechaInicial;
         QAsientos.ParamByName('FECHAFINAL'  ).AsDateTime := FechaFinal;*)

         Q.Open;

         try
            while not Q.EOF do begin
               DM.QSubcuentasMayor.Append;
               //DM.QSubcuentasMayor.Edit;
               DM.QSubcuentasMayorSUBCUENTA.AsString   := Q.FieldByName('SUBCUENTA'  ).AsString;
               DM.QSubcuentasMayorDESCRIPCION.AsString := Q.FieldByName('DESCRIPCION').AsString;
               DM.QSubcuentasMayor.Post;
               //DM.QSubcuentasMayor.ApplyUpdates(0);
               Q.Next;
            end;
         (*   nSubcuenta     := '';
            nDescSubcuenta := '';
            while not QAsientos.EOF do begin
               { Chequeo conceptos }
               if not QAsientos.FieldByName('ID_CONCEPTOS').IsNull then begin
                  QConceptos.Close;
                  QConceptos.ParamByName('ID_CONCEPTOS').AsString := QAsientos.FieldByName('ID_CONCEPTOS').AsString;
                  QConceptos.Open;
                  if (TipoConcepto <> 'T') and (QConceptos.FieldByName('TipoContabilidad').AsString <> TipoConcepto) then begin
                     QAsientos.Next;
                     Continue;
                  end;
               end;

               if not Pertenece_Analitica(DMRef.BDContab,
                                          QAsientos.FieldByName('CUENTA_ANALITICA').AsString,
                                          Cuenta,
                                          '',
                                          Delegacion,
                                          Departamento,
                                          Seccion,
                                          Proyecto) then begin
                  QAsientos.Next;
                  Continue;
               end;

               if nSubcuenta <> QAsientos.FieldByName('SUBCUENTA').AsString then begin
                  { Subcuenta y descripción }
                  if not QAsientos.FieldByName('SUBCUENTA').IsNull then begin
                     QSubcuentas.Close;
                     QSubcuentas.ParamByName('SUBCUENTA').AsString := QAsientos.FieldByName('SUBCUENTA').AsString;
                     QSubcuentas.Open;
                     nDescSubcuenta := QSubcuentas.FieldByName('DESCRIPCION').AsString;
                  end;
                  nSubcuenta := QAsientos.FieldByName('SUBCUENTA').AsString;

                  if SeleccionPorDescripcion and not ((nDescSubcuenta >= DescSubctaInicial) and (nDescSubcuenta <= DescSubctaFinal)) then begin
                     QAsientos.Next;
                     Continue;
                  end;
               end;

               if SeleccionPorDescripcion and not ((nDescSubcuenta >= DescSubctaInicial) and (nDescSubcuenta <= DescSubctaFinal)) then begin
                  QAsientos.Next;
                  Continue;
               end;

               DM.QMayor.Append;
               { Subcuenta y descripción }
               Abreviatura := '';
               if not QAsientos.FieldByName('SUBCUENTA').IsNull then begin
                  DM.QMayorSUBCUENTA.AsString := QAsientos.FieldByName('SUBCUENTA').AsString;
                  if not QSubcuentas.EOF then begin
                     DM.QMayorDESCSUBCUENTA.AsString := Trim(QSubcuentas.FieldByName('DESCRIPCION').AsString);
                     Abreviatura := QSubcuentas.FieldByName('ABREVIATURA').AsString;
                  end;
               end;

               if QAsientos.FieldByName('FECHA').AsDateTime > 0 then begin
                  DM.QMayorFECHA.AsDateTime := QAsientos.FieldByName('FECHA').AsDateTime;
               end;
               DM.QMayorASIENTO.AsInteger         := QAsientos.FieldByName('ASIENTO').AsInteger;
               DM.QMayorAPUNTE.AsInteger          := QAsientos.FieldByName('APUNTE').AsInteger;
               DM.QMayorID_CONCEPTOS.AsString     := QAsientos.FieldByName('ID_CONCEPTOS').AsString;
               DM.QMayorCUENTA_ANALITICA.AsString := QAsientos.FieldByName('CUENTA_ANALITICA').AsString;
               DM.QMayorPUNTEO.AsString           := QAsientos.FieldByName('PUNTEO').AsString;

               // Descripción de apunte
               DescConcepto := '';
               if not QConceptos.EOF then begin
                  DescConcepto := Trim(QConceptos.FieldByName('DESCRIPCION').AsString) + ' ';
               end;
               NumeroFactura := QAsientos.FieldByName('NUMEROFACTURA').AsString;

               // Descripción de apunte
               DescApunte := DMContaRef.GetDescripcionApunte(DescConcepto,
                                                             NumeroFactura,
                                                             QAsientos.FieldByName('SERIE'     ).AsString,
                                                             QAsientos.FieldByName('EJERCICIO' ).AsInteger,
                                                             QAsientos.FieldByName('COMENTARIO').AsString,
                                                             Abreviatura);

               DM.QMayorDESCAPUNTE.AsString := Copy(DescApunte, 1, 100);

               DM.QMayorDEBEHABER.AsString := QAsientos.FieldByName('DEBEHABER').AsString;
               DM.QMayorIMPORTE.AsFloat    := QAsientos.FieldByName('IMPORTE'  ).AsFloat;

               if QAsientos.FieldByName('DEBEHABER').AsString = 'D' then begin
                  DM.QMayorDEBE.AsFloat := QAsientos.FieldByName('IMPORTE').AsFloat;
                  nSaldo := QAsientos.FieldByName('IMPORTE').AsFloat;
               end
               else begin
                  DM.QMayorHABER.AsFloat := QAsientos.FieldByName('IMPORTE').AsFloat;
                  nSaldo := -QAsientos.FieldByName('IMPORTE').AsFloat;
               end;

               DM.QMayorSALDO.AsFloat := RoundTo(nSaldo, -3);

               DM.QMayorCONTRAPARTIDA.AsString := QAsientos.FieldByName('CONTRAPARTIDA').AsString;

               { Fechas incluidas para la impresión.}
               DM.QMayorFECHAINICIAL.AsDateTime   := FechaInicial;
               DM.QMayorFECHAFINAL.AsDateTime     := FechaFinal;
               DM.QMayorFECHAIMPRESION.AsDateTime := FechaImpresion;

               DM.QMayor.Post;

               Application.ProcessMessages;

               QAsientos.Next;
            end;*)
         except
            on E: Exception do begin
               DatabaseError(E.Message);
            end;
         end;
      finally
         Q.Free;
         QSubcuentas.Free;
         QConceptos.Free;
      end;
   finally
      InProgress.Free;
   end;

   if Orden = 'S' then DM.QSubcuentasMayor.IndexName := 'SUBCUENTA'
                  else DM.QSubcuentasMayor.IndexName := 'DESCRIPCION';
   DM.QSubcuentasMayor.First;
end;

procedure TFiltroListadosMayorModel.PrintMayor;
begin
   //FormPrincipal.LanzarListado('LMayor.rtm', DM.SInformesConta, True, False, SaltoPaginaPorSubcta);
   DM.PDFExport.Author          := 'senCille Accounting';
   DM.PDFExport.ShowDialog      := False;
   DM.PDFExport.OpenAfterExport := True;

   DM.PDFExport.FileName := 'Mayor.pdf';
   DM.FastReportMayor.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
   DM.FastReportMayor.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

   DM.FastReportMayor.PrepareReport(True);
   DM.FastReportMayor.Export(DM.PDFExport);
end;

function TFiltroListadosMayorModel.Pertenece_Analitica(ADataBase    :TIBDatabase;
                                                       AAnalitica   ,
                                                       ACuentaDesde ,
                                                       ACuentaHasta ,
                                                       ADelegacion  ,
                                                       ADepartamento,
                                                       ASeccion     ,
                                                       AProyecto    :string): Boolean;
var Q :TIBQuery;
begin
   if (ACuentaDesde  <> '') or (ADelegacion <> '') or (ADepartamento <> '') or
      (ASeccion      <> '') or (AProyecto   <> '') then begin

      Q := TIBQuery.Create(nil);
      Q.DataBase := ADataBase;
      Q.SQL.Add('SELECT CUENTA      ');
      Q.SQL.Add('FROM   ANALITICAS  ');
      Q.SQL.Add('WHERE CUENTA = :prmCUENTA_ANALITICA');
      if ACuentaHasta <> '' then Q.SQL.Add(' AND CUENTA >= :prmCUENTA_DESDE AND CUENTA <= :prmCUENTA_HASTA ')
                            else Q.SQL.Add(' AND CUENTA = :prmCUENTA_DESDE');

      if ADelegacion   <> '' then Q.SQL.Add(' AND ID_DELEGACION   = :prmID_DELEGACION   ');
      if ADepartamento <> '' then Q.SQL.Add(' AND ID_DEPARTAMENTO = :prmID_DEPARTAMENTO ');
      if ASeccion      <> '' then Q.SQL.Add(' AND ID_SECCION      = :prmID_SECCION      ');
      if AProyecto     <> '' then Q.SQL.Add(' AND ID_PROYECTO     = :prmID_PROYECTO     ');

      Q.ParamByName('prmCUENTA_ANALITICA').AsString := AAnalitica;
      if ACuentaDesde  <> '' then Q.ParamByName('prmCUENTA_DESDE'   ).AsString := ACuentaDesde;
      if ACuentaHasta  <> '' then Q.ParamByName('prmCUENTA_HASTA'   ).AsString := ACuentaHasta;
      if ADelegacion   <> '' then Q.ParamByName('prmID_DELEGACION'  ).AsString := ADelegacion;
      if ADepartamento <> '' then Q.ParamByName('prmID_DEPARTAMENTO').AsString := ADepartamento;
      if ASeccion      <> '' then Q.ParamByName('prmID_SECCION'     ).AsString := ASeccion;
      if AProyecto     <> '' then Q.ParamByName('prmID_PROYECTO'    ).AsString := AProyecto;

      try
         Q.Open;
         Result := not Q.EOF;
      finally
         Q.Free;
      end;
   end
   else Result := True;
end;

procedure TDataModuleFiltroListadosMayor.QInfDiarioCalcFields(
  DataSet: TDataSet);
begin
   // Descripción del apunte
   QInfDiarioDescApunte.AsString := DMContaRef.GetDescripcionApunte(QInfDiarioDESCCONCEPTO.AsString,
                                                                    QInfDiarioNUMEROFACTURA.AsString,
                                                                    QInfDiarioSERIE.AsString,
                                                                    QInfDiarioEJERCICIO.AsInteger,
                                                                    QInfDiarioCOMENTARIO.AsString,
                                                                    QInfDiarioABREVIATURA.AsString);

   // Campos calculados empleados en el libro de mayor
   if QInfDiarioDEBEHABER.AsString = 'D' then begin
      QInfDiarioDebe.AsFloat := QInfDiarioIMPORTE.AsFloat;
   end
   else begin
      QInfDiarioHaber.AsFloat := QInfDiarioIMPORTE.AsFloat;
   end;
end;

procedure TFiltroListadosMayorModel.EmptyLinesDiario;
begin
   DM.QLinesDiario.EmptyDataSet;
end;

procedure TFiltroListadosMayorModel.EmptyMayor;
begin
   DM.QSubcuentasMayor.EmptyDataSet;
   DM.QSubcuentasMayor.IndexName := '';
end;

end.
