unit UEfectosComercialesModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet;

type
  TDataModuleEfectosComerciales = class(TDataModule)
    QSubCuentas: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    SSubcuentas: TDataSource;
    QConceptos: TIBDataSet;
    SConceptos: TDataSource;
    QConceptosID_CONCEPTOS: TIBStringField;
    QConceptosDESCRIPCION: TIBStringField;
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TEfectosComercialesModel = class(TCustomModel)
  private
    DM :TDataModuleEfectosComerciales;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
  end;

var
  DataModuleEfectosComerciales: TDataModuleEfectosComerciales;

implementation

uses Forms,
     Globales, DMControl;

{$R *.dfm}

{ TEfectosComercialesModel }

constructor TEfectosComercialesModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleEfectosComerciales.Create(Application);
   if Initialize then DoInitialize;
end;

function TEfectosComercialesModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TEfectosComercialesModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TEfectosComercialesModel.DoInitialize;
begin
   inherited;

   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;

   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;
end;

procedure TEfectosComercialesModel.Refresh;
begin

end;

end.
