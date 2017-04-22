unit UBorradoDiarioModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet;

type
  TDataModuleBorradoDiario = class(TDataModule)
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

  TBorradoDiarioModel = class(TCustomModel)
  private
    DM :TDataModuleBorradoDiario;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
  end;

var
  DataModuleBorradoDiario: TDataModuleBorradoDiario;

implementation

uses Forms,
     Globales, DMControl;

{$R *.dfm}

{ TBorradoDiarioModel }

constructor TBorradoDiarioModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleBorradoDiario.Create(Application);
   if Initialize then DoInitialize;
end;

function TBorradoDiarioModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TBorradoDiarioModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TBorradoDiarioModel.DoInitialize;
begin
   inherited;
   
   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;
   
   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;
end;

procedure TBorradoDiarioModel.Refresh;
begin

end;

end.
