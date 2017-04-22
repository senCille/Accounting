unit UEspere;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Db;
type
  TWEspere = class(TForm)
    Panel          :TPanel;
    Panel1         :TPanel;
    Panel3         :TPanel;
    Panel4         :TPanel;
    Panel5         :TPanel;
    LabelTarea     :TLabel;
    Animacion      :TAnimate;
    BtnNavCancelar :TButton;
    procedure BtnNavCancelarClick(Sender :TObject);
  public
    procedure Lanzar;
  end;

  TEspere = class
  private
    FWEspere         :TWEspere;
    FAlto            :Integer;
    FAncho           :Integer;
    FAvi_Left        :Integer;
    FAvi_Top         :Integer;
    FColorFondo      :TColor;
    FColorMarco      :TColor;
    FFuente          :TFont;
    FCancelVisible   :Boolean;
    FText            :string;
    FMensaje_Left    :Integer;
    FMensaje_Top     :Integer;
    FMostrarMarco    :Boolean;
    procedure SetText(Value :string);
  private
    procedure ConfigurarAvi;
    procedure Actualizar;
    procedure Mostrar;
    //property Alto            :Integer    read FAlto            write FAlto          default 150;
    //property Ancho           :Integer    read FAncho           write FAncho         default 300;
    //property Avi_Left        :Integer    read FAvi_Left        write FAvi_Left      default 7;
    //property Avi_Top         :Integer    read FAvi_Top         write FAvi_Top       default 80;
    //property ColorFondo      :TColor     read FColorFondo      write FColorFondo    default clWhite;
    //property ColorMarco      :TColor     read FColorMarco      write FColorMarco    default clWhite;
    property MostrarMarco    :Boolean    read FMostrarMarco    write FMostrarMarco  default True;
    //property Fuente          :TFont      read FFuente          write FFuente;
    //property Mensaje_Left    :Integer    read FMensaje_Left    write FMensaje_Left  default 14;
    //property Mensaje_Top     :Integer    read FMensaje_Top     write FMensaje_Top   default 14;
  published
    property Text            :string     write SetText;
    property CancelVisible   :Boolean    read FCancelVisible   write FCancelVisible;
  public
    constructor Create;
    destructor Destroy; override;
  end;

function InProgressView(AText :string; AShowCancel :Boolean = False):TEspere;

implementation

{$R *.DFM}

function InProgressView(AText :string; AShowCancel :Boolean = False):TEspere;
begin
   Result := TEspere.Create;
   Result.Text          := AText;
   Result.CancelVisible := AShowCancel;
   Result.Mostrar;
end;

{ TEspere }

constructor TEspere.Create;
begin
   inherited;
   FWEspere := TWEspere.Create(nil);
   FWEspere.LabelTarea.Font.Color := clWhite;
   FWEspere.LabelTarea.Font.Name  := 'Arial';
   FWEspere.LabelTarea.Font.Size  := 14;
   FCancelVisible := False;

   FFuente := TFont.Create;
   FFuente.Color := clWhite;
   FFuente.Name  := 'Arial';
   FFuente.Size  := 14;

   FAlto         := 150;
   FAncho        := 300;
   FAvi_Left     :=   7;
   FAvi_Top      :=  80;
   FColorFondo   := $00A56D39;
   FColorMarco   := $00A39587;
   FMostrarMarco := True;
   FMensaje_Left := 14;
   FMensaje_Top  := 14;
end;

destructor TEspere.Destroy;
begin
   FWEspere.Free;
   FFuente.Free;
   inherited;
end;

procedure TEspere.ConfigurarAvi;
begin
   (*case FAvi_Predet of
      Ninguno :begin
         FWEspere.Animacion.CommonAVI := aviNone;
      end;
      Copiar :begin
         FWEspere.Animacion.CommonAVI := aviCopyFiles;
         FWEspere.Animacion.Color     := $00A56D39;
      end;
      Buscar :begin
         FWEspere.Animacion.CommonAVI := aviFindComputer;
         FWEspere.Animacion.Color     := $00A56D39;
      end;
   end;*)

   FWEspere.BtnNavCancelar.Visible := CancelVisible;

   FWEspere.Animacion.Active := True;
   FWEspere.Animacion.Left   := FAvi_Left;
   FWEspere.Animacion.Top    := FAvi_Top;
end;

procedure TEspere.Actualizar;
begin
   FWEspere.LabelTarea.Caption := FText;
   FWEspere.Update;
end;

procedure TEspere.Mostrar;
begin
  if Assigned(FWEspere) then begin
    FWEspere.LabelTarea.Font.Assign(FFuente);
    FWEspere.Width := FAncho;
    FWEspere.Height := FAlto;

    FWEspere.Panel1.Visible := MostrarMarco;
    FWEspere.Panel3.Visible := MostrarMarco;
    FWEspere.Panel4.Visible := MostrarMarco;
    FWEspere.Panel5.Visible := MostrarMarco;

    FWEspere.Panel.Color := FColorFondo;

    FWEspere.Panel1.Color := FColorMarco;
    FWEspere.Panel3.Color := FColorMarco;
    FWEspere.Panel4.Color := FColorMarco;
    FWEspere.Panel5.Color := FColorMarco;

    if (FText <> '') then FWEspere.LabelTarea.Caption := FText;
    FWEspere.LabelTarea.Left := FMensaje_Left;
    FWEspere.LabelTarea.Top  := FMensaje_Top;

    ConfigurarAvi;
    FWEspere.Lanzar;
    Actualizar;
    FWEspere.Animacion.Active := True;
  end;
end;

procedure TWEspere.Lanzar;
begin
   Show;
end;

procedure TWEspere.BtnNavCancelarClick(Sender: TObject);
begin
   raise EInOutError.Create('Proceso cancelado.');
end;

procedure TEspere.SetText(Value :string);
begin
   FText := Value;
   if Assigned(FWEspere) then begin
      FWEspere.LabelTarea.Caption := FText;
      FWEspere.Repaint;
      FWEspere.Update;
   end;
end;

end.
