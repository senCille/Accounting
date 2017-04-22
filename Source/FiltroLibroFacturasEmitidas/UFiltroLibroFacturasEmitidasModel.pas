unit UFiltroLibroFacturasEmitidasModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  DBClient, frxClass, frxDBSet, frxExportPDF;

type
  TDataModuleFiltroLibroFacturasEmitidas = class(TDataModule)
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
    FastReportFacturasEmitidasSubcta: TfrxReport;
    PDFExport: TfrxPDFExport;
    Enlace1: TfrxDBDataset;
    FastReportFacturasTipoIVA: TfrxReport;
    FastReportFacturasEmitidas: TfrxReport;
    SInfDiario: TDataSource;
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
    procedure QInformesContaBeforeInsert(DataSet: TDataSet);
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TFiltroLibroFacturasEmitidasModel = class(TCustomModel)
  private
    DM :TDataModuleFiltroLibroFacturasEmitidas;
    procedure InicializarFicherosInformes;
    procedure ReportFacturasEmitidasSubcta;
    procedure ReportFacturasTipoIVA;
    procedure ReportFacturasEmitidas;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure ReportLibroIVA(AFechaInicial   ,
                             AFechaFinal     ,
                             ABaseImpInicial ,
                             ABaseImpFinal   ,
                             ACuotaIVAInicial,
                             ACuotaIVAFinal  ,
                             AIVAInicial     ,
                             AIVAFinal       :Double;
                             AFechaImpresion :TDateTime;
                             AFormatoOficial :Boolean;
                             AOrden          ,
                             ATipoInforme    ,
                             ASubcuenta      ,
                             AAgrupacion     ,
                             ACuenta         ,
                             ADelegacion     ,
                             ADepartamento   ,
                             ASeccion        ,
                             AProyecto       ,
                             AIntracomun     :string);

  end;

var
  DataModuleFiltroLibroFacturasEmitidas: TDataModuleFiltroLibroFacturasEmitidas;

implementation

uses Forms, UEspere, Math, DateUtils,
     Globales, DMControl, DM, DMConta, UIVA300;

{$R *.dfm}

{ TFiltroLibroFacturasEmitidasModel }

constructor TFiltroLibroFacturasEmitidasModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleFiltroLibroFacturasEmitidas.Create(Application);
   if Initialize then DoInitialize;
end;

function TFiltroLibroFacturasEmitidasModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TFiltroLibroFacturasEmitidasModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TFiltroLibroFacturasEmitidasModel.DoInitialize;
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

   DM.QInfDiario.Database := DB;
   DM.QInformesConta.Active := True;
end;

procedure TFiltroLibroFacturasEmitidasModel.InicializarFicherosInformes;
begin
   DM.QInformesConta.EmptyDataSet;
end;

procedure TFiltroLibroFacturasEmitidasModel.Refresh;
begin

end;

procedure TFiltroLibroFacturasEmitidasModel.ReportLibroIVA(AFechaInicial   ,
                                                           AFechaFinal     ,
                                                           ABaseImpInicial ,
                                                           ABaseImpFinal   ,
                                                           ACuotaIVAInicial,
                                                           ACuotaIVAFinal  ,
                                                           AIVAInicial     ,
                                                           AIVAFinal       :Double;
                                                           AFechaImpresion :TDateTime;
                                                           AFormatoOficial :Boolean;
                                                           AOrden          ,
                                                           ATipoInforme    ,
                                                           ASubcuenta      ,
                                                           AAgrupacion     ,
                                                           ACuenta         ,
                                                           ADelegacion     ,
                                                           ADepartamento   ,
                                                           ASeccion        ,
                                                           AProyecto       ,
                                                           AIntracomun     :string);
var
   QFacturas           :TIBSQL;
   QApuntes216         :TIBSQL;
   QApuntes            :TIBSQL;            
   QSubcuentas         :TIBSQL;
   InProgress          :TEspere;
   AsientoAnterior     :Integer;
   NumLinea            :Integer;
   DescInforme         :string;
   Titulo              :string;
   ClienteProveedor    :string;
   nBase01             :Double;
   nBase04             :Double;
   nBase07             :Double;
   nTipo02             :Double;
   nTipo05             :Double;
   nTipo08             :Double;
   nCuota03            :Double;
   nCuota06            :Double;
   nCuota09            :Double;
   nBase10             :Double;
   nBase13             :Double;
   nBase16             :Double;
   nTipo11             :Double;
   nTipo14             :Double;
   nTipo17             :Double;
   nCuota12            :Double;
   nCuota15            :Double;
   nCuota18            :Double;
   nBase19             :Double;
   nBase19SI           :Double;
   nCuota20            :Double;
   nCuota20SI          :Double;
   nBase32             :Double;
   nCuota22O           :Double;
   nCuota22B           :Double;
   nBase00             :Double;
   nTipo00             :Double;
   nBase36             :Double;
   nBase37             :Double;
   nBase38             :Double;
   nBase216            :Double;
   nCuota216           :Double;
   nCuota22            :Double;
   nCuota23            :Double;
   nCuota23BI          :Double;
   nCuota24            :Double;
   nCuota24BI          :Double;
   nCuota24SI          :Double;
   nCuota25            :Double;
   nCuota27            :Double;
   nCuota22T00         :Double;
   nCuota22T02         :Double;
   nCuota22T05         :Double;
   nCuota22T08         :Double;
   nBase22B            :Double;
   nBase22T00          :Double;
   nBase22T02          :Double;
   nBase22T05          :Double;
   nBase22T08          :Double;
   nSumaBaseImponible  :Double;
   nSumaCuotaIva       :Double;
   nSumaCuotaRecargo   :Double;
   nTSumaBaseImponible :Double;
   nTSumaCuotaIva      :Double;
   nTSumaCuotaRecargo  :Double;
   nTSumaTotalFactura  :Double;
begin
   InProgress := InProgressView('Generando informe ...', True);
   try
      Config.AbortedProcess := False;
      Config.FormatoOficial := AFormatoOficial;

      if ATipoInforme = 'B' then begin
         Titulo           := 'LIBRO DE FACTURAS BIENES DE INVERSION';
         ClienteProveedor := 'Proveedor';
      end else
      if ATipoInforme = 'R' then begin
         Titulo           := 'LIBRO DE FACTURAS RECIBIDAS';
         ClienteProveedor := 'Proveedor';
      end
      else begin
         Titulo           := 'LIBRO DE FACTURAS EMITIDAS';
         ClienteProveedor := 'Cliente';
      end;

      // inicializar valores
      nBase00             := 0;
      nBase01             := 0;
      nBase04             := 0;
      nBase07             := 0;
      nBase10             := 0;
      nBase13             := 0;
      nBase16             := 0;
      nBase19             := 0;
      nBase19SI           := 0;
      nBase32             := 0;
      nBase36             := 0;
      nBase37             := 0;
      nBase38             := 0;
      nBase216            := 0;

      nCuota03            := 0;
      nCuota06            := 0;
      nCuota09            := 0;
      nCuota12            := 0;
      nCuota15            := 0;
      nCuota18            := 0;
      nCuota20            := 0;
      nCuota20SI          := 0;
      nCuota22            := 0;
      nCuota22O           := 0;
      nCuota22B           := 0;
      nCuota23            := 0;
      nCuota23BI          := 0;
      nCuota24            := 0;
      nCuota24BI          := 0;
      nCuota24SI          := 0;
      nCuota25            := 0;
      nCuota22T00         := 0;
      nCuota22T02         := 0;
      nCuota22T05         := 0;
      nCuota22T08         := 0;
      nCuota216           := 0;
      nBase22B            := 0;
      nBase22T00          := 0;
      nBase22T02          := 0;
      nBase22T05          := 0;
      nBase22T08          := 0;

      nSumaBaseImponible  := 0;
      nSumaCuotaIva       := 0;
      nSumaCuotaRecargo   := 0;

      nTSumaBaseImponible := 0;
      nTSumaCuotaIva      := 0;
      nTSumaCuotaRecargo  := 0;
      nTSumaTotalFactura  := 0;

      AsientoAnterior     := -99;
      NumLinea            := 1;

      // Subcuentas
      QSubcuentas := TIBSQL.Create(nil);
      QSubcuentas.Database := DB;
      QSubcuentas.SQL.Add('SELECT NIF        ,         ');
      QSubcuentas.SQL.Add('       DESCRIPCION,         ');
      QSubcuentas.SQL.Add('       PAIS       ,         ');
      QSubcuentas.SQL.Add('       IVA        ,         ');
      QSubcuentas.SQL.Add('       RECARGO              ');
      QSubcuentas.SQL.Add('FROM  SUBCTAS               ');
      QSubcuentas.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA');

      // Selección del importe total de la factura
      QFacturas := TIBSQL.Create(nil);
      QFacturas.Database := DB;
      QFacturas.SQL.Add('SELECT D.IMPORTE                                                                                ');
      QFacturas.sQL.Add('FROM DIARIO D,                                                                                  ');
      QFacturas.sQL.Add('     CUENTAS C                                                                                  ');
      QFacturas.SQL.Add('WHERE D.ASIENTO = :ASIENTO                                                                      ');
      QFacturas.sQL.Add('AND  ((C.TIPOCUENTA = "P" AND D.DEBEHABER = "H") OR (C.TIPOCUENTA = "C" AND D.DEBEHABER = "D")) ');
      QFacturas.SQL.Add('AND  SUBSTR(D.SUBCUENTA, 1, 3) = C.CUENTA                                                       ');

      // Poner valores a los tipos
      nTipo00 :=  0;
      nTipo02 := 99;
      nTipo05 := 99;
      nTipo08 := 99;
      nTipo11 := 99;
      nTipo14 := 99;
      nTipo17 := 99;

      // IVA normal
      if (DMRef.QParametrosSCTAIVANORMAL.AsString <> '') then begin
         QSubcuentas.Close;
         QSubcuentas.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTAIVANORMAL.AsString;
         QSubcuentas.ExecQuery;
         nTipo02 := QSubcuentas.FieldByName('IVA').AsFloat;
      end;

      // Verificacion para que no se quede nunca a cero
      if nTipo02 = 0 then begin
         if (DmRef.QParametrosSCTAIVACNORMAL.AsString <> '') then begin
            QSubcuentas.Close;
            QSubcuentas.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTAIVACNORMAL.AsString;
            QSubcuentas.ExecQuery;
            nTipo02 := QSubcuentas.FieldByName('IVA').AsFloat;
         end;
      end;

      // IVA reducido
      if (DmRef.QParametrosSCTAIVAREDUCIDO.AsString <> '') then begin
         QSubcuentas.Close;
         QSubcuentas.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTAIVAREDUCIDO.AsString;
         QSubcuentas.ExecQuery;
         nTipo05 := QSubcuentas.FieldByName('IVA').AsFloat;
      end;
      // Verificacion para que no se quede nunca a cero
      if nTipo05 = 0 then begin
         if (DmRef.QParametrosSCTAIVACREDUCIDO.AsString <> '') then begin
            QSubcuentas.Close;
            QSubcuentas.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTAIVACREDUCIDO.AsString;
            QSubcuentas.ExecQuery;
            nTipo05 := QSubcuentas.FieldByName('IVA').AsFloat;
         end;
      end;

      // IVA Superreducido
      if (DMRef.QParametrosSCTAIVASUPER.AsString <> '') then begin
         QSubcuentas.Close;
         QSubcuentas.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTAIVASUPER.AsString;
         QSubcuentas.ExecQuery;
         nTipo08 := QSubcuentas.FieldByName('IVA').AsFloat;
      end;
      // Verificacion para que no se quede nunca a cero
      if nTipo08 = 0 then begin
         if (DMRef.QParametrosSCTAIVACSUPER.AsString <> '') then begin
            QSubcuentas.Close;
            QSubcuentas.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTAIVACSUPER.AsString;
            QSubcuentas.ExecQuery;
            nTipo08 := QSubcuentas.FieldByName('IVA').AsFloat;
         end;
      end;

      // Recargo normal
      if (DMRef.QParametrosSCTARECNORMAL.AsString <> '') then begin
         QSubcuentas.Close;
         QSubcuentas.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTARECNORMAL.AsString;
         QSubcuentas.ExecQuery;
         nTipo11 := RoundTo(QSubcuentas.FieldByName('RECARGO').AsFloat, -2);
      end;
      // Recargo reducido
      if (DMRef.QParametrosSCTARECREDUCIDO.AsString <> '') then begin
         QSubcuentas.Close;
         QSubcuentas.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTARECREDUCIDO.AsString;
         QSubcuentas.ExecQuery;
         nTipo14 := RoundTo(QSubcuentas.FieldByName('RECARGO').AsFloat, -2);
      end;
      // Recargo Superreducido
      if (DMRef.QParametrosSCTARECSUPER.AsString <> '') then begin
         QSubcuentas.Close;
         QSubcuentas.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTARECSUPER.AsString;
         QSubcuentas.ExecQuery;
         nTipo17 := RoundTo(QSubcuentas.FieldByName('RECARGO').AsFloat, -2);
      end;

      if ATipoInforme = '3' then begin
         // Selección de asientos 216
         QApuntes216 := TIBSQL.Create(nil);
         try
            QApuntes216.Database := DMRef.BDContab;

            QApuntes216.SQL.Add('SELECT DISTINCT D.ASIENTO,                 ');
            QApuntes216.SQL.Add('       D.IMPORTE         ,                 ');
            QApuntes216.SQL.Add('       D.MONEDA          ,                 ');
            QApuntes216.SQL.Add('       D.CONTRAPARTIDA   ,                 ');
            QApuntes216.SQL.Add('       D.IVA             ,                 ');
            QApuntes216.SQL.Add('       D.BASEIMPONIBLE   ,                 ');
            QApuntes216.SQL.Add('       S.TIPOIVA         ,                 ');
            QApuntes216.SQL.Add('       D.CUOTARECARGO    ,                 ');
            QApuntes216.SQL.Add('       D.CUOTAIVA        ,                 ');
            QApuntes216.SQL.Add('       D.CUENTA_ANALITICA                  ');
            QApuntes216.SQL.Add('FROM DIARIO    D,                          ');
            QApuntes216.SQL.Add('     CONCEPTOS C,                          ');
            QApuntes216.SQL.Add('     CUENTAS   T,                          ');
            QApuntes216.SQL.Add('     SUBCTAS   S                           ');
            QApuntes216.SQL.Add('WHERE D.ID_CONCEPTOS = C.ID_CONCEPTOS      ');
            QApuntes216.SQL.Add('AND   C.TIPOCONCEPTO = "2"                 ');
            QApuntes216.SQL.Add('AND   SUBSTR(D.SUBCUENTA, 1, 3) = T.CUENTA ');
            QApuntes216.SQL.Add('AND   D.SUBCUENTA     =  S.SUBCUENTA       ');
            QApuntes216.SQL.Add('AND   T.TIPOCUENTA    =  "R"               ');
            QApuntes216.SQL.Add('AND   D.FECHA         >= :FechaIni         ');
            QApuntes216.SQL.Add('AND   D.FECHA         <= :FechaFin         ');
            QApuntes216.SQL.Add('AND   D.BASEIMPONIBLE >= :BaseIni          ');
            QApuntes216.SQL.Add('AND   D.BASEIMPONIBLE <= :BaseFin          ');
            QApuntes216.SQL.Add('AND   D.IMPORTE       >= :CuotaIvaIni      ');
            QApuntes216.SQL.Add('AND   D.IMPORTE       <= :CuotaIvaFin      ');
            if (AIVAInicial = 0) or (AIVAFinal = 0) then begin
               QApuntes216.SQL.Add('  and ((d.Iva >= :IvaIni and D.Iva <= :IvaFin) or (d.iva is null)) ');
            end
            else begin
               QApuntes216.SQL.Add('  and d.Iva >= :IvaIni and D.Iva <= :IvaFin ');
            end;

            // Recordar que en importe esta la misma cantidad que en cuotaiva
            if AAgrupacion = 'S' then QApuntes216.SQL.Add('order by D.CONTRAPARTIDA, ')  // Agrupado por subcuenta
                                 else QApuntes216.SQL.Add('order by');
                                 
            if AOrden = 'F' then begin
               QApuntes216.SQL.Add('D.FECHA,D.ASIENTO');
            end else
            if AOrden = 'N' then begin
               QApuntes216.SQL.Add('D.NUMEROFACTURA');
            end else
            if AOrden = 'A' then begin
               QApuntes216.SQL.Add('D.ASIENTO');
            end else
            if AOrden = 'S' then begin
               QApuntes216.SQL.Add('D.CONTRAPARTIDA,D.FECHA');
            end;
            QApuntes216.parambyname('FechaIni').AsDateTime  := AFechaInicial;
            QApuntes216.parambyname('FechaFin').AsDateTime  := AFechaFinal;
            QApuntes216.parambyname('BaseIni').AsDouble     := ABaseImpInicial;
            QApuntes216.parambyname('BaseFin').AsDouble     := ABaseImpFinal;
            QApuntes216.parambyname('CuotaIvaIni').AsDouble := ACuotaIvaInicial;
            QApuntes216.parambyname('CuotaIvaFin').AsDouble := ACuotaIvaFinal;
            QApuntes216.parambyname('IvaIni').AsDouble      := AIvaInicial;
            QApuntes216.parambyname('IvaFin').AsDouble      := AIvaFinal;
            QApuntes216.ExecQuery;

            while not QApuntes216.EOF do begin
               if (ASubcuenta <> '') and (QApuntes216.FieldByName('contrapartida').AsString <> ASubcuenta) then begin
                  QApuntes216.Next;
                  Continue;
               end;
               if not DMContaRef.Pertenece_Analitica(QApuntes216.FieldByName('CUENTA_ANALITICA').AsString, ACuenta, '', ADelegacion, ADepartamento, ASeccion, AProyecto) then begin
                  QApuntes216.Next;
                  Continue;
               end;

               nBase216  := nBase216  + QApuntes216.FieldByName('Baseimponible').AsFloat;
               nCuota216 := nCuota216 + QApuntes216.FieldByName('cuotaiva').AsFloat;

               QApuntes216.Next;
            end;
         finally
            QApuntes216.Free;
         end;
      end;

      // Selección de asientos
      QApuntes := TIBSQL.Create(nil);
      try
         QApuntes.Database := DMRef.BDContab;

         QApuntes.SQL.Add('SELECT');
         QApuntes.SQL.Add('   D.ASIENTO, D.NUMEROFACTURA, D.FECHA, D.IMPORTE, D.NIF, T.TIPOCUENTA,');
         QApuntes.SQL.Add('   D.MONEDA, D.CONTRAPARTIDA, D.RECARGO, D.IVA, D.BASEIMPONIBLE, D.SERIE, D.EJERCICIO,');
         QApuntes.SQL.Add('   D.COMENTARIO, D.ID_CONCEPTOS, S.TIPOIVA, D.CUOTARECARGO, D.CUOTAIVA, D.CUENTA_ANALITICA, D.SUBCUENTA');
         QApuntes.SQL.Add(' From Diario D, Conceptos C , Cuentas T, Subctas S');
         QApuntes.SQL.Add(' Where D.ID_Conceptos=C.id_Conceptos and (C.TipoConcepto="I" or c.tipoconcepto="2") ');
         QApuntes.SQL.Add('  and SUBSTR(D.SUBCUENTA, 1, 3) = T.CUENTA and D.Subcuenta=S.subcuenta');
         if ATipoInforme = 'E' then begin
            QApuntes.SQL.Add(' and T.Tipocuenta = "R"');
         end else
         if ATipoInforme = '3' then begin
            QApuntes.SQL.Add(' and (T.Tipocuenta = "S" or T.TipoCuenta = "R") ');
         end else
         if ATipoInforme = 'R' then begin
            QApuntes.SQL.Add(' and (T.Tipocuenta = "S" and S.TipoIva <> "B") ');
         end else
         if ATipoInforme = 'B' then begin
            QApuntes.SQL.Add(' and (T.Tipocuenta = "S" and S.TipoIva = "B") ');
         end;

         QApuntes.SQL.Add('  and D.Fecha>=:FechaIni and D.Fecha<=:FechaFin ');
         QApuntes.SQL.Add('  and d.BaseImponible>=:BaseIni and D.BaseImponible<=:BaseFin ');
         QApuntes.SQL.Add('  and d.Importe>=:CuotaIvaIni and D.Importe<=:CuotaIvaFin ');
         if (Aivainicial = 0) or (Aivafinal = 0) then begin
            QApuntes.SQL.Add('  and ((d.Iva>=:IvaIni and D.Iva<=:IvaFin) or (d.iva is null)) ');
         end
         else begin
            QApuntes.SQL.Add('  and d.Iva>=:IvaIni and D.Iva<=:IvaFin ');
         end;
         // Recordar que en importe esta la misma cantidad que en cuotaiva
         if AAgrupacion = 'S' then begin    // Agrupado por subcuenta
            QApuntes.SQL.Add('order by D.CONTRAPARTIDA,');
         end else
         if AAgrupacion = 'I' then begin // Agrupado por Subcuenta (IVA)
            QApuntes.SQL.Add('order by D.SUBCUENTA,');
         end
         else begin
            QApuntes.SQL.Add('order by');
         end;

         if AOrden = 'F' then begin
            QApuntes.SQL.Add('D.FECHA,D.ASIENTO');
         end else
         if AOrden = 'N' then begin
            QApuntes.SQL.Add('D.EJERCICIO,D.SERIE,D.NUMEROFACTURA');
         end else
         if AOrden = 'A' then begin
            QApuntes.SQL.Add('D.ASIENTO');
         end else
         if AOrden = 'S' then begin
            QApuntes.SQL.Add('D.CONTRAPARTIDA,D.FECHA');
         end;
         QApuntes.parambyname('FechaIni').AsDateTime  := AFechaInicial;
         QApuntes.parambyname('FechaFin').AsDateTime  := AFechaFinal;
         QApuntes.parambyname('BaseIni').AsDouble     := ABaseImpInicial;
         QApuntes.parambyname('BaseFin').AsDouble     := ABaseImpFinal;
         QApuntes.parambyname('CuotaIvaIni').AsDouble := ACuotaIvaInicial;
         QApuntes.parambyname('CuotaIvaFin').AsDouble := ACuotaIvaFinal;
         QApuntes.parambyname('IvaIni').AsDouble      := AIvaInicial;
         QApuntes.parambyname('IvaFin').AsDouble      := AIvaFinal;
         QApuntes.ExecQuery;
      { Tipo de Listado :    (3) Modelo 300
                             (G) Modelo 420
                             (E) Facturas emitidas
                             {R) Facturas recibidas
                             {B) Facturas Bienes Inversion  }

      { Cuentas : TipoCuenta (R) Iva Devengado/Repercutido
                             (S) Iva Deducible/Soportado    }

         try
            while not QApuntes.EOF do begin
               if (ASubcuenta <> '') and (QApuntes.FieldByName('contrapartida').AsString <> ASubcuenta) then begin
                  QApuntes.Next;
                  Continue;
               end;
               if not DMContaRef.Pertenece_Analitica(QApuntes.FieldByName('CUENTA_ANALITICA').AsString,
                  ACuenta, '', ADelegacion, ADepartamento, ASeccion, AProyecto) then begin
                  QApuntes.Next;
                  Continue;
               end;

               // Excluir Cliente Intracomunitario
               if (ATipoInforme = 'E') and (AIntracomun = 'E') and
                  (DMRef.QParametrosSCTAGENINTRACOM.AsString <> '') and
                  (DMRef.QParametrosSCTAGENINTRACOM.AsString = QApuntes.FieldByName('CONTRAPARTIDA').AsString) then begin
                  QApuntes.Next;
                  Continue;
               end;

               // Solo Cliente Intracomunitario
               if (ATipoInforme = 'E') and (AIntracomun = 'S') and
                  (DMRef.QParametrosSCTAGENINTRACOM.AsString <>
                  QApuntes.FieldByName('CONTRAPARTIDA').AsString) then begin
                  QApuntes.Next;
                  Continue;
               end;

               // No se debe sumar la base imponible si el tratamiento de recargo
               // es individual, en el caso de "una empresa específica", ya que la base imponible en
               // el enlace automatico se traspasa al apunte del iva.
         {if not gvTratamientoRecargo then
           nSumaBaseImponible:=nSumaBaseImponible+Fieldbyname('BaseImponible').asfloat;}
               nSumaCuotaIva     := nSumaCuotaIva     + QApuntes.FieldByName('cuotaiva').AsFloat;
               nSumaCuotaRecargo := nSumaCuotaRecargo + QApuntes.FieldByName('cuotarecargo').AsFloat;

               // Informe Mod. 300
               if (ATipoInforme = '3') and (QApuntes.FieldByName('Tipocuenta').AsString = 'R') then begin
                  if (QApuntes.FieldByName('iva').AsFloat = nTipo00) and
                     (QApuntes.FieldByName('SUBCUENTA').AsString = DMRef.QParametrosSCTAIVAEXENTOCEE.AsString) then begin
                     nBase38 := nBase38 + QApuntes.FieldByName('Baseimponible').AsFloat;
                  end;
                  if (QApuntes.FieldByName('iva').AsFloat = nTipo00) and
                     (QApuntes.FieldByName('SUBCUENTA').AsString = DMRef.QParametrosSCTAEXPORTACIONES.AsString) then begin
                     nBase36 := nBase36 + QApuntes.FieldByName('Baseimponible').AsFloat;
                  end;
                  if (QApuntes.FieldByName('IVA').AsFloat = nTipo00) and
                     (QApuntes.FieldByName('SUBCUENTA').AsString = DMRef.QParametrosSCTAINTERESES.AsString)
                  then begin
                     nBase37 := nBase37 + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                  end;
                  if QApuntes.FieldByName('Tipoiva').AsString = 'C' then         // Entregas intracomunitarias
                  begin
                     nBase32 := nBase32 + QApuntes.FieldByName('baseimponible').AsFloat;
                  end;
                  if QApuntes.FieldByName('Tipoiva').AsString = 'A' then        // Adquisiciones intracomunitarias
                  begin
                     nBase19  := nBase19 + QApuntes.FieldByName('BaseImponible').AsFloat;
                     nCuota20 := nCuota20 + QApuntes.FieldByName('importe').AsFloat;
                  end
                  else
                  if QApuntes.FieldByName('Tipoiva').AsString = 'L' then        // Servicios Intracomunitarios
                  begin
                     nBase19SI  := nBase19SI + QApuntes.FieldByName('BaseImponible').AsFloat;
                     nCuota20SI := nCuota20SI + QApuntes.FieldByName('importe').AsFloat;
                  end
                  else begin
                     if (QApuntes.FieldByName('iva').AsFloat = nTipo00) and
                        (RoundTo(QApuntes.FieldByName('recargo').AsFloat, -2) = 0) then begin
                        nBase00 := nBase00 + QApuntes.FieldByName('Baseimponible').AsFloat;
                        // Buscar desglose
                     end
                     else
                     if (QApuntes.FieldByName('iva').AsFloat = nTipo02) then begin
                        nBase01  := nBase01 + QApuntes.FieldByName('Baseimponible').AsFloat;
                        nCuota03 := nCuota03 + QApuntes.FieldByName('cuotaiva').AsFloat;
                     end
                     else
                     if QApuntes.FieldByName('iva').AsFloat = nTipo05 then begin
                        nBase04  := nBase04 + QApuntes.FieldByName('Baseimponible').AsFloat;
                        nCuota06 := nCuota06 + QApuntes.FieldByName('cuotaiva').AsFloat;
                     end
                     else
                     if QApuntes.FieldByName('iva').AsFloat = nTipo08 then begin
                        nBase07  := nBase07 + QApuntes.FieldByName('Baseimponible').AsFloat;
                        nCuota09 := nCuota09 + QApuntes.FieldByName('cuotaiva').AsFloat;
                     end;

                     if RoundTo(QApuntes.FieldByName('Recargo').AsFloat, -2) <> 0 then         // Tiene recargo
                     begin
                        if QApuntes.FieldByName('Recargo').AsFloat = nTipo11 then begin
                           nBase10  := nBase10 + QApuntes.FieldByName('Baseimponible').AsFloat;
                           nCuota12 := nCuota12 + QApuntes.FieldByName('cuotarecargo').AsFloat;
                        end;
                        if QApuntes.FieldByName('Recargo').AsFloat = nTipo14 then begin
                           nBase13  := nBase13 + QApuntes.FieldByName('Baseimponible').AsFloat;
                           nCuota15 := nCuota15 + QApuntes.FieldByName('CuotaRecargo').AsFloat;
                        end;
                        if QApuntes.FieldByName('Recargo').AsFloat = nTipo17 then begin
                           nBase16  := nBase16 + QApuntes.FieldByName('Baseimponible').AsFloat;
                           nCuota18 := nCuota18 + QApuntes.FieldByName('CuotaRecargo').AsFloat;
                        end;
                     end;
                  end;
               end;

         { (C) Adquisiciones Intracomunitarias
           (I) Importaciones
           (O) Operaciones Interiores
           (B) Operaciones Interiores (Bienes de Inversion)
           (R) Regimen Agrario

           IGIC (G) Operaciones interiores    (N) Op. Interio. Bienes Inversion }

               // Informe Mod. 300
               if (ATipoInforme = '3') and (QApuntes.FieldByName('Tipocuenta').AsString = 'S') then begin
                  if (QApuntes.FieldByName('Tipoiva').AsString = 'O') or (QApuntes.FieldByName('TipoIva').AsString = 'B') then begin
                     nCuota22 := nCuota22 + QApuntes.FieldByName('CuotaIva').AsFloat;
                     if (QApuntes.FieldByName('Tipoiva').AsString = 'B') then begin
                        nCuota22B := nCuota22B + QApuntes.FieldByName('cuotaiva').AsFloat;
                        nBase22B  := nBase22B + QApuntes.FieldByName('Baseimponible').AsFloat;
                     end
                     else begin
                        nCuota22O := nCuota22O + QApuntes.FieldByName('cuotaiva').AsFloat;
                        if QApuntes.FieldByName('iva').AsFloat = nTipo00 then begin
                           nBase22T00  := nBase22T00 + QApuntes.FieldByName('Baseimponible').AsFloat;
                           nCuota22T00 := nCuota22T00 + QApuntes.FieldByName('cuotaiva').AsFloat;
                        end
                        else
                        if QApuntes.FieldByName('iva').AsFloat = nTipo02 then begin
                           nBase22T02  := nBase22T02 + QApuntes.FieldByName('Baseimponible').AsFloat;
                           nCuota22T02 := nCuota22T02 + QApuntes.FieldByName('cuotaiva').AsFloat;
                        end
                        else
                        if QApuntes.FieldByName('iva').AsFloat = nTipo05 then begin
                           nBase22T05  := nBase22T05 + QApuntes.FieldByName('Baseimponible').AsFloat;
                           nCuota22T05 := nCuota22T05 + QApuntes.FieldByName('cuotaiva').AsFloat;
                        end
                        else
                        if QApuntes.FieldByName('iva').AsFloat = nTipo08 then begin
                           nBase22T08  := nBase22T08 + QApuntes.FieldByName('Baseimponible').AsFloat;
                           nCuota22T08 := nCuota22T08 + QApuntes.FieldByName('cuotaiva').AsFloat;
                        end;
                     end;
                  end
                  else
                  if QApuntes.FieldByName('Tipoiva').AsString = 'I' then begin
                     nCuota23 := nCuota23 + QApuntes.FieldByName('cuotaiva').AsFloat;
                  end
                  else
                  if QApuntes.FieldByName('Tipoiva').AsString = 'X' then begin
                     nCuota23BI := nCuota23BI + QApuntes.FieldByName('cuotaiva').AsFloat;
                  end
                  else
                  if QApuntes.FieldByName('Tipoiva').AsString = 'C' then begin
                     nCuota24 := nCuota24 + QApuntes.FieldByName('cuotaiva').AsFloat;
                  end
                  else
                  if QApuntes.FieldByName('Tipoiva').AsString = 'W' then begin
                     nCuota24BI := nCuota24BI + QApuntes.FieldByName('cuotaiva').AsFloat;
                  end
                  else
                  if QApuntes.FieldByName('Tipoiva').AsString = 'L' then begin
                     nCuota24SI := nCuota24SI + QApuntes.FieldByName('cuotaiva').AsFloat;
                  end
                  else
                  if QApuntes.FieldByName('Tipoiva').AsString = 'R' then begin
                     nCuota25 := nCuota25 + QApuntes.FieldByName('cuotaiva').AsFloat;
                  end;
               end;

               if (ATipoInforme <> '3') then begin
                  // Grabar campos del informe
                  // Imprimir el número de línea y el total factura
                  //sólo en el primer apunte del asiento
                  DM.QInformesConta.Append;
                  DM.QInformesContaASIENTO.AsInteger         := QApuntes.FieldByName('ASIENTO').AsInteger;
                  { Almacenar datos necesarios para el título del informe }
                  DM.QInformesContaTitulo.AsString           := Titulo;
                  DM.QInformesContaClienteProveedor.AsString := clienteproveedor;
                  DM.QInformesContaFechaImpresion.AsDateTime := AFechaImpresion;
                  DM.QInformesContaFechaInicial.AsDateTime   := AFechaInicial;
                  DM.QInformesContaFechaFinal.AsDateTime     := AFechaFinal;

                  if QApuntes.FieldByName('ASIENTO').AsInteger <> AsientoAnterior then begin
                     AsientoAnterior := QApuntes.FieldByName('ASIENTO').AsInteger;
                     DM.QInformesContaNUMLINEA.AsInteger := NumLinea;
                     QFacturas.Close;
                     QFacturas.ParamByName('ASIENTO').AsInteger := QApuntes.FieldByName('ASIENTO').AsInteger;
                     QFacturas.ExecQuery;
                     if not QFacturas.EOF then begin
                        DM.QInformesContaImporte.AsFloat := QFacturas.FieldByName('IMPORTE').AsFloat;
                     end;
                     Inc(NumLinea);
                  end;
                  DM.QInformesContaASIENTO.AsInteger := QApuntes.FieldByName('ASIENTO').AsInteger;

                  if DMRef.QParametrosTRATASERIE.AsString = 'S' then begin
                     DM.QInformesContaFACTURA.AsString :=
                        Trim(QApuntes.FieldByName('EJERCICIO').AsString) + '/' + Trim(QApuntes.FieldByName('Serie').AsString) + '-' +
                        Trim(QApuntes.FieldByName('NUMEROFACTURA').AsString);
                  end
                  else begin
                     DM.QInformesContaFACTURA.AsString := QApuntes.FieldByName('NUMEROFACTURA').AsString;
                  end;

                  DM.QInformesContaFECHA.AsDateTime := QApuntes.FieldByName('FECHA').AsDateTime;
                  if AAgrupacion = 'I' then begin
                     DM.QInformesContaSUBCUENTA.AsString := QApuntes.FieldByName('SUBCUENTA').AsString;
                  end
                  else begin
                     DM.QInformesContaSUBCUENTA.AsString := QApuntes.FieldByName('CONTRAPARTIDA').AsString;
                  end;

                  // Si es 570 o es generica
                  if (Copy(Trim(QApuntes.FieldByName('Contrapartida').AsString), 1, 3) = '570') or
                     (QApuntes.FieldByName('Contrapartida').AsString = DMRef.QParametrosVGENERICA.AsString) or
                     (QApuntes.FieldByName('Contrapartida').AsString = DMRef.QParametrosVGENERICAC.AsString) or (DMContaRef.ObtenerTipoSubcuenta(
                     QApuntes.FieldByName('Contrapartida').AsString) = 'B') then begin
                     DM.QInformesContaDESCSUBCUENTA.AsString := QApuntes.FieldByName('COMENTARIO').AsString;
                     DM.QInformesContaNIF.AsString           := 'ES-' + Trim(QApuntes.FieldByName('NIF').AsString);
                  end
                  else begin
                     QSubcuentas.Close;
                     if AAgrupacion = 'I' then begin
                        QSubcuentas.parambyname('subcuenta').AsString := QApuntes.FieldByName('subcuenta').AsString;
                     end
                     else begin
                        QSubcuentas.parambyname('subcuenta').AsString := QApuntes.FieldByName('contrapartida').AsString;
                     end;
                     QSubcuentas.ExecQuery;
                     DM.QInformesContaDESCSUBCUENTA.AsString := QSubcuentas.FieldByName('DESCRIPCION').AsString;
                     if AAgrupacion = 'I' then begin
                        QSubcuentas.Close;
                        QSubcuentas.parambyname('subcuenta').AsString := QApuntes.FieldByName('contrapartida').AsString;
                        QSubcuentas.ExecQuery;
                        DMContaRef.QInformesContaFSubcuenta.AsString := QApuntes.FieldByName('contrapartida').AsString;
                        DMContaRef.QInformesContaFDESCSUBCUENTA.AsString := QSubcuentas.FieldByName('DESCRIPCION').AsString;
                     end;
                     DM.QInformesContaNIF.AsString := QSubcuentas.FieldByName('PAIS').AsString + '-' +
                        Trim(QSubcuentas.FieldByName('NIF').AsString);
                  end;

                  if (QApuntes.FieldByName('Tipoiva').AsString = 'C') then // Intracomunitarias "una empresa específica"
                  begin
                     DM.QInformesContaTOTALBRUTO.AsFloat := 0;
                  end
                  else begin
                     if (((RoundTo(QApuntes.FieldByName('recargo').AsFloat, -2) <> 0) and
                        (not Config.ActiveWithSurcharge)) or
                        (RoundTo(QApuntes.FieldByName('recargo').AsFloat, -2) = 0)) then begin
                        DM.QInformesContaTOTALBRUTO.AsFloat := QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                     end;
                  end;

                  DM.QInformesContaIVA.AsFloat := QApuntes.FieldByName('IVA').AsFloat;

                  // Cuota IVA
                  if RoundTo(QApuntes.FieldByName('Iva').AsFloat, -2) <> 0 then begin
                     DM.QInformesContaCUOTAIVA.AsFloat := QApuntes.FieldByName('CUOTAIVA').AsFloat;
                  end;
                  DM.QInformesContaRECARGO.AsFloat := QApuntes.FieldByName('RECARGO').AsFloat;
                  // Cuota Recargo
                  if RoundTo(QApuntes.FieldByName('recargo').AsFloat, -2) <> 0 then begin
                     DM.QInformesContaCUOTARECARGO.AsFloat := QApuntes.FieldByName('CUOTARECARGO').AsFloat;
                  end;

                  if (RoundTo(QApuntes.FieldByName('recargo').AsFloat, -2) <> 0) and Config.ActiveWithSurcharge then begin
                     DM.QInformesContaTOTALFACTURA.AsFloat := QApuntes.FieldByName('CuotaRecargo').AsFloat;
                  end
                  else begin
                     if (QApuntes.FieldByName('Tipoiva').AsString = 'C') then begin// Intracomunitarias "una empresa específica"
                        DM.QInformesContaTOTALFACTURA.AsFloat := 0;
                     end
                     else begin
                        DM.QInformesContaTOTALFACTURA.AsFloat := QApuntes.FieldByName('Baseimponible').AsFloat +
                                                                 QApuntes.FieldByName('cuotarecargo' ).AsFloat +
                                                                 QApuntes.FieldByName('cuotaiva'     ).AsFloat;
                     end;
                  end;
                  DM.QInformesConta.Post;
               end;
               QApuntes.Next;
            end; // While
         except
            on E: Exception do begin
               QSubcuentas.Close;
               QSubcuentas.Free;
               QFacturas.Close;
               QFacturas.Free;
               DatabaseError(E.message);
            end;
         end;

      finally
         QApuntes.Free;
      end;
      QSubcuentas.Close;
      QSubcuentas.Free;

      QFacturas.Close;
      QFacturas.Free;
   finally
      InProgress.Free;
   end;

   {$Message Warn 'This reports requires to be create newly starting from zero'}
   {This report has in his style of ReportBuilde a very complex structure, to allow it the
   interaction with the user. The user can delete or query the program based on the information
   showed at preview window. The new version shall drop this feature an be more simple.   }

   if ATipoInforme <> '3' then begin
   {HERE IS THE LAUNCHING OF THE REPORTS }
      if AAgrupacion = 'S' then begin
         ReportFacturasEmitidasSubcta;
         //FormPrincipal.LanzarListado('LLibroFacturasEmitidasSubcta.rtm', DM.SInformesConta);
      end else
      if AAgrupacion = 'I' then begin
         ReportFacturasTipoIVA;
         //FormPrincipal.LanzarListado('LLibroFacturasTipoIva.rtm', DM.SInformesConta);
      end
      else begin
         ReportFacturasEmitidas;
         //FormPrincipal.LanzarListado('LLibroFacturasEmitidas.rtm', DM.SInformesConta);
      end;
      InicializarFicherosInformes;
   end
   else begin
      // Asignar valores de variables a campos
      WIVA300.QIVA300.Append;
      WIVA300.QIVA300.Edit;
      WIVA300.QIVA300EJERCICIO.AsInteger     := YearOf(AFechaFinal);
      WIVA300.QIVA300FECHAINICIAL.AsDateTime := AFechaInicial;
      WIVA300.QIVA300FECHAFINAL.AsDateTime   := AFechaFinal;
      if (MonthOf(AFechaFinal) >= 1) and (MonthOf(AFechaFinal) <= 3) then begin
         WIVA300.QIVA300PERIODO.AsString := '1T';
      end else
      if (MonthOf(AFechaFinal) >= 4) and (MonthOf(AFechaFinal) <= 6) then begin
         WIVA300.QIVA300PERIODO.AsString := '2T';
      end else
      if (MonthOf(AFechaFinal) >= 7) and (MonthOf(AFechaFinal) <= 9) then begin
         WIVA300.QIVA300PERIODO.AsString := '3T';
      end
      else begin
         WIVA300.QIVA300PERIODO.AsString := '4T';
      end;

      WIVA300.QIVA300FECHAIMPRESION.AsDateTime := AFechaImpresion;

      WIVA300.QIVA300BASE00.AsFloat            := RoundTo(nBase00, -2);
      WIVA300.QIVA300BASE00NORMAL.AsFloat      := RoundTo(nBase00 - nBase36 - nBase37 - nBase38, -2);
      WIVA300.QIVA300BASE00CEE.AsFloat         := RoundTo(nBase38, -2);
      WIVA300.QIVA300BASE00INTERES.AsFloat     := RoundTo(nBase37, -2);
      WIVA300.QIVA300BASE00EXPORTACION.AsFloat := RoundTo(nBase36, -2);

      WIVA300.QIVA300BASE01.AsFloat  := RoundTo(nBase01,  -2);
      WIVA300.QIVA300TIPO02.AsFloat  := nTipo02;
      WIVA300.QIVA300CUOTA03.AsFloat := RoundTo(nCuota03, -2);

      WIVA300.QIVA300BASE04.AsFloat  := RoundTo(nBase04,  -2);
      WIVA300.QIVA300TIPO05.AsFloat  := nTipo05;
      WIVA300.QIVA300CUOTA06.AsFloat := RoundTo(nCuota06, -2);

      WIVA300.QIVA300BASE07.AsFloat  := RoundTo(nBase07,  -2);
      WIVA300.QIVA300TIPO08.AsFloat  := nTipo08;
      WIVA300.QIVA300CUOTA09.AsFloat := RoundTo(nCuota09, -2);

      WIVA300.QIVA300BASE10.AsFloat  := RoundTo(nBase10,  -2);
      WIVA300.QIVA300TIPO11.AsFloat  := nTipo11;
      WIVA300.QIVA300CUOTA12.AsFloat := RoundTo(nCuota12, -2);

      WIVA300.QIVA300BASE13.AsFloat  := RoundTo(nBase13,  -2);
      WIVA300.QIVA300TIPO14.AsFloat  := nTipo14;
      WIVA300.QIVA300CUOTA15.AsFloat := RoundTo(nCuota15, -2);

      WIVA300.QIVA300BASE16.AsFloat  := RoundTo(nBase16,  -2);
      WIVA300.QIVA300TIPO17.AsFloat  := nTipo17;
      WIVA300.QIVA300CUOTA18.AsFloat := RoundTo(nCuota18, -2);

      WIVA300.QIVA300BASE19.AsFloat    := RoundTo(nBase19,    -2);
      WIVA300.QIVA300CUOTA20.AsFloat   := RoundTo(nCuota20,   -2);
      WIVA300.QIVA300BASE19SI.AsFloat  := RoundTo(nBase19SI,  -2);
      WIVA300.QIVA300CUOTA20SI.AsFloat := RoundTo(nCuota20SI, -2);

      WIVA300.QIVA300BASE36.AsFloat := RoundTo(nBase36, -2);

      WIVA300.QIVA300BASE37.AsFloat := RoundTo(nBase37, -2);

      WIVA300.QIVA300BASE216.AsFloat     := RoundTo(nBase216, -2);
      WIVA300.QIVA300CUOTA216.AsFloat    := RoundTo(nCuota216, -2);
      WIVA300.QIVA300BASEADQINT.AsFloat  := RoundTo(nBase19 - nBase216, -2);
      WIVA300.QIVA300CUOTAADQINT.AsFloat := RoundTo(nCuota20 - nCuota216, -2);

      WIVA300.QIVA300TOTALDEVENGADO.AsFloat := RoundTo(nCuota03 + nCuota06 + nCuota09 + nCuota12 + nCuota15 + nCuota18 + nCuota20 + nCuota20SI, -2);

      WIVA300.QIVA300DEDUCIBLE22.AsFloat := RoundTo(nCuota22   , -2);
      WIVA300.QIVA300CUOTA22B.AsFloat    := RoundTo(nCuota22B  , -2);
      WIVA300.QIVA300CUOTA22TN.AsFloat   := RoundTo(nCuota22T02, -2);
      WIVA300.QIVA300CUOTA22TR.AsFloat   := RoundTo(nCuota22T05, -2);
      WIVA300.QIVA300CUOTA22TS.AsFloat   := RoundTo(nCuota22T08, -2);
      WIVA300.QIVA300BASE22B.AsFloat     := RoundTo(nBase22B   , -2);
      WIVA300.QIVA300BASE22TN.AsFloat    := RoundTo(nBase22T02 , -2);
      WIVA300.QIVA300BASE22TR.AsFloat    := RoundTo(nBase22T05 , -2);
      WIVA300.QIVA300BASE22TS.AsFloat    := RoundTo(nBase22T08 , -2);
      WIVA300.QIVA300BASE22TE.AsFloat    := RoundTo(nBase22T00 , -2);

      WIVA300.QIVA300DEDUCIBLE23.AsFloat    := RoundTo(nCuota23  , -2);
      WIVA300.QIVA300DEDUCIBLE23BI.AsFloat  := RoundTo(nCuota23BI, -2);
      WIVA300.QIVA300DEDUCIBLE24.AsFloat    := RoundTo(nCuota24  , -2);
      WIVA300.QIVA300DEDUCIBLE24BI.AsFloat  := RoundTo(nCuota24BI, -2);
      WIVA300.QIVA300DEDUCIBLE24SI.AsFloat  := RoundTo(nCuota24SI, -2);
      WIVA300.QIVA300DEDUCIBLE25.AsFloat    := RoundTo(nCuota25  , -2);
      WIVA300.QIVA300TOTALDEDUCIBLE.AsFloat := RoundTo(nCuota22 + nCuota23 + nCuota23BI + nCuota24 + nCuota24BI + nCuota24SI + nCuota25, -2);
      WIVA300.QIVA300DIFERENCIA.AsFloat     := RoundTo(WIVA300.QIVA300TOTALDEVENGADO.AsFloat - WIVA300.QIVA300TOTALDEDUCIBLE.AsFloat, -2);
      WIVA300.QIVA300LIQUIDACION32.AsFloat  := RoundTo(nBase32, -2);
      // Esto se deja asi de momento, aunque no es totalmente exacto.
      WIVA300.QIVA300RESULTADO.AsFloat      := WIVA300.QIVA300DIFERENCIA.AsFloat;
      if RoundTo(WIVA300.QIVA300RESULTADO.AsFloat, -2) > 0 then begin
         WIVA300.QIVA300INGRESO.AsFloat := WIVA300.QIVA300RESULTADO.AsFloat;
      end
      else begin
         WIVA300.QIVA300DEVOLUCION.AsFloat := WIVA300.QIVA300RESULTADO.AsFloat;
      end;

      WIVA300.QIVA300.Post;
   end;
end;

procedure TDataModuleFiltroLibroFacturasEmitidas.QInformesContaBeforeInsert(
  DataSet: TDataSet);
begin
   Application.ProcessMessages;
   if Config.AbortedProcess then begin
      Config.AbortedProcess := False;
      DatabaseError('Proceso cancelado');
   end;
end;

procedure TFiltroLibroFacturasEmitidasModel.ReportFacturasEmitidasSubcta;
var Marca :TBookMark;
begin
   Marca := DM.QInformesConta.GetBookMark;
   DM.Enlace1.DataSet := DM.QInformesConta;

   DM.QInformesConta.DisableControls;
   try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      DM.PDFExport.FileName := 'FacturasEmitidasSubcta.pdf';
      DM.FastReportFacturasEmitidasSubcta.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportFacturasEmitidasSubcta.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      {$Message Warn 'Pendant: complete the header with the dates and the user'}
      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.FastReportFacturasEmitidasSubcta.PrepareReport(True);
      DM.FastReportFacturasEmitidasSubcta.Export(DM.PDFExport);

      if not DM.QInformesConta.EOF then begin
         DM.QInformesConta.GotoBookMark(Marca);
         DM.QInformesConta.FreeBookMark(Marca);
      end;
   finally
      DM.QInformesConta.EnableControls;
   end;
end;

procedure TFiltroLibroFacturasEmitidasModel.ReportFacturasTipoIVA;
var Marca :TBookMark;
begin
   Marca := DM.QInformesConta.GetBookMark;
   DM.Enlace1.DataSet := DM.QInformesConta;

   DM.QInformesConta.DisableControls;
   try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      DM.PDFExport.FileName := 'FacturasTipoIVA.pdf';
      DM.FastReportFacturasTipoIVA.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportFacturasTipoIVA.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      {$Message Warn 'Pendant: complete the header with the dates and the user'}
      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.FastReportFacturasTipoIVA.PrepareReport(True);
      DM.FastReportFacturasTipoIVA.Export(DM.PDFExport);

      if not DM.QInformesConta.EOF then begin
         DM.QInformesConta.GotoBookMark(Marca);
         DM.QInformesConta.FreeBookMark(Marca);
      end;
   finally
      DM.QInformesConta.EnableControls;
   end;
end;

procedure TFiltroLibroFacturasEmitidasModel.ReportFacturasEmitidas;
var Marca :TBookMark;
begin
   Marca := DM.QInformesConta.GetBookMark;
   DM.Enlace1.DataSet := DM.QInformesConta;

   DM.QInformesConta.DisableControls;
   try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      DM.PDFExport.FileName := 'FacturasEmitidas.pdf';
      DM.FastReportFacturasEmitidas.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportFacturasEmitidas.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      {$Message Warn 'Pendant: complete the header with the dates and the user'}
      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.FastReportFacturasEmitidas.PrepareReport(True);
      DM.FastReportFacturasEmitidas.Export(DM.PDFExport);

      if not DM.QInformesConta.EOF then begin
         DM.QInformesConta.GotoBookMark(Marca);
         DM.QInformesConta.FreeBookMark(Marca);
      end;
   finally
      DM.QInformesConta.EnableControls;
   end;
end;

end.
