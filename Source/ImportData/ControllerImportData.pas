unit ControllerImportData;

interface

uses Buttons, Classes, Controls, DB, Dialogs, ExtCtrls, Forms, Graphics, IBX.IBDatabase, IBX.IBSQL,
     Messages, StdCtrls, SysUtils, Variants, Windows, IBX.IBCustomDataSet, IBX.IBTable,
     senCille.CustomController,
     senCille.Setup,
     ModelImportData;

type
  TImportDataView = class(TForm)
    BtnImportSuppliers: TBitBtn;
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
    procedure OnClick_ImporrSuppliers(Sender :TObject);
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
     senCille.FrameworkTools,
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
   FView.BtnImportSuppliers.OnClick := OnClick_ImporrSuppliers;
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

procedure TImportDataController.OnClick_ImporrSuppliers(Sender: TObject);
var OpenDialog :TOpenDialog;
    FileName   :string;
    Lines      :TStringList;
    Line       :string;
    i          :Integer;
    Tokens     :TStringList;
begin
   OpenDialog := TOpenDialog.Create(nil);
   try
      OpenDialog.Title       := 'Import Data from this file into the accounts of Suppliers';
      OpenDialog.Options     := [];
      OpenDialog.InitialDir  := Setup.DocumentFolder;
      OpenDialog.Filter      := 'Texto|*.txt';
      OpenDialog.FilterIndex := 0;
      OpenDialog.DefaultExt  := '';

      if OpenDialog.Execute then begin
         FileName := OpenDialog.FileName;
         Lines := TStringList.Create;
         try
            Lines.LoadFromFile(FileName);
            for i := 0 to Lines.Count -1 do begin
               Line := Lines[i];
               Tokens := TfwTools.Split(#9, Line);
               try
                  FModel.ProcessSupplier(Tokens);
                  //ShowMessage('COUNT     ' + Tokens[COUNT    ]);
                  //ShowMessage('ID_FISCAL ' + Tokens[ID_FISCAL]);
                  //ShowMessage('NAME      ' + Tokens[NAME     ]);
                  //ShowMessage('ADDRESS_1 ' + Tokens[ADDRESS_1]);
                  //ShowMessage('CITY      ' + Tokens[CITY     ]);
                  //ShowMessage('PROVINCE  ' + Tokens[PROVINCE ]);
                  //ShowMessage('PHONE_1   ' + Tokens[PHONE_1  ]);
                  //ShowMessage('PHONE_2   ' + Tokens[PHONE_2  ]);
                  //ShowMessage('EMAIL     ' + Tokens[EMAIL    ]);
                  //ShowMessage('CONTACT   ' + Tokens[CONTACT  ]);
                  //ShowMessage('NOTHING_1 ' + Tokens[NOTHING_1]);
                  //ShowMessage('NUMBER    ' + Tokens[NUMBER   ]);
                  //ShowMessage('NOTHING_2 ' + Tokens[NOTHING_2]);
                  //ShowMessage('NOTHING_3 ' + Tokens[NOTHING_3]);
                  //ShowMessage('ACCOUNT   ' + Tokens[ACCOUNT  ]);
               finally
                  Tokens.Free;
               end;
            end;
         finally
            Lines.Free;
         end;
      end;
   finally
      OpenDialog.Free;
   end;
   Dialogs.ShowMessage('Import of external data finished!!!');
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
