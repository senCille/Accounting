unit Processing;

interface

uses System.Classes,
     VCL.Forms, VCL.Controls, VCL.StdCtrls, VCL.ExtCtrls, VCL.ComCtrls;

type
  TProcessingForm = class(TForm)
    Panel: TPanel;
    LabelTask: TLabel;
    BtnCancel: TButton;
    ProgressBar: TProgressBar;
    TextItemProcessed: TStaticText;
    procedure BtnCancelClick(Sender :TObject);

  public
  end;

  TProcessingView = class
  private
    FView :TProcessingForm;
    procedure SetText(Value :string);
    procedure SetShowCancel(Value :Boolean);
  published
    property Text       :string  write SetText;
    property ShowCancel :Boolean write SetShowCancel;
  public
    constructor Create;
    destructor Destroy; override;
    procedure ShowNext(AText :string);
    procedure Refresh;
    procedure ShowView;
  end;

function InProgressView(AText :string; AShowCancel :Boolean = False):TProcessingView;

implementation

uses System.SysUtils, VCL.Graphics, Globales;

{$R *.DFM}

function InProgressView(AText :string; AShowCancel :Boolean = False):TProcessingView;
begin
   Result := TProcessingView.Create;
   Result.Text       := AText;
   Result.ShowCancel := AShowCancel;
   Result.ShowView;
   Result.Refresh;
end;

{ TProcessingView }

constructor TProcessingView.Create;
begin
   inherited;
   FView := TProcessingForm.Create(nil);
   FView.LabelTask.Font.Color := clBlack;
   FView.LabelTask.Font.Name  := 'Arial';
   FView.LabelTask.Font.Size  := 14;

   FView.ProgressBar.Min  := 0;
   FView.ProgressBar.Max  := 100;
   FView.ProgressBar.Step := 1;
end;

procedure TProcessingView.ShowView;
begin
   FView.Show;
end;

procedure TProcessingView.ShowNext(AText :string);
begin
   FView.TextItemProcessed.Caption := AText;
   FView.Repaint; {Repaint calls Invalidate and after Update}
   Application.ProcessMessages;
end;

procedure TProcessingView.Refresh;
begin
   FView.Repaint; {Repaint calls Invalidate and after Update}
   Application.ProcessMessages;
end;

destructor TProcessingView.Destroy;
begin
   FView.Free;
   inherited;
end;

procedure TProcessingForm.BtnCancelClick(Sender: TObject);
begin
   raise EInOutError.Create(Config.Lang.ProgressCanceledText);
end;

procedure TProcessingView.SetText(Value :string);
begin
   FView.LabelTask.Caption := Value;
   Refresh;
end;

procedure TProcessingView.SetShowCancel(Value :Boolean);
begin
   FView.BtnCancel.Visible := Value;
   Refresh;
end;

end.
