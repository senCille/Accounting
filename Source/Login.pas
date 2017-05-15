unit Login;

interface

uses System.SysUtils, System.Classes,
     WinAPI.Windows, WinAPI.Messages,
     Data.DB,
     VCL.Forms, VCL.ExtCtrls, VCL.Controls, VCL.StdCtrls, VCL.Buttons, VCL.Graphics,
     Localization;

type
  TFormLogin = class(TForm)
    Label3: TLabel;
    LabelPassword: TLabel;
    EditUser: TEdit;
    EditPassword: TEdit;
    LabelVersion: TLabel;
    Label1: TLabel;
    ImagenAnagram: TImage;
    LabelMessage: TLabel;
    Timer: TTimer;
    LabelMessage2: TLabel;
    Panel1: TPanel;
    BtnCancel: TSpeedButton;
    BtnAccept: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  protected
    procedure Paint; override;
    procedure WMNCHitTest(var Msg: TWMNCHitTest) ; message WM_NCHitTest;
  private
    FLang     :TLangLogin;
    FCommon   :TLangCommon;
    FAttempts :Integer;
    procedure ShowMessage(AMessage :string; AMessage2 :string = '');
  public
    class function ExecLogin:Boolean;
  end;

var FormLogin :TFormLogin;

implementation

uses Globales, DMControl, IBX.IBQuery;

{$R *.DFM}

class function TFormLogin.ExecLogin:Boolean;
begin
   FormLogin := Self.Create(nil);
   try Result := FormLogin.ShowModal = mrOK;
   finally FormLogin.Free;
   end;
end;

procedure TFormLogin.FormCreate(Sender: TObject);
begin
   FLang := TLangLogin.Create;
   FCommon := TLangCommon.Create;
   BtnCancel.Caption := FCommon.BtnCancel;
   BtnAccept.Caption := FCommon.BtnAccept;

   FAttempts := 1;
end;

procedure TFormLogin.ShowMessage(AMessage :string; AMessage2 :string = '');
begin
   LabelMessage.Caption  := AMessage;
   LabelMessage2.Caption := AMessage2;
   //MessageBeep(MB_ICONHAND);
   Timer.Enabled := True;
end;

procedure TFormLogin.BtnAcceptClick(Sender: TObject);
   function WrongUser(AUser, APassword :string):Boolean;
   var Q :TIBQuery;
   begin
      Q := DMControlRef.CreateQuery(['SELECT NOMBRE    ,           ',
                                     '       CLAVE     ,           ',
                                     '       ID_USUARIO,           ',
                                     '       ID_EMPRESA            ',
                                     'FROM   USUARIOS              ',
                                     'WHERE  NOMBRE = :prmUSUARIO  ',
                                     'AND    CLAVE  = :prmPASSWORD ']);
      Q.ParamByName('prmUSUARIO' ).AsString := AUser;
      Q.ParamByName('prmPASSWORD').AsString := APassword;
      try Q.Open;
          if Q.RecordCount > 0 then begin
             Config.LoggedUser          := Q.FieldByName('NOMBRE'    ).AsString;
             Config.IdUser              := Q.FieldByName('ID_USUARIO').AsInteger;
             Config.ActiveID_ENTERPRISE := Q.FieldByName('ID_EMPRESA').AsInteger;
             Result                     := True;
          end
          else begin
             Config.LoggedUser          := '-1';
             Config.IdUser              := -1;
             Config.ActiveID_ENTERPRISE := -1;
             Result                     := False;
          end;
      finally Q.Free;
      end;
   end;

begin
   if WrongUser(UpperCase(Trim(EditUser.Text)), UpperCase(Trim(EditPassword.Text))) then begin
      ModalResult := mrOK;
   end
   else begin
      Inc(FAttempts);
      if FAttempts > 3 then begin
         ShowMessage(FLang.NumberOfAttemptsExceeded, FLang.ApplicationIsGoingToCloseNow);
      end
      else begin
         ShowMessage(FLang.TheUserOrPasswordAreNotCorrect, FLang.PleaseTryAgain);
      end;
   end;
end;

procedure TFormLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = Chr(VK_ESCAPE)) then BtnCancel.Click else
   if (Key = Chr(VK_RETURN)) and (ActiveControl = EditPassword) then BtnAccept.Click;
end;

procedure TFormLogin.BtnCancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
   DoubleBuffered := True;
   ImagenAnagram.Transparent := True;
   LabelVersion.Caption := Config.VersionText;
end;

procedure TFormLogin.TimerTimer(Sender: TObject);
begin
   LabelMessage.Caption := '';
   LabelMessage2.Caption := '';
   Timer.Enabled := False;
   if FAttempts > 3 then Application.Terminate;
end;

procedure TFormLogin.WMNCHitTest(var Msg: TWMNCHitTest);
begin
   {move the form by draging anywhere on the client area }
   inherited;
   if Msg.Result = htClient then Msg.Result := htCaption;
end;

procedure TFormLogin.Paint;
var Reg :HRGN;
begin
   {Hide Title Bar}
   SetWindowLong(Handle, GWL_STYLE, GetWindowLong(Handle, GWL_STYLE) and not WS_CAPTION);
   {Make borders rounded }
   Reg := CreateRoundRectRgn(0, 0, Width , Height -(Height - ClientHeight), 3, 3);
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
