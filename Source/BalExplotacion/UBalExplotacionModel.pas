unit UBalExplotacionModel;

interface

uses SysUtils, Classes, CustomModel, StdCtrls, CheckLst,
     IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet, DBClient, frxClass, frxDBSet, frxExportPDF;

type
  TDataModuleBalExplotacion = class(TDataModule)
    QEmpresas: TIBDataSet;
    QEmpresasNOMBRE: TIBStringField;
    QEmpresasCERRADA: TIBStringField;
    QEmpresasUBICACION: TIBStringField;
    QEmpresasID_EMPRESA: TIntegerField;
    QEmpresasULTIMA: TIBStringField;
    SEmpresas: TDataSource;
    DBEmpresa: TIBDatabase;
    Transaccion: TIBTransaction;
    QSubCuentas: TIBDataSet;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    SSubcuentas: TDataSource;
    QAnaliticas: TIBDataSet;
    QAnaliticasID_PROYECTO: TIBStringField;
    QAnaliticasID_SECCION: TIBStringField;
    QAnaliticasID_DEPARTAMENTO: TIBStringField;
    QAnaliticasID_DELEGACION: TIBStringField;
    QAnaliticasNOMBRE: TIBStringField;
    QAnaliticasCUENTA: TIBStringField;
    SAnaliticas: TDataSource;
    QDelegaciones: TIBDataSet;
    QDelegacionesID_DELEGACION: TIBStringField;
    QDelegacionesNOMBRE: TIBStringField;
    SDelegaciones: TDataSource;
    QDepartamentos: TIBDataSet;
    QDepartamentosID_DEPARTAMENTO: TIBStringField;
    QDepartamentosNOMBRE: TIBStringField;
    SDepartamentos: TDataSource;
    QSecciones: TIBDataSet;
    QSeccionesID_SECCION: TIBStringField;
    QSeccionesNOMBRE: TIBStringField;
    SSecciones: TDataSource;
    QProyectos: TIBDataSet;
    QProyectosID_PROYECTO: TIBStringField;
    QProyectosNOMBRE: TIBStringField;
    SProyectos: TDataSource;
    QInfBalExplo: TClientDataSet;
    QInfBalExploFECHAINICIAL: TDateTimeField;
    QInfBalExploFECHAFINAL: TDateTimeField;
    QInfBalExploFECHAIMPRESION: TDateTimeField;
    QInfBalExploLINEA: TFloatField;
    QInfBalExploCUENTA: TIntegerField;
    QInfBalExploDESCRIPCION: TStringField;
    QInfBalExploSALDOACTUAL: TFloatField;
    QInfBalExploSALDOANTERIOR: TFloatField;
    QInfBalExploSALDODIF: TFloatField;
    QInfBalExploTANTOACTUAL: TFloatField;
    QInfBalExploTANTOANTERIOR: TFloatField;
    QInfBalExploTANTODIF: TFloatField;
    QInfBalExploCUENTA_ANALITICA: TStringField;
    QInfBalExploDESC_ANALITICA: TStringField;
    sInfBalExplo: TDataSource;
    FRBalanceExplotacion: TfrxReport;
    PDFExport: TfrxPDFExport;
    FRXEnlace1: TfrxDBDataset;
    FRBalanceExplotacionAnalitica: TfrxReport;
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TBalExplotacionModel = class(TCustomModel)
  private
    DM   :TDataModuleBalExplotacion;
    FSubInformesImpresos :set of 1..255;
    FNombreInforme       :string;

    procedure ConectarBDEmpresa(ACD_EMPRESA :string; AConnection :TIBDataBase);

    function Pertenece_Analitica(ADataBase    :TIBDatabase;
                                 AAnalitica   ,
                                 ACuentaDesde ,
                                 ACuentaHasta ,
                                 ADelegacion  ,
                                 ADepartamento,
                                 ASeccion     ,
                                 AProyecto    :string): Boolean;

    procedure LanzarListado(Nombre_Archivo          :string;
                            prmDataSource           :TDataSource;
                            Recorrer                :Boolean = True;
                            SaltoPagina             :Boolean = False;
                            ImprimirSoloRegActual   :Boolean = False;
                            MostrarCamposOpcionales :Boolean = True);

  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;

    procedure ProcessBalanceExplotacion(AConnection     :TIBDatabase;
                                        AConsolida      :TIBDatabase;
                                        AFechaDesde     :TDateTime;
                                        AFechaHasta     :TDateTime;
                                        AFechaImprimir  :TDateTime;
                                        ATipoConcepto   :Char;
                                        ATipoInforme    :Char;
                                        AConSaldosEjAnt :Boolean;
                                        ACuentaDesde    :string;
                                        ACuentaHasta    :string;
                                        ADelegacion     :string;
                                        ADepartamento   :string;
                                        ASeccion        :string;
                                        AProyecto       :string;
                                        AEmpresas       :TCheckListBox);

  end;

var
  DataModuleBalExplotacion: TDataModuleBalExplotacion;

implementation

uses System.Math, System.Variants, System.DateUtils, System.StrUtils,
     VCL.Forms,
     IBX.IBQuery,
     DM, DMControl, Globales, UEspere;

{$R *.dfm}

{ TBalExplotacionModel }

procedure TBalExplotacionModel.ProcessBalanceExplotacion(AConnection     :TIBDatabase;
                                                         AConsolida      :TIBDatabase;
                                                         AFechaDesde     :TDateTime;
                                                         AFechaHasta     :TDateTime;
                                                         AFechaImprimir  :TDateTime;
                                                         ATipoConcepto   :Char;
                                                         ATipoInforme    :Char;
                                                         AConSaldosEjAnt :Boolean;
                                                         ACuentaDesde    :string;
                                                         ACuentaHasta    :string;
                                                         ADelegacion     :string;
                                                         ADepartamento   :string;
                                                         ASeccion        :string;
                                                         AProyecto       :string;
                                                         AEmpresas       :TCheckListBox);
var Empresas          :TStringList;
    InProgress        :TEspere;
    nImportes         :Double;
    I                 :Integer;
    aMeses            :array[1..12] of Double;
    CuentaAnalitica   :string;
    cCuenta           :string;
    lPrimero          :Boolean;
    nMesIni           :Integer;
    nMesFin           :Integer;
    nValorDif         :Double;
    QSelAnaliticas    :TIBQuery;
    QAnaliticas       :TClientDataSet;
    QCuentas          :TIBQuery;
    QDiario           :TIBQuery;
    nIngresosActual   :Double;
    nIngresosAnterior :Double;
    nGastosActual     :Double;
    nGastosAnterior   :Double;
    nIngresos         :Double;
    nGastos           :Double;
    FechaInicial      :TDateTime;
    FechaFinal        :TDateTime;
    FechaImpresion    :TDateTime;
    IndCons           :Integer;
begin
   //InProgress := InProgressView('Generando balance ...');
   //try
      Empresas := TStringList.Create;
      Empresas.Clear;
      for i := 0 to AEmpresas.Items.Count - 1 do begin
         if AEmpresas.Checked[i] then begin
            Empresas.Add(AEmpresas.Items[i]);
         end;
      end;

      // Selección de datos de cuenta
      QCuentas := TIBQuery.Create(nil);
      QCuentas.Database := AConnection;
      QCuentas.SQL.Add('SELECT * FROM CUENTAS');
      QCuentas.SQL.Add('WHERE CUENTA >= :CUENTA1 AND CUENTA <= :CUENTA2');
      QCuentas.Prepare;

      // Selección de datos de cuentas analíticas
      QAnaliticas := TClientDataSet.Create(nil);
      //QAnaliticas.Database := AConnection;
      QAnaliticas.Active := False;
      QAnaliticas.FieldDefs.Clear;
      QAnaliticas.FieldDefs.Add('CUENTA', ftString, 10, False);
      QAnaliticas.FieldDefs.Add('NOMBRE', ftString, 50, False);
      QAnaliticas.CreateDataSet;
      QAnaliticas.Active := True;
      QAnaliticas.Append;
      QAnaliticas.Edit;
      QAnaliticas.FieldByName('CUENTA').AsString := '';
      QAnaliticas.FieldByName('NOMBRE').AsString := '';
      QAnaliticas.Post;

      QSelAnaliticas := TIBQuery.Create(nil);
      QSelAnaliticas.Close;
      QSelAnaliticas.SQL.Clear;
      QSelAnaliticas.Database := AConnection;
      QSelAnaliticas.SQL.Add('SELECT CUENTA, NOMBRE FROM ANALITICAS');
      QSelAnaliticas.SQL.Add('ORDER BY 1');
      QSelAnaliticas.Open;
      while not QSelAnaliticas.EOF do begin
         QAnaliticas.Append;
         QAnaliticas.FieldByName('CUENTA').AsString := QSelAnaliticas.FieldByName('CUENTA').AsString;
         QAnaliticas.FieldByName('NOMBRE').AsString := QSelAnaliticas.FieldByName('NOMBRE').AsString;
         QAnaliticas.post;
         QSelAnaliticas.Next;
      end;
      
      lPrimero          := True;
      nIngresosActual   := 0;
      nIngresosAnterior := 0;
      nGastosActual     := 0;
      nGastosAnterior   := 0;

      FechaInicial   := AFechaDesde;
      FechaFinal     := AFechaHasta;
      FechaImpresion := AFechaImprimir;
      Config.SetAccountingType(ATipoConcepto);
      Config.ReportCurrency := 'E';

      nMesIni := MonthOf(AFechaDesde);
      nMesFin := MonthOf(AFechaHasta);

      // Siempre compara con concepto normal que son los que se ponen al cierre
      if AConSaldosEjAnt then ATipoConcepto := 'N';

      // Selección de datos de diario
      QDiario := TIBQuery.Create(nil);
      QDiario.Close;
      QDiario.SQL.Clear;
      QDiario.Database := AConnection;
      QDiario.SQL.Add('SELECT D.SUBCUENTA         ,           ');
      QDiario.SQL.Add('       SUM(D.IMPORTE) SUMA ,           ');
      QDiario.SQL.Add('       D.DEBEHABER         ,           ');
      QDiario.SQL.Add('       D.CUENTA_ANALITICA              ');
      if ATipoConcepto <> 'T' then QDiario.SQL.Add(', T.TIPOCONTABILIDAD ');
      QDiario.SQL.Add('FROM DIARIO    D,                      ');
      QDiario.SQL.Add('     CONCEPTOS T                       ');
      QDiario.SQL.Add('WHERE D.SUBCUENTA    >= :SUBCUENTA1    ');
      QDiario.SQL.Add('AND   D.SUBCUENTA    <= :SUBCUENTA2    ');
      QDiario.SQL.Add('AND   D.ID_CONCEPTOS =  T.ID_CONCEPTOS ');
      QDiario.SQL.Add('AND   T.TIPOCONCEPTO <> "C"            ');
      QDiario.SQL.Add('AND   D.FECHA        >= :FECHA1        ');
      QDiario.SQL.Add('AND   D.FECHA        <= :FECHA2        ');
      QDiario.SQL.Add('GROUP BY D.SUBCUENTA       ,           ');
      QDiario.SQL.Add('         D.DEBEHABER       ,           ');
      QDiario.SQL.Add('         D.CUENTA_ANALITICA            ');
      if ATipoConcepto <> 'T' then begin
         QDiario.SQL.Add(', T.TIPOCONTABILIDAD                ');
      end;
      QDiario.Prepare;

      // Carga de datos a partir de Cuentas
      // 1º Carga de 700
      QCuentas.Close;
      QCuentas.ParamByName('CUENTA1').AsString := '700';
      QCuentas.ParamByName('CUENTA2').AsString := '799';
      QCuentas.Open;

      DM.QInfBalExplo.EmptyDataset;
      if ATipoInforme = 'N' then begin
         while not QCuentas.EOF do begin
            DM.QInfBalExplo.Append;
            DM.QInfBalExploLINEA.AsInteger           := 1000 + StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
            DM.QInfBalExploCUENTA.AsInteger          := StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
            DM.QInfBalExploDESCRIPCION.AsString      := QCuentas.FieldByName('DESCRIPCION').AsString;
            { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado.}
            DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
            DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
            DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
            DM.QInfBalExplo.Post;
            QCuentas.Next;
         end;
      end
      else begin
         QAnaliticas.First;
         while not QAnaliticas.EOF do begin
            QCuentas.First;
            while not QCuentas.EOF do begin
               DM.QInfBalExplo.Append;
               DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
               DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
               DM.QInfBalExploLINEA.AsInteger           := 1000 + StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
               DM.QInfBalExploCUENTA.AsInteger          := StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
               DM.QInfBalExploDESCRIPCION.AsString      := QCuentas.FieldByName('DESCRIPCION').AsString;
               { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
               DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
               DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
               DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
               DM.QInfBalExplo.Post;
               QCuentas.Next;
            end;
            QAnaliticas.Next;
         end;
      end;

      // 2º Carga de 600
      QCuentas.Close;
      QCuentas.ParamByName('Cuenta1').AsString := '600';
      QCuentas.ParamByName('Cuenta2').AsString := '699';
      QCuentas.Open;
      if ATipoInforme = 'N' then begin
         while not QCuentas.EOF do begin
            DM.QInfBalExplo.Append;
            DM.QInfBalExploLINEA.AsInteger      := 3000 + StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
            DM.QInfBalExploCUENTA.AsInteger     := StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));;
            DM.QInfBalExploDESCRIPCION.AsString := QCuentas.FieldByName('DESCRIPCION').AsString;
            DM.QInfBalExplo.Post;
            QCuentas.Next;
         end;
      end
      else begin
         QAnaliticas.First;
         while not QAnaliticas.EOF do begin
            QCuentas.First;
            while not QCuentas.EOF do begin
               DM.QInfBalExplo.Append;
               DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
               DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
               DM.QInfBalExploLINEA.AsInteger           := 3000 + StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
               DM.QInfBalExploCUENTA.AsInteger          := StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
               DM.QInfBalExploDESCRIPCION.AsString      := QCuentas.FieldByName('DESCRIPCION').AsString;
               DM.QInfBalExplo.Post;
               QCuentas.Next;
            end;
            QAnaliticas.Next;
         end;
      end;

      // Cambio de indice para las busquedas
      if ATipoInforme = 'N' then DM.QInfBalExplo.IndexFieldNames := 'CUENTA'
                            else DM.QInfBalExplo.IndexFieldNames := 'CUENTA_ANALITICA;CUENTA';

      // Carga de datos 700
      QDiario.Close;
      QDiario.Database    := AConnection;
      //QDiario.Transaction := AConnection.DefaultTransaction; {DmRef.BDContab.DefaultTransaction;}
      QDiario.ParamByName('SUBCUENTA1').AsString   := '7' + DupeString('0', Config.MaxLengthAccounts - 1);
      QDiario.ParamByName('SUBCUENTA2').AsString   := '7' + DupeString('9', Config.MaxLengthAccounts - 1);
      QDiario.ParamByName('FECHA1'    ).AsDateTime := AFechaDesde;
      QDiario.ParamByName('FECHA2'    ).AsDateTime := AFechaHasta;
      QDiario.Open;

      while not QDiario.EOF do begin
         if (ATipoConcepto <> 'T') and (QDiario.FieldByName('tIPOcONTABILIDAD').AsString <> ATipoConcepto) then begin
            QDiario.Next;
            Continue;
         end;

         if not Pertenece_Analitica(AConnection,
                                    QDiario.FieldByName('CUENTA_ANALITICA').AsString,
                                    ACuentaDesde,
                                    ACuentaHasta,
                                    ADelegacion,
                                    ADepartamento,
                                    ASeccion,
                                    AProyecto) then begin
            QDiario.Next;
            Continue;
         end;

         cCuenta         := Copy(QDiario.FieldByName('SUBCUENTA').AsString, 1, 3);
         CuentaAnalitica := QDiario.FieldByName('CUENTA_ANALITICA').AsString;

         DM.QInfBalExplo.First;
         if ATipoInforme = 'N' then DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([cCuenta]), [])
                               else DM.QInfBalExplo.Locate('CUENTA_ANALITICA;CUENTA', VarArrayOf([CuentaAnalitica, cCuenta]), []);

         DM.QInfBalExplo.Edit;
         if QDiario.FieldByName('DEBEHABER').AsString = 'D' then begin
            DM.QInfBalExploSALDOACTUAL.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat - QDiario.FieldByName('SUMA').AsFloat;
            nIngresosActual := nIngresosActual - QDiario.FieldByName('SUMA').AsFloat;
         end
         else begin
            DM.QInfBalExploSALDOACTUAL.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat + QDiario.FieldByName('SUMA').AsFloat;
            nIngresosActual := nIngresosActual + QDiario.FieldByName('SUMA').AsFloat;
         end;
         { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
         DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
         DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
         DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
         DM.QInfBalExplo.Post;
         QDiario.Next;
      end; // QDiario


      // Saldo Anterior para las cuentas de ingresos
      if AConSaldosEjAnt then begin
         QCuentas.Close;
         QCuentas.ParamByName('Cuenta1').AsString := '700';
         QCuentas.ParamByName('Cuenta2').AsString := '799';
         QCuentas.Open;
         while not QCuentas.EOF do begin
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
            nImportes  := 0;
            for i := nMesIni to nMesFin do begin
               nImportes := nImportes + aMeses[i];
            end;

            DM.QInfBalExplo.First;
            DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([Trim(QCuentas.FieldByName('CUENTA').AsString)]), []);

            DM.QInfBalExplo.Edit;
            DM.QInfBalExploSALDOANTERIOR.AsFloat := Abs(nImportes);
            nIngresosAnterior := nIngresosAnterior + DM.QInfBalExploSALDOANTERIOR.AsFloat;

            DM.QInfBalExploSALDODIF.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat - DM.QInfBalExploSALDOANTERIOR.AsFloat;
            { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado.}
            DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
            DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
            DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
            DM.QInfBalExplo.Post;

            QCuentas.Next;
         end; // QCuentas
      end; // CbAnterior

      // Empresas consolidadas
      for IndCons := 0 to Empresas.Count - 1 do begin
         ConectarBDEmpresa(Empresas.Strings[IndCons], AConsolida);
         if ATipoInforme = 'N' then DM.QInfBalExplo.IndexFieldNames := 'CUENTA'
                               else DM.QInfBalExplo.IndexFieldNames := 'CUENTA_ANALITICA;CUENTA';

         {Juan C.Cilleruelo 18/04/2017}
         {$Message Warn 'There is a problem with transactions when the user try to consolidate more dan one enterprise, with the current one'}


         // Carga de datos a partir de Cuentas
         // 1º Carga de 700
         QCuentas.Close;
         QCuentas.Database    := AConsolida;                    {DmRef.IBDConsolida;}
         //QCuentas.Transaction := AConsolida.DefaultTransaction; //DmRef.IBDConsolida.DefaultTransaction;
         QCuentas.ParamByName('Cuenta1').AsString := '700';
         QCuentas.ParamByName('Cuenta2').AsString := '799';
         QCuentas.Open;

         if ATipoInforme = 'N' then begin
            while not QCuentas.EOF do begin
               DM.QInfBalExplo.First;
               if not DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString))]), []) then begin
                  DM.QInfBalExplo.Append;
                  DM.QInfBalExploLINEA.AsInteger           := 1000 + StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
                  DM.QInfBalExploCUENTA.AsInteger          := StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
                  DM.QInfBalExploDESCRIPCION.AsString      := QCuentas.FieldByName('DESCRIPCION').AsString;
                  { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
                  DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
                  DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
                  DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
                  DM.QInfBalExplo.Post;
               end;
               QCuentas.Next;
            end;
         end
         else begin
            QAnaliticas.First;
            while not QAnaliticas.EOF do begin
               QCuentas.First;
               while not QCuentas.EOF do begin
                  DM.QInfBalExplo.First;
                  if not DM.QInfBalExplo.Locate('CUENTA;CUENTA_ANALITICA', VarArrayOf([QAnaliticas.FieldByName('CUENTA').AsString, StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString))]), []) then begin
                     DM.QInfBalExplo.Append;
                     DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
                     DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
                     DM.QInfBalExploLINEA.AsInteger           := 1000 + StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
                     DM.QInfBalExploCUENTA.AsInteger          := StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
                     DM.QInfBalExploDESCRIPCION.AsString      := QCuentas.FieldByName('DESCRIPCION').AsString;
                     { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
                     DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
                     DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
                     DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
                     DM.QInfBalExplo.Post;
                  end;
                  QCuentas.Next;
               end;
               QAnaliticas.Next;
            end;
         end;

         // 2º Carga de 600
         QCuentas.Close;
         QCuentas.Database    := AConsolida; {DmRef.IBDConsolida;}
         //Qcuentas.Transaction := AConsolida.DefaultTransaction;  {DmRef.IBDConsolida.DefaultTransaction;}
         QCuentas.ParamByName('Cuenta1').AsString := '600';
         QCuentas.ParamByName('Cuenta2').AsString := '699';
         QCuentas.Open;
         if ATipoInforme = 'N' then begin
            while not QCuentas.EOF do begin
               DM.QInfBalExplo.First;
               if not DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString))]), []) then begin
                  DM.QInfBalExplo.Append;
                  DM.QInfBalExploLINEA.AsInteger      := 3000 + StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
                  DM.QInfBalExploCUENTA.AsInteger     := StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
                  DM.QInfBalExploDESCRIPCION.AsString := QCuentas.FieldByName('DESCRIPCION').AsString;
                  DM.QInfBalExplo.Post;
               end;
               QCuentas.Next;
            end;
         end
         else begin
            QAnaliticas.First;
            while not QAnaliticas.EOF do begin
               QCuentas.First;
               while not QCuentas.EOF do begin
                  DM.QInfBalExplo.First;
                  if not DM.QInfBalExplo.Locate('CUENTA;CUENTA_ANALITICA', VarArrayOf([QAnaliticas.FieldByName('CUENTA').AsString, StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString))]), []) then begin
                     DM.QInfBalExplo.Append;
                     DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
                     DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
                     DM.QInfBalExploLINEA.AsInteger           := 3000 + StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
                     DM.QInfBalExploCUENTA.AsInteger          := StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString));
                     DM.QInfBalExploDESCRIPCION.AsString      := QCuentas.FieldByName('DESCRIPCION').AsString;
                     DM.QInfBalExplo.Post;
                  end;
                  QCuentas.Next;
               end;
               QAnaliticas.Next;
            end;
         end;

         // Cambio de indice para las busquedas
         if ATipoInforme = 'N' then DM.QInfBalExplo.IndexFieldNames := 'CUENTA'
                               else DM.QInfBalExplo.indexfieldnames := 'CUENTA_ANALITICA;CUENTA';

         // Carga de datos 700
         QDiario.Close;
         QDiario.Database    := AConsolida; {DmRef.IBDConsolida;}
         //QDiario.Transaction := AConsolida.DefaultTransaction;  {DmRef.IBDConsolida.DefaultTransaction;}
         QDiario.ParamByName('Subcuenta1').AsString := '7' + DupeString('0', Config.MaxLengthAccounts - 1);
         QDiario.ParamByName('Subcuenta2').AsString := '7' + DupeString('9', Config.MaxLengthAccounts - 1);
         QDiario.ParamByName('Fecha1').AsDateTime := AFechaDesde;
         QDiario.ParamByName('Fecha2').AsDateTime := AFechaHasta;
         QDiario.Open;
         while not QDiario.EOF do begin
            if (ATipoConcepto <> 'T') and (QDiario.FieldByName('TipoContabilidad').AsString <> ATipoConcepto) then begin
               QDiario.Next;
               Continue;
            end;
            if not Pertenece_Analitica(AConsolida   ,
                                       QDiario.FieldByName('CUENTA_ANALITICA').AsString,
                                       ACuentaDesde ,
                                       ACuentaHasta ,
                                       ADelegacion  ,
                                       ADepartamento,
                                       ASeccion     ,
                                       AProyecto) then begin
               QDiario.Next;
               Continue;
            end;

            cCuenta         := Trim(Copy(QDiario.FieldByName('SUBCUENTA').AsString, 1, 3));
            CuentaAnalitica := QDiario.FieldByName('CUENTA_ANALITICA').AsString;

            DM.QInfBalExplo.First;
            if ATipoInforme = 'N' then DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([cCuenta]), [])
                                  else DM.QInfBalExplo.Locate('CUENTA_ANALITICA;CUENTA', VarArrayOf([CuentaAnalitica, StrToInt(cCuenta)]), []);

            DM.QInfBalExplo.Edit;
            if QDiario.FieldByName('Debehaber').AsString = 'D' then begin
               DM.QInfBalExploSALDOACTUAL.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat - QDiario.FieldByName('SUMA').AsFloat;
               nIngresosActual := nIngresosActual - QDiario.FieldByName('SUMA').AsFloat;
            end
            else begin
               DM.QInfBalExploSALDOACTUAL.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat + QDiario.FieldByName('SUMA').AsFloat;
               nIngresosActual := nIngresosActual + QDiario.FieldByName('SUMA').AsFloat;
            end;
            { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado.}
            DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
            DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
            DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
            DM.QInfBalExplo.Post;
            QDiario.Next;
         end; // QDiario

         // Saldo Anterior para las cuentas de ingresos
         if AConSaldosEjAnt then begin
            QCuentas.Close;
            QCuentas.Database    := AConsolida; {DmRef.IBDConsolida;}
            //QCuentas.Transaction := AConsolida.DefaultTransaction;  {DmRef.IBDConsolida.DefaultTransaction;}
            QCuentas.ParamByName('Cuenta1').AsString := '700';
            QCuentas.ParamByName('Cuenta2').AsString := '799';
            QCuentas.Open;
            while not QCuentas.EOF do begin
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
               nImportes  := 0;
               for i := nMesIni to nMesFin do begin
                  nImportes := nImportes + aMeses[i];
               end;

               DM.QInfBalExplo.First;
               DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString))]), []);
               DM.QInfBalExplo.Edit;
               DM.QInfBalExploSALDOANTERIOR.AsFloat := DM.QInfBalExploSALDOANTERIOR.AsFloat + Abs(nImportes);
               nIngresosAnterior := nIngresosAnterior + Abs(nImportes);

               DM.QInfBalExploSALDODIF.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat - DM.QInfBalExploSALDOANTERIOR.AsFloat;
               { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
               DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
               DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
               DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
               DM.QInfBalExplo.Post;

               QCuentas.Next;
            end; // QCuentas
         end; // CbAnterior
      end;

      if ATipoInforme = 'N' then begin
         // Linea en blanco
         DM.QInfBalExplo.Append;
         DM.QInfBalExploLINEA.AsInteger      := 2001;
         DM.QInfBalExploDESCRIPCION.AsString := ' ';
         DM.QInfBalExplo.Post;
         // Creacion de Registro Acumulador ingresos
         DM.QInfBalExplo.Edit;
         DM.QInfBalExploLINEA.AsInteger := 2002;
         DM.QInfBalExploDESCRIPCION.AsString := '  ====  TOTAL INGRESOS ====';
         nIngresosActual := RoundTo(nIngresosActual, -3);
         DM.QInfBalExploSALDOACTUAL.AsFloat := nIngresosActual;
         if AConSaldosEjAnt then begin
            nIngresosAnterior := RoundTo(nIngresosAnterior, -3);
            DM.QInfBalExploSALDOANTERIOR.AsFloat := nIngresosAnterior;
            DM.QInfBalExploSALDODIF.AsFloat      := nIngresosActual - nIngresosAnterior;
         end;
         { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado.}
         DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
         DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
         DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
         DM.QInfBalExplo.Post;
         // Linea en blanco
         DM.QInfBalExplo.Append;
         DM.QInfBalExploLINEA.AsInteger      := 2003;
         DM.QInfBalExploDESCRIPCION.AsString := ' ';
         DM.QInfBalExplo.Post;
      end;

      // Carga de datos 600
      QDiario.Close;
      QDiario.Database    := AConnection;
      //QDiario.Transaction := AConnection.DefaultTransaction; { DMRef.BDContab.DefaultTransaction;}
      QDiario.ParamByName('Subcuenta1').AsString := '6' + DupeString('0', Config.MaxLengthAccounts - 1);
      QDiario.ParamByName('Subcuenta2').AsString := '6' + DupeString('9', Config.MaxLengthAccounts - 1);
      QDiario.ParamByName('Fecha1').AsDateTime := AFechaDesde;
      QDiario.ParamByName('Fecha2').AsDateTime := AFechaHasta;
      QDiario.Open;
      while not QDiario.EOF do begin
         if (ATipoConcepto <> 'T') and (QDiario.FieldByName('TipoContabilidad').AsString <> ATipoConcepto) then begin
            QDiario.Next;
            Continue;
         end;
         if not Pertenece_Analitica(AConnection,
                                    QDiario.FieldByName('CUENTA_ANALITICA').AsString,
                                    ACuentaDesde,
                                    ACuentaHasta,
                                    ADelegacion,
                                    ADepartamento,
                                    ASeccion,
                                    AProyecto) then begin
            QDiario.Next;
            Continue;
         end;

         cCuenta         := copy(QDiario.FieldByName('Subcuenta').AsString, 1, 3);
         CuentaAnalitica := QDiario.FieldByName('CUENTA_ANALITICA').AsString;

         DM.QInfBalExplo.First;
         if ATipoInforme = 'N' then DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([cCuenta]), [])
                               else DM.QInfBalExplo.Locate('CUENTA_ANALITICA;CUENTA', VarArrayOf([CuentaAnalitica, StrToInt(cCuenta)]), []);

         DM.QInfBalExplo.Edit;
         if QDiario.FieldByName('Debehaber').AsString = 'D' then   begin
            DM.QInfBalExploSALDOACTUAL.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat + QDiario.FieldByName('SUMA').AsFloat;
            nGastosActual := nGastosActual + QDiario.FieldByName('SUMA').AsFloat;
         end
         else begin
            DM.QInfBalExploSALDOACTUAL.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat - QDiario.FieldByName('SUMA').AsFloat;
            nGastosActual := nGastosActual - QDiario.FieldByName('SUMA').AsFloat;
         end;

         if nIngresosActual = 0 then   begin
            DM.QInfBalExploTANTOACTUAL.AsFloat := 0;
         end
         else begin
            DM.QInfBalExploTANTOACTUAL.AsFloat := (DM.QInfBalExploSALDOACTUAL.AsFloat * 100) / nIngresosActual;
         end;

         { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
         DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
         DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
         DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
         QDiario.Next;
      end;

      // Saldo Anterior debo sacarlo de la cuenta
      if AConSaldosEjAnt then begin
         QCuentas.Close;
         QCuentas.Database    := AConnection;
         //QCuentas.Transaction := AConnection.DefaultTransaction;// DmRef.BDContab.DefaultTransaction;
         QCuentas.ParamByName('Cuenta1').AsString := '600';
         QCuentas.ParamByName('Cuenta2').AsString := '699';
         QCuentas.Open;
         while (not QCuentas.EOF) do begin
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

            nImportes := 0;
            for i := nMesIni to nMesFin do begin
               nImportes := nImportes + aMeses[i];
            end;
            DM.QInfBalExplo.First;
            DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString))]), []); {XXXXXXX}
            DM.QInfBalExplo.Edit;
            DM.QInfBalExploSALDOANTERIOR.AsFloat := nImportes;
            nGastosAnterior := nGastosAnterior + nImportes;

            DM.QInfBalExploSALDODIF.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat - DM.QInfBalExploSALDOANTERIOR.AsFloat;
            { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
            DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
            DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
            DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
            DM.QInfBalExplo.Post;
            QCuentas.Next;
         end; // Qcuentas
              // Poner Tantos por ciento

         DM.QInfBalExplo.First;     
         DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([600]), []);

         while (not DM.QInfBalExplo.EOF) and (DM.QInfBalExploCUENTA.AsInteger < 700) do begin
            DM.QInfBalExplo.Edit;
            if nIngresosAnterior = 0 then begin
               DM.QInfBalExploTANTOANTERIOR.AsFloat := 0;
            end
            else begin
               DM.QInfBalExploTANTOANTERIOR.AsFloat := (DM.QInfBalExploSALDOANTERIOR.AsFloat * 100) / nIngresosAnterior;
            end;

            DM.QInfBalExploTANTODIF.AsFloat := DM.QInfBalExploTANTOACTUAL.AsFloat - DM.QInfBalExploTANTOANTERIOR.AsFloat;

            { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
            DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
            DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
            DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
            DM.QInfBalExplo.Post;
            DM.QInfBalExplo.Next;
         end;
      end; // Saldo anterior

      // Empresas consolidadas
      for IndCons := 0 to Empresas.Count - 1 do begin
         ConectarBDEmpresa(Empresas.Strings[IndCons], AConsolida);
         if ATipoInforme = 'N' then DM.QInfBalExplo.IndexFieldNames := 'CUENTA'
                               else DM.QInfBalExplo.IndexFieldNames := 'CUENTA_ANALITICA;CUENTA';
         
         // Carga de datos 600
         QDiario.Close;
         QDiario.Database    := AConsolida; {DmRef.IBDConsolida;}
         //QDiario.Transaction := AConsolida.DefaultTransaction;  {DmRef.IBDConsolida.DefaultTransaction;}
         QDiario.parambyname('Subcuenta1').AsString := '6' + DupeString('0', Config.MaxLengthAccounts - 1);
         QDiario.parambyname('Subcuenta2').AsString := '6' + DupeString('9', Config.MaxLengthAccounts - 1);
         QDiario.parambyname('Fecha1').AsDateTime := AFechaDesde;
         QDiario.parambyname('Fecha2').AsDateTime := AFechaHasta;
         QDiario.Open;
         while not QDiario.EOF do begin
            if (ATipoConcepto <> 'T') and (QDiario.FieldByName('TipoContabilidad').AsString <> ATipoConcepto) then begin
               QDiario.Next;
               Continue;
            end;
            if not Pertenece_Analitica(AConsolida,
                                       QDiario.FieldByName('CUENTA_ANALITICA').AsString,
                                       ACuentaDesde,
                                       ACuentaHasta,
                                       ADelegacion,
                                       ADepartamento,
                                       ASeccion,
                                       AProyecto) then begin
               QDiario.Next;
               Continue;
            end;

            cCuenta         := Copy(QDiario.FieldByName('Subcuenta').AsString, 1, 3);
            CuentaAnalitica := QDiario.FieldByName('CUENTA_ANALITICA').AsString;

            DM.QInfBalExplo.First;
            if ATipoInforme = 'N' then DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([cCuenta]), [])
                                  else DM.QInfBalExplo.Locate('CUENTA_ANALITICA;CUENTA', VarArrayOf([CuentaAnalitica, StrToInt(cCuenta)]), []);

            DM.QInfBalExplo.Edit;
            if QDiario.FieldByName('Debehaber').AsString = 'D' then   begin
               DM.QInfBalExploSALDOACTUAL.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat + QDiario.FieldByName('SUMA').AsFloat;
               nGastosActual := nGastosActual + QDiario.FieldByName('SUMA').AsFloat;
            end
            else begin
               DM.QInfBalExploSALDOACTUAL.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat - QDiario.FieldByName('SUMA').AsFloat;
               nGastosActual := nGastosActual - QDiario.FieldByName('SUMA').AsFloat;
            end;

            if nIngresosActual = 0 then   begin
               DM.QInfBalExploTANTOACTUAL.AsFloat := 0;
            end
            else begin
               DM.QInfBalExploTANTOACTUAL.AsFloat := (DM.QInfBalExploSALDOACTUAL.AsFloat * 100) / nIngresosActual;
            end;
            { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
            DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
            DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
            DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
            QDiario.Next;
         end;

         // Saldo Anterior debo sacarlo de la cuenta
         if AConSaldosEjAnt then begin
            QCuentas.Close;
            QCuentas.Database    := AConsolida; {DmRef.IBDConsolida;}
            //QCuentas.Transaction := AConsolida.DefaultTransaction;  {DmRef.IBDConsolida.DefaultTransaction;}
            QCuentas.ParamByName('Cuenta1').AsString := '600';
            QCuentas.ParamByName('Cuenta2').AsString := '699';
            QCuentas.Open;
            while (not QCuentas.EOF) do begin
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

               nImportes := 0;
               for i := nMesIni to nMesFin do begin
                  nImportes := nImportes + aMeses[i];
               end;
               DM.QInfBalExplo.First;
               DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([StrToInt(Trim(QCuentas.FieldByName('CUENTA').AsString))]), []);
               DM.QInfBalExplo.Edit;
               DM.QInfBalExploSALDOANTERIOR.AsFloat := DM.QInfBalExploSALDOANTERIOR.AsFloat + nImportes;
               nGastosAnterior := nGastosAnterior + nImportes;

               DM.QInfBalExploSALDODIF.AsFloat := DM.QInfBalExploSALDOACTUAL.AsFloat - DM.QInfBalExploSALDOANTERIOR.AsFloat;
               { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
               DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
               DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
               DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
               DM.QInfBalExplo.Post;
               QCuentas.Next;
            end; // Qcuentas
                 // Poner Tantos por ciento

            DM.QInfBalExplo.First;
            DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([600]), []);

            while (not DM.QInfBalExplo.EOF) and (DM.QInfBalExploCUENTA.AsInteger < 700) do begin
               DM.QInfBalExplo.Edit;
               if nIngresosAnterior = 0 then begin
                  DM.QInfBalExploTANTOANTERIOR.AsFloat := 0;
               end
               else begin
                  DM.QInfBalExploTANTOANTERIOR.AsFloat := (DM.QInfBalExploSALDOANTERIOR.AsFloat * 100) / nIngresosAnterior;
               end;

               DM.QInfBalExploTANTODIF.AsFloat := DM.QInfBalExploTANTOACTUAL.AsFloat - DM.QInfBalExploTANTOANTERIOR.AsFloat;
               { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado.}
               DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
               DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
               DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
               DM.QInfBalExplo.Post;
               DM.QInfBalExplo.Next;
            end;
         end; // Saldo anterior
      end;

      if ATipoInforme = 'N' then begin
         // Linea en blanco
         DM.QInfBalExplo.Append;
         DM.QInfBalExploLINEA.AsInteger      := 4001;
         DM.QInfBalExploDESCRIPCION.AsString := ' ';
         DM.QInfBalExplo.Post;
         // Creacion de Registro Acumulador gastos
         DM.QInfBalExplo.Append;
         DM.QInfBalExploLINEA.AsInteger := 4002;
         DM.QInfBalExploDESCRIPCION.AsString := '  ====  TOTAL GASTOS ====';
         nGastosActual := RoundTo(nGastosActual, -3);
         DM.QInfBalExploSALDOACTUAL.AsFloat := nGastosActual;
         if nIngresosActual = 0 then begin
            DM.QInfBalExploTANTOACTUAL.AsFloat := 0;
         end
         else begin
            DM.QInfBalExploTANTOACTUAL.AsFloat := (nGastosActual * 100) / nIngresosActual;
         end;
         if AConSaldosEjAnt then begin
            nGastosAnterior := RoundTo(nGastosAnterior, -3);
            DM.QInfBalExploSALDODIF.AsFloat      := nGastosActual - nGastosAnterior;
            DM.QInfBalExploSALDOANTERIOR.AsFloat := nGastosAnterior;
            if nIngresosAnterior = 0 then begin
               DM.QInfBalExploTANTOANTERIOR.AsFloat := 0;
            end
            else begin
               DM.QInfBalExploTANTOANTERIOR.AsFloat := (nGastosAnterior * 100) / nIngresosAnterior;
            end;

            DM.QInfBalExploTANTODIF.AsFloat := DM.QInfBalExploTANTOACTUAL.AsFloat - DM.QInfBalExploTANTOANTERIOR.AsFloat;
            nValorDif := DM.QInfBalExploTANTODIF.AsFloat;
         end;
         { Almacenar el intervalo de fechas y la fecha de impresión para incluirlas en la descripción del listado. }
         DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
         DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
         DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
         DM.QInfBalExplo.Post;

         // Linea en blanco
         DM.QInfBalExplo.Append;
         DM.QInfBalExploLINEA.AsInteger      := 4003;
         DM.QInfBalExploDESCRIPCION.AsString := ' ';
         DM.QInfBalExplo.Post;
         // Linea en blanco
         DM.QInfBalExplo.Append;
         DM.QInfBalExploLINEA.AsInteger      := 4004;
         DM.QInfBalExploDESCRIPCION.AsString := ' ';
         DM.QInfBalExplo.Post;
         // Diferencia beneficios/perdidas
         DM.QInfBalExplo.Append;
         DM.QInfBalExploLINEA.AsInteger      := 4005;
         DM.QInfBalExploDESCRIPCION.AsString := '  ==== DIFE. BENEFICIOS/PERDIDAS ====';
         DM.QInfBalExploSALDOACTUAL.AsFloat  := nIngresosActual - nGastosActual;
         if nIngresosActual = 0 then begin
            DM.QInfBalExploTANTOACTUAL.AsFloat := 0;
         end
         else begin
            DM.QInfBalExploTANTOACTUAL.AsFloat := (DM.QInfBalExploSALDOACTUAL.AsFloat * 100) / nIngresosActual;
         end;

         if AConSaldosEjAnt then begin
            DM.QInfBalExploSALDOANTERIOR.AsFloat := nIngresosAnterior - nGastosAnterior;
            DM.QInfBalExploSALDODIF.AsFloat      := DM.QInfBalExploSALDOACTUAL.AsFloat - DM.QInfBalExploSALDOANTERIOR.AsFloat;

            if nIngresosAnterior = 0 then begin
               DM.QInfBalExploTANTOANTERIOR.AsFloat := 0;
            end
            else begin
               DM.QInfBalExploTANTOANTERIOR.AsFloat := (DM.QInfBalExploSALDOANTERIOR.AsFloat * 100) / nIngresosAnterior;
            end;

            DM.QInfBalExploTANTODIF.AsFloat := 100 - nValorDif;
         end;
         DM.QInfBalExplo.Post;
         // Linea en blanco
         DM.QInfBalExplo.Append;
         DM.QInfBalExploLINEA.AsInteger      := 4006;
         DM.QInfBalExploDESCRIPCION.AsString := ' ';
         DM.QInfBalExplo.Post;
      end
      else begin
         DM.QInfBalExplo.IndexFieldNames := 'CUENTA_ANALITICA';

         // Borrados de los registros que no tienen datos
         DM.QInfBalExplo.First;
         while not DM.QInfBalExplo.EOF do begin
            if (RoundTo((DM.QInfBalExploSALDOACTUAL.AsFloat + DM.QInfBalExploSALDOANTERIOR.AsFloat), -3) <> 0) or
               ((DM.QInfBalExploLINEA.AsInteger >= 2000) and (DM.QInfBalExploLINEA.AsInteger < 3000)) or
               ((DM.QInfBalExploLINEA.AsInteger >= 4000) and (DM.QInfBalExploLINEA.AsInteger < 5000)) then begin
               DM.QInfBalExplo.Next;
            end
            else begin
               DM.QInfBalExplo.Delete;
            end;
         end;
         DM.QInfBalExplo.First;

         QAnaliticas.First;
         while not QAnaliticas.EOF do begin
            nIngresos := 0;
            nGastos   := 0;
            DM.QInfBalExplo.First;
            if Trim(QAnaliticas.FieldByName('CUENTA').AsString) = '' then begin
               QAnaliticas.Next;
               Continue;
            end;
            if DM.QInfBalExplo.Locate('CUENTA', VarArrayOf([QAnaliticas.FieldByName('CUENTA').AsString]), []) then begin
               while not (DM.QInfBalExplo.EOF) and (DM.QInfBalExploCUENTA_ANALITICA.AsString = QAnaliticas.FieldByName('CUENTA').AsString) do begin
                  if (StrToInt(Trim(DM.QInfBalExploCUENTA.AsString)) >= 700) and
                     (StrToInt(Trim(DM.QInfBalExploCUENTA.AsString)) <= 799) then begin
                     nIngresos := nIngresos + DM.QInfBalExploSALDOACTUAL.AsFloat;
                  end
                  else
                  if (StrToInt(Trim(DM.QInfBalExploCUENTA.AsString)) >= 600) and
                     (StrToInt(Trim(DM.QInfBalExploCUENTA.AsString)) <= 699) then begin
                     nGastos := nGastos + DM.QInfBalExploSALDOACTUAL.AsFloat;
                  end;
                  DM.QInfBalExplo.Next;
               end;
               if nIngresos <> 0 then   begin
                  // Linea en blanco
                  DM.QInfBalExplo.Append;
                  DM.QInfBalExploLINEA.AsInteger           := 2001;
                  DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
                  DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
                  DM.QInfBalExploDESCRIPCION.AsString      := ' ';
                  DM.QInfBalExplo.Post;
               end;
               // Creacion de Registro Acumulador ingresos
               DM.QInfBalExplo.Append;
               DM.QInfBalExploLINEA.AsInteger           := 2002;
               DM.QInfBalExploDESCRIPCION.AsString      := '  ====  TOTAL INGRESOS ====';
               DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
               DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
               DM.QInfBalExploSALDOACTUAL.AsFloat       := RoundTo(nIngresos, -3);
               DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
               DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
               DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
               DM.QInfBalExplo.Post;
               // Linea en blanco
               DM.QInfBalExplo.Append;
               DM.QInfBalExploLINEA.AsInteger           := 2003;
               DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
               DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
               DM.QInfBalExploDESCRIPCION.AsString      := ' ';
               DM.QInfBalExplo.Post;
               if nGastos <> 0 then   begin
                  // Linea en blanco
                  DM.QInfBalExplo.Append;
                  DM.QInfBalExploLINEA.AsInteger           := 4001;
                  DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
                  DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
                  DM.QInfBalExploDESCRIPCION.AsString      := ' ';
                  DM.QInfBalExplo.Post;
               end;
               // Creacion de Registro Acumulador gastos
               DM.QInfBalExplo.Append;
               DM.QInfBalExploLINEA.AsInteger           := 4002;
               DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
               DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
               DM.QInfBalExploDESCRIPCION.AsString      := '  ====  TOTAL GASTOS ====';
               DM.QInfBalExploSALDOACTUAL.AsFloat       := RoundTo(nGastos, -3);
               if nIngresos = 0 then begin
                  DM.QInfBalExploTANTOACTUAL.AsFloat := 0;
               end
               else begin
                  DM.QInfBalExploTANTOACTUAL.AsFloat := (nGastos * 100) / nIngresos;
               end;

               DM.QInfBalExploFECHAINICIAL.AsDateTime   := FechaInicial;
               DM.QInfBalExploFECHAFINAL.AsDateTime     := FechaFinal;
               DM.QInfBalExploFECHAIMPRESION.AsDateTime := FechaImpresion;
               DM.QInfBalExplo.Post;
               
               // Linea en blanco
               DM.QInfBalExplo.Append;
               DM.QInfBalExploLINEA.AsInteger           := 4003;
               DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
               DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
               DM.QInfBalExploDESCRIPCION.AsString      := ' ';
               DM.QInfBalExplo.Post;
               // Diferencia beneficios/perdidas
               DM.QInfBalExplo.Append;
               DM.QInfBalExploLINEA.AsInteger           := 4005;
               DM.QInfBalExploCUENTA_ANALITICA.AsString := QAnaliticas.FieldByName('CUENTA').AsString;
               DM.QInfBalExploDESC_ANALITICA.AsString   := QAnaliticas.FieldByName('NOMBRE').AsString;
               DM.QInfBalExploDESCRIPCION.AsString      := '  ==== DIFE. BENEFICIOS/PERDIDAS ====';
               DM.QInfBalExploSALDOACTUAL.AsFloat       := nIngresos - nGastos;
               if nIngresos = 0 then begin
                  DM.QInfBalExploTANTOACTUAL.AsFloat := 0;
               end
               else begin
                  DM.QInfBalExploTANTOACTUAL.AsFloat := (DM.QInfBalExploSALDOACTUAL.AsFloat * 100) / nIngresos;
               end;
            end;
            QAnaliticas.Next;
         end;
      end;

      if ATipoInforme = 'N' then DM.QInfBalExplo.IndexFieldNames := 'LINEA'
                            else DM.QInfBalExplo.IndexFieldNames := 'CUENTA_ANALITICA;LINEA';

      // Borrados de los registros que no tienen datos
      DM.QInfBalExplo.First;
      while not DM.QInfBalExplo.EOF do begin
         if (RoundTo((DM.QInfBalExploSALDOACTUAL.AsFloat + DM.QInfBalExploSALDOANTERIOR.AsFloat), -3) <> 0) or
            ((DM.QInfBalExploLINEA.AsInteger >= 2000) and (DM.QInfBalExploLINEA.AsInteger < 3000)) or
            ((DM.QInfBalExploLINEA.AsInteger >= 4000) and (DM.QInfBalExploLINEA.AsInteger < 5000)) then begin
            DM.QInfBalExplo.Next;
         end
         else begin
            DM.QInfBalExplo.Delete;
         end;
      end;
      DM.QInfBalExplo.First;
      // fin de InfBalExplo

      QDiario.Free;
      QCuentas.Free;
      QAnaliticas.Free;
   //finally
      //InProgress.Free;
   //end;

   DM.PDFExport.Author          := 'senCille Accounting';
   DM.PDFExport.ShowDialog      := False;
   DM.PDFExport.OpenAfterExport := True;

   if ATipoInforme = 'N' then begin
      DM.PDFExport.FileName := 'BalanceExplotacion.pdf';
      DM.FRBalanceExplotacion.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FRBalanceExplotacion.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      DM.FRBalanceExplotacion.PrepareReport(True);
      DM.FRBalanceExplotacion.Export(DM.PDFExport);
   end
   else begin
      DM.PDFExport.FileName := 'BalanceExplotacionAnalitica.pdf';
      DM.FRBalanceExplotacionAnalitica.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FRBalanceExplotacionAnalitica.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      DM.FRBalanceExplotacionAnalitica.PrepareReport(True);
      DM.FRBalanceExplotacionAnalitica.Export(DM.PDFExport);
   end;

   DM.QInfBalExplo.EmptyDataSet;

   Empresas.Free;
end;

procedure TBalExplotacionModel.ConectarBDEmpresa(ACD_EMPRESA :string; AConnection :TIBDataBase);
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try Q.Database := DMControlRef.BDControl;
       Q.SQL.Add('SELECT NOMBRE, UBICACION                 ');
       Q.SQL.Add('FROM   EMPRESAS                          ');
       Q.SQL.Add('WHERE  UPPER(NOMBRE) = UPPER(:prmNOMBRE) ');
       Q.ParamByName('prmNOMBRE').AsString := ACD_EMPRESA;
       Q.Open;
       if not Q.EOF then begin
          try AConnection.Close;
              AConnection.DatabaseName := Config.ActiveServerRoot+Trim(Q.FieldByName('UBICACION').AsString);
              AConnection.Connected := True;
              //AConnection.Active    := True;
          except Q.Close;
                 Q.Free;
                 DatabaseError('Error al conectar base de datos ' + ACD_EMPRESA);
          end;
       end
       else DatabaseError('Error al conectar base de datos ' + ACD_EMPRESA);
   finally
       Q.Free;
   end;
end;

function TBalExplotacionModel.Pertenece_Analitica(ADataBase    :TIBDatabase;
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
   end;
end;

procedure TBalExplotacionModel.LanzarListado(Nombre_Archivo :string;
                                             prmDataSource  :TDataSource;
                                             Recorrer                :Boolean = True;
                                             SaltoPagina             :Boolean = False;
                                             ImprimirSoloRegActual   :Boolean = False;
                                             MostrarCamposOpcionales :Boolean = True);
var Marca  :TBookMark;
    //i      :Integer;
begin
   FNombreInforme := Nombre_Archivo;

   Marca := prmDataSource.DataSet.GetBookMark;
//   DM.Enlace1.DataSource := prmDataSource;

//   DM.InformePrincipal.DataPipeline      := DM.Enlace1;
//   DM.InformePrincipal.Template.FileName := Config.ReportsFolder + Nombre_Archivo;
//   DM.InformePrincipal.Template.LoadFromFile;

   { Salto de página }
   (*if (Self.FindComponent('ppGroupPrincipal') <> nil) then begin
      TppGroup(Self.FindComponent('ppGroupPrincipal')).NewPage := SaltoPagina;
   end;*)

   { Imprimir portada }
   // TppTitleBand(Self.FindComponent('Portada')).Visible := ImprimirPortada;
   //  Si Visible = FALSE, imprime la portada en blanco. Para evitarlo, es
   // necesario destruir el componente Portada.
   (*if (Self.FindComponent('Portada') <> nil) and not ImprimirPortada then begin
      TppTitleBand(Self.FindComponent('Portada')).Free;
   end;*)

   { Imprimir Banda de detalle }
   (*if (Self.FindComponent('ppBandaDetalle1') <> nil) and not ImprimirDetalle then begin
      TppSubReport(Self.FindComponent('ppBandaDetalle1')).Free;
   end;*)

   {Accomodate Display format}
   (*for i := 0 to (ComponentCount - 1) do begin
      if (Components[i] is TppDBText) then   begin
         if (UpperCase(Copy(TppDBText(Components[i]).Name, 3, 7)) = 'IMPORTE') or
            (UpperCase(Copy(TppDBText(Components[i]).UserName, 1, 7)) = 'IMPORTE') then   begin
            TppDBText(Components[i]).DisplayFormat := '###,###,##0.#0';
         end else
         if (UpperCase(Copy(TppDBText(Components[i]).Name, 3, 4)) = 'SUMA') or
            (UpperCase(Copy(TppDBText(Components[i]).UserName, 1, 4)) = 'SUMA') then   begin
            TppDBText(Components[i]).DisplayFormat := '###,###,###,##0.#0';
         end;
      end;
   end;
   if FindComponent('ppSuma1') <> nil then   begin
      TppDbCalc(FindComponent('ppSuma1')).DisplayFormat := '###,###,###,##0.#0';
   end;
   if FindComponent('ppSuma2') <> nil then   begin
      TppDbCalc(FindComponent('ppSuma2')).DisplayFormat := '###,###,###,##0.#0';
   end;
   if FindComponent('ppSuma3') <> nil then   begin
      TppDbCalc(FindComponent('ppSuma3')).DisplayFormat := '###,###,###,##0.#0';
   end;
   if FindComponent('ppSuma4') <> nil then   begin
      TppDbCalc(FindComponent('ppSuma4')).DisplayFormat := '###,###,###,##0.#0';
   end;
   if FindComponent('ppSuma5') <> nil then   begin
      TppDbCalc(FindComponent('ppSuma5')).DisplayFormat := '###,###,###,##0.#0';
   end;
   if FindComponent('ppSuma6') <> nil then   begin
      TppDbCalc(FindComponent('ppSuma6')).DisplayFormat := '###,###,###,##0.#0';
   end;
   if FindComponent('ppSuma7') <> nil then   begin
      TppDbCalc(FindComponent('ppSuma7')).DisplayFormat := '###,###,###,##0.#0';
   end;
   if FindComponent('ppSuma8') <> nil then   begin
      TppDbCalc(FindComponent('ppSuma8')).DisplayFormat := '###,###,###,##0.#0';
   end;*)
   {-------------------------}

   //CamposOpcionales(MostrarCamposOpcionales);

(*   if Recorrer then begin
      prmDataSource.DataSet.DisableControls;
   end;

   if ImprimirSoloRegActual then begin
      DM.Enlace1.RangeBegin := rbCurrentRecord;
      DM.Enlace1.RangeEnd   := reCurrentRecord;
   end
   else begin
      DM.Enlace1.RangeBegin := rbFirstRecord;
      DM.Enlace1.RangeEnd   := reLastRecord;
   end;

   if (UpperCase(Nombre_Archivo) = 'LMAYOR.RTM'                      ) or
      (UpperCase(Nombre_Archivo) = 'LASIENTOS.RTM'                   ) or
      (UpperCase(Nombre_Archivo) = 'LASIENTOSEXPANDIDO.RTM'          ) or
      (UpperCase(Nombre_Archivo) = 'LLIBROFACTURASEMITIDAS.RTM'      ) or
      (UpperCase(Nombre_Archivo) = 'LLIBROFACTURASTIPOIVA.RTM'       ) or
      (UpperCase(Nombre_Archivo) = 'LLIBROFACTURASEMITIDASSUBCTA.RTM') then begin
      FSubInformesImpresos := [];
      if not Assigned(WPreviewForm) then begin
         WPreviewForm := TWPreviewForm.Create(nil);
      end;

      DM.InformePrincipal.PrintToDevices;

      WPreviewForm.FNombreArchivo := Nombre_Archivo;
      WPreviewForm.ShowModal;
      WPreviewForm := nil;
   end
   else begin
      DM.InformePrincipal.Print;

      if not prmDataSource.DataSet.EOF then begin
         prmDataSource.DataSet.GotoBookMark(Marca);
         prmDataSource.DataSet.FreeBookMark(Marca);
      end;
   end;

   if Recorrer then begin
      prmDataSource.DataSet.EnableControls;
   end;*)
end;

constructor TBalExplotacionModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleBalExplotacion.Create(Application);
   if Initialize then DoInitialize;
end;

function TBalExplotacionModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TBalExplotacionModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TBalExplotacionModel.DoInitialize;
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

   DM.QInfBalExplo.IndexDefs.Clear;
   DM.QInfBalExplo.IndexDefs.Add('Cuenta', 'Cuenta', []);
   DM.QInfBalExplo.IndexDefs.Add('Analitica', 'CUENTA_ANALITICA; CUENTA', []);

   DM.QInfBalExplo.CreateDataSet;
   DM.QInfBalExplo.Active := True;
end;

procedure TBalExplotacionModel.Refresh;
begin

end;

end.
