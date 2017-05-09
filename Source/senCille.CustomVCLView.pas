unit senCille.CustomVCLView;

interface

uses
  System.Classes, System.SysUtils, System.UITypes, System.Contnrs, System.Types,
  Data.DB,
  senCille.Validations, VCL.Forms, VCL.Controls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TMode = (fmView, fmEdit, fmFixed, fmReadOnly);

  TBeforeChangeModeEvent = procedure(Value :TMode) of object;
  TAfterChangeModeEvent  = procedure(Value :TMode) of object;

  TComponentMode = class(TPersistent)
  private
    FComponent   :TWinControl;
    FMode        :TMode;
    FValidations :TValidations;
    FMinLength   :Integer;
    FMaxLength   :Integer;
    FMinValue    :Integer;
    FMaxValue    :Integer;
  public
    constructor Create;                                       overload;
    constructor Create(AComponent :TWinControl; AMode :TMode); overload;
    constructor Create(AComponent :TWinControl; AMode :TMode; prmValidations :TValidations); overload;
    {Obsolete constructor Create(AComponent :TComponent; AMode :TMode; prmMaxLength :Integer; prmValidations :TValidations); overload;}
    property Component   :TWinControl  read FComponent   write FComponent;
    property Mode        :TMode        read FMode        write FMode;
    property Validations :TValidations read FValidations write FValidations;
    property MinLength   :Integer      read FMinLength   write FMinLength;
    property MaxLength   :Integer      read FMaxlength   write FMaxLength;
    property MinValue    :Integer      read FMinValue    write FMinValue;
    property MaxValue    :Integer      read FMaxValue    write FMaxValue;
  end;

  TComponentModeList = class(TObjectList)
  private
  protected
    procedure SetObject(Index :Integer; Item: TComponentMode);
    function  GetObject(Index :Integer):TComponentMode;
  public
    constructor Create; overload;
    function  Add(Obj :TComponentMode                              ):Integer; overload;
    function  Add(Obj :TComponentMode; prmValidations :TValidations):Integer; overload;
    function  AddControl(AComponent :TWinControl; AMode :TMode):Integer; overload;
    function  AddControl(AComponent :TWinControl; AMode :TMode; AValidations :TValidations):Integer; overload;
    {Obsolete}
    //function  Add(Obj :TComponentMode; prmMaxLength :Integer; prmValidations :TValidations):Integer; overload;
    procedure Insert(Index :Integer; Obj :TComponentMode);
    function  ComponentIndex(AComponent :TComponent):Integer;
    procedure ChangeCurrentMode(AComponent :TComponent; AMode :TMode);
    property  Components[Index :Integer]:TComponentMode read GetObject write SetObject; default;
  end;

  TFormCustomVCLView = class(TForm)
    TimerMessage: TTimer;
    StatusBar: TStatusBar;
    procedure TimerMessageTimer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure CallWebHelp;
  private
    FFirstErroneous      :TControl;
    FComponentModeList   :TComponentModeList;
    FFormMode            :TMode;
    FBeforeChangeMode    :TBeforeChangeModeEvent;
    FAfterChangeMode     :TAfterChangeModeEvent;
    FHelpURL             :string;
    FIsLineView          :Boolean;
    procedure SetFormMode(Value :TMode);
    procedure ChangeMode(Value :TMode); // Change the mode of all the components in the form.
    procedure ActivateComponent(aComponent :TComponent);
    procedure DeactivateComponent(aComponent :TComponent);
  protected
    procedure DoBeforeChangeMode(Value :TMode); virtual;
    procedure DoAfterChangeMode(Value :TMode); virtual;
    procedure SetErroneous(Value :TControl);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure ShowMessage(AErrorMessage :string);
    function  Validate :Boolean;
    procedure SetMaxLengthToFields(ADataSet :TDataSet);
    procedure SnapToRight(AForm :TForm);
    procedure SnapToDownRight(AForm :TForm);
    procedure SnapToLeft(AForm :TForm);
    {Activate and Inactivete components manually}
    procedure SetActive(aComponent :TComponent); reintroduce;
    procedure SetInactive(aComponent :TComponent);
    {properties}
    property Mode       :TMode              read  FFormMode          write SetFormMode default fmView;
    property ModeList   :TComponentModeList read  FComponentModeList write FComponentModeList;
    property Erroneous  :TControl           read  FFirstErroneous    write SetErroneous;
    property HelpURL    :string             read  FHelpURL           write FHelpURL;
    property IsLineView :Boolean            read  FIsLineView        write FIsLineView;
    {events}
    property BeforeChangeMode :TBeforeChangeModeEvent read FBeforeChangeMode write FBeforeChangeMode;
    property AfterChangeMode  :TAfterChangeModeEvent  read FAfterChangeMode  write FAfterChangeMode;
  end;

implementation

{$R *.DFM}

uses System.UIConsts, Data.Bind.Components,
     ShellAPI, Windows,
     VCL.Grids, VCL.DBGrids, VCL.StdCtrls, VCL.Buttons;

{ TscCustomform }

constructor TFormCustomVCLView.Create(AOwner: TComponent);
begin
   inherited;
   {$IF DEFINED(ONCLOUD)}
     Self.Height := Self.Height + Round(PanelMessages.Height);
   {$ENDIF}

   FIsLineView   := False;

   FComponentModeList := TComponentModeList.Create;
end;

destructor TFormCustomVCLView.Destroy;
begin
   FreeAndNil(FComponentModeList);
   inherited;
end;

procedure TFormCustomVCLView.ShowMessage(AErrorMessage: string);
begin
   StatusBar.Panels[0].Text := AErrorMessage;
   TimerMessage.Enabled     := True;
end;

procedure TFormCustomVCLView.SnapToRight(AForm: TForm);
var x :Integer;
    y :Integer;
begin
   y := Self.Top; {Default Value}

   if AForm.Width > (Screen.Width - (Self.Left + Self.Width)) then begin
      x := Screen.Width - AForm.Width;
   end
   else begin
      x := Self.Left + Self.Width + 1;
   end;

   AForm.Left := x;
   AForm.Top  := y;
end;

procedure TFormCustomVCLView.SnapToDownRight(AForm: TForm);
var x :Integer;
    y :Integer;
begin
   y := (Self.Top + Self.Height) - AForm.Height;

   if AForm.Width > (Screen.Width - (Self.Left + Self.Width)) then begin
      x := Screen.Width - AForm.Width;
   end
   else begin
      x := Self.Left + Self.Width + 1;
   end;

   AForm.Left := x;
   AForm.Top  := y;
end;

procedure TFormCustomVCLView.SnapToLeft(AForm: TForm);
var x    :Integer;
    y    :Integer;
begin
   y := Self.Top; {Default Value}

   if AForm.Width > Self.Left then begin
      x := 0;
   end
   else begin
      x := Self.Left - AForm.Width - 1;
   end;

   AForm.Left := x;
   AForm.Top  := y;
end;

procedure TFormCustomVCLView.SetActive(aComponent :TComponent);
begin
   ActivateComponent(aComponent);
end;

procedure TFormCustomVCLView.SetInactive(aComponent :TComponent);
begin
   DeactivateComponent(aComponent);
end;

function TFormCustomVCLView.Validate: Boolean;
var i :Integer;
begin
   {Reset the erroneous status of any Component}
   FFirstErroneous := nil;
   {The result is true until they find an erroneous TStyledControl }
   Result := True;
   {if the aren't components in the list, don't make any check.}
   if FComponentModeList = nil then Exit;

   {The Form }
   for i := 0 to FComponentModeList.Count - 1 do begin
      //TStyledControl(FComponentModeList.Components[i].Component).Hint := '';
      {The component }
      if FComponentModeList.Components[i].FValidations = [] then begin
         {There are not validations for this field}
      end else
      if vtNotEmpty in FComponentModeList.Components[i].FValidations then begin
         { NOT EMPTY OR NOT ASSIGNED }
         if TValidationFunctions.IsEmpty(FComponentModeList.Components[i].Component) then begin
            Result    := False;
            Erroneous := TControl(FComponentModeList.Components[i].Component);
            //Erroneous.SetFocus;
            ShowMessage('Dato Obligatorio');
            Exit;
         end
         else begin

         end;
      end;
      if vtMinLength in FComponentModeList.Components[i].FValidations then begin
         if TValidationFunctions.MinLength(FComponentModeList.Components[i].Component,
                                           FComponentModeList.Components[i].MinLength      ) then begin
            Result    := False;
            Erroneous := TControl(FComponentModeList.Components[i].Component);
            //Erroneous.SetFocus;
            ShowMessage('Debe constar, al menos de '+IntToStr(FComponentModeList.Components[i].MinLength)+' carácteres');
            Exit;
         end
         else begin

         end;
      end;
      {Obsolete}
      {if vtMaxLength in FComponentModeList.Components[i].FValidations then begin
         if TValidationFunctions.MaxLength(FComponentModeList.Components[i].Component,
                                           FComponentModeList.Components[i].MaxLength      ) then begin
            Result    := False;
            Erroneous := TStyledControl(FComponentModeList.Components[i].Component);
            //Erroneous.SetFocus;
            ShowMessage('Debe constar, a lo sumo de '+IntToStr(FComponentModeList.Components[i].MaxLength)+' carácteres');
            Exit;
         end
         else begin

         end;
         //Raise Exception.Create('Group of validations still not implement. Just do it! Group of vtMinLength');
      end;}
   end;
end;

procedure TFormCustomVCLView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   {If the form is Modal we sould close it with ModalResult, because this we can control }
   { if its ModalResult. If so, then don't make any Action.                              }
   if ModalResult = 0 then
      Action := TCloseAction.caNone;
end;

procedure TFormCustomVCLView.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if (Mode = fmEdit) and (not FIsLineView) then begin
      CanClose := False;
      ShowMessage('No puede cerrar el form mientras está en edición.');
   end;
end;

procedure TFormCustomVCLView.FormCreate(Sender: TObject);
begin
   inherited;
   {The Minimum size of the Window is the design time size}
   //if Self.Name <> 'FormMenuMain' then begin
   //end;
end;

procedure TFormCustomVCLView.CallWebHelp;
begin
   ShellExecute(0, 'OPEN', PChar(FHelpURL), '', '', SW_SHOWNORMAL);
end;

procedure TFormCustomVCLView.FormResize(Sender: TObject);
begin
   Invalidate;
end;

procedure TFormCustomVCLView.TimerMessageTimer(Sender: TObject);
begin
   StatusBar.Panels[0].Text := '';
   TimerMessage.Enabled     := False;
end;

procedure TFormCustomVCLView.SetFormMode(Value :TMode);
begin
   FFormMode := Value;
   DoBeforeChangeMode(Value);
   ChangeMode(Value);
   DoAfterChangeMode(Value);
end;

procedure TFormCustomVCLView.ActivateComponent(aComponent :TComponent);
begin
   { A C T I V A T E }
   if aComponent is TDBGrid then begin
      TDBGrid(aComponent).Enabled  := True;
      TDBGrid(aComponent).TabStop  := True;
      TDBGrid(aComponent).ReadOnly := False;
   end else
   if aComponent is TButton then begin
      TButton(aComponent).Enabled := True;
      TButton(aComponent).TabStop := True;
      //TButton(aComponent).Opacity := 1;
   end else
   if aComponent is TSpeedButton then begin
      TSpeedButton(aComponent).Enabled := True;
      //TSpeedButton(aComponent).TabStop := True;
      //TSpeedButton(aComponent).Opacity := 1;
   end else
   if aComponent is TEdit then begin
      TEdit(aComponent).ReadOnly := False;
      TEdit(aComponent).Enabled  := True;
      TEdit(aComponent).TabStop  := True;
   end else
   if aComponent is TMemo then begin
      TMemo(aComponent).Enabled := True;
      TMemo(aComponent).TabStop := True;
   end else
   if aComponent is TCheckBox then begin
      TCheckBox(aComponent).Enabled := True;
      TCheckBox(aComponent).TabStop := True;
   end else
   if aComponent is TRadioButton then begin
      TRadioButton(aComponent).Enabled := True;
      TRadioButton(aComponent).TabStop := True;
   end else
   if aComponent is TComboBox then begin
      TComboBox(aComponent).Enabled := True;
      TComboBox(aComponent).TabStop := True;
   end else
   if aComponent is TTreeView then begin
      TTreeView(aComponent).Enabled := True;
      TTreeView(aComponent).TabStop := True;
   end else
   if aComponent is TListBox then begin
      TListBox(aComponent).Enabled := True;
      TListBox(aComponent).TabStop := True;
   end else
   if aComponent is TImage then begin
      TImage(aComponent).Enabled := True;
      //TImage(aComponent).TabStop := True;
   end else
   if aComponent is TLinkPropertyToField then begin
      TLinkPropertyToField(aComponent).Active := False;
   end else
   if aComponent is TGroupBox then begin
      TGroupBox(aComponent).Enabled := True;
      TGroupBox(aComponent).TabStop := True;
   end;
end;

procedure TFormCustomVCLView.DeactivateComponent(aComponent :TComponent);
begin
   { D E A C T I V A T E }
   if aComponent is TDBGrid then begin
      TDBGrid(aComponent).Enabled := False;
      TDBGrid(aComponent).TabStop := False;
      //TGrid(aComponent).ReadOnly := True;
   end else
   if aComponent is TButton then begin
      TButton(aComponent).Enabled := False;
      TButton(aComponent).TabStop := False;
   end else
   if aComponent is TSpeedButton then begin
      TSpeedButton(aComponent).Enabled  := False;
      //TSpeedButton(aComponent).TabStop := False;
   end else
   if aComponent is TEdit then begin
      TEdit(aComponent).ReadOnly := True;
      TEdit(aComponent).Enabled  := False;
      TEdit(aComponent).TabStop := False;
   end else
   if aComponent is TMemo then begin
      TMemo(aComponent).Enabled  := False;
      TMemo(aComponent).TabStop := False;
   end else
   if aComponent is TCheckBox then begin
      TCheckBox(aComponent).Enabled  := False;
      TCheckBox(aComponent).TabStop := False;
   end else
   if aComponent is TRadioButton then begin
      TRadioButton(aComponent).Enabled  := False;
      TRadioButton(aComponent).TabStop := False;
   end else
   if aComponent is TComboBox then begin
      TComboBox(aComponent).Enabled  := False;
      TComboBox(aComponent).TabStop := False;
   end else
   if aComponent is TTreeView then begin
      TTreeView(aComponent).Enabled  := False;
      TTreeView(aComponent).TabStop := False;
   end else
   if aComponent is TListBox then begin
      TListBox(aComponent).Enabled  := False;
      TListBox(aComponent).TabStop := False;
   end else
   if aComponent is TImage then begin
      TImage(aComponent).Enabled  := False;
      //TImage(aComponent).TabStop := False;
   end else
   if aComponent is TLinkPropertyToField then begin
      TLinkPropertyToField(aComponent).Active := True;
   end else
   if aComponent is TGroupBox then begin
      TGroupBox(aComponent).Enabled := False;
      TGroupBox(aComponent).TabStop := False;
   end;
end;

procedure TFormCustomVCLView.ChangeMode(Value :TMode);
var i :Integer;
begin
   if FComponentModeList = nil then Exit;
   {The Form }
   case FFormMode of
      fmEdit :begin
         for i := 0 to FComponentModeList.Count - 1 do begin
            {The component }
            case FComponentModeList.Components[i].Mode of
               fmEdit   :begin
                  { A C T I V A T E }
                  ActivateComponent(FComponentModeList.Components[i].Component);
               end;
               fmView:begin
                  { D E A C T I V A T E }
                  DeactivateComponent(FComponentModeList.Components[i].Component);
               end;
               fmReadOnly:begin
                  { R E A D   O N L Y }
                  DeactivateComponent(FComponentModeList.Components[i].Component);
               end;
            end;
         end;
      end;
      fmView:begin
         for i := 0 to FComponentModeList.Count - 1 do begin
            {The component }
            case FComponentModeList.Components[i].Mode of
               fmEdit    :begin
                  { D E A C T I V A T E }
                  DeactivateComponent(FComponentModeList.Components[i].Component);
               end;
               fmView :begin
                  { A C T I V A T E }
                  ActivateComponent(FComponentModeList.Components[i].Component);
               end;
               fmReadOnly:begin
                  { R E A D   O N L Y }
                  DeactivateComponent(FComponentModeList.Components[i].Component);
               end;
            end;
         end;
      end;
   end;
end;

procedure TFormCustomVCLView.DoBeforeChangeMode(Value :TMode);
begin
  if Assigned(FBeforeChangeMode) then BeforeChangeMode(Value);
end;

procedure TFormCustomVCLView.DoAfterChangeMode(Value :TMode);
begin
  if Assigned(FAfterChangeMode) then AfterChangeMode(Value);
end;

procedure TFormCustomVCLView.SetErroneous(Value :TControl);
begin
   {This isn't the standard behavior. To be aware!}
   if FFirstErroneous = nil then begin
      FFirstErroneous := Value;
   end;
end;

procedure TFormCustomVCLView.SetMaxLengthToFields(ADataSet :TDataSet);
var i            :Integer;
    CurComponent :TComponent;
    EditCmp      :TComponent;
    FieldName    :string;
    FoundField   :TField;
begin
   {Set Max Length to all TEdits}
   for i := 0 to Self.ComponentCount -1 do begin
      CurComponent := Self.Components[i];
      if (CurComponent is TLinkControlToField) then begin
         FieldName := TLinkControlToField(CurComponent).FieldName;

         if (TLinkControlToField(CurComponent).Control <> nil  ) and
            (TLinkControlToField(CurComponent).Control is TEdit) then begin
            EditCmp := TEdit(TLinkControlToField(CurComponent).Control);
         end
         else EditCmp := nil;

         if (EditCmp <> nil) and (FieldName <> '') then begin
            FoundField := ADataSet.FindField(FieldName);
            if FoundField <> nil then TEdit(EditCmp).MaxLength := FoundField.DisplayWidth;
         end;
      end;
   end;
end;

{ TComponentMode }
constructor TComponentMode.Create;
begin
   FComponent := nil;
   FMode      := fmFixed;
end;

constructor TComponentMode.Create(AComponent: TWinControl; AMode: TMode);
begin
   FComponent := AComponent;
   FMode      := AMode;
end;

constructor TComponentMode.Create(AComponent: TWinControl; AMode: TMode; prmValidations: TValidations);
begin
  FComponent   := AComponent;
  FMode        := AMode;
  FValidations := prmValidations;
end;

{Obsolete}
(*constructor TComponentMode.Create(AComponent: TComponent; AMode: TMode; prmMaxLength :Integer; prmValidations: TValidations);
begin
  FComponent   := AComponent;
  FMode        := AMode;
  FValidations := prmValidations;
  FMaxLength   := prmMaxLength;
end;*)

{ TComponentModeList }
constructor TComponentModeList.Create;
begin
   inherited Create;
   OwnsObjects := True;
end;

function TComponentModeList.Add(Obj: TComponentMode): Integer;
begin
   Result := inherited Add(Obj);
   if (Obj.Component is TWinControl) then begin
      TWinControl(Obj.Component).TabOrder := Self.Count -1;
   end;
end;

function TComponentModeList.Add(Obj: TComponentMode; prmValidations: TValidations): Integer;
begin
   Result := inherited Add(Obj);
   Components[Result].FValidations := prmValidations;
end;

function TComponentModeList.AddControl(AComponent :TWinControl; AMode :TMode):Integer;
var Component :TComponentMode;
begin
   Component := TComponentMode.Create(AComponent, AMode);
   Result := inherited Add(Component);
   if (Component.Component is TControl) then begin
      TWinControl(Component.Component).TabOrder := Self.Count -1;
   end;
end;

function TComponentModeList.AddControl(AComponent :TWinControl; AMode :TMode; AValidations :TValidations):Integer;
begin
   Result := AddControl(AComponent, AMode);
   Components[Result].FValidations := AValidations;
end;

(*function TComponentModeList.Add(Obj: TComponentMode; prmMaxLength :Integer; prmValidations: TValidations): Integer;
begin
   Result := inherited Add(Obj);

   Components[Result].FValidations := prmValidations;
   Components[Result].FMaxLength   := prmMaxLength;
end;*)

function TComponentModeList.GetObject(Index: Integer): TComponentMode;
begin
   Result := inherited Items[Index] as TComponentMode;
end;

procedure TComponentModeList.Insert(Index: Integer; Obj: TComponentMode);
begin
   inherited Insert(Index, Obj);
end;

{Give a TComponent and returns his Index inside the list. -1 if not found}
function TComponentModeList.ComponentIndex(AComponent :TComponent):Integer;
var i     :Integer;
    //Found :Boolean;
begin
   //Found  := False;
   Result := -1;

   for i := 0 to Count -1 do begin
      if TComponent(TComponentMode(Items[i]).Component).Name = AComponent.Name then begin
         //Found  := True;
         Result := i;
         Break;
      end;
   end;

   //if not Found then Result := -1;
end;

procedure TComponentModeList.ChangeCurrentMode(AComponent :TComponent; AMode :TMode);
begin
   TComponentMode(Self[Self.ComponentIndex(AComponent)]).Mode := AMode;
end;

procedure TComponentModeList.SetObject(Index: Integer; Item: TComponentMode);
begin
   inherited Items[Index] := Item;
end;

end.
