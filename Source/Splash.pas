unit Splash;

interface

uses Classes, Controls, Dialogs, ExtCtrls, Forms, Graphics, jpeg, Messages, SysUtils, Windows;

type
  TFormSplash = class(TForm)
    Imagen: TImage;
    Timer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  protected
    procedure Paint; override;
    procedure WMNCHitTest(var Msg: TWMNCHitTest) ; message WM_NCHitTest;
  private
  public
    procedure ActivarTemporizador;
  end;

var FormSplash: TFormSplash;

implementation

uses Globales;
{$R *.DFM}

procedure TFormSplash.ActivarTemporizador;
begin
   Timer.Enabled := True;
end;

procedure TFormSplash.FormCreate(Sender: TObject);
begin
   Timer.Enabled := False;
end;

procedure TFormSplash.TimerTimer(Sender: TObject);
begin
   Close;
end;

procedure TFormSplash.WMNCHitTest(var Msg: TWMNCHitTest);
begin
   {move the form by draging anywhere on the client area }
   inherited;
   if Msg.Result = htClient then Msg.Result := htCaption;
end;

procedure TFormSplash.Paint;
var Reg :HRGN;
begin
   {Hide Title Bar}
   SetWindowLong(Handle, GWL_STYLE, GetWindowLong(Handle, GWL_STYLE) and not WS_CAPTION);
   {Make borders rounded }
   Reg := CreateRoundRectRgn(0, 0, Width , Height {- (Height - ClientHeight)}, 3, 3);
   SetWindowRgn(Handle, Reg, True);

   Canvas.Pen.Width := 1;
   Canvas.Pen.Color := clGray;
   Canvas.RoundRect(0 ,
                    0 ,
                    Width  -2,
                    ClientHeight -2, 3, 3);
   inherited;
end;


end.
