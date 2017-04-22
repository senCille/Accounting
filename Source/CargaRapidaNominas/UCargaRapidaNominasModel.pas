unit UCargaRapidaNominasModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet;

type
  TDataModuleCargaRapidaNominas = class(TDataModule)
    QSubCuentas: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    SSubcuentas: TDataSource;
    QAnaliticas: TIBDataSet;
    SAnaliticas: TDataSource;
    QAnaliticasID_PROYECTO: TIBStringField;
    QAnaliticasID_SECCION: TIBStringField;
    QAnaliticasID_DEPARTAMENTO: TIBStringField;
    QAnaliticasID_DELEGACION: TIBStringField;
    QAnaliticasNOMBRE: TIBStringField;
    QAnaliticasCUENTA: TIBStringField;
    QConceptos: TIBDataSet;
    SConceptos: TDataSource;
    QConceptosID_CONCEPTOS: TIBStringField;
    QConceptosDESCRIPCION: TIBStringField;
    QSubCTAAmortGastos: TIBDataSet;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    SSubCTAAmortGastos: TDataSource;
    QSubCTANominas: TIBDataSet;
    IBStringField44: TIBStringField;
    IBStringField45: TIBStringField;
    SSubCTANominas: TDataSource;
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TCargaRapidaNominasModel = class(TCustomModel)
  private
    DM :TDataModuleCargaRapidaNominas;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
  end;

var
  DataModuleCargaRapidaNominas: TDataModuleCargaRapidaNominas;

implementation

uses Forms,
     Globales, DMControl;

{$R *.dfm}

{ TCargaRapidaNominasModel }

constructor TCargaRapidaNominasModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleCargaRapidaNominas.Create(Application);
   if Initialize then DoInitialize;
end;

function TCargaRapidaNominasModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TCargaRapidaNominasModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TCargaRapidaNominasModel.DoInitialize;
begin
   inherited;
   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;

   DM.QAnaliticas.Database := DB;
   DM.QAnaliticas.Open;

   DM.QSubCTAAmortGastos.Database := DB;
   DM.QSubCTAAmortGastos.Open;

   DM.QSubCTANominas.Database := DB;
   DM.QSubCTANominas.Open;

   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;
end;

procedure TCargaRapidaNominasModel.Refresh;
begin

end;

end.
