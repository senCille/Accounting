unit USubcuentasModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, frxExportPDF;

type
  TDataModuleSubcuentas = class(TDataModule)
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
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}
  
  TSubcuentasModel = class(TCustomModel)
  private
    DM   :TDataModuleSubcuentas;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    procedure Refresh;
    procedure RefreshAccounts;
  end;

var
  DataModuleSubcuentas: TDataModuleSubcuentas;

implementation

uses Forms, Globales, Math, DM;

{$R *.dfm}

{ TSubcuentasModel }

constructor TSubcuentasModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleSubcuentas.Create(Application);
   if Initialize then DoInitialize;
end;

destructor TSubcuentasModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TSubcuentasModel.DoInitialize;
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

procedure TSubcuentasModel.Refresh;
begin

end;

procedure TSubcuentasModel.RefreshAccounts;
begin
   DM.QSubCuentas.Close;
   DM.QSubCuentas.Open;
end;


end.
