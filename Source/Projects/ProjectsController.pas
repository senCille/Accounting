unit ProjectsController;

interface

uses Buttons, Classes, Controls, DB, Forms, Graphics, Messages, SysUtils, WinProcs, WinTypes, DBClient,
     ExtCtrls, Grids, IBX.IBCustomDataSet, StdCtrls, Mask, DBCtrls, Dialogs, DBGrids,
     IBX.IBDatabase, frxClass, frxExportPDF, frxDBSet,
     senCille.CustomVCLView,
     //senCille.CustomController,
     Localization;

type
  TProjectsView = class(TFormCustomVCLView)
    SData: TDataSource;
    QData: TIBDataSet;
    Transaction: TIBTransaction;
    Panel1: TPanel;
    BtnNew: TButton;
    BtnDelete: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    HFilter: TClientDataSet;
    sFiltro: TDataSource;
    Panel99: TPanel;
    Navigator: TDBNavigator;
    BtnRefresh: TButton;
    BtnReport: TButton;
    BtnModify: TButton;
    DataGrid: TDBGrid;
    GroupBoxData: TGroupBox;
    LabelFieldProject: TLabel;
    LabelFieldName: TLabel;
    EditDS_PROJECT: TDBEdit;
    EditCD_PROJECT: TDBEdit;
    Panel2: TPanel;
    Shape1: TShape;
    LabelFormTitle: TLabel;
    GroupBoxSearch: TGroupBox;
    LabelSearchName: TLabel;
    LabelSearchProject: TLabel;
    EditSearchDS_PROJECT: TDBEdit;
    EditSearchCD_PROJECT: TDBEdit;
    FastReport: TfrxReport;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    HFilterBCODIGO: TStringField;
    HFilterBDESCRIPCION: TStringField;
    QDataID_PROYECTO: TWideStringField;
    QDataNOMBRE: TWideStringField;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CleanFilter(Sender: TObject);
    procedure ShowData(Sender: TObject);
    procedure BtnReportClick(Sender: TObject);
    procedure DataGridDblClick(Sender: TObject);
    procedure DataGridTitleClick(Column: TColumn);
    procedure BtnModifyClick(Sender: TObject);
  private
    FLang       :TLangProjects;
    FOrderField :string;
    procedure PrepareQuery;
    procedure RefreshDB;
  public
  end;

{+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++}
(*  TProjectsController = class(TCustomController)
  private
    FModel        :TProjectsModel;
    FView         :TProjectsView;
    {FState        :TEditState;
    FEditItem     :TProjectOrm;
    FShowItem     :TProjectOrm;
    FListItems    :TObjectList<TActivityOrm>;
    FToolTips     :TToolTipsController;
    FReportDesign :TReportingController;
    FReportList   :TReportingController;
    procedure InitializeView;
    procedure SyncTreeView;}
    {--- View Layout ---}
    //procedure ApplyViewLayout(AViewLayout :TCustomViewLayout);
    //procedure SaveViewLayout(AViewLayout :TCustomViewLayout);
  {$IFDEF UNIT_TESTING} public {$ELSE} protected {$IFEND}
    //procedure OnShowForm     (Sender :TObject);
    //procedure OnClick_New    (Sender :TObject);
    //procedure OnClick_Modify (Sender :TObject);
    //procedure OnClick_Delete (Sender :TObject);
    //procedure OnClick_Report (Sender :TObject);
    //procedure OnClick_Accept (Sender :TObject);
    //procedure OnClick_Cancel (Sender :TObject);
    //procedure OnClick_First  (Sender :TObject);
    //procedure OnClick_Prior  (Sender :TObject);
    //procedure OnClick_Next   (Sender :TObject);
    //procedure OnClick_Last   (Sender :TObject);
    //procedure OnClick_Help   (Sender :TObject);
    //procedure OnFormClose    (Sender: TObject; var Action: TCloseAction);
    //procedure OnClick_BtnOK  (Sender :TObject);

    //procedure OnClick_Refresh(Sender :TObject);
    //procedure OnClick_Clone  (Sender :TObject);

    //procedure OnClick_BtnGoSearch (Sender :TObject);
    //procedure OnClick_BtnGoEdition(Sender :TObject);

    //procedure DoApplyStyleTreeNodes(Sender: TObject);
    //function  InsertTreeViewItem(aItem: TActivityOrm; aItemIndex :Integer):TTreeViewItem;
    //procedure RefreshTreeView;

    {For order by}
    //procedure OnClick_OrderByCodigo(Sender :TObject);
    //procedure OnClick_OrderByDescripcion(Sender :TObject);

    //procedure ResultOfReportList(Sender: TObject; ReturnValue :TModalResult);
    //procedure ResultOfReportDesign(Sender: TObject; ReturnValue :TModalResult);

    {-------------------------------}
    //procedure OnDblClick_TreeView(Sender: TObject);
    //procedure OnKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    //procedure OnTreeViewKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    //procedure EditSearchTextOnKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    //procedure OnClick_TreeViewItem(Sender: TObject);

    //procedure OnFormActivate(Sender: TObject);
    //procedure OnClick_ReportsDesign(Sender :TObject);
    //procedure Search(Sender: TObject);
  public
    //constructor Create(aSetup :TSetup); override;
    //destructor  Destroy;                override;
    //procedure   Run;                    override;
    //procedure   BringToFront;           override;
    //procedure   CloseView;              override;
    //function    Locate(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions):Boolean; override;
  end;      *)

var ProjectsView: TProjectsView;

implementation

uses  System.UITypes,
      Globales, Tools, DM, DMControl;

{$R *.DFM}

procedure TProjectsView.FormCreate(Sender: TObject);
begin
   inherited;

   BtnAccept.Caption      := Config.Lang.BtnAccept;
   BtnCancel.Caption      := Config.Lang.BtnCancel;
   BtnNew.Caption         := Config.Lang.BtnNew;
   BtnModify.Caption      := Config.Lang.BtnModify;
   BtnDelete.Caption      := Config.Lang.BtnDelete;
   BtnReport.Caption      := Config.Lang.BtnReport;
   GroupBoxSearch.Caption := Config.Lang.TextSearch;
   DataGrid.Columns[0].Title.Caption := Config.Lang.TextCode;
   DataGrid.Columns[1].Title.Caption := Config.Lang.TextDescription;

   FLang := TLangProjects.Create;
   LabelFormTitle.Caption     := FLang.FormTitle;
   LabelSearchProject.Caption := FLang.TextProject;
   LabelSearchName.Caption    := Config.Lang.TextName;
   LabelFieldProject.Caption  := FLang.TextProject;
   LabelFieldName.Caption     := Config.Lang.TextName;

   Self.Caption := '';

   Self.ModeList.AddControl(Self.BtnNew              , fmView);
   Self.ModeList.AddControl(Self.EditCD_PROJECT      , fmEdit);
   Self.ModeList.AddControl(Self.EditDS_PROJECT      , fmEdit);
   Self.ModeList.AddControl(Self.EditSearchCD_PROJECT, fmView);
   Self.ModeList.AddControl(Self.EditSearchDS_PROJECT, fmView);
   Self.ModeList.AddControl(Self.BtnRefresh          , fmView);
   Self.ModeList.AddControl(Self.BtnAccept           , fmEdit);
   Self.ModeList.AddControl(Self.BtnCancel           , fmEdit);
   Self.ModeList.AddControl(Self.BtnDelete           , fmView);
   Self.ModeList.AddControl(Self.BtnModify           , fmView);
   Self.ModeList.AddControl(Self.BtnReport           , fmView);
   Self.ModeList.AddControl(Self.Navigator           , fmView);
   Self.ModeList.AddControl(Self.DataGrid            , fmView);

   ActivateTransactions(Self, DMRef.BDContab);

   {Filter Inicialization}
   HFilter.Active := False;
   HFilter.CreateDataSet;
   HFilter.Active := True;
   HFilter.Append;
   HFilterBCODIGO.AsString      := '';
   HFilterBDESCRIPCION.AsString := '';

   FOrderField := 'ID_PROYECTO';
   PrepareQuery;

   Self.Mode := fmEdit;
   Self.Mode := fmView;
end;

procedure TProjectsView.PrepareQuery;
begin
   QData.DisableControls;
   try
      QData.Close;
      QData.ModifySQL.Clear;
      QData.ModifySQL.Add('UPDATE PROYECTO                      ');
      QData.ModifySQL.Add('  SET NOMBRE      = :NOMBRE,         ');
      QData.ModifySQL.Add('      ID_PROYECTO = :ID_PROYECTO     ');
      QData.ModifySQL.Add('WHERE ID_PROYECTO = :old_ID_PROYECTO ');

      QData.Close;
      QData.SelectSQL.Clear;
      QData.SelectSQL.Add('SELECT ID_PROYECTO,  ');
      QData.SelectSQL.Add('       NOMBRE        ');
      QData.SelectSQL.Add('FROM PROYECTO        ');

      if HFilterBCODIGO.AsString <> '' then begin
         QData.SelectSQL.Add('WHERE ID_PROYECTO LIKE :ID_PROYECTO');
      end
      else
      if HFilterBDESCRIPCION.AsString <> '' then begin
         QData.SelectSQL.Add('WHERE UPPER(NOMBRE) LIKE UPPER(:NOMBRE)');
      end;

      if FOrderField <> '' then begin
         QData.SelectSQL.Add('ORDER BY ' + FOrderField);
      end;

      if HFilterBCODIGO.AsString <> '' then begin
         QData.Params.ByName('ID_PROYECTO').AsString := Copy(HFilterBCODIGO.AsString + '%', 1, HFilterBCODIGO.Size);
      end else
      if HFilterBDESCRIPCION.AsString <> '' then begin
         QData.Params.ByName('NOMBRE').AsString := Copy(HFilterBDESCRIPCION.AsString + '%', 1, HFilterBDESCRIPCION.Size);
      end;

      QData.Prepare;
      QData.Open;
   finally
      QData.EnableControls;
   end;
end;

procedure TProjectsView.RefreshDB;
begin
   DMRef.QProyecto.Close;
   DMRef.QProyectoNom.Close;

   DMRef.QProyecto.Open;
   DMRef.QProyectoNom.Open;
end;

procedure TProjectsView.BtnNewClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   Self.Mode := fmEdit;
   
   EditCD_PROJECT.SetFocus;
   try
      QData.Insert;
   except
      DatabaseError(Config.Lang.ImposibleInsert);
   end;
end;

procedure TProjectsView.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if not QData.IsEmpty then begin
      if MessageDlg(Config.Lang.AskForDelete, mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         try QData.Delete;
             QData.Transaction.CommitRetaining;
             RefreshDB;
         except DatabaseError(Config.Lang.ImposibleDelete + #13 + Format(Config.Lang.ReferenceMessageText, [FLang.TextProject, FLang.TextAnalytics]));
         end;
      end;
   end;
end;

procedure TProjectsView.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := FLang.TextProject+'.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TProjectsView.BtnAcceptClick(Sender: TObject);
begin
   {Force focus to the next taborder control}
   Perform(wm_NextDlgCtl, 0, 0);

   if QDataID_PROYECTO.AsString = '' then begin
      EditCD_PROJECT.SetFocus;
      DatabaseError(Format(Config.Lang.FieldCantBeLeftBlank, [Config.Lang.TextCode]));
   end;

   if QDataNOMBRE.AsString = '' then begin
      EditDS_PROJECT.SetFocus;
      DatabaseError(Format(Config.Lang.FieldCantBeLeftBlank, [Config.Lang.TextDescription]));
   end;

   QData.Post;
   QData.Transaction.CommitRetaining;

   RefreshDB;

   Self.Mode := fmView;

   DataGrid.SetFocus;
   if QData.State = dsInsert then begin
      if not (HFilter.State in dsEditModes) then begin
         HFilter.Edit;
      end;
      HFilterBCODIGO.AsString := QDataID_PROYECTO.AsString;
      PrepareQuery;
      CleanFilter(Sender);
   end;
end;

procedure TProjectsView.BtnCancelClick(Sender: TObject);
begin
   {force focus to the next taborder control}
   Perform(wm_NextDlgCtl, 0, 0);

   if QData.Modified then begin
   end;
   if MessageDlg(Config.Lang.AskCancelEditing,  mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try    QData.Cancel;
      except DatabaseError(Config.Lang.ImposibleCancel);
      end;
      Self.Mode := fmView;
   end;
end;

procedure TProjectsView.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = Chr(VK_RETURN)) then begin
      { Check code can't be left in blank }
      if (EditSearchCD_PROJECT.Focused) and (EditSearchCD_PROJECT.Text <> '') then begin
         if HFilter.State in dsEditModes then begin
            Key := #0;
            HFilter.Post;
         end;
         PrepareQuery;
      end else
      { Check description can be left blank }
      if (EditSearchDS_PROJECT.Focused) and (EditSearchDS_PROJECT.Text <> '') then begin
         if HFilter.State in dsEditModes then begin
            Key := #0;
            HFilter.Post;
         end;
         PrepareQuery;
      end;
   end;
end;

procedure TProjectsView.FormShow(Sender: TObject);
begin
   EditSearchCD_PROJECT.SetFocus;
end;

procedure TProjectsView.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_ESCAPE: begin
         key := 0;
         if QData.State in dsEditModes then begin
            BtnCancel.Click;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditSearchCD_PROJECT) and
            (ActiveControl <> EditSearchDS_PROJECT) and not
            (QData.State in dsEditModes) then begin
            Key := 0;
            DataGrid.OnDblClick(Self);
         end;
      end;
      VK_F4: begin
         if not (QData.State in dsEditModes) then begin
            BtnNew.Click;
         end;
      end;
      VK_F9: begin
         if QData.State in dsEditModes then begin
            BtnAccept.Click;
         end;
      end;
      VK_F12: begin
         if not (QData.State in dsEditModes) then begin
            ShowData(Sender);
         end;
      end;
   end;
end;

procedure TProjectsView.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QData.State = dsBrowse then begin
      FLang.Free;
      Action := caFree;
   end
   else ShowMessage(Config.Lang.CloseNotAllowed);
end;

procedure TProjectsView.CleanFilter(Sender: TObject);
begin
   if not (HFilter.State in dsEditModes) then begin
      HFilter.edit;
   end;
   HFilterBCODIGO.AsString      := '';
   HFilterBDESCRIPCION.AsString := '';
end;

procedure TProjectsView.ShowData(Sender: TObject);
begin
   HFilter.Edit;
   HFilterBCODIGO.AsString      := '';
   HFilterBDESCRIPCION.AsString := '';
   HFilter.Post;
   PrepareQuery;
end;

procedure TProjectsView.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TProjectsView.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'ID_PROYECTO') or (UpperCase(Column.FieldName) = 'NOMBRE') then begin
      FOrderField := UpperCase(Column.FieldName);
      PrepareQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TProjectsView.BtnModifyClick(Sender: TObject);
begin
   if (DMControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR)) and (not QData.IsEmpty) then begin
      try QData.Edit;
      except MessageDlg(Config.Lang.ImposibleModify, mtInformation, [mbOK], 0);
      end;
      Self.Mode := fmEdit;
      EditCD_PROJECT.SetFocus;
   end;
end;

end.
