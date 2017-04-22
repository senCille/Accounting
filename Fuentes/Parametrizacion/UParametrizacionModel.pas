unit UParametrizacionModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet;

type
  TDataModuleParametrizacion = class(TDataModule)
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

  TParametrizacionModel = class(TCustomModel)
  private
    DM :TDataModuleParametrizacion;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
  end;

var
  DataModuleParametrizacion: TDataModuleParametrizacion;

implementation

uses Forms,
     Globales, DMControl;

{$R *.dfm}

{ TParametrizacionModel }

constructor TParametrizacionModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleParametrizacion.Create(Application);
   if Initialize then DoInitialize;
end;

function TParametrizacionModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TParametrizacionModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TParametrizacionModel.DoInitialize;
begin
   inherited;
   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;

   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;
end;

procedure TParametrizacionModel.Refresh;
begin

end;

end.
