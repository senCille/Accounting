unit ModelImportData;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  DBClient, frxClass, frxDBSet, frxExportPDF,
  senCille.DBController,
  senCille.Tools;

type
  TWhatConnection = (wcEjAnterior, wcContab, wcConsolida);
  
  TDataModuleImportData = class(TDataModule)
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TImportDataModel = class(TCustomModel)
  private
    DM :TDataModuleImportData;
    function Empty(prmCadena :string):Boolean;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
  end;

var
  DataModuleImportData: TDataModuleImportData;

implementation

uses System.Math, System.DateUtils,
     IBX.IBQuery,
     VCL.Forms,
     DMControl, DM, Processing, Globales;

{$R *.dfm}

{ TImportDataModel }

constructor TImportDataModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleImportData.Create(Application);
   if Initialize then DoInitialize;
end;

function TImportDataModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TImportDataModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TImportDataModel.DoInitialize;
begin
   inherited;

end;

procedure TImportDataModel.Refresh;
begin

end;

function TImportDataModel.Empty(prmCadena :string):Boolean;
begin
   Result := Trim(prmCadena) = '';
end;

end.
