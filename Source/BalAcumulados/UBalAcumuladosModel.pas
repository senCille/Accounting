unit UBalAcumuladosModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  DBClient, frxClass, frxDBSet, frxExportPDF;

type
  TDataModuleBalAcumulados = class(TDataModule)
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
    sInfBalAcum: TDataSource;
    QInfBalAcum: TClientDataSet;
    QInfBalAcumCUENTA: TStringField;
    QInfBalAcumDESCRIPCION: TStringField;
    QInfBalAcumMES1: TFloatField;
    QInfBalAcumMES2: TFloatField;
    QInfBalAcumMES3: TFloatField;
    QInfBalAcumMES4: TFloatField;
    QInfBalAcumMES5: TFloatField;
    QInfBalAcumMES6: TFloatField;
    QInfBalAcumMES7: TFloatField;
    QInfBalAcumMES8: TFloatField;
    QInfBalAcumMES9: TFloatField;
    QInfBalAcumMES10: TFloatField;
    QInfBalAcumMES11: TFloatField;
    QInfBalAcumMES12: TFloatField;
    QInfBalAcumTOTAL: TFloatField;
    QInfBalAcumFECHAINICIAL: TDateTimeField;
    QInfBalAcumFECHAFINAL: TDateTimeField;
    QInfBalAcumFECHAIMPRESION: TDateTimeField;
    QInfBalAcumTITULOLISTADO: TStringField;
    FastReportBalanceAcumulados: TfrxReport;
    PDFExport: TfrxPDFExport;
    Enlace1: TfrxDBDataset;
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TBalAcumuladosModel = class(TCustomModel)
  private
    DM :TDataModuleBalAcumulados;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure GeneraBalanceDeAcumulados(ATituloBalance   :string;
                                        AFechaImpresion  :TDateTime;
                                        ATIPO_CONCEPTO   :string;
                                        AFECHA_DESDE     :TDateTime;
                                        AFECHA_HASTA     :TDateTime;
                                        ASUBCUENTA_DESDE :string;
                                        ASUBCUENTA_HASTA :string;
                                        ACUENTA          :string;
                                        ACUENTA_H        :string;
                                        AID_DELEGACION   :string;
                                        AID_DEPARTAMENTO :string;
                                        AID_SECCION      :string;
                                        AID_PROYECTO     :string;
                                        ANIVEL_1         :Integer;
                                        ANIVEL_2         :Integer;
                                        AConSubcuentas   :Boolean;
                                        AAcumuladoPor    :Integer);
  end;

var
  DataModuleBalAcumulados: TDataModuleBalAcumulados;

implementation

uses System.DateUtils,
     VCL.Forms,
     DM, DMConta, Globales, DMControl, Processing;

{$R *.dfm}

{ TBalAcumuladosModel }

constructor TBalAcumuladosModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleBalAcumulados.Create(Application);
   if Initialize then DoInitialize;
end;

function TBalAcumuladosModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TBalAcumuladosModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TBalAcumuladosModel.DoInitialize;
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

   DM.QInfBalAcum.IndexDefs.Clear;
   DM.QInfBalAcum.IndexDefs.Add('', 'cuenta', [ixPrimary]);

   DM.QInfBalAcum.CreateDataSet;
   DM.QInfBalAcum.Active := True;
end;

procedure TBalAcumuladosModel.GeneraBalanceDeAcumulados(ATituloBalance   :string;
                                                        AFechaImpresion  :TDateTime;  
                                                        ATIPO_CONCEPTO   :string;
                                                        AFECHA_DESDE     :TDateTime;
                                                        AFECHA_HASTA     :TDateTime;
                                                        ASUBCUENTA_DESDE :string;
                                                        ASUBCUENTA_HASTA :string;
                                                        ACUENTA          :string;
                                                        ACUENTA_H        :string;
                                                        AID_DELEGACION   :string;
                                                        AID_DEPARTAMENTO :string;
                                                        AID_SECCION      :string;
                                                        AID_PROYECTO     :string;
                                                        ANIVEL_1         :Integer;
                                                        ANIVEL_2         :Integer;
                                                        AConSubcuentas   :Boolean;
                                                        AAcumuladoPor    :Integer);
var InProgress     :TProcessingView;
    aMeses         :array[1..12] of Double;
    aMeses1        :array[1..12] of Double;
    aMeses2        :array[1..12] of Double;
    i              :Integer;
    nMes           :Integer;
    nPor           :Integer;
    lPrimero       :Boolean;
    cCuenta        :string;
    cCuenta1       :string;
    cCuenta2       :string;
    cDescripcion   :string;
    nAuxImporte    :Double;
    QCuentas       :TIBSQL;
    QSubcuentas    :TIBSQL;
    Q              :TIBSQL;
begin
   // Selección de datos de subcuenta
   QSubcuentas := TIBSQL.Create(nil);
   QSubcuentas.Close;
   QSubcuentas.SQL.Clear;
   QSubcuentas.Database := DMRef.BDContab;
   QSubcuentas.SQL.Add('SELECT DESCRIPCION FROM SUBCTAS');
   QSubcuentas.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA');
   QSubcuentas.Prepare;

   // Selección de datos de cuenta
   QCuentas := TIBSQL.Create(nil);
   QCuentas.Close;
   QCuentas.SQL.Clear;
   QCuentas.Database := DMRef.BDContab;
   QCuentas.SQL.Add('SELECT DESCRIPCION FROM CUENTAS');
   QCuentas.SQL.Add('WHERE CUENTA = :CUENTA');
   QCuentas.Prepare;

   InProgress := InProgressView('Generando informe ...');
   try
      // Primero vaciar el fichero
      DM.QInfBalAcum.EmptyDataset;

      // Inicializar arrays
      for i := 1 to 12 do begin
         aMeses[i]  := 0;
         aMeses1[i] := 0;
         aMeses2[i] := 0;
      end;

      Q := TIBSQL.Create(nil);
      try
         Q.Database := DMRef.BDContab;
         Q.SQL.Add('SELECT D.IMPORTE,D.MONEDA,D.DEBEHABER,D.FECHA,D.SUBCUENTA');
         if ATIPO_CONCEPTO <> 'T' then Q.SQL.Add(' , T.TIPOCONTABILIDAD');
         Q.SQL.Add('   , D.CUENTA_ANALITICA');
         Q.SQL.Add('FROM DIARIO D, CUENTAS C');
         if ATIPO_CONCEPTO <> 'T' then Q.SQL.Add(' ,CONCEPTOS T');
         Q.SQL.Add('WHERE D.FECHA >= :FECHAINICIAL AND D.FECHA <= :FECHAFINAL');
         Q.SQL.Add(' and  D.SUBCUENTA >= :SUBCUENTAINICIAL AND D.SUBCUENTA <= :SUBCUENTAFINAL');
         if ATIPO_CONCEPTO <> 'T' then Q.SQL.Add('AND D.ID_CONCEPTOS=T.ID_CONCEPTOS ');
         Q.SQL.Add(' AND SUBSTR(D.SUBCUENTA, 1, 3) = C.CUENTA ');
         Q.SQL.Add('ORDER BY D.SUBCUENTA, D.FECHA');
         Q.ParamByName('FechaInicial').AsDateTime   := AFECHA_DESDE;
         Q.ParamByName('FechaFinal').AsDateTime     := AFECHA_HASTA;
         Q.ParamByName('SubcuentaInicial').AsString := ASUBCUENTA_DESDE;
         Q.ParamByName('SubcuentaFinal').AsString   := ASUBCUENTA_HASTA;
         Q.ExecQuery;
         while not Q.EOF do begin
            if (ATIPO_CONCEPTO <> 'T') and
               (Q.FieldByName('TipoContabilidad').AsString <> ATIPO_CONCEPTO) then begin
               Q.Next;
               Continue;
            end;

            if not DMContaRef.Pertenece_Analitica(Q.FieldByName('CUENTA_ANALITICA').AsString,
                                                  ACUENTA,
                                                  ACUENTA_H,
                                                  AID_DELEGACION,
                                                  AID_DEPARTAMENTO,
                                                  AID_SECCION,
                                                  AID_PROYECTO) then begin
               Q.Next;
               Continue;
            end;

            {$Message Warn 'Revisar este warning. Al llegar aquí lprimero aún no tiene un valor por lo tanto es False'}
            if lPrimero then begin
               lPrimero := False;
               cCuenta  := Q.FieldByName('subcuenta').AsString;
               cCuenta1 := Copy(Q.FieldByName('subcuenta').AsString, 1, ANIVEL_1);
               cCuenta2 := Copy(Q.FieldByName('subcuenta').AsString, 1, ANIVEL_2);
               QSubcuentas.Close;
               QSubcuentas.ParamByName('Subcuenta').AsString := cCuenta;
               QSubcuentas.ExecQuery;
               cDescripcion := QSubcuentas.FieldByName('Descripcion').AsString;
            end;

            if cCuenta <> Q.FieldByName('subcuenta').AsString then begin
               if AConSubcuentas then begin
                  DM.QInfBalAcum.Append;
                  DM.QInfBalAcum.Edit;
                  DM.QInfBalAcumCUENTA.AsString      := cCuenta;
                  DM.QInfBalAcumDESCRIPCION.AsString := cDescripcion;
                  if AAcumuladoPor = 0 then begin
                     DM.QInfBalAcumMES1.AsFloat  := aMeses[1];
                     DM.QInfBalAcumMES2.AsFloat  := DM.QInfBalAcumMES1.AsFloat  + aMeses[2];
                     DM.QInfBalAcumMES3.AsFloat  := DM.QInfBalAcumMES2.AsFloat  + aMeses[3];
                     DM.QInfBalAcumMES4.AsFloat  := DM.QInfBalAcumMES3.AsFloat  + aMeses[4];
                     DM.QInfBalAcumMES5.AsFloat  := DM.QInfBalAcumMES4.AsFloat  + aMeses[5];
                     DM.QInfBalAcumMES6.AsFloat  := DM.QInfBalAcumMES5.AsFloat  + aMeses[6];
                     DM.QInfBalAcumMES7.AsFloat  := DM.QInfBalAcumMES6.AsFloat  + aMeses[7];
                     DM.QInfBalAcumMES8.AsFloat  := DM.QInfBalAcumMES7.AsFloat  + aMeses[8];
                     DM.QInfBalAcumMES9.AsFloat  := DM.QInfBalAcumMES8.AsFloat  + aMeses[9];
                     DM.QInfBalAcumMES10.AsFloat := DM.QInfBalAcumMES9.AsFloat  + aMeses[10];
                     DM.QInfBalAcumMES11.AsFloat := DM.QInfBalAcumMES10.AsFloat + aMeses[11];
                     DM.QInfBalAcumMES12.AsFloat := DM.QInfBalAcumMES11.AsFloat + aMeses[12];
                  end
                  else begin
                     DM.QInfBalAcumMES1.AsFloat  := aMeses[1];
                     DM.QInfBalAcumMES2.AsFloat  := aMeses[2];
                     DM.QInfBalAcumMES3.AsFloat  := aMeses[3];
                     DM.QInfBalAcumMES4.AsFloat  := aMeses[4];
                     DM.QInfBalAcumMES5.AsFloat  := aMeses[5];
                     DM.QInfBalAcumMES6.AsFloat  := aMeses[6];
                     DM.QInfBalAcumMES7.AsFloat  := aMeses[7];
                     DM.QInfBalAcumMES8.AsFloat  := aMeses[8];
                     DM.QInfBalAcumMES9.AsFloat  := aMeses[9];
                     DM.QInfBalAcumMES10.AsFloat := aMeses[10];
                     DM.QInfBalAcumMES11.AsFloat := aMeses[11];
                     DM.QInfBalAcumMES12.AsFloat := aMeses[12];
                  end;
                  // Suma array
                  nAuxImporte := 0;
                  for i := 1 to 12 do begin
                     nAuxImporte := nAuxImporte + aMeses[i];
                  end;
                  DM.QInfBalAcumTOTAL.AsFloat := nAuxImporte;
                  // Almacenar el intervalo de fechas y la fecha de impresión para
                  //incluirlas en la descripción del listado.
                  DM.QInfBalAcumFECHAINICIAL.AsDateTime   := AFECHA_DESDE;
                  DM.QInfBalAcumFECHAFINAL.AsDateTime     := AFECHA_HASTA;
                  DM.QInfBalAcumFECHAIMPRESION.AsDateTime := AFechaImpresion;
                  DM.QInfBalAcumTITULOLISTADO.AsString    := ATituloBalance;
                  DM.QInfBalAcum.Post;
                  // Inicializar array
                  for i := 1 to 12 do aMeses[i] := 0;
               end;
               cCuenta := Q.FieldByName('subcuenta').AsString;
               QSubcuentas.Close;
               QSubcuentas.ParamByName('Subcuenta').AsString := cCuenta;
               QSubcuentas.ExecQuery;
               cDescripcion := QSubcuentas.FieldByName('Descripcion').AsString;
            end;

            if cCuenta1 <> Copy(Q.FieldByName('subcuenta').AsString, 1, ANIVEL_1) then begin
               DM.QInfBalAcum.Append;
               DM.QInfBalAcum.Edit;
               DM.QInfBalAcumCUENTA.AsString := cCuenta1;
               QCuentas.Close;
               QCuentas.ParamByName('cuenta').AsString := cCuenta1;
               QCuentas.ExecQuery;
               DM.QInfBalAcumDESCRIPCION.AsString := QCuentas.FieldByName('Descripcion').AsString;
               if AAcumuladoPor = 0 then begin
                  DM.QInfBalAcumMES1.AsFloat  := aMeses1[1];
                  DM.QInfBalAcumMES2.AsFloat  := DM.QInfBalAcumMES1.AsFloat  + aMeses1[2];
                  DM.QInfBalAcumMES3.AsFloat  := DM.QInfBalAcumMES2.AsFloat  + aMeses1[3];
                  DM.QInfBalAcumMES4.AsFloat  := DM.QInfBalAcumMES3.AsFloat  + aMeses1[4];
                  DM.QInfBalAcumMES5.AsFloat  := DM.QInfBalAcumMES4.AsFloat  + aMeses1[5];
                  DM.QInfBalAcumMES6.AsFloat  := DM.QInfBalAcumMES5.AsFloat  + aMeses1[6];
                  DM.QInfBalAcumMES7.AsFloat  := DM.QInfBalAcumMES6.AsFloat  + aMeses1[7];
                  DM.QInfBalAcumMES8.AsFloat  := DM.QInfBalAcumMES7.AsFloat  + aMeses1[8];
                  DM.QInfBalAcumMES9.AsFloat  := DM.QInfBalAcumMES8.AsFloat  + aMeses1[9];
                  DM.QInfBalAcumMES10.AsFloat := DM.QInfBalAcumMES9.AsFloat  + aMeses1[10];
                  DM.QInfBalAcumMES11.AsFloat := DM.QInfBalAcumMES10.AsFloat + aMeses1[11];
                  DM.QInfBalAcumMES12.AsFloat := DM.QInfBalAcumMES11.AsFloat + aMeses1[12];
               end
               else begin
                  DM.QInfBalAcumMES1.AsFloat  := aMeses1[1];
                  DM.QInfBalAcumMES2.AsFloat  := aMeses1[2];
                  DM.QInfBalAcumMES3.AsFloat  := aMeses1[3];
                  DM.QInfBalAcumMES4.AsFloat  := aMeses1[4];
                  DM.QInfBalAcumMES5.AsFloat  := aMeses1[5];
                  DM.QInfBalAcumMES6.AsFloat  := aMeses1[6];
                  DM.QInfBalAcumMES7.AsFloat  := aMeses1[7];
                  DM.QInfBalAcumMES8.AsFloat  := aMeses1[8];
                  DM.QInfBalAcumMES9.AsFloat  := aMeses1[9];
                  DM.QInfBalAcumMES10.AsFloat := aMeses1[10];
                  DM.QInfBalAcumMES11.AsFloat := aMeses1[11];
                  DM.QInfBalAcumMES12.AsFloat := aMeses1[12];
               end;
               // Suma array
               nAuxImporte := 0;
               for i := 1 to 12 do begin
                  nAuxImporte := nAuxImporte + aMeses1[i];
               end;
               DM.QInfBalAcumTOTAL.AsFloat := nAuxImporte;
               // Almacenar el intervalo de fechas y la fecha de impresión para
               //incluirlas en la descripción del listado.
               DM.QInfBalAcumFECHAINICIAL.AsDateTime   := AFECHA_DESDE;
               DM.QInfBalAcumFECHAFINAL.AsDateTime     := AFECHA_HASTA;
               DM.QInfBalAcumFECHAIMPRESION.AsDateTime := AFechaImpresion;
               DM.QInfBalAcumTITULOLISTADO.AsString    := ATituloBalance;
               DM.QInfBalAcum.Post;
               // Inicializar array
               for i := 1 to 12 do begin
                  aMeses1[i] := 0;
               end;

               cCuenta1 := Copy(Q.FieldByName('subcuenta').AsString, 1, ANIVEL_1);
            end;

            if cCuenta2 <> Copy(Q.FieldByName('subcuenta').AsString, 1, ANIVEL_2) then begin
               DM.QInfBalAcum.Append;
               DM.QInfBalAcum.Edit;
               DM.QInfBalAcumCUENTA.AsString := cCuenta2;
               QCuentas.Close;
               QCuentas.ParamByName('cuenta').AsString := cCuenta2;
               QCuentas.ExecQuery;
               DM.QInfBalAcumDESCRIPCION.AsString := QCuentas.FieldByName('Descripcion').AsString;

               if AAcumuladoPor = 0 then begin
                  DM.QInfBalAcumMES1.AsFloat  := aMeses2[1];
                  DM.QInfBalAcumMES2.AsFloat  := DM.QInfBalAcumMES1.AsFloat + aMeses2[2];
                  DM.QInfBalAcumMES3.AsFloat  := DM.QInfBalAcumMES2.AsFloat + aMeses2[3];
                  DM.QInfBalAcumMES4.AsFloat  := DM.QInfBalAcumMES3.AsFloat + aMeses2[4];
                  DM.QInfBalAcumMES5.AsFloat  := DM.QInfBalAcumMES4.AsFloat + aMeses2[5];
                  DM.QInfBalAcumMES6.AsFloat  := DM.QInfBalAcumMES5.AsFloat + aMeses2[6];
                  DM.QInfBalAcumMES7.AsFloat  := DM.QInfBalAcumMES6.AsFloat + aMeses2[7];
                  DM.QInfBalAcumMES8.AsFloat  := DM.QInfBalAcumMES7.AsFloat + aMeses2[8];
                  DM.QInfBalAcumMES9.AsFloat  := DM.QInfBalAcumMES8.AsFloat + aMeses2[9];
                  DM.QInfBalAcumMES10.AsFloat := DM.QInfBalAcumMES9.AsFloat + aMeses2[10];
                  DM.QInfBalAcumMES11.AsFloat := DM.QInfBalAcumMES10.AsFloat + aMeses2[11];
                  DM.QInfBalAcumMES12.AsFloat := DM.QInfBalAcumMES11.AsFloat + aMeses2[12];
               end
               else begin
                  DM.QInfBalAcumMES1.AsFloat  := aMeses2[1];
                  DM.QInfBalAcumMES2.AsFloat  := aMeses2[2];
                  DM.QInfBalAcumMES3.AsFloat  := aMeses2[3];
                  DM.QInfBalAcumMES4.AsFloat  := aMeses2[4];
                  DM.QInfBalAcumMES5.AsFloat  := aMeses2[5];
                  DM.QInfBalAcumMES6.AsFloat  := aMeses2[6];
                  DM.QInfBalAcumMES7.AsFloat  := aMeses2[7];
                  DM.QInfBalAcumMES8.AsFloat  := aMeses2[8];
                  DM.QInfBalAcumMES9.AsFloat  := aMeses2[9];
                  DM.QInfBalAcumMES10.AsFloat := aMeses2[10];
                  DM.QInfBalAcumMES11.AsFloat := aMeses2[11];
                  DM.QInfBalAcumMES12.AsFloat := aMeses2[12];
               end;
               // Suma array
               nAuxImporte := 0;
               for i := 1 to 12 do begin
                  nAuxImporte := nAuxImporte + aMeses2[i];
               end;
               DM.QInfBalAcumTOTAL.AsFloat := nAuxImporte;
               // Almacenar el intervalo de fechas y la fecha de impresión para
               //incluirlas en la descripción del listado.
               DM.QInfBalAcumFECHAINICIAL.AsDateTime   := AFECHA_DESDE;
               DM.QInfBalAcumFECHAFINAL.AsDateTime     := AFECHA_HASTA;
               DM.QInfBalAcumFECHAIMPRESION.AsDateTime := AFechaImpresion;
               DM.QInfBalAcumTITULOLISTADO.AsString    := ATituloBalance;
               DM.QInfBalAcum.Post;
               // Inicializar array
               for i := 1 to 12 do begin
                  aMeses2[i] := 0;
               end;
               cCuenta2 := Copy(Q.FieldByName('subcuenta').AsString, 1, ANIVEL_2);
            end;

            if Q.FieldByName('Debehaber').AsString = 'D' then begin
               nPor := 1;
            end
            else begin
               nPor := -1;
            end;

            nMes := MonthOf(Q.FieldByName('fecha').AsDateTime);

            nAuxImporte := ((nPor) * Q.FieldByName('importe').AsFloat);

            aMeses[nMes]  := aMeses[nMes] + nAuxImporte;
            aMeses1[nMes] := aMeses1[nMes] + nAuxImporte;
            aMeses2[nMes] := aMeses2[nMes] + nAuxImporte;

            Q.Next;
         end;
         // Suma final
         if not lPrimero then begin
            if AConSubcuentas then begin
               DM.QInfBalAcum.Append;
               DM.QInfBalAcum.Edit;
               DM.QInfBalAcumCUENTA.AsString := cCuenta;
               QSubcuentas.Close;
               QSubcuentas.ParamByName('Subcuenta').AsString := cCuenta;
               QSubcuentas.ExecQuery;
               DM.QInfBalAcumDESCRIPCION.AsString := QSubcuentas.FieldByName('Descripcion').AsString;
               if AAcumuladoPor = 0 then begin
                  DM.QInfBalAcumMES1.AsFloat  := aMeses[1];
                  DM.QInfBalAcumMES2.AsFloat  := DM.QInfBalAcumMES1.AsFloat  + aMeses[2];
                  DM.QInfBalAcumMES3.AsFloat  := DM.QInfBalAcumMES2.AsFloat  + aMeses[3];
                  DM.QInfBalAcumMES4.AsFloat  := DM.QInfBalAcumMES3.AsFloat  + aMeses[4];
                  DM.QInfBalAcumMES5.AsFloat  := DM.QInfBalAcumMES4.AsFloat  + aMeses[5];
                  DM.QInfBalAcumMES6.AsFloat  := DM.QInfBalAcumMES5.AsFloat  + aMeses[6];
                  DM.QInfBalAcumMES7.AsFloat  := DM.QInfBalAcumMES6.AsFloat  + aMeses[7];
                  DM.QInfBalAcumMES8.AsFloat  := DM.QInfBalAcumMES7.AsFloat  + aMeses[8];
                  DM.QInfBalAcumMES9.AsFloat  := DM.QInfBalAcumMES8.AsFloat  + aMeses[9];
                  DM.QInfBalAcumMES10.AsFloat := DM.QInfBalAcumMES9.AsFloat  + aMeses[10];
                  DM.QInfBalAcumMES11.AsFloat := DM.QInfBalAcumMES10.AsFloat + aMeses[11];
                  DM.QInfBalAcumMES12.AsFloat := DM.QInfBalAcumMES11.AsFloat + aMeses[12];
               end
               else begin
                  DM.QInfBalAcumMES1.AsFloat  := aMeses[1];
                  DM.QInfBalAcumMES2.AsFloat  := aMeses[2];
                  DM.QInfBalAcumMES3.AsFloat  := aMeses[3];
                  DM.QInfBalAcumMES4.AsFloat  := aMeses[4];
                  DM.QInfBalAcumMES5.AsFloat  := aMeses[5];
                  DM.QInfBalAcumMES6.AsFloat  := aMeses[6];
                  DM.QInfBalAcumMES7.AsFloat  := aMeses[7];
                  DM.QInfBalAcumMES8.AsFloat  := aMeses[8];
                  DM.QInfBalAcumMES9.AsFloat  := aMeses[9];
                  DM.QInfBalAcumMES10.AsFloat := aMeses[10];
                  DM.QInfBalAcumMES11.AsFloat := aMeses[11];
                  DM.QInfBalAcumMES12.AsFloat := aMeses[12];
               end;
               // Suma array
               nAuxImporte := 0;
               for i := 1 to 12 do begin
                  nAuxImporte := nAuxImporte + aMeses[i];
               end;
               DM.QInfBalAcumTOTAL.AsFloat := nAuxImporte;
               // Almacenar el intervalo de fechas y la fecha de impresión para
               //incluirlas en la descripción del listado.
               DM.QInfBalAcumFechaInicial.AsDateTime   := AFECHA_DESDE;
               DM.QInfBalAcumFechaFinal.AsDateTime     := AFECHA_HASTA;
               DM.QInfBalAcumFechaImpresion.AsDateTime := AFechaImpresion;
               DM.QInfBalAcumTITULOLISTADO.AsString    := ATituloBalance;
               DM.QInfBalAcum.Post;
            end;

            DM.QInfBalAcum.Append;
            DM.QInfBalAcum.Edit;
            DM.QInfBalAcumCUENTA.AsString := cCuenta1;
            QCuentas.Close;
            QCuentas.ParamByName('cuenta').AsString := cCuenta1;
            QCuentas.ExecQuery;
            DM.QInfBalAcumDESCRIPCION.AsString := QCuentas.FieldByName('Descripcion').AsString;
            if AAcumuladoPor = 0 then begin
               DM.QInfBalAcumMES1.AsFloat  := aMeses1[1];
               DM.QInfBalAcumMES2.AsFloat  := DM.QInfBalAcumMES1.AsFloat  + aMeses1[2];
               DM.QInfBalAcumMES3.AsFloat  := DM.QInfBalAcumMES2.AsFloat  + aMeses1[3];
               DM.QInfBalAcumMES4.AsFloat  := DM.QInfBalAcumMES3.AsFloat  + aMeses1[4];
               DM.QInfBalAcumMES5.AsFloat  := DM.QInfBalAcumMES4.AsFloat  + aMeses1[5];
               DM.QInfBalAcumMES6.AsFloat  := DM.QInfBalAcumMES5.AsFloat  + aMeses1[6];
               DM.QInfBalAcumMES7.AsFloat  := DM.QInfBalAcumMES6.AsFloat  + aMeses1[7];
               DM.QInfBalAcumMES8.AsFloat  := DM.QInfBalAcumMES7.AsFloat  + aMeses1[8];
               DM.QInfBalAcumMES9.AsFloat  := DM.QInfBalAcumMES8.AsFloat  + aMeses1[9];
               DM.QInfBalAcumMES10.AsFloat := DM.QInfBalAcumMES9.AsFloat  + aMeses1[10];
               DM.QInfBalAcumMES11.AsFloat := DM.QInfBalAcumMES10.AsFloat + aMeses1[11];
               DM.QInfBalAcumMES12.AsFloat := DM.QInfBalAcumMES11.AsFloat + aMeses1[12];
            end
            else begin
               DM.QInfBalAcumMES1.AsFloat  := aMeses1[1];
               DM.QInfBalAcumMES2.AsFloat  := aMeses1[2];
               DM.QInfBalAcumMES3.AsFloat  := aMeses1[3];
               DM.QInfBalAcumMES4.AsFloat  := aMeses1[4];
               DM.QInfBalAcumMES5.AsFloat  := aMeses1[5];
               DM.QInfBalAcumMES6.AsFloat  := aMeses1[6];
               DM.QInfBalAcumMES7.AsFloat  := aMeses1[7];
               DM.QInfBalAcumMES8.AsFloat  := aMeses1[8];
               DM.QInfBalAcumMES9.AsFloat  := aMeses1[9];
               DM.QInfBalAcumMES10.AsFloat := aMeses1[10];
               DM.QInfBalAcumMES11.AsFloat := aMeses1[11];
               DM.QInfBalAcumMES12.AsFloat := aMeses1[12];
            end;
            // Suma array
            nAuxImporte := 0;
            for i := 1 to 12 do begin
               nAuxImporte := nAuxImporte + aMeses1[i];
            end;
            DM.QInfBalAcumTOTAL.AsFloat := nAuxImporte;
            // Almacenar el intervalo de fechas y la fecha de impresión para
            //incluirlas en la descripción del listado.
            DM.QInfBalAcumFECHAINICIAL.AsDateTime   := AFECHA_DESDE;
            DM.QInfBalAcumFECHAFINAL.AsDateTime     := AFECHA_HASTA;
            DM.QInfBalAcumFECHAIMPRESION.AsDateTime := AFechaImpresion;
            DM.QInfBalAcumTITULOLISTADO.AsString    := ATituloBalance;
            DM.QInfBalAcum.Post;


            DM.QInfBalAcum.Append;
            DM.QInfBalAcum.Edit;
            DM.QInfBalAcumCUENTA.AsString := cCuenta2;
            QCuentas.Close;
            QCuentas.ParamByName('cuenta').AsString := cCuenta2;
            QCuentas.ExecQuery;
            DM.QInfBalAcumDESCRIPCION.AsString := QCuentas.FieldByName('Descripcion').AsString;
            if AAcumuladoPor = 0 then begin
               DM.QInfBalAcumMES1.AsFloat  := aMeses2[1];
               DM.QInfBalAcumMES2.AsFloat  := DM.QInfBalAcumMES1.AsFloat  + aMeses2[2];
               DM.QInfBalAcumMES3.AsFloat  := DM.QInfBalAcumMES2.AsFloat  + aMeses2[3];
               DM.QInfBalAcumMES4.AsFloat  := DM.QInfBalAcumMES3.AsFloat  + aMeses2[4];
               DM.QInfBalAcumMES5.AsFloat  := DM.QInfBalAcumMES4.AsFloat  + aMeses2[5];
               DM.QInfBalAcumMES6.AsFloat  := DM.QInfBalAcumMES5.AsFloat  + aMeses2[6];
               DM.QInfBalAcumMES7.AsFloat  := DM.QInfBalAcumMES6.AsFloat  + aMeses2[7];
               DM.QInfBalAcumMES8.AsFloat  := DM.QInfBalAcumMES7.AsFloat  + aMeses2[8];
               DM.QInfBalAcumMES9.AsFloat  := DM.QInfBalAcumMES8.AsFloat  + aMeses2[9];
               DM.QInfBalAcumMES10.AsFloat := DM.QInfBalAcumMES9.AsFloat  + aMeses2[10];
               DM.QInfBalAcumMES11.AsFloat := DM.QInfBalAcumMES10.AsFloat + aMeses2[11];
               DM.QInfBalAcumMES12.AsFloat := DM.QInfBalAcumMES11.AsFloat + aMeses2[12];
            end
            else begin
               DM.QInfBalAcumMES1.AsFloat  := aMeses2[1];
               DM.QInfBalAcumMES2.AsFloat  := aMeses2[2];
               DM.QInfBalAcumMES3.AsFloat  := aMeses2[3];
               DM.QInfBalAcumMES4.AsFloat  := aMeses2[4];
               DM.QInfBalAcumMES5.AsFloat  := aMeses2[5];
               DM.QInfBalAcumMES6.AsFloat  := aMeses2[6];
               DM.QInfBalAcumMES7.AsFloat  := aMeses2[7];
               DM.QInfBalAcumMES8.AsFloat  := aMeses2[8];
               DM.QInfBalAcumMES9.AsFloat  := aMeses2[9];
               DM.QInfBalAcumMES10.AsFloat := aMeses2[10];
               DM.QInfBalAcumMES11.AsFloat := aMeses2[11];
               DM.QInfBalAcumMES12.AsFloat := aMeses2[12];
            end;
            // Suma array
            nAuxImporte := 0;
            for i := 1 to 12 do begin
               nAuxImporte := nAuxImporte + aMeses2[i];
            end;
            DM.QInfBalAcumTOTAL.AsFloat := nAuxImporte;
            // Almacenar el intervalo de fechas y la fecha de impresión para
            //incluirlas en la descripción del listado.
            DM.QInfBalAcumFECHAINICIAL.AsDateTime   := AFECHA_DESDE;
            DM.QInfBalAcumFECHAFINAL.AsDateTime     := AFECHA_HASTA;
            DM.QInfBalAcumFECHAIMPRESION.AsDateTime := AFechaImpresion;
            DM.QInfBalAcumTITULOLISTADO.AsString    := ATituloBalance;
            DM.QInfBalAcum.Post;
         end; // lPrimero

         // Imprimir listado
      finally
         Q.Free;
      end;

      QCuentas.Close;
      QCuentas.Free;

      QSubcuentas.Close;
      QSubcuentas.Free;


      DM.QInfBalAcum.First;
      while not DM.QInfBalAcum.EOF do begin
         if DM.QInfBalAcumCUENTA.AsString = '' then begin
            DM.QInfBalAcum.Delete;
         end
         else begin
            DM.QInfBalAcum.Edit;
            DM.QInfBalAcumMES1.AsFloat  := DM.QInfBalAcumMES1.AsFloat ;
            DM.QInfBalAcumMES2.AsFloat  := DM.QInfBalAcumMES2.AsFloat ;
            DM.QInfBalAcumMES3.AsFloat  := DM.QInfBalAcumMES3.AsFloat ;
            DM.QInfBalAcumMES4.AsFloat  := DM.QInfBalAcumMES4.AsFloat ;
            DM.QInfBalAcumMES5.AsFloat  := DM.QInfBalAcumMES5.AsFloat ;
            DM.QInfBalAcumMES6.AsFloat  := DM.QInfBalAcumMES6.AsFloat ;
            DM.QInfBalAcumMES7.AsFloat  := DM.QInfBalAcumMES7.AsFloat ;
            DM.QInfBalAcumMES8.AsFloat  := DM.QInfBalAcumMES8.AsFloat ;
            DM.QInfBalAcumMES9.AsFloat  := DM.QInfBalAcumMES9.AsFloat ;
            DM.QInfBalAcumMES10.AsFloat := DM.QInfBalAcumMES10.AsFloat;
            DM.QInfBalAcumMES11.AsFloat := DM.QInfBalAcumMES11.AsFloat;
            DM.QInfBalAcumMES12.AsFloat := DM.QInfBalAcumMES12.AsFloat;
            DM.QInfBalAcumTOTAL.AsFloat := DM.QInfBalAcumTOTAL.AsFloat;
            DM.QInfBalAcum.Post;
            DM.QInfBalAcum.Next;
         end;
      end;
      DM.QInfBalAcum.First;
   finally
      InProgress.Free;
   end;

   DM.PDFExport.Author          := 'senCille Accounting';
   DM.PDFExport.ShowDialog      := False;
   DM.PDFExport.OpenAfterExport := True;

   DM.PDFExport.FileName := 'BalanceDeAcumulados.pdf';
   DM.FastReportBalanceAcumulados.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
   DM.FastReportBalanceAcumulados.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
   DM.FastReportBalanceAcumulados.Variables['DESCRIPTION'    ] := ''''+'Desde la fecha ' + FormatDateTime('dd/mm/yyyy', AFECHA_DESDE) +
                                                                       ' hasta '         + FormatDateTime('dd/mm/yyyy', AFECHA_HASTA) +'''';
   DM.FastReportBalanceAcumulados.Variables['ENTERPRISE_NAME'] := ''''+FormatDateTime('dd/mm/yyyy', AFechaImpresion)+'''';                                                                     


   DM.FastReportBalanceAcumulados.PrepareReport(True);

   DM.FastReportBalanceAcumulados.Export(DM.PDFExport);

   DM.QInfBalAcum.EmptyDataSet;
end;

procedure TBalAcumuladosModel.Refresh;
begin

end;

end.

