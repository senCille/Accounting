unit UFiltroLibroFacturasEmitidasModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  DBClient, frxClass, frxDBSet, frxExportPDF,
  senCille.CommonTypes;

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
    FQInvoices :TIBSQL;
    FInvoiceEOF :Boolean;
    procedure InicializarFicherosInformes;
    procedure ReportFacturasEmitidasSubcta(ACallBack :TSimplyCallBack);
    procedure ReportFacturasTipoIVA(ACallBack :TSimplyCallBack);
    procedure ReportFacturasEmitidas(ACallBack :TSimplyCallBack);

    function GetVATFromSubaccount(ASubAccount :string):Double;
    function GetSurchargeFromSubaccount(ASubAccount :string):Double;
    function GetDescriptionFromSubaccount(ASubAccount :string):string;
    function GetIDFiscalFromSubaccount(ASubAccount :string):string;
    {-----------------------------------------------------}
    procedure GetDataFromInvoice(AEntry :Integer);
    function GetNextInvoiceImport:Double;
    procedure CloseDataInvoices;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure ReportLibroIVA(ACallBack       :TSimplyCallBack;
                             AFechaInicial   ,
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

uses System.Math, System.DateUtils,
     VCL.Forms,
     DMControl, DM, DMConta, Globales, Processing, UIVA300;

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

function TFiltroLibroFacturasEmitidasModel.GetVATFromSubaccount(ASubAccount :string):Double;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   Q.Database := DB;
   try
      Q.SQL.Add('SELECT NIF        ,          ');
      Q.SQL.Add('       DESCRIPCION,          ');
      Q.SQL.Add('       PAIS       ,          ');
      Q.SQL.Add('       IVA        ,          ');
      Q.SQL.Add('       RECARGO               ');
      Q.SQL.Add('FROM  SUBCTAS                ');
      Q.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA ');
      Q.ParamByName('SUBCUENTA').AsString := ASubAccount;
      Q.ExecQuery;
      Result := RoundTo(Q.FieldByName('IVA').AsFloat, -2);
   finally
      Q.Free;
   end;
end;

function TFiltroLibroFacturasEmitidasModel.GetSurchargeFromSubaccount(ASubAccount :string):Double;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   Q.Database := DB;
   try
      Q.SQL.Add('SELECT NIF        ,          ');
      Q.SQL.Add('       DESCRIPCION,          ');
      Q.SQL.Add('       PAIS       ,          ');
      Q.SQL.Add('       IVA        ,          ');
      Q.SQL.Add('       RECARGO               ');
      Q.SQL.Add('FROM  SUBCTAS                ');
      Q.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA ');
      Q.ParamByName('SUBCUENTA').AsString := ASubAccount;
      Q.ExecQuery;
      Result := RoundTo(Q.FieldByName('RECARGO').AsFloat, -2);
   finally
      Q.Free;
   end;
end;

function TFiltroLibroFacturasEmitidasModel.GetDescriptionFromSubaccount(ASubAccount :string):string;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   Q.Database := DB;
   try
      Q.SQL.Add('SELECT NIF        ,          ');
      Q.SQL.Add('       DESCRIPCION,          ');
      Q.SQL.Add('       PAIS       ,          ');
      Q.SQL.Add('       IVA        ,          ');
      Q.SQL.Add('       RECARGO               ');
      Q.SQL.Add('FROM  SUBCTAS                ');
      Q.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA ');
      Q.ParamByName('SUBCUENTA').AsString := ASubAccount;
      Q.ExecQuery;
      Result := Q.FieldByName('DESCRIPCION').AsString;
   finally
      Q.Free;
   end;
end;

function TFiltroLibroFacturasEmitidasModel.GetIDFiscalFromSubaccount(ASubAccount :string):string;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   Q.Database := DB;
   try
      Q.SQL.Add('SELECT NIF        ,          ');
      Q.SQL.Add('       DESCRIPCION,          ');
      Q.SQL.Add('       PAIS       ,          ');
      Q.SQL.Add('       IVA        ,          ');
      Q.SQL.Add('       RECARGO               ');
      Q.SQL.Add('FROM  SUBCTAS                ');
      Q.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA ');
      Q.ParamByName('SUBCUENTA').AsString := ASubAccount;
      Q.ExecQuery;
      Result := Q.FieldByName('PAIS').AsString + '-' + Trim(Q.FieldByName('NIF').AsString)
   finally
      Q.Free;
   end;
end;

procedure TFiltroLibroFacturasEmitidasModel.GetDataFromInvoice(AEntry :Integer);
begin
   FQInvoices := TIBSQL.Create(nil);
   FQInvoices.Database := DB;
   FQInvoices.SQL.Add('SELECT D.IMPORTE                                                                                ');
   FQInvoices.SQL.Add('FROM DIARIO  D,                                                                                 ');
   FQInvoices.SQL.Add('     CUENTAS C                                                                                  ');
   FQInvoices.SQL.Add('WHERE D.ASIENTO = :prmASIENTO                                                                   ');
   FQInvoices.SQL.Add('AND  ((C.TIPOCUENTA = "P" AND D.DEBEHABER = "H") OR (C.TIPOCUENTA = "C" AND D.DEBEHABER = "D")) ');
   FQInvoices.SQL.Add('AND  SUBSTR(D.SUBCUENTA, 1, 3) = C.CUENTA                                                       ');
   FQInvoices.ParamByName('prmASIENTO').AsInteger := AEntry;
   FQInvoices.ExecQuery;
   FInvoiceEOF := FQInvoices.EOF;
end;

function TFiltroLibroFacturasEmitidasModel.GetNextInvoiceImport:Double;
begin
   Result := RoundTo(FQInvoices.FieldByName('IMPORTE').AsFloat, -2);
   FQInvoices.Next;
   FInvoiceEOF := FQInvoices.EOF;
end;

procedure TFiltroLibroFacturasEmitidasModel.CloseDataInvoices;
begin
   FQInvoices.Free;
end;


procedure TFiltroLibroFacturasEmitidasModel.ReportLibroIVA(ACallBack       :TSimplyCallBack;
                                                           AFechaInicial   ,
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
   QApuntes216         :TIBSQL;
   QApuntes            :TIBSQL;
   InProgress          :TProcessingView;
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

      { Initialize types values }
      nTipo00 :=  0;
      nTipo02 := 99;
      nTipo05 := 99;
      nTipo08 := 99;
      nTipo11 := 99;
      nTipo14 := 99;
      nTipo17 := 99;

      { Normal VAT }
      if DMRef.QParametrosSCTAIVANORMAL.AsString <> '' then begin
         nTipo02 := GetVATFromSubaccount(DMRef.QParametrosSCTAIVANORMAL.AsString);
         { Never shall be zero }
         if nTipo02 = 0 then begin
            if DmRef.QParametrosSCTAIVACNORMAL.AsString <> '' then begin
               nTipo02 := GetVATFromSubAccount(DMRef.QParametrosSCTAIVACNORMAL.AsString);
            end;
         end;
      end;

      { Reduced VAT }
      if DmRef.QParametrosSCTAIVAREDUCIDO.AsString <> '' then begin
         nTipo05 := GetVATFromSubAccount(DMRef.QParametrosSCTAIVAREDUCIDO.AsString);
         { never shall be zero }
         if nTipo05 = 0 then begin
            if DmRef.QParametrosSCTAIVACREDUCIDO.AsString <> '' then begin
               nTipo05 := GetVATFromSubAccount(DMRef.QParametrosSCTAIVACREDUCIDO.AsString);
            end;
         end;
      end;

      { Super recuced VAT }
      if DMRef.QParametrosSCTAIVASUPER.AsString <> '' then begin
         nTipo08 := GetVATFromSubaccount(DMRef.QParametrosSCTAIVASUPER.AsString);
         { never shall be zero }
         if nTipo08 = 0 then begin
         if (DMRef.QParametrosSCTAIVACSUPER.AsString <> '') then begin
               nTipo08 := GetVATFromSubAccount(DMRef.QParametrosSCTAIVACSUPER.AsString);
            end;
         end;
      end;

      { Normal Surcharge }
      if DMRef.QParametrosSCTARECNORMAL.AsString <> '' then begin
         nTipo11 := GetSurchargeFromSubaccount(DMRef.QParametrosSCTARECNORMAL.AsString);
      end;

      { Reduced Surcharge }
      if DMRef.QParametrosSCTARECREDUCIDO.AsString <> '' then begin
         nTipo14 := GetSurchargeFromSubaccount(DMRef.QParametrosSCTARECREDUCIDO.AsString);
      end;

      { Super Reduced Surcharge }
      if DMRef.QParametrosSCTARECSUPER.AsString <> '' then begin
         nTipo17 := GetSurchargeFromSubaccount(DMRef.QParametrosSCTARECSUPER.AsString);
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
               QApuntes216.SQL.Add('  AND ((D.IVA >= :IVAINI AND D.IVA <= :IVAFIN) OR (D.IVA IS NULL)) ');
            end
            else begin
               QApuntes216.SQL.Add('  AND D.IVA >= :IVAINI and D.IVA <= :IVAFIN ');
            end;

            // Recordar que en importe esta la misma cantidad que en cuotaiva
            if AAgrupacion = 'S' then QApuntes216.SQL.Add('ORDER BY D.CONTRAPARTIDA, ')  // Agrupado por subcuenta
                                 else QApuntes216.SQL.Add('ORDER BY');

            if AOrden = 'F' then QApuntes216.SQL.Add('D.FECHA, D.ASIENTO'      ) else
            if AOrden = 'N' then QApuntes216.SQL.Add('D.NUMEROFACTURA'         ) else
            if AOrden = 'A' then QApuntes216.SQL.Add('D.ASIENTO'               ) else
            if AOrden = 'S' then QApuntes216.SQL.Add('D.CONTRAPARTIDA, D.FECHA');

            QApuntes216.ParamByName('FECHAINI'   ).AsDateTime := AFechaInicial;
            QApuntes216.ParamByName('FECHAFIN'   ).AsDateTime := AFechaFinal;
            QApuntes216.ParamByName('BASEINI'    ).AsDouble   := ABaseImpInicial;
            QApuntes216.ParamByName('BASEFIN'    ).AsDouble   := ABaseImpFinal;
            QApuntes216.ParamByName('CUOTAIVAINI').AsDouble   := ACuotaIvaInicial;
            QApuntes216.ParamByName('CUOTAIVAFIN').AsDouble   := ACuotaIvaFinal;
            QApuntes216.ParamByName('IVAINI'     ).AsDouble   := AIvaInicial;
            QApuntes216.ParamByName('IVAFIN'     ).AsDouble   := AIvaFinal;
            QApuntes216.ExecQuery;

            while not QApuntes216.EOF do begin
               if (ASubcuenta <> '') and (QApuntes216.FieldByName('CONTRAPARTIDA').AsString <> ASubcuenta) then begin
                  QApuntes216.Next;
                  Continue;
               end;

               if not DMContaRef.Pertenece_Analitica(QApuntes216.FieldByName('CUENTA_ANALITICA').AsString, ACuenta, '', ADelegacion, ADepartamento, ASeccion, AProyecto) then begin
                  QApuntes216.Next;
                  Continue;
               end;

               nBase216  := nBase216  + QApuntes216.FieldByName('BASEIMPONIBLE').AsFloat;
               nCuota216 := nCuota216 + QApuntes216.FieldByName('CUOTAIVA'     ).AsFloat;

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

         QApuntes.SQL.Add('SELECT D.ASIENTO         ,                             ');
         QApuntes.SQL.Add('       D.NUMEROFACTURA   ,                             ');
         QApuntes.SQL.Add('       D.FECHA           ,                             ');
         QApuntes.SQL.Add('       D.IMPORTE         ,                             ');
         QApuntes.SQL.Add('       D.NIF             ,                             ');
         QApuntes.SQL.Add('       T.TIPOCUENTA      ,                             ');
         QApuntes.SQL.Add('       D.MONEDA          ,                             ');
         QApuntes.SQL.Add('       D.CONTRAPARTIDA   ,                             ');
         QApuntes.SQL.Add('       D.RECARGO         ,                             ');
         QApuntes.SQL.Add('       D.IVA             ,                             ');
         QApuntes.SQL.Add('       D.BASEIMPONIBLE   ,                             ');
         QApuntes.SQL.Add('       D.SERIE           ,                             ');
         QApuntes.SQL.Add('       D.EJERCICIO       ,                             ');
         QApuntes.SQL.Add('       D.COMENTARIO      ,                             ');
         QApuntes.SQL.Add('       D.ID_CONCEPTOS    ,                             ');
         QApuntes.SQL.Add('       S.TIPOIVA         ,                             ');
         QApuntes.SQL.Add('       D.CUOTARECARGO    ,                             ');
         QApuntes.SQL.Add('       D.CUOTAIVA        ,                             ');
         QApuntes.SQL.Add('       D.CUENTA_ANALITICA,                             ');
         QApuntes.SQL.Add('       D.SUBCUENTA                                     ');
         QApuntes.SQL.Add('FROM  DIARIO    D,                                     ');
         QApuntes.SQL.Add('      CONCEPTOS C,                                     ');
         QApuntes.SQL.Add('      CUENTAS   T,                                     ');
         QApuntes.SQL.Add('      SUBCTAS   S                                      ');
         QApuntes.SQL.Add('WHERE (D.ID_CONCEPTOS  = C.ID_CONCEPTOS             )  ');
         QApuntes.SQL.Add('AND   (C.TIPOCONCEPTO  = "I" OR C.TIPOCONCEPTO = "2")  ');
         QApuntes.SQL.Add('AND   (SUBSTR(D.SUBCUENTA, 1, 3) = T.CUENTA         )  ');
         QApuntes.SQL.Add('AND   (D.SUBCUENTA     = S.SUBCUENTA                )  ');


         //if ATipoInforme = 'B' then 'LIBRO DE FACTURAS BIENES DE INVERSION'; ClienteProveedor := 'Proveedor';
         //if ATipoInforme = 'R' then 'LIBRO DE FACTURAS RECIBIDAS'          ; ClienteProveedor := 'Proveedor';
         //                           'LIBRO DE FACTURAS EMITIDAS'           ; ClienteProveedor := 'Cliente';

         if ATipoInforme = 'E' then QApuntes.SQL.Add(' AND  T.TIPOCUENTA = "R"'                          ) else
         if ATipoInforme = '3' then QApuntes.SQL.Add(' AND (T.TIPOCUENTA = "S" OR  T.TIPOCUENTA =  "R") ') else
         if ATipoInforme = 'R' then QApuntes.SQL.Add(' AND (T.TIPOCUENTA = "S" AND S.TIPOIVA    <> "B") ') else
         if ATipoInfoRME = 'B' then QApuntes.SQL.Add(' AND (T.TIPOCUENTA = "S" and S.TIPOIVA     = "B") ');

         QApuntes.SQL.Add('  AND D.FECHA         >= :FECHAINI    AND D.FECHA         <= :FECHAFIN    ');
         QApuntes.SQL.Add('  AND D.BASEIMPONIBLE >= :BASEINI     AND D.BASEIMPONIBLE <= :BASEFIN     ');
         QApuntes.SQL.Add('  AND D.IMPORTE       >= :CUOTAIVAINI AND D.IMPORTE       <= :CUOTAIVAFIN ');
         if (AIVAINICIAL = 0) or (AIVAFINAL = 0) then begin
            QApuntes.SQL.Add('  AND ((D.IVA >= :IVAINI AND D.IVA <= :IVAFIN) OR (D.IVA IS NULL))     ');
         end
         else begin
            QApuntes.SQL.Add('  AND D.IVA >= :IVAINI AND D.IVA <= :IVAFIN ');
         end;

         // Recordar que en importe esta la misma cantidad que en cuotaiva
         if AAgrupacion = 'S' then begin    // Agrupado por subcuenta
            QApuntes.SQL.Add('ORDER BY D.CONTRAPARTIDA,');
         end else
         if AAgrupacion = 'I' then begin // Agrupado por Subcuenta (IVA)
            QApuntes.SQL.Add('ORDER BY D.SUBCUENTA,');
         end
         else begin
            QApuntes.SQL.Add('ORDER BY ');
         end;

         if AOrden = 'F' then QApuntes.SQL.Add('D.FECHA    , D.ASIENTO'                 ) else
         if AOrden = 'N' then QApuntes.SQL.Add('D.EJERCICIO, D.SERIE  , D.NUMEROFACTURA') else
         if AOrden = 'A' then QApuntes.SQL.Add('D.ASIENTO'                              ) else
         if AOrden = 'S' then QApuntes.SQL.Add('D.CONTRAPARTIDA, D.FECHA'               );

         QApuntes.ParamByName('FECHAINI'   ).AsDateTime := AFechaInicial;
         QApuntes.ParamByName('FECHAFIN'   ).AsDateTime := AFechaFinal;
         QApuntes.ParamByName('BASEINI'    ).AsDouble   := ABaseImpInicial;
         QApuntes.ParamByName('BASEFIN'    ).AsDouble   := ABaseImpFinal;
         QApuntes.ParamByName('CUOTAIVAINI').AsDouble   := ACuotaIvaInicial;
         QApuntes.ParamByName('CUOTAIVAFIN').AsDouble   := ACuotaIvaFinal;
         QApuntes.ParamByName('IVAINI'     ).AsDouble   := AIvaInicial;
         QApuntes.ParamByName('IVAFIN'     ).AsDouble   := AIvaFinal;
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
               if (ASubcuenta <> '') and (QApuntes.FieldByName('CONTRAPARTIDA').AsString <> ASubcuenta) then begin
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
           nSumaBaseImponible := nSumaBaseImponible + Fieldbyname('BaseImponible').asfloat;}
               nSumaCuotaIva     := nSumaCuotaIva     + QApuntes.FieldByName('CUOTAIVA'    ).AsFloat;
               nSumaCuotaRecargo := nSumaCuotaRecargo + QApuntes.FieldByName('CUOTARECARGO').AsFloat;

               // Informe Mod. 300
               if (ATipoInforme = '3') and (QApuntes.FieldByName('TIPOCUENTA').AsString = 'R') then begin
                  if (QApuntes.FieldByName('IVA'      ).AsFloat = nTipo00) and
                     (QApuntes.FieldByName('SUBCUENTA').AsString = DMRef.QParametrosSCTAIVAEXENTOCEE.AsString) then begin
                     nBase38 := nBase38 + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                  end;

                  if (QApuntes.FieldByName('IVA'      ).AsFloat = nTipo00) and
                     (QApuntes.FieldByName('SUBCUENTA').AsString = DMRef.QParametrosSCTAEXPORTACIONES.AsString) then begin
                     nBase36 := nBase36 + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                  end;

                  if (QApuntes.FieldByName('IVA'      ).AsFloat = nTipo00) and
                     (QApuntes.FieldByName('SUBCUENTA').AsString = DMRef.QParametrosSCTAINTERESES.AsString) then begin
                     nBase37 := nBase37 + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                  end;

                  if QApuntes.FieldByName('TIPOIVA').AsString = 'C' then begin        // Entregas intracomunitarias
                     nBase32 := nBase32 + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                  end;

                  if QApuntes.FieldByName('TIPOIVA').AsString = 'A' then begin       // Adquisiciones intracomunitarias
                     nBase19  := nBase19  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                     nCuota20 := nCuota20 + QApuntes.FieldByName('IMPORTE'      ).AsFloat;
                  end else
                  if QApuntes.FieldByName('TIPOIVA').AsString = 'L' then begin       // Servicios Intracomunitarios
                     nBase19SI  := nBase19SI  + QApuntes.FieldByName('BASEiMPONIBLE').AsFloat;
                     nCuota20SI := nCuota20SI + QApuntes.FieldByName('IMPORTE'      ).AsFloat;
                  end
                  else begin
                     if (QApuntes.FieldByName('IVA').AsFloat = nTipo00) and
                        (RoundTo(QApuntes.FieldByName('RECARGO').AsFloat, -2) = 0) then begin
                        nBase00 := nBase00 + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                        // Buscar desglose
                     end else
                     if (QApuntes.FieldByName('IVA').AsFloat = nTipo02) then begin
                        nBase01  := nBase01  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                        nCuota03 := nCuota03 + QApuntes.FieldByName('CUOTAIVA'     ).AsFloat;
                     end else
                     if QApuntes.FieldByName('IVA').AsFloat = nTipo05 then begin
                        nBase04  := nBase04  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                        nCuota06 := nCuota06 + QApuntes.FieldByName('CUOTAIVA'     ).AsFloat;
                     end else
                     if QApuntes.FieldByName('IVA').AsFloat = nTipo08 then begin
                        nBase07  := nBase07  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                        nCuota09 := nCuota09 + QApuntes.FieldByName('CUOTAIVA'     ).AsFloat;
                     end;

                     if RoundTo(QApuntes.FieldByName('RECARGO').AsFloat, -2) <> 0 then begin         // Tiene recargo
                        if QApuntes.FieldByName('RECARGO').AsFloat = nTipo11 then begin
                           nBase10  := nBase10  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                           nCuota12 := nCuota12 + QApuntes.FieldByName('CUOTARECARGO' ).AsFloat;
                        end;
                        if QApuntes.FieldByName('RECARGO').AsFloat = nTipo14 then begin
                           nBase13  := nBase13  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                           nCuota15 := nCuota15 + QApuntes.FieldByName('CUOTARECARGO' ).AsFloat;
                        end;
                        if QApuntes.FieldByName('RECARGO').AsFloat = nTipo17 then begin
                           nBase16  := nBase16  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                           nCuota18 := nCuota18 + QApuntes.FieldByName('CUOTARECARGO' ).AsFloat;
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
               if (ATipoInforme = '3') and (QApuntes.FieldByName('TIPOCUENTA').AsString = 'S') then begin
                  if (QApuntes.FieldByName('TIPOIVA').AsString = 'O') or (QApuntes.FieldByName('TIPOIVA').AsString = 'B') then begin
                     nCuota22 := nCuota22 + QApuntes.FieldByName('CUOTAIVA').AsFloat;
                     if (QApuntes.FieldByName('TIPOIVA').AsString = 'B') then begin
                        nCuota22B := nCuota22B + QApuntes.FieldByName('CUOTAIVA'     ).AsFloat;
                        nBase22B  := nBase22B  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                     end
                     else begin
                        nCuota22O := nCuota22O + QApuntes.FieldByName('CUOTAIVA').AsFloat;
                        if QApuntes.FieldByName('IVA').AsFloat = nTipo00 then begin
                           nBase22T00  := nBase22T00  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                           nCuota22T00 := nCuota22T00 + QApuntes.FieldByName('CUOTAIVA'     ).AsFloat;
                        end else
                        if QApuntes.FieldByName('IVA').AsFloat = nTipo02 then begin
                           nBase22T02  := nBase22T02  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                           nCuota22T02 := nCuota22T02 + QApuntes.FieldByName('CUOTAIVA'     ).AsFloat;
                        end else
                        if QApuntes.FieldByName('IVA').AsFloat = nTipo05 then begin
                           nBase22T05  := nBase22T05  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                           nCuota22T05 := nCuota22T05 + QApuntes.FieldByName('CUOTAIVA'     ).AsFloat;
                        end else
                        if QApuntes.FieldByName('IVA').AsFloat = nTipo08 then begin
                           nBase22T08  := nBase22T08  + QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                           nCuota22T08 := nCuota22T08 + QApuntes.FieldByName('CUOTAIVA').AsFloat;
                        end;
                     end;
                  end else
                  if QApuntes.FieldByName('TIPOIVA').AsString = 'I' then begin
                     nCuota23 := nCuota23 + QApuntes.FieldByName('cuotaiva').AsFloat;
                  end else
                  if QApuntes.FieldByName('TIPOIVA').AsString = 'X' then begin
                     nCuota23BI := nCuota23BI + QApuntes.FieldByName('CUOTAIVA').AsFloat;
                  end else
                  if QApuntes.FieldByName('TIPOIVA').AsString = 'C' then begin
                     nCuota24 := nCuota24 + QApuntes.FieldByName('CUOTAIVA').AsFloat;
                  end else
                  if QApuntes.FieldByName('TIPOIVA').AsString = 'W' then begin
                     nCuota24BI := nCuota24BI + QApuntes.FieldByName('CUOTAIVA').AsFloat;
                  end else
                  if QApuntes.FieldByName('TIPOIVA').AsString = 'L' then begin
                     nCuota24SI := nCuota24SI + QApuntes.FieldByName('CUOTAIVA').AsFloat;
                  end else
                  if QApuntes.FieldByName('TIPOIVA').AsString = 'R' then begin
                     nCuota25 := nCuota25 + QApuntes.FieldByName('CUOTAIVA').AsFloat;
                  end;
               end;

               if (ATipoInforme <> '3') then begin
                  // Grabar campos del informe
                  // Imprimir el número de línea y el total factura
                  // sólo en el primer apunte del asiento
                  DM.QInformesConta.Append;
                  DM.QInformesContaASIENTO.AsInteger         := QApuntes.FieldByName('ASIENTO').AsInteger;
                  { Almacenar datos necesarios para el título del informe }
                  DM.QInformesContaTitulo.AsString           := Titulo;
                  DM.QInformesContaClienteProveedor.AsString := ClienteProveedor;
                  DM.QInformesContaFechaImpresion.AsDateTime := AFechaImpresion;
                  DM.QInformesContaFechaInicial.AsDateTime   := AFechaInicial;
                  DM.QInformesContaFechaFinal.AsDateTime     := AFechaFinal;

                  if QApuntes.FieldByName('ASIENTO').AsInteger <> AsientoAnterior then begin
                     AsientoAnterior := QApuntes.FieldByName('ASIENTO').AsInteger;
                     DM.QInformesContaNUMLINEA.AsInteger := NumLinea;
                     {----------------------------}
                     GetDataFromInvoice(QApuntes.FieldByName('ASIENTO').AsInteger);
                     if not FInvoiceEOF then begin
                        DM.QInformesContaImporte.AsFloat := GetNextInvoiceImport;
                     end;
                     CloseDataInvoices;
                     {----------------------------}
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
                  if (Copy(Trim(QApuntes.FieldByName('CONTRAPARTIDA').AsString), 1, 3) = '570') or
                     (QApuntes.FieldByName('CONTRAPARTIDA').AsString = DMRef.QParametrosVGENERICA.AsString) or
                     (QApuntes.FieldByName('CONTRAPARTIDA').AsString = DMRef.QParametrosVGENERICAC.AsString) or (DMContaRef.ObtenerTipoSubcuenta(
                     QApuntes.FieldByName('CONTRAPARTIDA').AsString) = 'B') then begin
                     DM.QInformesContaDESCSUBCUENTA.AsString := QApuntes.FieldByName('COMENTARIO').AsString;
                     DM.QInformesContaNIF.AsString           := 'ES-' + Trim(QApuntes.FieldByName('NIF').AsString);
                  end
                  else begin
                     if AAgrupacion = 'I' then begin
                        DM.QInformesContaDESCSUBCUENTA.AsString := GetDescriptionFromSubaccount(QApuntes.FieldByName('SUBCUENTA').AsString);
                     end
                     else begin
                        DM.QInformesContaDESCSUBCUENTA.AsString := GetDescriptionFromSubaccount(QApuntes.FieldByName('CONTRAPARTIDA').AsString);
                     end;

                     if AAgrupacion = 'I' then begin
                        DM.QInformesContaFSubcuenta.AsString     := QApuntes.FieldByName('CONTRAPARTIDA').AsString;
                        DM.QInformesContaFDESCSUBCUENTA.AsString := GetDescriptionFromSubAccount(QApuntes.FieldByName('CONTRAPARTIDA').AsString);
                     end;
                     DM.QInformesContaNIF.AsString := GetIDFiscalFromSubAccount(QApuntes.FieldByName('CONTRAPARTIDA').AsString);
                  end;

                  if (QApuntes.FieldByName('TIPOIVA').AsString = 'C') then begin// Intracomunitarias "una empresa específica"
                     DM.QInformesContaTOTALBRUTO.AsFloat := 0;
                  end
                  else begin
                     if (((RoundTo(QApuntes.FieldByName('RECARGO').AsFloat, -2) <> 0) and
                        (not Config.ActiveWithSurcharge)) or
                        (RoundTo(QApuntes.FieldByName('RECARGO').AsFloat, -2) = 0)) then begin
                        DM.QInformesContaTOTALBRUTO.AsFloat := QApuntes.FieldByName('BASEIMPONIBLE').AsFloat;
                     end;
                  end;

                  DM.QInformesContaIVA.AsFloat := QApuntes.FieldByName('IVA').AsFloat;

                  { VAT Import }
                  if RoundTo(QApuntes.FieldByName('IVA').AsFloat, -2) <> 0 then begin
                     DM.QInformesContaCUOTAIVA.AsFloat := QApuntes.FieldByName('CUOTAIVA').AsFloat;
                  end;
                  DM.QInformesContaRECARGO.AsFloat := QApuntes.FieldByName('RECARGO').AsFloat;

                  {Surcharge Import}
                  if RoundTo(QApuntes.FieldByName('RECARGO').AsFloat, -2) <> 0 then begin
                     DM.QInformesContaCUOTARECARGO.AsFloat := QApuntes.FieldByName('CUOTARECARGO').AsFloat;
                  end;

                  if (RoundTo(QApuntes.FieldByName('RECARGO').AsFloat, -2) <> 0) and Config.ActiveWithSurcharge then begin
                     DM.QInformesContaTOTALFACTURA.AsFloat := QApuntes.FieldByName('CuotaRecargo').AsFloat;
                  end
                  else begin
                     if (QApuntes.FieldByName('TIPOIVA').AsString = 'C') then begin// Intracomunitarias "una empresa específica"
                        DM.QInformesContaTOTALFACTURA.AsFloat := 0;
                     end
                     else begin
                        DM.QInformesContaTOTALFACTURA.AsFloat := QApuntes.FieldByName('BASEIMPONIBLE').AsFloat +
                                                                 QApuntes.FieldByName('CUOTARECARGO' ).AsFloat +
                                                                 QApuntes.FieldByName('CUOTAIVA'     ).AsFloat;
                     end;
                  end;
                  DM.QInformesConta.Post;
               end;
               QApuntes.Next;
            end; // While
         except
            on E: Exception do begin
               DatabaseError(E.message);
            end;
         end;
      finally
         QApuntes.Free;
      end;
   finally
      InProgress.Free;
   end;

   if ATipoInforme <> '3' then begin
      {HERE IS THE LAUNCHING OF THE REPORTS }
      if AAgrupacion = 'S' then begin
         ReportFacturasEmitidasSubcta(ACallBack);
      end else
      if AAgrupacion = 'I' then begin
         ReportFacturasTipoIVA(ACallBack);
      end
      else begin
         ReportFacturasEmitidas(ACallBack);
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

      WIVA300.QIVA300BASE01.AsFloat            := RoundTo(nBase01,  -2);
      WIVA300.QIVA300TIPO02.AsFloat            := nTipo02;
      WIVA300.QIVA300CUOTA03.AsFloat           := RoundTo(nCuota03, -2);

      WIVA300.QIVA300BASE04.AsFloat            := RoundTo(nBase04,  -2);
      WIVA300.QIVA300TIPO05.AsFloat            := nTipo05;
      WIVA300.QIVA300CUOTA06.AsFloat           := RoundTo(nCuota06, -2);

      WIVA300.QIVA300BASE07.AsFloat            := RoundTo(nBase07,  -2);
      WIVA300.QIVA300TIPO08.AsFloat            := nTipo08;
      WIVA300.QIVA300CUOTA09.AsFloat           := RoundTo(nCuota09, -2);

      WIVA300.QIVA300BASE10.AsFloat            := RoundTo(nBase10,  -2);
      WIVA300.QIVA300TIPO11.AsFloat            := nTipo11;
      WIVA300.QIVA300CUOTA12.AsFloat           := RoundTo(nCuota12, -2);

      WIVA300.QIVA300BASE13.AsFloat            := RoundTo(nBase13,  -2);
      WIVA300.QIVA300TIPO14.AsFloat            := nTipo14;
      WIVA300.QIVA300CUOTA15.AsFloat           := RoundTo(nCuota15, -2);

      WIVA300.QIVA300BASE16.AsFloat            := RoundTo(nBase16,  -2);
      WIVA300.QIVA300TIPO17.AsFloat            := nTipo17;
      WIVA300.QIVA300CUOTA18.AsFloat           := RoundTo(nCuota18, -2);

      WIVA300.QIVA300BASE19.AsFloat            := RoundTo(nBase19,    -2);
      WIVA300.QIVA300CUOTA20.AsFloat           := RoundTo(nCuota20,   -2);
      WIVA300.QIVA300BASE19SI.AsFloat          := RoundTo(nBase19SI,  -2);
      WIVA300.QIVA300CUOTA20SI.AsFloat         := RoundTo(nCuota20SI, -2);

      WIVA300.QIVA300BASE36.AsFloat            := RoundTo(nBase36, -2);

      WIVA300.QIVA300BASE37.AsFloat            := RoundTo(nBase37, -2);

      WIVA300.QIVA300BASE216.AsFloat           := RoundTo(nBase216, -2);
      WIVA300.QIVA300CUOTA216.AsFloat          := RoundTo(nCuota216, -2);
      WIVA300.QIVA300BASEADQINT.AsFloat        := RoundTo(nBase19 - nBase216, -2);
      WIVA300.QIVA300CUOTAADQINT.AsFloat       := RoundTo(nCuota20 - nCuota216, -2);

      WIVA300.QIVA300TOTALDEVENGADO.AsFloat    := RoundTo(nCuota03 + nCuota06 + nCuota09 + nCuota12 + nCuota15 + nCuota18 + nCuota20 + nCuota20SI, -2);

      WIVA300.QIVA300DEDUCIBLE22.AsFloat       := RoundTo(nCuota22   , -2);
      WIVA300.QIVA300CUOTA22B.AsFloat          := RoundTo(nCuota22B  , -2);
      WIVA300.QIVA300CUOTA22TN.AsFloat         := RoundTo(nCuota22T02, -2);
      WIVA300.QIVA300CUOTA22TR.AsFloat         := RoundTo(nCuota22T05, -2);
      WIVA300.QIVA300CUOTA22TS.AsFloat         := RoundTo(nCuota22T08, -2);
      WIVA300.QIVA300BASE22B.AsFloat           := RoundTo(nBase22B   , -2);
      WIVA300.QIVA300BASE22TN.AsFloat          := RoundTo(nBase22T02 , -2);
      WIVA300.QIVA300BASE22TR.AsFloat          := RoundTo(nBase22T05 , -2);
      WIVA300.QIVA300BASE22TS.AsFloat          := RoundTo(nBase22T08 , -2);
      WIVA300.QIVA300BASE22TE.AsFloat          := RoundTo(nBase22T00 , -2);

      WIVA300.QIVA300DEDUCIBLE23.AsFloat       := RoundTo(nCuota23  , -2);
      WIVA300.QIVA300DEDUCIBLE23BI.AsFloat     := RoundTo(nCuota23BI, -2);
      WIVA300.QIVA300DEDUCIBLE24.AsFloat       := RoundTo(nCuota24  , -2);
      WIVA300.QIVA300DEDUCIBLE24BI.AsFloat     := RoundTo(nCuota24BI, -2);
      WIVA300.QIVA300DEDUCIBLE24SI.AsFloat     := RoundTo(nCuota24SI, -2);
      WIVA300.QIVA300DEDUCIBLE25.AsFloat       := RoundTo(nCuota25  , -2);
      WIVA300.QIVA300TOTALDEDUCIBLE.AsFloat    := RoundTo(nCuota22 + nCuota23 + nCuota23BI + nCuota24 + nCuota24BI + nCuota24SI + nCuota25, -2);
      WIVA300.QIVA300DIFERENCIA.AsFloat        := RoundTo(WIVA300.QIVA300TOTALDEVENGADO.AsFloat - WIVA300.QIVA300TOTALDEDUCIBLE.AsFloat, -2);
      WIVA300.QIVA300LIQUIDACION32.AsFloat     := RoundTo(nBase32, -2);
      // Esto se deja asi de momento, aunque no es totalmente exacto.
      WIVA300.QIVA300RESULTADO.AsFloat         := WIVA300.QIVA300DIFERENCIA.AsFloat;
      if RoundTo(WIVA300.QIVA300RESULTADO.AsFloat, -2) > 0 then begin
         WIVA300.QIVA300INGRESO.AsFloat    := WIVA300.QIVA300RESULTADO.AsFloat;
      end
      else begin
         WIVA300.QIVA300DEVOLUCION.AsFloat := WIVA300.QIVA300RESULTADO.AsFloat;
      end;
      WIVA300.QIVA300.Post;
   end;
end;

procedure TDataModuleFiltroLibroFacturasEmitidas.QInformesContaBeforeInsert(DataSet: TDataSet);
begin
   Application.ProcessMessages;
   if Config.AbortedProcess then begin
      Config.AbortedProcess := False;
      DatabaseError('Proceso cancelado');
   end;
end;

procedure TFiltroLibroFacturasEmitidasModel.ReportFacturasEmitidasSubcta(ACallBack :TSimplyCallBack);
var Marca :TBookMark;
begin
   Marca := DM.QInformesConta.GetBookMark;
   //DM.Enlace1.DataSet := DM.QInformesConta;

   DM.QInformesConta.DisableControls;
   try
      if Assigned(ACallBack) then ACallBack;

      if not DM.QInformesConta.EOF then begin
         DM.QInformesConta.GotoBookMark(Marca);
         DM.QInformesConta.FreeBookMark(Marca);
      end;
   finally
      DM.QInformesConta.EnableControls;
   end;
end;

procedure TFiltroLibroFacturasEmitidasModel.ReportFacturasTipoIVA(ACallBack :TSimplyCallBack);
var Marca :TBookMark;
begin
   Marca := DM.QInformesConta.GetBookMark;
   //DM.Enlace1.DataSet := DM.QInformesConta;

   DM.QInformesConta.DisableControls;
   try
      if Assigned(ACallBack) then ACallBack;

      if not DM.QInformesConta.EOF then begin
         DM.QInformesConta.GotoBookMark(Marca);
         DM.QInformesConta.FreeBookMark(Marca);
      end;
   finally
      DM.QInformesConta.EnableControls;
   end;
end;

procedure TFiltroLibroFacturasEmitidasModel.ReportFacturasEmitidas(ACallBack :TSimplyCallBack);
var Marca :TBookMark;
begin
   Marca := DM.QInformesConta.GetBookMark;
   //DM.Enlace1.DataSet := DM.QInformesConta;

   DM.QInformesConta.DisableControls;
   try
      if Assigned(ACallBack) then ACallBack;

      if not DM.QInformesConta.EOF then begin
         DM.QInformesConta.GotoBookMark(Marca);
         DM.QInformesConta.FreeBookMark(Marca);
      end;
   finally
      DM.QInformesConta.EnableControls;
   end;
end;

end.
