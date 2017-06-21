unit ControllerImportData;

interface

uses Buttons, Classes, Controls, DB, Dialogs, ExtCtrls, Forms, Graphics, IBX.IBDatabase, IBX.IBSQL,
     Messages, StdCtrls, SysUtils, Variants, Windows, IBX.IBCustomDataSet, IBX.IBTable,
     senCille.CustomController,
     senCille.Setup,
     ModelImportData;

type
  TImportDataView = class(TForm)
    RgTipo: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
   private
   public
   end;

   {-------------------------------------------------------------------------------------------------------------------------}

  TImportDataController = class(TCustomController)
  private
    FModel        :TImportDataModel;
    FView         :TImportDataView;
    procedure InitializeView;
  protected
    procedure OnShowForm     (Sender :TObject);
    procedure OnFormClose    (Sender: TObject; var Action: TCloseAction);
  public
    constructor Create(aSetup :TSetup); override;
    destructor  Destroy;                override;
    procedure   Run;                    override;
    procedure   BringToFront;           override;
    procedure   CloseView;              override;
  end;

implementation

uses System.UITypes,
     senCille.ControllersManager,
     DM;

{$R *.dfm}

{ TImportDataController }

constructor TImportDataController.Create(aSetup: TSetup);
begin
   FView := nil;
   inherited;

   FModel := TImportDataModel.Create(DMRef.BDContab);
end;

procedure TImportDataController.InitializeView;
begin
   //FView.Mode := fmView;
end;

procedure TImportDataController.Run;
begin
   inherited;

   { view Creation }
   FView := TImportDataView.Create(Application);

   InitializeView;

   {Assignament of Resources}
   FView.Caption := 'Import Data';

   {Assignment of delegates}
   FView.OnShow     := OnShowForm;
   FView.OnClose    := OnFormClose;

   FView.Show;
end;

procedure TImportDataController.CloseView;
begin
   {The only mission of this method is to make public the method Close of the private property FView}
   {Don't put here code for resources releasing!!!!!!}
   FView.Close;
end;


destructor TImportDataController.Destroy;
begin
   FModel.Free;
   inherited;
end;

procedure TImportDataController.BringToFront;
begin
   FView.BringToFront;
   if FView.WindowState = TWindowState.wsMinimized then
       FView.WindowState := TWindowState.wsNormal;
end;

procedure TImportDataController.OnFormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   { We launch the  release message }
   TControllersManager(CallerManager).FreeController(Self);
   Action := TCloseAction.caFree;
end;

procedure TImportDataController.OnShowForm(Sender: TObject);
begin
   inherited;
end;

end.
