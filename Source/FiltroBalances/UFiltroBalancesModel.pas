unit UFiltroBalancesModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  DBClient, frxClass, frxDBSet, frxExportPDF;

type
  TDataModuleFiltroBalances = class(TDataModule)
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
    QSubcuentasSS: TClientDataSet;
    QSubcuentasSSSUBCUENTA: TStringField;
    QSubcuentasSSDESCSUBCUENTA: TStringField;
    QSubcuentasSSDEBE: TFloatField;
    QSubcuentasSSHABER: TFloatField;
    QSubcuentasSSSALDO: TFloatField;
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
    FastReportSumasSaldos: TfrxReport;
    PDFExport: TfrxPDFExport;
    Enlace1: TfrxDBDataset;
    FastReportSumasSaldosSaldo: TfrxReport;
    procedure QInformesContaBeforeInsert(DataSet: TDataSet);
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TFiltroBalancesModel = class(TCustomModel)
  private
    DM :TDataModuleFiltroBalances;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure BalanceSumasYGastos(FechaInicial            ,
                                  FechaFinal              :TDateTime;
                                  FechaImpresion          :TDateTime;
                                  SeleccionPorSubcuenta   ,
                                  SeleccionPorDescripcion :Boolean;
                                  SubcuentaInicial        ,
                                  SubcuentaFinal          ,
                                  DescSubctaInicial       ,
                                  DescSubctaFinal         ,
                                  TipoConcepto            :string;
                                  ConSubcuentas           ,
                                  SoloSaldos              :Boolean;
                                  CuentaAnalitica         ,
                                  Delegacion              ,
                                  Departamento            ,
                                  Seccion                 ,
                                  Proyecto                :string;
                                  Empresas                :TStrings;
                                  NivelIni                :Integer = 3;
                                  NivelFin                :Integer = 1);
  end;

var
  DataModuleFiltroBalances: TDataModuleFiltroBalances;

implementation

uses System.Math, System.DateUtils,
     IBX.IBQuery,
     VCL.Forms,
     DM, DMConta, DMControl, Processing, ccStr, Globales;

{$R *.dfm}

{ TFiltroBalancesModel }

constructor TFiltroBalancesModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleFiltroBalances.Create(Application);
   if Initialize then DoInitialize;
end;

function TFiltroBalancesModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TFiltroBalancesModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TFiltroBalancesModel.DoInitialize;
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

   {---------------------------------------------------}
   DM.QSubcuentasSS.Active := False;
   DM.QSubcuentasSS.IndexDefs.Clear;
   DM.QSubcuentasSS.IndexDefs.Add('SUBCUENTA', 'SUBCUENTA', []);

   DM.QSubcuentasSS.CreateDataSet;
   DM.QSubcuentasSS.Active := True;

   {---------------------------------------------------}
   DM.QInformesConta.Active := False;

   DM.QInformesConta.IndexDefs.Clear;
   DM.QInformesConta.IndexDefs.Add('SUBCUENTA'  , 'SUBCUENTA', []);
   DM.QInformesConta.IndexDefs.Add('DESCRIPCION', 'DESCSUBCUENTA', []);

   DM.QInformesConta.CreateDataSet;
   DM.QInformesConta.Active := True;
end;

procedure TFiltroBalancesModel.Refresh;
begin

end;

procedure TFiltroBalancesModel.BalanceSumasYGastos(FechaInicial            ,
                                                   FechaFinal              :TDateTime;
                                                   FechaImpresion          :TDateTime;
                                                   SeleccionPorSubcuenta   ,
                                                   SeleccionPorDescripcion :Boolean;
                                                   SubcuentaInicial        ,
                                                   SubcuentaFinal          ,
                                                   DescSubctaInicial       ,
                                                   DescSubctaFinal         ,
                                                   TipoConcepto            :string;
                                                   ConSubcuentas           ,
                                                   SoloSaldos              :Boolean;
                                                   CuentaAnalitica         ,
                                                   Delegacion              ,
                                                   Departamento            ,
                                                   Seccion                 ,
                                                   Proyecto                :string;
                                                   Empresas                :TStrings;
                                                   NivelIni                :Integer = 3;
                                                   NivelFin                :Integer = 1);

   procedure FiltrarRegistros;
   begin
      DM.QInformesConta.First;
      while not DM.QInformesConta.EOF do begin
         if RoundTo(DM.QInformesContaSALDO.AsFloat, -2) = 0 then begin
            DM.QInformesConta.Delete;
         end
         else begin
            DM.QInformesConta.Next;
         end;
      end;
      DM.QInformesConta.First;
   end;

   procedure RellenarDatosDescripcion;
   begin
      //  Almacenar la fecha inicial del filtro para incluirla en la descripción del listado.
      DM.QInformesContaFechaInicial.AsDateTime   := FechaInicial;
      DM.QInformesContaFechaFinal.AsDateTime     := FechaFinal;
      DM.QInformesContaFechaImpresion.AsDateTime := FechaImpresion;
   end;

   procedure RellenarImportes(SumaDebe, SumaHaber, TotSumaDebe, TotSumaHaber :Double);
   begin
      DM.QInformesContaDEBE.AsFloat           := SumaDebe;
      DM.QInformesContaHABER.AsFloat          := SumaHaber;
      DM.QInformesContaSALDO.AsFloat          := SumaDebe - SumaHaber;
      DM.QInformesContaTOTALSUMADEBE.AsFloat  := TotSumaDebe;
      DM.QInformesContaTOTALSUMAHABER.AsFloat := TotSumaHaber;
      DM.QInformesContaTOTALSUMASALDO.AsFloat := TotSumaDebe - TotSumaHaber;
   end;

var
   QApuntes      :TIBQuery;
   QCuentas      :TIBQuery;
   QConceptos    :TIBQuery;
   InProgress    :TProcessingView;
   EsPrimero     :Boolean;
   Cuenta        :string;
   Cuenta1       :string;
   Cuenta2       :string;
   Descripcion   :string;
   nTotSumaDebe  :Double;
   nSumaDebe     :Double;
   nSumaDebe1    :Double;
   nSumaDebe2    :Double;
   nTotSumaHaber :Double;
   nSumaHaber    :Double;
   nSumaHaber1   :Double;
   nSumaHaber2   :Double;
   IndCons       :Integer;
begin
   InProgress := InProgressView('Generando informe ...', True);
   try
      Config.AbortedProcess := False;

      if subcuentaFinal = '' then begin
         subcuentaFinal := subcuentaInicial;
      end;

      if length(subcuentaInicial) < Config.MaxLengthAccounts then begin
         SubcuentaInicial := TStrTools.BackChar(subcuentaInicial, '0', Config.MaxLengthAccounts);
      end;
      if length(subcuentaFinal) < Config.MaxLengthAccounts then begin
         SubcuentaFinal := TStrTools.Backchar(subcuentaFinal, '9', Config.MaxLengthAccounts);
      end;

      if DescSubctaFinal = '' then begin
         DescSubctaFinal := DescSubctaInicial;
      end;

      // Selección de datos de concepto
      QConceptos := TIBQuery.Create(nil);
      QConceptos.Database := DB;
      QConceptos.SQL.Add('SELECT TIPOCONTABILIDAD            ');
      QConceptos.SQL.Add('FROM CONCEPTOS                     ');
      QConceptos.SQL.Add('WHERE ID_CONCEPTOS = :ID_CONCEPTOS ');
      QConceptos.Prepare;

      // Selección de cuentas
      QCuentas := TIBQuery.Create(nil);
      QCuentas.Database := DB;
      QCuentas.SQL.Add('SELECT CUENTA, DESCRIPCION, TIPOCUENTA ');
      QCuentas.SQL.Add('FROM CUENTAS                           ');
      QCuentas.SQL.Add('WHERE CUENTA = :CUENTA                 ');
      QCuentas.Prepare;

      // Selección de asientos
      QApuntes := TIBQuery.Create(nil);
      QApuntes.Database := DB;

      QApuntes.SQL.Add('SELECT');
      QApuntes.SQL.Add('   D.ASIENTO, D.APUNTE, D.NUMEROFACTURA, D.FECHA, D.DEBEHABER,');
      QApuntes.SQL.Add('   D.CONTRAPARTIDA, D.SUBCUENTA, S.DESCRIPCION,D.ID_CONCEPTOS,');
      QApuntes.SQL.Add('   D.BASEIMPONIBLE, D.IMPORTE, D.IVA, D.MONEDA, D.CUENTA_ANALITICA,');
      QApuntes.SQL.Add('   D.COMENTARIO');
      QApuntes.SQL.Add('FROM DIARIO D, SUBCTAS S');
      QApuntes.SQL.Add('WHERE');

      if FechaInicial = 0 then begin
         QApuntes.SQL.Add('   (D.FECHA IS NULL OR (D.FECHA >= :FECHAINICIAL AND D.FECHA <= :FECHAFINAL))');
      end
      else begin
         QApuntes.SQL.Add('   D.FECHA >= :FECHAINICIAL AND D.FECHA <= :FECHAFINAL');
      end;

      if SeleccionPorSubcuenta then begin
         if SubcuentaFinal <> '' then begin
            if SubcuentaInicial = '' then begin
               QApuntes.SQL.Add('   AND (D.SUBCUENTA IS NULL OR (D.SUBCUENTA >= :SUBCUENTAINICIAL AND D.SUBCUENTA <= :SUBCUENTAFINAL))');
            end
            else begin
               QApuntes.SQL.Add('   AND D.SUBCUENTA >= :SUBCUENTAINICIAL AND D.SUBCUENTA <= :SUBCUENTAFINAL');
            end;
         end;
      end;
      if SeleccionPorDescripcion then begin
         if DescSubctaFinal <> '' then begin
            if DescSubctaInicial = '' then begin
               QApuntes.SQL.Add('   AND (S.DESCRIPCION IS NULL OR (S.DESCRIPCION >= :DESCINICIAL AND S.DESCRIPCION <= :DESCFINAL))');
            end
            else begin
               QApuntes.SQL.Add('   AND S.DESCRIPCION >= :DESCINICIAL AND S.DESCRIPCION <= :DESCFINAL');
            end;
         end;
      end;

      QApuntes.SQL.Add('   AND D.SUBCUENTA = S.SUBCUENTA');
      QApuntes.SQL.Add('ORDER BY D.SUBCUENTA');

      // PARÁMETROS
      QApuntes.ParamByName('FECHAINICIAL').AsDateTime := FechaInicial;
      QApuntes.ParamByName('FECHAFINAL').AsDateTime   := FechaFinal;

      if SeleccionPorSubcuenta then begin
         if SubcuentaFinal <> '' then begin
            QApuntes.ParamByName('SUBCUENTAINICIAL').AsString := SubcuentaInicial;
            QApuntes.ParamByName('SUBCUENTAFINAL').AsString   := SubcuentaFinal;
         end;
      end;
      if SeleccionPorDescripcion then begin
         if DescSubctaFinal <> '' then begin
            QApuntes.ParamByName('DESCINICIAL').AsString := DescSubctaInicial;
            QApuntes.ParamByName('DESCFINAL').AsString   := DescSubctaFinal;
         end;
      end;

      QApuntes.Prepare;
      QApuntes.Open;

      DM.QSubcuentasSS.EmptyDataset;
      DM.QSubcuentasSS.IndexName := 'SUBCUENTA';

      EsPrimero     := True;
      nTotSumaDebe  := 0;
      nSumaDebe     := 0;
      //nSumaDebe1 := 0;
      //nSumaDebe2 := 0;
      nTotSumaHaber := 0;
      nSumaHaber    := 0;
      //nSumaHaber1 := 0;
      //nSumaHaber2 := 0;


      // Empresa actual
      try
         while not QApuntes.EOF do begin
            if not QApuntes.FieldByName('ID_CONCEPTOS').IsNull then begin
               QConceptos.Close;
               QConceptos.ParamByName('ID_CONCEPTOS').AsString := QApuntes.FieldByName('ID_CONCEPTOS').AsString;
               QConceptos.Open;
               if (TipoConcepto <> 'T') and
                  (QConceptos.FieldByName('TipoContabilidad').AsString <> TipoConcepto) then begin
                  QApuntes.Next;
                  Continue;
               end;
               if not DMContaRef.Pertenece_Analitica(QApuntes.FieldByName('CUENTA_ANALITICA').AsString,
                  CuentaAnalitica, '', Delegacion,
                  Departamento, Seccion, Proyecto) then begin
                  QApuntes.Next;
                  Continue;
               end;
            end;
            if EsPrimero then begin
               EsPrimero   := False;
               Cuenta      := QApuntes.FieldByName('SUBCUENTA').AsString;
               Cuenta1     := Copy(QApuntes.FieldByName('SUBCUENTA').AsString, 1, NivelIni);
               Cuenta2     := Copy(QApuntes.FieldByName('SUBCUENTA').AsString, 1, NivelFin);
               Descripcion := QApuntes.FieldByName('DESCRIPCION').AsString;
            end;

            if Cuenta <> QApuntes.FieldByName('SUBCUENTA').AsString then begin
               DM.QSubcuentasSS.Append;
               DM.QSubcuentasSS.Edit;
               DM.QSubcuentasSSSUBCUENTA.AsString     := Cuenta;
               DM.QSubcuentasSSDESCSUBCUENTA.AsString := Descripcion;
               DM.QSubcuentasSSDEBE.AsFloat           := nSumaDebe;
               DM.QSubcuentasSSHABER.AsFloat          := nSumaHaber;
               DM.QSubcuentasSSSALDO.AsFloat          := nSumaDebe - nSumaHaber;
               DM.QSubcuentasSS.Post;
               Application.ProcessMessages;

               nTotSumaDebe  := nTotSumaDebe + nSumaDebe;
               nTotSumaHaber := nTotSumaHaber + nSumaHaber;
               nSumaDebe     := 0;
               nSumaHaber    := 0;
               Cuenta        := QApuntes.FieldByName('SUBCUENTA').AsString;
               Descripcion   := QApuntes.FieldByName('DESCRIPCION').AsString;
            end;
            if QApuntes.FieldByName('DEBEHABER').AsString = 'D' then begin
               nSumaDebe := nSumaDebe + QApuntes.FieldByName('IMPORTE').AsFloat;
            end
            else begin
               nSumaHaber := nSumaHaber + QApuntes.FieldByName('IMPORTE').AsFloat;
            end;

            QApuntes.Next;
         end;  // while

         if not EsPrimero then begin
            nTotSumaDebe  := nTotSumaDebe + nSumaDebe;
            nTotSumaHaber := nTotSumaHaber + nSumaHaber;
            //if ConSubcuentas then
            begin
               DM.QSubcuentasSS.Append;
               DM.QSubcuentasSS.Edit;
               DM.QSubcuentasSSSUBCUENTA.AsString     := Cuenta;
               DM.QSubcuentasSSDESCSUBCUENTA.AsString := Descripcion;
               DM.QSubcuentasSSDEBE.AsFloat           := nSumaDebe;
               DM.QSubcuentasSSHABER.AsFloat          := nSumaHaber;
               DM.QSubcuentasSSSALDO.AsFloat          := nSumaDebe - nSumaHaber;
               DM.QSubcuentasSS.Post;
               Application.ProcessMessages;
            end;
            Application.ProcessMessages;
         end;

         // Empresas consolidadas
         for IndCons := 0 to Empresas.Count - 1 do begin
            DMRef.ConectarBDEmpresa(Empresas.Strings[IndCons]);
            QApuntes.Close;
            QApuntes.Database    := DMRef.IBDConsolida;
            QApuntes.Transaction := DMRef.IBDConsolida.DefaultTransaction;

            // PARÁMETROS
            QApuntes.ParamByName('FECHAINICIAL').AsDateTime := FechaInicial;
            QApuntes.ParamByName('FECHAFINAL').AsDateTime   := FechaFinal;

            if SeleccionPorSubcuenta then begin
               if SubcuentaFinal <> '' then begin
                  QApuntes.ParamByName('SUBCUENTAINICIAL').AsString := SubcuentaInicial;
                  QApuntes.ParamByName('SUBCUENTAFINAL').AsString   := SubcuentaFinal;
               end;
            end;
            if SeleccionPorDescripcion then begin
               if DescSubctaFinal <> '' then begin
                  QApuntes.ParamByName('DESCINICIAL').AsString := DescSubctaInicial;
                  QApuntes.ParamByName('DESCFINAL').AsString   := DescSubctaFinal;
               end;
            end;

            QApuntes.Prepare;
            QApuntes.Open;

            EsPrimero  := True;
            nSumaDebe  := 0;
            //nSumaDebe1 := 0;
            //nSumaDebe2 := 0;
            nSumaHaber := 0;
            //nSumaHaber1 := 0;
            //nSumaHaber2 := 0;

            while not QApuntes.EOF do begin
               if not QApuntes.FieldByName('ID_CONCEPTOS').IsNull then begin
                  QConceptos.Close;
                  QConceptos.Database    := DMRef.IBDConsolida;
                  QConceptos.Transaction := DMRef.IBDConsolida.DefaultTransaction;
                  QConceptos.ParamByName('ID_CONCEPTOS').AsString := QApuntes.FieldByName('ID_CONCEPTOS').AsString;
                  QConceptos.Open;
                  if (TipoConcepto <> 'T') and (QConceptos.FieldByName('TipoContabilidad').AsString <> TipoConcepto) then begin
                     QApuntes.Next;
                     Continue;
                  end;
                  if not DMContaRef.Pertenece_Analitica(QApuntes.FieldByName('CUENTA_ANALITICA').AsString,
                     CuentaAnalitica, '', Delegacion,
                     Departamento, Seccion, Proyecto,
                     DMRef.IBDConsolida) then begin
                     QApuntes.Next;
                     Continue;
                  end;
               end;
               if EsPrimero then begin
                  EsPrimero   := False;
                  Cuenta      := QApuntes.FieldByName('SUBCUENTA').AsString;
                  Cuenta1     := Copy(QApuntes.FieldByName('SUBCUENTA').AsString, 1, NivelIni);
                  Cuenta2     := Copy(QApuntes.FieldByName('SUBCUENTA').AsString, 1, NivelFin);
                  Descripcion := QApuntes.FieldByName('DESCRIPCION').AsString;
               end;

               if Cuenta <> QApuntes.FieldByName('SUBCUENTA').AsString then begin
                  // DM.QInformesConta.IndexName := 'SUBCUENTA';
                  DM.QSubcuentasSS.First;
                  if not DM.QSubcuentasSS.FindKey([Cuenta]) then DmContaRef.QSubcuentasSS.Append;
                  DM.QSubcuentasSS.Edit;
                  DM.QSubcuentasSSSUBCUENTA.AsString := Cuenta;
                  DM.QSubcuentasSSDESCSUBCUENTA.AsString := Descripcion;
                  DM.QSubcuentasSSDEBE.AsFloat           := DM.QSubcuentasSSDEBE.AsFloat + nSumaDebe;
                  DM.QSubcuentasSSHABER.AsFloat          := DM.QSubcuentasSSHABER.AsFloat + nSumaHaber;
                  DM.QSubcuentasSSSALDO.AsFloat          := DM.QSubcuentasSSSALDO.AsFloat + nSumaDebe - nSumaHaber;
                  DM.QSubcuentasSS.Post;
                  Application.ProcessMessages;
                  nTotSumaDebe  := nTotSumaDebe + nSumaDebe;
                  nTotSumaHaber := nTotSumaHaber + nSumaHaber;
                  nSumaDebe     := 0;
                  nSumaHaber    := 0;
                  Cuenta        := QApuntes.FieldByName('SUBCUENTA').AsString;
                  Descripcion   := QApuntes.FieldByName('DESCRIPCION').AsString;
               end;
               if QApuntes.FieldByName('DEBEHABER').AsString = 'D' then begin
                  nSumaDebe := nSumaDebe + QApuntes.FieldByName('IMPORTE').AsFloat;
               end
               else begin
                  nSumaHaber := nSumaHaber + QApuntes.FieldByName('IMPORTE').AsFloat;
               end;

               QApuntes.Next;
            end;    // while not eof

            if not EsPrimero then begin
               nTotSumaDebe  := nTotSumaDebe + nSumaDebe;
               nTotSumaHaber := nTotSumaHaber + nSumaHaber;
               //if ConSubcuentas then
               begin
                  DM.QSubcuentasSS.First;
                  if not DM.QSubcuentasSS.FindKey([Cuenta]) then DM.QSubcuentasSS.Append;
                  DM.QSubcuentasSS.Edit;
                  DM.QSubcuentasSSSUBCUENTA.AsString     := Cuenta;
                  DM.QSubcuentasSSDESCSUBCUENTA.AsString := Descripcion;
                  DM.QSubcuentasSSDEBE.AsFloat           := DM.QSubcuentasSSDEBE.AsFloat + nSumaDebe;
                  DM.QSubcuentasSSHABER.AsFloat          := DM.QSubcuentasSSHABER.AsFloat + nSumaHaber;
                  DM.QSubcuentasSSSALDO.AsFloat          := DM.QSubcuentasSSSALDO.AsFloat + nSumaDebe - nSumaHaber;
                  DM.QSubcuentasSS.Post;
                  Application.ProcessMessages;
               end;
               Application.ProcessMessages;
            end;
         end;
         QApuntes.Close;
         QApuntes.Free;
      except
         on E: Exception do begin
            QConceptos.Close;
            QConceptos.Free;
            QApuntes.Close;
            QApuntes.Free;
            QCuentas.Close;
            QCuentas.Free;
            DatabaseError(E.Message);
         end;
      end;

      QConceptos.Close;
      QConceptos.Free;

      // Cargar datos en QInformes
      DM.QInformesConta.IndexName := '';
      DM.QSubcuentasSS.First;
      // Inicializaciones
      nTotSumaDebe  := 0;
      nTotSumaHaber := 0;
      nSumaDebe1    := 0;
      nSumaDebe2    := 0;
      nSumaHaber1   := 0;
      nSumaHaber2   := 0;
      Cuenta1       := Copy(DM.QSubcuentasSSSUBCUENTA.AsString, 1, NivelIni);
      Cuenta2       := Copy(DM.QSubcuentasSSSUBCUENTA.AsString, 1, NivelFin);

      while not DM.QSubcuentasSS.EOF do begin
         if Cuenta1 <> Copy(DM.QSubcuentasSSSUBCUENTA.AsString, 1, NivelIni) then begin
            DM.QInformesConta.Append;
            DM.QInformesConta.Edit;
            DM.QInformesContaSUBCUENTA.AsString := Cuenta1;

            QCuentas.Close;
            QCuentas.ParamByName('CUENTA').AsString := Cuenta1;
            QCuentas.Open;
            if not QCuentas.EOF then begin
               DM.QInformesContaDESCSUBCUENTA.AsString := Trim(QCuentas.FieldByName('DESCRIPCION').AsString);
            end;

            RellenarImportes(nSumaDebe1, nSumaHaber1, nTotSumaDebe, nTotSumaHaber);
            RellenarDatosDescripcion;

            DM.QInformesConta.Post;
            Application.ProcessMessages;
            nSumaDebe1  := 0;
            nSumaHaber1 := 0;
            Cuenta1     := Copy(DM.QSubcuentasSSSUBCUENTA.AsString, 1, NivelIni);
         end;

         if Cuenta2 <> Copy(DM.QSubcuentasSSSUBCUENTA.AsString, 1, NivelFin) then begin
            DM.QInformesConta.Append;
            DM.QInformesConta.Edit;
            DM.QInformesContaSUBCUENTA.AsString := Cuenta2;

            QCuentas.Close;
            QCuentas.ParamByName('CUENTA').AsString := Cuenta2;
            QCuentas.Open;
            if not QCuentas.EOF then begin
               DM.QInformesContaDESCSUBCUENTA.AsString := Trim(QCuentas.FieldByName('DESCRIPCION').AsString);
            end;

            RellenarImportes(nSumaDebe2, nSumaHaber2, nTotSumaDebe, nTotSumaHaber);
            RellenarDatosDescripcion;

            DM.QInformesConta.Post;
            Application.ProcessMessages;
            nSumaDebe2  := 0;
            nSumaHaber2 := 0;
            Cuenta2     := Copy(DM.QSubcuentasSSSUBCUENTA.AsString, 1, NivelFin);
         end;

         nSumaDebe     :=                DM.QSubcuentasSSDEBE.AsFloat;
         nSumaDebe1    := nSumaDebe1   + DM.QSubcuentasSSDEBE.AsFloat;
         nSumaDebe2    := nSumaDebe2   + DM.QSubcuentasSSDEBE.AsFloat;
         nSumaHaber    :=                DM.QSubcuentasSSHABER.AsFloat;
         nSumaHaber1   := nSumaHaber1  + DM.QSubcuentasSSHABER.AsFloat;
         nSumaHaber2   := nSumaHaber2  + DM.QSubcuentasSSHABER.AsFloat;
         nTotSumaDebe  := nTotSumaDebe + nSumaDebe;
         nTotSumaHaber := nTotSumaHaber + nSumaHaber;

         if ConSubcuentas then begin
            DM.QInformesConta.Append;
            DM.QInformesConta.Edit;
            DM.QInformesContaSUBCUENTA.AsString     := DM.QSubcuentasSSSUBCUENTA.AsString;
            DM.QInformesContaDESCSUBCUENTA.AsString := DM.QSubcuentasSSDESCSUBCUENTA.AsString;
            DM.QInformesContaDEBE.AsFloat           := nSumaDebe;
            DM.QInformesContaHABER.AsFloat          := nSumaHaber;
            DM.QInformesContaSALDO.AsFloat          := nSumaDebe - nSumaHaber;

            RellenarImportes(nSumaDebe, nSumaHaber, nTotSumaDebe, nTotSumaHaber);
            RellenarDatosDescripcion;
            DM.QInformesConta.Post;
         end;
         DM.QSubcuentasSS.Next;
      end;

      // Fin del bucle
      // Cuenta1
      DM.QInformesConta.Append;
      DM.QInformesConta.Edit;
      DM.QInformesContaSUBCUENTA.AsString := Cuenta1;

      QCuentas.Close;
      QCuentas.ParamByName('CUENTA').AsString := Cuenta1;
      QCuentas.Open;
      if not QCuentas.EOF then begin
         DM.QInformesContaDESCSUBCUENTA.AsString := Trim(QCuentas.FieldByName('DESCRIPCION').AsString);
      end;

      RellenarImportes(nSumaDebe1, nSumaHaber1, nTotSumaDebe, nTotSumaHaber);
      RellenarDatosDescripcion;

      DM.QInformesConta.Post;
      Application.ProcessMessages;

      // Cuenta2
      DM.QInformesConta.Append;
      DM.QInformesConta.Edit;
      DM.QInformesContaSUBCUENTA.AsString := Cuenta2;

      QCuentas.Close;
      QCuentas.ParamByName('CUENTA').AsString := Cuenta2;
      QCuentas.Open;
      if not QCuentas.EOF then begin
         DM.QInformesContaDESCSUBCUENTA.AsString := Trim(QCuentas.FieldByName('DESCRIPCION').AsString);
      end;

      RellenarImportes(nSumaDebe2, nSumaHaber2, nTotSumaDebe, nTotSumaHaber);
      RellenarDatosDescripcion;

      DM.QInformesConta.Post;
      Application.ProcessMessages;

      QCuentas.Close;
      QCuentas.Free;

      // Filtrar registros a imprimir
      // Con la opción de SOLO SALDOS, no imprimir los registros con saldo 0
      if SoloSaldos then begin
         FiltrarRegistros;
      end;
   finally
      InProgress.Free;
   end;

   DM.PDFExport.Author          := 'senCille Accounting';
   DM.PDFExport.ShowDialog      := False;
   DM.PDFExport.OpenAfterExport := True;

   if SoloSaldos then begin
      DM.PDFExport.FileName := 'BalanceDeAcumulados.pdf';
      DM.FastReportSumasSaldosSaldo.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportSumasSaldosSaldo.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
      DM.FastReportSumasSaldosSaldo.Variables['DESCRIPTION'    ] := ''''+'Desde la fecha ' + FormatDateTime('dd/mm/yyyy', FechaInicial) +
                                                                                 ' hasta ' + FormatDateTime('dd/mm/yyyy', FechaFinal) +'''';
      DM.FastReportSumasSaldosSaldo.Variables['ENTERPRISE_NAME'] := ''''+FormatDateTime('dd/mm/yyyy', FechaImpresion)+'''';

      DM.FastReportSumasSaldosSaldo.PrepareReport(True);
      DM.FastReportSumasSaldosSaldo.Export(DM.PDFExport);
      //FormPrincipal.LanzarListado('LSumasSaldosSaldo.rtm', DMContaRef.SInformesConta);
   end
   else begin
      DM.PDFExport.FileName := 'BalanceDeAcumulados.pdf';
      DM.FastReportSumasSaldos.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportSumasSaldos.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
      DM.FastReportSumasSaldos.Variables['DESCRIPTION'    ] := ''''+'Desde la fecha ' + FormatDateTime('dd/mm/yyyy', FechaInicial) +
                                                                            ' hasta ' + FormatDateTime('dd/mm/yyyy', FechaFinal) +'''';
      DM.FastReportSumasSaldos.Variables['ENTERPRISE_NAME'] := ''''+FormatDateTime('dd/mm/yyyy', FechaImpresion)+'''';

      DM.FastReportSumasSaldos.PrepareReport(True);
      DM.FastReportSumasSaldos.Export(DM.PDFExport);
      //FormPrincipal.LanzarListado('LSumasSaldos.rtm', DMContaRef.SInformesConta);
   end;

   DMContaRef.InicializarFicherosInformes;
end;

procedure TDataModuleFiltroBalances.QInformesContaBeforeInsert(DataSet: TDataSet);
begin
   Application.ProcessMessages;
   if Config.AbortedProcess then begin
      Config.AbortedProcess := False;
      DatabaseError('Proceso cancelado');
   end;
end;

end.
