{---------------------------------------------------------}
{ NUNUM Version 1.0                                       }
{ Written by juanc.cilleruelo@gmail.com                   }
{                                                         }
{ Classes: TccFormHandler                                 }
{                                                         }
{---------------------------------------------------------}
unit FormHandler;

interface

uses Windows, Controls, Messages, SysUtils, Classes, Forms, ActnList,
     Buttons, DBCtrls, ComCtrls, StdCtrls, DBGrids;

type
  TccMode = (fmBrowse, fmEdit, fmNone);

  TccBeforeChangeModeEvent = procedure(prmMode : TccMode) of object;
  TccAfterChangeModeEvent  = procedure(prmMode : TccMode) of object;
  
  TComponentMode = class(TPersistent)
  public
    Name :string;
    Mode :TccMode;
  end;
  
  TccFormHandler = class(TComponent)
  private
    {property variables}
    FActive           :Boolean;
    FccMode           :TccMode;
    FModal            :Boolean;
    FAutoModal        :Boolean;
    {event variables}
    {internal variables}
    ComponentList     :TList;
    FPrevOnCreate     :TNotifyEvent;
    FBeforeChangeMode :TccBeforeChangeModeEvent;
    FAfterChangeMode  :TccAfterChangeModeEvent;
    { property functions }
    function  GetForm: TForm;
    procedure SetMode   (Value :TccMode);
    { Utility functions }
    procedure ChangeMode(Value :TccMode);
    {internal methods}
  protected
    procedure FormCreate(Sender: TObject);
    procedure DoBeforeChangeMode(AMode :TccMode); virtual;
    procedure DoAfterChangeMode(AMode :TccMode); virtual; 
    {properties}
    property OwnerForm :TForm read GetForm;
  public
    procedure CompChangeMode(AComp :TDBCheckBox;       AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TCheckBox;         AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TDBLookupComboBox; AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TDBGrid;           AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TDBNavigator;      AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TButton;           AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TBitBtn;           AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TSpeedButton;      AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TDBEdit;           AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TEdit;             AMode :TccMode); overload;
    procedure CompChangeMode(AComp :TTreeView;         AMode :TccMode); overload;
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy;                    override;
    procedure   AddComp(prmCompName :string; prmMode :TccMode);
   // procedure   ChangeModeComp(prmCompName :string; prmMode :TccMode);
  published
    property Mode      :TccMode read FccMode    write SetMode    default fmBrowse;
    property AutoModal :Boolean read FAutoModal write FAutoModal default True;
    {events}
    property BeforeChangeMode :TccBeforeChangeModeEvent read FBeforeChangeMode write FBeforeChangeMode;
    property AfterChangeMode  :TccAfterChangeModeEvent  read FAfterChangeMode  write FAfterChangeMode;
  end;

implementation

uses Dialogs, TypInfo, Menus, Graphics;

const SC_ccHELPMENUITEM = WM_USER + 1;

      Fields_Editing_BorderStyle = bsSingle;
      Fields_Editing_Ctl3d       = True;
      Fields_Editing_Color       = clWhite;
      
      Fields_Navigating_BorderStyle = bsSingle; //bsNone;
      Fields_Navigating_Ctl3D       = False;
      Fields_Navigating_Color       = $00FFFFDD; //clBtnFace;

procedure ccMakeModal(Modal :Boolean);
var i :Integer;
    j :Integer;
begin
   if Application.MainForm = nil then Exit;
   with Application.MainForm do begin
      for i := 0 to ComponentCount -1 do begin
         if (Components[i] is TMainMenu) then begin
            with TMainMenu(Components[i]) do begin
               for j  := 0 to Items.Count -1 do begin
                  { Los Menús desactivados por cuestión de usuario llevan un Tag 99}
                  TMenuItem(Items[j]).Enabled := not(Modal) and (TMenuItem(Items[j]).Tag <> 99);
               end;
            end;
         end else
         if (Components[i] is TToolBar) then begin
           TToolBar(Components[i]).Enabled := not(Modal);
         end;
      end;
      if Modal then begin
         //for i := 0 to MDIChildCount - 1 do begin
         //    if MDIChildren[i].Active = False then MDIChildren[i].Enabled := not(Modal);
         //end;
      end
      else begin
          //for i := 0 to MDIChildCount - 1 do MDIChildren[i].Enabled := True;
      end;
   end;
end;

{ TccFormHandler }
constructor TccFormHandler.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   ComponentList := TList.Create;
   FActive       := True;
   FccMode       := fmBrowse;
   FModal        := False;
   FAutoModal    := True;
end;

destructor TccFormHandler.Destroy;
begin
   ComponentList.Destroy;
   inherited Destroy;
end;

function TccFormHandler.GetForm :TForm;
begin
   if Owner is TCustomForm then Result := TForm(Owner as TCustomForm)
                           else Result := nil;
end;
procedure TccFormHandler.AddComp(prmCompName :string; prmMode :TccMode);
var Comp :TComponentMode;
begin
   Comp := TComponentMode.Create;
   Comp.Name := prmCompName;
   Comp.Mode := prmMode;
   ComponentList.Add(Comp);
end;

//procedure TccFormHandler.ChangeModeComp(prmCompName :string; prmMode :TccMode);
//begin

//çend;

procedure TccFormHandler.SetMode(Value :TccMode);
begin
   if Mode <> Value then begin
      FccMode := Value;
      DoBeforeChangeMode(Value);
      ChangeMode(Value);
      DoAfterChangeMode(Value);
      //TccForm(Application.MainForm).FccCurrentMode := Value;
   end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TBitBtn; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled := True;
               end;
               fmBrowse:begin
                 AComp.Enabled := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled := False;
               end;
               fmBrowse:begin
                 AComp.Enabled := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TCheckBox; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit :begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Enabled := True;
                 AComp.Color   := Fields_Editing_Color;
                 AComp.Ctl3d   := Fields_Editing_Ctl3D;
                 AComp.TabStop := True;
               end;
               fmBrowse :begin
                 AComp.Enabled := False;
                 AComp.Color   := Fields_Navigating_Color;
                 AComp.Ctl3d   := Fields_Navigating_Ctl3D;
                 AComp.TabStop := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Enabled := False;
                 AComp.Color   := Fields_Navigating_Color;
                 AComp.Ctl3d   := Fields_Navigating_Ctl3D;
                 AComp.TabStop := False;
               end;
               fmBrowse:begin
                 AComp.Enabled := True;
                 AComp.Color   := Fields_Editing_Color;
                 AComp.Ctl3d   := Fields_Editing_Ctl3D;
                 AComp.TabStop := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TDBCheckBox; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit :begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Enabled  := True;
                 AComp.Color    := Fields_Editing_Color;
                 AComp.Ctl3d    := Fields_Editing_Ctl3D;
                 AComp.ReadOnly := False;
                 AComp.TabStop  := True;
               end;
               fmBrowse :begin
                 AComp.Enabled  := False;
                 AComp.Color    := Fields_Navigating_Color;
                 AComp.Ctl3d    := Fields_Navigating_Ctl3D;
                 AComp.ReadOnly := True;
                 AComp.TabStop  := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Enabled  := False;
                 AComp.Color    := Fields_Navigating_Color;
                 AComp.Ctl3d    := Fields_Navigating_Ctl3D;
                 AComp.ReadOnly := True;
                 AComp.TabStop  := False;
               end;
               fmBrowse:begin
                 AComp.Enabled  := True;
                 AComp.Color    := Fields_Editing_Color;
                 AComp.Ctl3d    := Fields_Editing_Ctl3D;
                 AComp.ReadOnly := False;
                 AComp.TabStop  := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TDBLookupComboBox; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit :begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Color       := Fields_Editing_Color;
                 AComp.Ctl3d       := Fields_Editing_Ctl3D;
                 AComp.ReadOnly    := False;
                 AComp.TabStop     := True;
               end;
               fmBrowse :begin
                 AComp.Color       := Fields_Navigating_Color;
                 AComp.Ctl3d       := Fields_Navigating_Ctl3D;
                 AComp.ReadOnly    := True;
                 AComp.TabStop     := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Color       := Fields_Navigating_Color;
                 AComp.Ctl3d       := Fields_Navigating_Ctl3D;
                 AComp.ReadOnly    := True;
                 AComp.TabStop     := False;
               end;
               fmBrowse:begin
                 AComp.Color       := Fields_Editing_Color;
                 AComp.Ctl3d       := Fields_Editing_Ctl3D;
                 AComp.ReadOnly    := False;
                 AComp.TabStop     := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TDBGrid; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled := True;
               end;
               fmBrowse:begin
                 AComp.Enabled := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled       := False;
               end;
               fmBrowse:begin
                 AComp.Enabled := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TDBNavigator; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled := True;
               end;
               fmBrowse:begin
                 AComp.Enabled := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled       := False;
               end;
               fmBrowse:begin
                 AComp.Enabled := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TButton; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled := True;
               end;
               fmBrowse:begin
                 AComp.Enabled       := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled       := False;
               end;
               fmBrowse:begin
                 AComp.Enabled := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TSpeedButton; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled := True;
               end;
               fmBrowse:begin
                 AComp.Enabled       := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled       := False;
               end;
               fmBrowse:begin
                 AComp.Enabled := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TDBEdit; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone :Exit;
         fmEdit :begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Color       := Fields_Editing_Color;
                 AComp.Ctl3d       := Fields_Editing_Ctl3D;
                 AComp.BorderStyle := Fields_Editing_BorderStyle;
                 AComp.ReadOnly    := False;
                 AComp.TabStop     := True;
               end;
               fmBrowse :begin
                 AComp.Color       := Fields_Navigating_Color;
                 AComp.Ctl3d       := Fields_Navigating_Ctl3D;
                 AComp.BorderStyle := Fields_Navigating_BorderStyle;
                 AComp.ReadOnly    := True;
                 AComp.TabStop     := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Color       := Fields_Navigating_Color;
                 AComp.Ctl3d       := Fields_Navigating_Ctl3D;
                 AComp.BorderStyle := Fields_Navigating_BorderStyle;
                 AComp.ReadOnly    := True;
                 AComp.TabStop     := False;
               end;
               fmBrowse:begin
                 AComp.Color       := Fields_Editing_Color;
                 AComp.Ctl3d       := Fields_Editing_Ctl3D;
                 AComp.BorderStyle := Fields_Editing_BorderStyle;
                 AComp.ReadOnly    := False;
                 AComp.TabStop     := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TEdit; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit :begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Color       := Fields_Editing_Color;
                 AComp.BorderStyle := Fields_Editing_BorderStyle;
                 AComp.ReadOnly    := False;
                 AComp.TabStop     := True;
               end;
               fmBrowse :begin
                 AComp.Color       := Fields_Navigating_Color;
                 AComp.BorderStyle := Fields_Navigating_BorderStyle;
                 AComp.ReadOnly    := True;
                 AComp.TabStop     := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit :begin
                 AComp.Color       := Fields_Navigating_Color;
                 AComp.BorderStyle := Fields_Navigating_BorderStyle;
                 AComp.ReadOnly    := True;
                 AComp.TabStop     := False;
               end;
               fmBrowse:begin
                 AComp.Color       := Fields_Editing_Color;
                 AComp.BorderStyle := Fields_Editing_BorderStyle;
                 AComp.ReadOnly    := False;
                 AComp.TabStop     := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.CompChangeMode(AComp :TTreeView; AMode :TccMode);
var i    :Integer;
    Comp :TComponentMode;
begin
  for i := 0 to ComponentList.Count - 1 do begin
    Comp := TComponentMode(ComponentList[i]);
    if Comp.Name = AComp.Name then begin
      case AMode of
         fmNone:Exit;
         fmEdit:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled := True;
               end;
               fmBrowse:begin
                 AComp.Enabled       := False;
               end;
            end;
         end;
         fmBrowse:begin
            case Comp.Mode of
               fmEdit:begin
                 AComp.Enabled       := False;
               end;
               fmBrowse:begin
                 AComp.Enabled := True;
               end;
            end;
         end;
      end;
      AComp.Invalidate;
    end;
  end;
end;

procedure TccFormHandler.ChangeMode(Value :TccMode);
var i    :Integer;
    Form :TCustomForm;
begin
   Form := GetForm;
   for i := 0 to Form.ComponentCount - 1 do begin
      if (Form.Components[i] is TButton  ) then begin
         CompChangeMode(TButton(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TBitBtn  ) then begin
         CompChangeMode(TBitBtn(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TCheckBox) then begin
         CompChangeMode(TCheckBox(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TDBCheckBox) then begin
         CompChangeMode(TDBCheckBox(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TDBLookupComboBox) then begin
         CompChangeMode(TDBLookupComboBox(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TDBGrid) then begin
         CompChangeMode(TDBGrid(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TDBNavigator) then begin
         CompChangeMode(TDBNavigator(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TSpeedButton ) then begin
         CompChangeMode(TSpeedButton(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TDBEdit  ) then begin
         CompChangeMode(TDBEdit(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TEdit  ) then begin
         CompChangeMode(TEdit(Form.Components[i]), Value);
      end else
      if (Form.Components[i] is TTreeView) then begin
         CompChangeMode(TTreeView(Form.Components[i]), Value);
      end;
   end;
end;

procedure TccFormHandler.FormCreate(Sender: TObject);
var locFormHandler :TccFormHandler;
    i              :Integer;
begin
   // Esto es una chapuza temporal.
   // Si Mode = fmEditing, aunque nosotros lo cambiemos esto no tiene ningún efecto sobre los componentes.
   // de manera que en el evento on create lo cambiamos primero a el modo contrario al que queremos y luego
   // lo volvemos a poner en el modo deseado, esto hace que se cambie el modo de cada uno de los componentes
   // del form.
   // Esto por supuesto está pendiente de revisar y arreglar. Juan CCill 03/04/2001

   locFormHandler := nil;
   with OwnerForm do begin
        AppendMenu(GetSystemMenu(Handle, FALSE), MF_SEPARATOR, 0, '');
        AppendMenu(GetSystemMenu(Handle, FALSE),
                   MF_STRING,
                   SC_ccHELPMENUITEM,
                   'Activar/Desactivar Ayudas');

        for i := 0 to ComponentCount - 1 do begin
            if (Components[i] is TccFormHandler) then locFormHandler := TccFormHandler(Components[i]);
        end;

        if locFormHandler <> nil then begin
           if locFormHandler.Mode = fmEdit then begin
              locFormHandler.Mode := fmBrowse;
              locFormHandler.Mode := fmEdit;
           end else
           if locFormHandler.Mode = fmBrowse then begin
              locFormHandler.Mode := fmEdit;
              locFormHandler.Mode := fmBrowse;
           end;
        end;
        if Assigned(FPrevOnCreate) then begin
           FPrevOnCreate(Sender);
        end;
   end;
end;

procedure TccFormHandler.DoBeforeChangeMode(AMode :TccMode);
begin
  if Assigned(FBeforeChangeMode) then BeforeChangeMode(AMode);
end;

procedure TccFormHandler.DoAfterChangeMode(AMode :TccMode);
begin
  if Assigned(FAfterChangeMode) then AfterChangeMode(AMode);
end;

end.
