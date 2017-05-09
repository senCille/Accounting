program scStub;

uses
  System.StartUpCopy,
  FMX.Forms,
  StubMainForm in 'scStub\StubMainForm.pas' {MainForm},
  DB_Methods in 'scStub\DB_Methods.pas',
  senCille.DBController in 'scFramework\senCille.DBController.pas',
  senCille.SQLConnect in 'scFramework\senCille.SQLConnect.pas',
  DB_Northwind in 'scStub\DB_Northwind.pas',
  senCille.Tools in 'scFramework\senCille.Tools.pas',
  DB_NorthwindData in 'scStub\DB_NorthwindData.pas',
  CommonUnit in 'scStub\CommonUnit.pas',
  senCille.ORMClasses in 'scFramework\senCille.ORMClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
