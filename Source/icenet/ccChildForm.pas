unit ccChildForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, IBX.IBDataBase;

type
  TccFormChild = class(TForm)
  private
    FAsChild    :Boolean;
    FTempParent :TWinControl;
  protected
    procedure CreateParams(var Params :TCreateParams); override;
    procedure Loaded;                                  override;
  public
    constructor Create(AOwner :TComponent); overload; override;
    constructor Create(AOwner :TComponent; AParent :TWinControl); reintroduce; overload;
    {El método debe ser anulado para devolver el menú principal del formulario, o nil}
    function GetFormMenu :TMainMenu; virtual; abstract;
    function CanChange :Boolean; virtual;
  end;

var
  ccFormChild: TccFormChild;

implementation

{$R *.dfm}
constructor TccFormChild.Create(AOwner :TComponent);
begin
   FAsChild := False;
   inherited Create(AOwner);
end;

constructor TccFormChild.Create(AOwner :TComponent; AParent :TWinControl);
begin
   FAsChild    := True;
   FTempParent := aParent;
   inherited Create(AOwner);
end;

procedure TccFormChild.Loaded;
begin
   inherited;
   if FAsChild then begin
      Align       := alClient;
      BorderStyle := bsNone;
      BorderIcons := [];
      Parent      := FTempParent;
      Position    := poDefault;
   end;
end;

procedure TccFormChild.CreateParams(var Params :TCreateParams);
begin
   inherited CreateParams(Params);
   if FAsChild then
      Params.Style := Params.Style or WS_CHILD;
end;

function TccFormChild.CanChange:Boolean;
begin
   Result := True;
end;

end.
