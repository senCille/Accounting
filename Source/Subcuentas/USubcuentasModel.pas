unit USubcuentasModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, frxExportPDF;

type
  TDataModuleSubcuentas = class(TDataModule)
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TSubcuentasModel = class(TCustomModel)
  private
    DM :TDataModuleSubcuentas;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    procedure Refresh;
    function GetAccountType(ASubaccount :string):string;
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
   //DM.QIVAS.Database := DB;
   //DM.QIVAS.Open;

   //DM.QIVAR.Database := DB;
   //DM.QIVAR.Open;
end;

function TSubcuentasModel.GetAccountType(ASubaccount :string):string;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DB;
      Q.SQL.Add('SELECT TIPOCUENTA          ');
      Q.SQL.Add('FROM   CUENTAS             ');
      Q.SQL.Add('WHERE  CUENTA = :prmCUENTA ');
      Q.ParamByName('prmCUENTA').AsString := Copy(Trim(ASubaccount), 1, 3);
      Q.ExecQuery;
      Result := Q.FieldByName('TIPOCUENTA').AsString;
   finally
      Q.Free;
   end;
end;

procedure TSubcuentasModel.Refresh;
begin

end;


end.
