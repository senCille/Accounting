unit UCargaRapidaFacturasModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet;

type
  TDataModuleCargaRapidaFacturas = class(TDataModule)
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
    QSubCTAIVADeducible: TIBDataSet;
    IBStringField18: TIBStringField;
    IBStringField19: TIBStringField;
    QSubCTAIVARepercutido: TIBDataSet;
    IBStringField24: TIBStringField;
    IBStringField25: TIBStringField;
    SSubCTAIVADeducible: TDataSource;
    SSubCTAIVARepercutido: TDataSource;
    QSubCTAAmortGastos: TIBDataSet;
    IBStringField32: TIBStringField;
    IBStringField33: TIBStringField;
    SSubCTAAmortGastos: TDataSource;
    QSubCTAVentas: TIBDataSet;
    IBStringField28: TIBStringField;
    IBStringField29: TIBStringField;
    SSubCTAVentas: TDataSource;
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TCargaRapidaFacturasModel = class(TCustomModel)
  private
    DM :TDataModuleCargaRapidaFacturas;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModuleCargaRapidaFacturas;
    procedure Refresh;
  end;

//var
//  DataModuleCargaRapidaFacturas: TDataModuleCargaRapidaFacturas;

implementation

uses Forms,
     Globales, DMControl;

{$R *.dfm}

{ TCargaRapidaFacturasModel }

constructor TCargaRapidaFacturasModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleCargaRapidaFacturas.Create(Application);
   if Initialize then DoInitialize;
end;

function TCargaRapidaFacturasModel.DataModule: TDataModuleCargaRapidaFacturas;
begin
   Result := DM;
end;

destructor TCargaRapidaFacturasModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TCargaRapidaFacturasModel.DoInitialize;
begin
   inherited;
   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;

   DM.QAnaliticas.Database := DB;
   DM.QAnaliticas.Open;

   DM.QSubCTAIVADeducible.Database := DB;
   DM.QSubCTAIVADeducible.Open;

   DM.QSubCTAIVARepercutido.Database := DB;
   DM.QSubCTAIVARepercutido.Open;

   DM.QSubCTAAmortGastos.Database := DB;
   DM.QSubCTAAmortGastos.Open;

   DM.QSubCTAVentas.Database := DB;
   DM.QSubCTAVentas.Open;

   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;
end;

procedure TCargaRapidaFacturasModel.Refresh;
begin

end;

end.
