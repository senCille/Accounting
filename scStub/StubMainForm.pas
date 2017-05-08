unit StubMainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox, FMX.Memo, FMX.StdCtrls, FMX.Objects,
  FMX.Controls.Presentation, FMX.Layouts;

type
  TMainForm = class(TForm)
    BtnCreateDatabase: TButton;
    Image23: TImage;
    Text23: TText;
    BtnStub: TButton;
    Image1: TImage;
    Layout1: TLayout;
    LabelCurrentProc: TLabel;
    Progress: TProgressBar;
    Memo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCreateDatabaseClick(Sender: TObject);
  private
    procedure StepUp(Value :string);
    procedure SetMax(Value :Integer);
    procedure SetError(Text :string);
    procedure SetCurrentProcedure(Value :string);
    property  CurrentProcedure :string write SetCurrentProcedure;
  public
  end;

var
  MainForm: TMainForm;

implementation

uses System.IOUtils,
     DB_Methods;

{$R *.fmx}

procedure TMainForm.FormCreate(Sender: TObject);
begin
   Randomize;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   //
end;

procedure TMainForm.StepUp(Value :string);
begin
   CurrentProcedure := Value;
end;

procedure TMainForm.SetMax(Value :Integer);
begin
   Progress.BeginUpdate;
   Progress.Value := 0;
   Progress.Max   := Value;
   Progress.Repaint;
   Progress.EndUpdate;
end;

procedure TMainForm.SetError(Text :string);
begin
   Memo.Lines.Add(Text);
end;

procedure TMainForm.SetCurrentProcedure(Value :string);
begin
   LabelCurrentProc.Text := Value;
   Progress.Value := Progress.Value + 1;
   Progress.Value := Progress.Value - 1;
   Progress.Value := Progress.Value + 1;
   Progress.Repaint;
   Self.Invalidate;
   Application.HandleMessage;
end;

procedure TMainForm.BtnCreateDatabaseClick(Sender: TObject);
var DBMethods :TDB_Methods;
begin
   Progress.Max := 2500;
   Memo.Lines.Clear;

   DBMethods := TDB_Methods.Create;
   try
      DBMethods.OnSetMax       := SetMax;
      DBMethods.OnShowProgress := StepUp;
      DBMethods.OnShowError    := SetError;
      {Firebird}
      DBMethods.Path           := TPath.GetDirectoryName(ParamStr(0))+'\';
      DBMethods.ConfigFileName := TPath.GetDirectoryName(ParamStr(0))+'\Northwind.ini';

      DBMethods.RemoveFile     := True;
      DBMethods.CreateEmpty_Northwind;
   finally
      DBMethods.Free;
      Memo.Lines.Add('Finish! => Crea la base de datos senCille');
   end;
end;

end.
