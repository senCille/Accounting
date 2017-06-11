unit UFiltroListadosAsientosModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  IBX.IBQuery, DBClient, frxClass, frxDBSet, frxExportPDF,
  senCille.CommonTypes;

type
  TDataModuleFiltroListadosAsientos = class(TDataModule)
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
    QFiltroAnaliticas: TIBQuery;
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
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TFiltroListadosAsientosModel = class(TCustomModel)
  private
    //DM :TDataModuleFiltroListadosAsientos;
    function Pertenece_Analitica(CuentaAnalitica   ,
                                 FiltroCuenta      ,
                                 FiltroCuentaH     ,
                                 FiltroDelegacion  ,
                                 FiltroDepartamento,
                                 FiltroSeccion     ,
                                 FiltroProyecto    :string;
                                 BaseDatos         :TIBDatabase = nil):Boolean;
    function GetDescripcionApunte(DescripConcepto  ,
                                  NumeroFactura    ,
                                  Serie            :string;
                                  Ejercicio        :Integer;
                                  ComentarioApunte ,
                                  AbrevSubcta      :string):string;
  protected
  public
    DM :TDataModuleFiltroListadosAsientos;
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure LanzarInfAsientos(ACallBack                :TSimplyCallBack;
                                AsientoInicial           ,
                                AsientoFinal             :Integer;
                                FechaInicial             ,
                                FechaFinal               ,
                                FechaImpresion           :TDateTime;
                                TipoConcepto             ,
                                Cuenta                   ,
                                Delegacion               ,
                                Departamento             ,
                                Seccion                  ,
                                Proyecto                 :string;
                                OrdenadoPorAsiento       :Boolean = True;
                                InformeNormal            :Boolean = True;
                                SoloAsientosDescuadrados :Boolean = False;
                                SoloAsientosMezcla       :Boolean = False;
                                FormatoOficial           :Boolean = False);
  end;

var
  DataModuleFiltroListadosAsientos: TDataModuleFiltroListadosAsientos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses System.Math,
     VCL.Forms,
     DMControl, DM, Globales, Processing, UFiltroListadosAsientos;

{$R *.dfm}

{ TFiltroListadosAsientosModel }

constructor TFiltroListadosAsientosModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleFiltroListadosAsientos.Create(Application);
   if Initialize then DoInitialize;
end;

function TFiltroListadosAsientosModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TFiltroListadosAsientosModel.Destroy;
begin
   DM.Free;
   //inherited;
end;

procedure TFiltroListadosAsientosModel.DoInitialize;
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

   DM.QFiltroAnaliticas.Database := DB;

   DM.QInformesConta.CreateDataSet;
   DM.QInformesConta.Active := True;
end;

procedure TFiltroListadosAsientosModel.Refresh;
begin

end;

function TFiltroListadosAsientosModel.Pertenece_Analitica(CuentaAnalitica    ,
                                                          FiltroCuenta       ,
                                                          FiltroCuentaH      ,
                                                          FiltroDelegacion   ,
                                                          FiltroDepartamento ,
                                                          FiltroSeccion      ,
                                                          FiltroProyecto     :string;
                                                          BaseDatos          :TIBDatabase = nil):Boolean;
var Pertenece: Boolean;
begin
   Pertenece := True;

   if (FiltroCuenta  <> '') or (FiltroDelegacion <> '') or (FiltroDepartamento <> '') or
      (FiltroSeccion <> '') or (FiltroProyecto   <> '') then begin
      DM.QFiltroAnaliticas.Close;
      if BaseDatos <> nil then begin
         DM.QFiltroAnaliticas.Database := BaseDatos;
      end;

      DM.QFiltroAnaliticas.Transaction := DM.QFiltroAnaliticas.Database.DefaultTransaction;
      DM.QFiltroAnaliticas.SQL.Clear;
      DM.QFiltroAnaliticas.SQL.Add('SELECT * FROM ANALITICAS');
      DM.QFiltroAnaliticas.SQL.Add('WHERE CUENTA = :CUENTA_ANALITICA');

      if FiltroCuentaH <> '' then begin
         DM.QFiltroAnaliticas.SQL.Add(' AND CUENTA >= :CUENTA AND CUENTA <= :CUENTAH');
      end else
      if FiltroCuenta <> '' then begin
         DM.QFiltroAnaliticas.SQL.Add(' AND CUENTA = :CUENTA');
      end;

      if FiltroDelegacion <> '' then begin
         DM.QFiltroAnaliticas.SQL.Add(' AND ID_DELEGACION = :ID_DELEGACION');
      end;

      if FiltroDepartamento <> '' then begin
         DM.QFiltroAnaliticas.SQL.Add(' AND ID_DEPARTAMENTO = :ID_DEPARTAMENTO');
      end;

      if FiltroSeccion <> '' then begin
         DM.QFiltroAnaliticas.SQL.Add(' AND ID_SECCION = :ID_SECCION');
      end;

      if FiltroProyecto <> '' then begin
         DM.QFiltroAnaliticas.SQL.Add(' AND ID_PROYECTO = :ID_PROYECTO');
      end;

      DM.QFiltroAnaliticas.ParamByName('CUENTA_ANALITICA').AsString := CuentaAnalitica;

      if FiltroCuenta <> '' then begin
         DM.QFiltroAnaliticas.ParamByName('CUENTA').AsString := FiltroCuenta;
      end;

      if FiltroCuentaH <> '' then begin
         DM.QFiltroAnaliticas.ParamByName('CUENTAH').AsString := FiltroCuentaH;
      end;

      if FiltroDelegacion <> '' then begin
         DM.QFiltroAnaliticas.ParamByName('ID_DELEGACION').AsString := FiltroDelegacion;
      end;

      if FiltroDepartamento <> '' then begin
         DM.QFiltroAnaliticas.ParamByName('ID_DEPARTAMENTO').AsString := FiltroDepartamento;
      end;

      if FiltroSeccion <> '' then begin
         DM.QFiltroAnaliticas.ParamByName('ID_SECCION').AsString := FiltroSeccion;
      end;

      if FiltroProyecto <> '' then begin
         DM.QFiltroAnaliticas.ParamByName('ID_PROYECTO').AsString := FiltroProyecto;
      end;

      DM.QFiltroAnaliticas.Open;

      Pertenece := not DM.QFiltroAnaliticas.EOF;

      DM.QFiltroAnaliticas.Close;
   end;

   Result := Pertenece;
end;

function TFiltroListadosAsientosModel.GetDescripcionApunte(DescripConcepto  ,
                                                           NumeroFactura    ,
                                                           Serie            :string;
                                                           Ejercicio        :Integer;
                                                           ComentarioApunte ,
                                                           AbrevSubcta      :string):string;
var Cadena :string;
begin
   Cadena := '';

   if not (Trim(DescripConcepto) = '') then Cadena := Trim(DescripConcepto) + ' ';

   if (DMRef.QParametrosINCLUIR_ABREV.AsString = 'S')
      and not(Trim(AbrevSubcta) = '')
      and (Trim(AbrevSubcta) <> Trim(NumeroFactura)) then begin
      Cadena := Cadena + Trim(AbrevSubcta) + ' ';
   end;

   if not (Trim(NumeroFactura) = '') then begin
      if (DMRef.QParametrosTRATASERIE.AsString = 'S') then begin
         if Ejercicio > 0 then begin
            Cadena := Cadena + Trim(IntToStr(Ejercicio));
         end;
         if Serie <> '' then begin
            Cadena := Cadena + '/' + Trim(Serie) + '-';
         end;
      end;
      Cadena := Cadena + Trim(NumeroFactura) + ' ';
   end;

   Cadena := Cadena + Trim(ComentarioApunte);

   Result := Copy(Trim(Cadena), 1, 100);
end;

procedure TFiltroListadosAsientosModel.LanzarInfAsientos(ACallBack                :TSimplyCallBack;
                                                         AsientoInicial           ,
                                                         AsientoFinal             :Integer;
                                                         FechaInicial             ,
                                                         FechaFinal               ,
                                                         FechaImpresion           :TDateTime;
                                                         TipoConcepto             ,
                                                         Cuenta                   ,
                                                         Delegacion               ,
                                                         Departamento             ,
                                                         Seccion                  ,
                                                         Proyecto                 :string;
                                                         OrdenadoPorAsiento       :Boolean = True;
                                                         InformeNormal            :Boolean = True;
                                                         SoloAsientosDescuadrados :Boolean = False;
                                                         SoloAsientosMezcla       :Boolean = False;
                                                         FormatoOficial           :Boolean = False);
var QApuntes :TIBQuery;

   QAsientos     :TIBSQL;
   QSubcuentas   :TIBSQL;
   QConceptos    :TIBSQL;
   InProgress    :TProcessingView;
   nAsiento      :Integer;

   AsientoOK     :Boolean;
   Abreviatura   :string;
   DescConcepto  :string;
   NumeroFactura :string;

   procedure ProcesarAsiento(Asiento: Integer; var AsientoOK: Boolean);
   var TotImporte   :Double;
       DescApunte   :string;
       nTotalLineas :Word;
       nLinea       :Word;
   begin
      AsientoOK := True;
      nLinea    := 0; {default value}
      QApuntes.Close;
      QApuntes.ParamByName('ASIENTO').AsInteger := Asiento;
      QApuntes.Open;

      if not QApuntes.EOF then begin
         if not QApuntes.FieldByName('ID_CONCEPTOS').IsNull then begin
            QConceptos.Close;
            QConceptos.Params.ByName('ID_CONCEPTOS').AsString := QApuntes.FieldByName('ID_CONCEPTOS').AsString;
            QConceptos.ExecQuery;
            if (TipoConcepto <> 'T') and
               (QConceptos.FieldByName('TIPOCONTABILIDAD').AsString <> TipoConcepto) then begin
               AsientoOK := False;
            end;
         end;
         if AsientoOK and not Pertenece_Analitica(QApuntes.FieldByName('CUENTA_ANALITICA').AsString,
                                                  Cuenta,
                                                  '',
                                                  Delegacion,
                                                  Departamento,
                                                  Seccion,
                                                  Proyecto) then begin
            AsientoOK := False;
         end;

         if AsientoOK and SoloAsientosDescuadrados then begin
            TotImporte := 0;
            while not EOF do begin
               if QApuntes.FieldByName('DEBEHABER').AsString = 'D' then begin
                  TotImporte := TotImporte + QApuntes.FieldByName('IMPORTE').AsFloat;
               end
               else begin
                  TotImporte := TotImporte - QApuntes.FieldByName('IMPORTE').AsFloat;
               end;
               QApuntes.Next;
            end;
            AsientoOK := (RoundTo(TotImporte, -2) <> 0);
         end else
         if AsientoOK and SoloAsientosMezcla then begin
            nTotalLineas := 0;
            while not EOF do begin
               Inc(nTotalLineas);
               nLinea := QApuntes.FieldByName('apunte').AsInteger;
               QApuntes.Next;
            end;
            AsientoOK := (nLinea <> nTotalLineas);
         end;
      end;

      if AsientoOK then begin
         QApuntes.First;
         while not QApuntes.EOF do begin
            DM.QInformesConta.Append;
            DM.QInformesConta.Edit;
            DM.QInformesConta.FieldByName('FECHA'       ).AsDateTime := QApuntes.FieldByName('FECHA'       ).AsDateTime;
            DM.QInformesConta.FieldByName('ASIENTO'     ).AsInteger  := QApuntes.FieldByName('ASIENTO'     ).AsInteger;
            DM.QInformesConta.FieldByName('APUNTE'      ).AsInteger  := QApuntes.FieldByName('APUNTE'      ).AsInteger;
            DM.QInformesConta.FieldByName('ID_CONCEPTOS').AsString   := QApuntes.FieldByName('ID_CONCEPTOS').AsString;

            // Subcuenta y descripción
            Abreviatura := '';
            DM.QInformesConta.FieldByName('SUBCUENTA').AsString := QApuntes.FieldByName('SUBCUENTA').AsString;
            if not QApuntes.FieldByName('SUBCUENTA').IsNull then begin
               QSubcuentas.Close;
               QSubcuentas.Params.ByName('SUBCUENTA').AsString := QApuntes.FieldByName('SUBCUENTA').AsString;
               QSubcuentas.ExecQuery;
               if not QSubcuentas.EOF then begin
                  DM.QInformesConta.FieldByName('DESCSUBCUENTA').AsString := Trim(QSubcuentas.FieldByName('DESCRIPCION').AsString);
                  Abreviatura := QSubcuentas.FieldByName('ABREVIATURA').AsString;
               end;
            end;

            // Obtener la descripción del concepto
            QConceptos.Close;
            QConceptos.Params.ByName('ID_CONCEPTOS').AsString := QApuntes.FieldByName('ID_CONCEPTOS').AsString;
            QConceptos.ExecQuery;
            //DescConcepto := '';
            //if not QConceptos.Eof then
            DescConcepto  := Trim(QConceptos.FieldByName('DESCRIPCION').AsString) + ' ';
            NumeroFactura := QApuntes.FieldByName('NUMEROFACTURA').AsString;

            // Descripción de apunte
            DescApunte := GetDescripcionApunte(DescConcepto,
                                               NumeroFactura,
                                               QApuntes.FieldByName('SERIE'     ).AsString,
                                               QApuntes.FieldByName('EJERCICIO' ).AsInteger,
                                               QApuntes.FieldByName('COMENTARIO').AsString,
                                               Abreviatura);

            DM.QInformesConta.FieldByName('DESCAPUNTE').AsString := Copy(DescApunte, 1, 100);

            DM.QInformesConta.FieldByName('DEBEHABER').AsString  := QApuntes.FieldByName('DEBEHABER').AsString;
            DM.QInformesConta.FieldByName('IMPORTE'  ).AsFloat   := QApuntes.FieldByName('IMPORTE'  ).AsFloat;

            if QApuntes.FieldByName('DEBEHABER').AsString = 'D' then begin
               DM.QInformesConta.FieldByName('DEBE').AsFloat := QApuntes.FieldByName('IMPORTE').AsFloat;
            end
            else begin
               DM.QInformesConta.FieldByName('HABER').AsFloat := QApuntes.FieldByName('IMPORTE').AsFloat;
            end;

            DM.QInformesConta.FieldByName('CONTRAPARTIDA').AsString := QApuntes.FieldByName('CONTRAPARTIDA').AsString;

            // Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado.
            DM.QInformesConta.FieldByName('FECHAINICIAL'  ).AsDateTime := FechaInicial;
            DM.QInformesConta.FieldByName('FECHAFINAL'    ).AsDateTime := FechaFinal;
            DM.QInformesConta.FieldByName('FECHAIMPRESION').AsDateTime := FechaImpresion;

            DM.QInformesConta.Post;

            QApuntes.Next;
         end;
      end;
   end;

begin
   InProgress := InProgressView(Config.Lang.GeneratingReport, True);
   try
      Config.AbortedProcess := False;
      Config.FormatoOficial := FormatoOficial;

      // Selección de datos de subcuenta
      QSubcuentas := TIBSQL.Create(nil);
      QSubcuentas.Database := DMRef.BDContab;
      QSubcuentas.SQL.Add('SELECT SUBCUENTA  ,          ');
      QSubcuentas.SQL.Add('       DESCRIPCION,          ');
      QSubcuentas.SQL.Add('       ABREVIATURA           ');
      QSubcuentas.SQL.Add('FROM SUBCTAS                 ');
      QSubcuentas.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA ');
      QSubcuentas.Prepare;

      // Selección de datos de concepto
      QConceptos := TIBSQL.Create(nil);
      QConceptos.Database := DMRef.BDContab;
      QConceptos.SQL.Add('SELECT ID_CONCEPTOS    ,           ');
      QConceptos.SQL.Add('       DESCRIPCION     ,           ');
      QConceptos.SQL.Add('       TIPOCONTABILIDAD            ');
      QConceptos.SQL.Add('FROM CONCEPTOS                     ');
      QConceptos.SQL.Add('WHERE ID_CONCEPTOS = :ID_CONCEPTOS ');
      QConceptos.Prepare;

      // Selección de apuntes
      QApuntes := TIBQuery.Create(nil);
      QApuntes.Database := DMRef.BDContab;
      QApuntes.SQL.Add('SELECT D.APUNTE            ,  ');
      QApuntes.SQL.Add('       D.SUBCUENTA         ,  ');
      QApuntes.SQL.Add('       D.FECHA             ,  ');
      QApuntes.SQL.Add('       D.CONTRAPARTIDA     ,  ');
      QApuntes.SQL.Add('       D.IMPORTE           ,  ');
      QApuntes.SQL.Add('       D.NUMEROFACTURA     ,  ');
      QApuntes.SQL.Add('       D.ID_CONCEPTOS      ,  ');
      QApuntes.SQL.Add('       D.ID_DIARIO         ,  ');
      QApuntes.SQL.Add('       D.SERIE             ,  ');
      QApuntes.SQL.Add('       D.EJERCICIO         ,  ');
      QApuntes.SQL.Add('       D.DEBEHABER         ,  ');
      QApuntes.SQL.Add('       D.ASIENTO           ,  ');
      QApuntes.SQL.Add('       D.COMENTARIO        ,  ');
      QApuntes.SQL.Add('       D.MONEDA            ,  ');
      QApuntes.SQL.Add('       D.CUENTA_ANALITICA     ');
      QApuntes.SQL.Add('FROM  DIARIO D                ');
      QApuntes.SQL.Add('WHERE D.ASIENTO = :ASIENTO    ');
      QApuntes.SQL.Add('ORDER BY D.ASIENTO, D.APUNTE  ');

      // Selección de asientos
      QAsientos := TIBSQL.Create(nil);
      QAsientos.Database := DMRef.BDContab;

      QAsientos.SQL.Add('SELECT DISTINCT D.ASIENTO, ');
      QAsientos.SQL.Add('                D.FECHA    ');
      QAsientos.SQL.Add('FROM DIARIO D              ');
      QAsientos.SQL.Add('WHERE                      ');

      QAsientos.SQL.Add('   D.ASIENTO >= :ASIENTOINICIAL AND D.ASIENTO <= :ASIENTOFINAL AND');

      if FechaInicial = 0 then QAsientos.SQL.Add('   (D.FECHA IS NULL OR (D.FECHA >= :FECHAINICIAL AND FECHA <= :FECHAFINAL))')
                          else QAsientos.SQL.Add('   D.FECHA >= :FECHAINICIAL AND FECHA <= :FECHAFINAL');

      if OrdenadoPorAsiento then QAsientos.SQL.Add('ORDER BY D.ASIENTO, D.APUNTE')
                            else QAsientos.SQL.Add('ORDER BY D.FECHA, D.ASIENTO');

      QAsientos.Prepare;

      QAsientos.Params.ByName('ASIENTOINICIAL').AsInteger  := AsientoInicial;
      QAsientos.Params.ByName('ASIENTOFINAL'  ).AsInteger  := AsientoFinal;
      QAsientos.Params.ByName('FECHAINICIAL'  ).AsDateTime := FechaInicial;
      QAsientos.Params.ByName('FECHAFINAL'    ).AsDateTime := FechaFinal;

      QAsientos.ExecQuery;
      try
         try
            nAsiento := -1;
            while (not QAsientos.EOF) and (not Config.AbortedProcess) do begin
               InProgress.ShowNext(Format('Procesando Asiento %s ', [QAsientos.FieldByName('ASIENTO').AsString]));
               ProcesarAsiento(QAsientos.FieldByName('ASIENTO').AsInteger, AsientoOK);

               {Insert a separation band, if the show official format}
               if AsientoOK and (nAsiento <> QAsientos.FieldByName('ASIENTO').AsInteger) then begin
                  if (nAsiento <> -1) and FormatoOficial then begin
                     DM.QInformesConta.Append;
                     DM.QInformesConta.Edit;

                     {Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado.}
                     DM.QInformesConta.FieldByName('FECHAINICIAL'  ).AsDateTime := FechaInicial;
                     DM.QInformesConta.FieldByName('FECHAFINAL'    ).AsDateTime := FechaFinal;
                     DM.QInformesConta.FieldByName('FECHAIMPRESION').AsDateTime := FechaImpresion;

                     DM.QInformesConta.Post;
                  end;
                  nAsiento := QAsientos.FieldByName('ASIENTO').AsInteger;
               end;

               QAsientos.Next;
            end;

            QAsientos.Free;
         except
            on E: Exception do begin
               DatabaseError(E.message);
            end;
         end;
      finally
         QSubcuentas.Free;
         QConceptos.Free;
         QApuntes.Free;
      end;
   finally
      InProgress.Free;
   end;

   if Assigned(ACallBack) then ACallBack;

   DM.QInformesConta.EmptyDataSet;
end;

end.
