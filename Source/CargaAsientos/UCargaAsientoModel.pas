unit UCargaAsientoModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, frxExportPDF;

type
  TDataModuleCargaAsiento = class(TDataModule)
    QSubCuentas: TIBDataSet;
    SSubcuentas: TDataSource;
    QConceptos: TIBDataSet;
    IBStringField42: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField43: TIBStringField;
    SConceptos: TDataSource;
    QAnaliticas: TIBDataSet;
    QAnaliticasCUENTA: TIBStringField;
    QAnaliticasNOMBRE: TIBStringField;
    QAnaliticasID_PROYECTO: TIBStringField;
    QAnaliticasID_SECCION: TIBStringField;
    QAnaliticasID_DEPARTAMENTO: TIBStringField;
    QAnaliticasID_DELEGACION: TIBStringField;
    SAnaliticas: TDataSource;
    QDelegacion: TIBDataSet;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    SDelegacion: TDataSource;
    QDepartamento: TIBDataSet;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    SDepartamento: TDataSource;
    QProyecto: TIBDataSet;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    SProyecto: TDataSource;
    QSeccion: TIBDataSet;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    SSeccion: TDataSource;
    QSubCuentasCalcSaldo: TFloatField;
    QSubCuentasTipoDeSaldo: TStringField;
    QSubCuentasSUBCUENTA: TIBStringField;
    QSubCuentasDESCRIPCION: TIBStringField;
    QSubCuentasCONTRAPARTIDA: TIBStringField;
    QSubCuentasABREVIATURA: TIBStringField;
    QSubCuentasSUMADB: TFloatField;
    QSubCuentasSUMAHB: TFloatField;
    QSubCuentasDESCCONTRAPARTIDA: TIBStringField;
    QSubCuentasIVA: TFloatField;
    QSubCuentasRECARGO: TFloatField;
    procedure QSubCuentasCalcFields(DataSet: TDataSet);
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}
  
  TCargaAsientoModel = class(TCustomModel)
  private
    DM   :TDataModuleCargaAsiento;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    procedure Refresh;
    procedure RefreshAccounts;
    function GetCurrentIVA:Double;
    function GetCurrentRECARGO:Double;
    procedure SetContrapartida(var AField :TStringField);
    function GetDescripcionApunte(DescripConcepto  ,
                                  NumeroFactura    ,
                                  Serie            :string;
                                  Ejercicio        :Integer;
                                  ComentarioApunte :string):string;
  end;

var
  DataModuleCargaAsiento: TDataModuleCargaAsiento;

implementation

uses Forms, Globales, Math, DM;

{$R *.dfm}

{ TCargaAsientoModel }

constructor TCargaAsientoModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleCargaAsiento.Create(Application);
   if Initialize then DoInitialize;
end;

destructor TCargaAsientoModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TCargaAsientoModel.DoInitialize;
begin
   inherited;
   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;
   
   DM.QSubCuentasSUMADB.DisplayFormat    := '###,###,##0.#0';
   DM.QSubCuentasSUMAHB.DisplayFormat    := '###,###,##0.#0';
   DM.QSubCuentasCalcSaldo.DisplayFormat := '###,###,##0.#0';

   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;

   DM.QAnaliticas.Database := DB;
   DM.QAnaliticas.Open;

   DM.QDelegacion.Database := DB;
   DM.QDelegacion.Open;

   DM.QDepartamento.Database := DB;
   DM.QDepartamento.Open;

   DM.QSeccion.Database := DB;
   DM.QSeccion.Open;

   DM.QProyecto.Database := DB;
   DM.QProyecto.Open;
end;

function TCargaAsientoModel.GetCurrentIVA:Double;
begin
   if not DM.QSubCuentas.EOF then begin
      Result := DM.QSubCuentasIVA.AsFloat;
   end
   else Result := 0;
end;

function TCargaAsientoModel.GetCurrentRECARGO:Double;
begin
   if not DM.QSubCuentas.EOF then begin
      Result := DM.QSubCuentasRECARGO.AsFloat;
   end
   else Result := 0;
end;

procedure TCargaAsientoModel.Refresh;
begin

end;

procedure TCargaAsientoModel.RefreshAccounts;
begin
   DM.QSubCuentas.Close;
   DM.QSubCuentas.Open;
end;

procedure TDataModuleCargaAsiento.QSubCuentasCalcFields(DataSet: TDataSet);
begin
   QSubCuentasCalcSaldo.AsFloat := QSubCuentasSUMADB.AsFloat - QSubCuentasSUMAHB.AsFloat;

   if RoundTo(QSubCuentasCalcSaldo.AsFloat, -2) > 0 then begin
      QSubCuentasTipodeSaldo.AsString := 'Saldo Deudor ';
   end else
   if RoundTo(QSubCuentasCalcSaldo.AsFloat, -2) < 0 then begin
      QSubCuentasTipodeSaldo.AsString := 'Saldo Acreedor ';
      QSubCuentasCalcSaldo.AsFloat    := -QSubCuentasCalcSaldo.AsFloat;
   end
   else begin
      QSubCuentasTipodeSaldo.AsString := 'Saldo ';
   end;
end;

procedure TCargaAsientoModel.SetContrapartida(var AField: TStringField);
begin
   if DM.QSubCuentasCONTRAPARTIDA.AsString <> '' then begin
      AField.AsString := DM.QSubCuentasCONTRAPARTIDA.AsString;
   end;
end;

function TCargaAsientoModel.GetDescripcionApunte(DescripConcepto  ,
                                                 NumeroFactura    ,
                                                 Serie            :string;
                                                 Ejercicio        :Integer;
                                                 ComentarioApunte :string):string;
var Cadena :string;
    AbrevSubcta :string;
begin
   Cadena := '';
   AbrevSubcta := DM.QSubCuentasABREVIATURA.AsString;

   if not (Trim(DescripConcepto) = '') then begin
      Cadena := Trim(DescripConcepto) + ' ';
   end;

   if (DMRef.QParametrosINCLUIR_ABREV.AsString = 'S') and not
      (Trim(AbrevSubcta) = '') and (Trim(AbrevSubcta) <> Trim(NumeroFactura)) then begin
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

end.
