unit Proyectos;

interface

uses Buttons, Classes, Controls, DB, Forms, Graphics, Messages, SysUtils, WinProcs, WinTypes, DBClient,
     ExtCtrls, Grids, IBX.IBCustomDataSet, StdCtrls, Mask, DBCtrls, Dialogs, DBGrids,
     IBX.IBDatabase, frxClass, FormHandler, frxExportPDF, frxDBSet,
     Localization;

type
  TWProyectos = class(TForm)
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
    BtnRefresh: TSpeedButton;
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
    FormManager   :TccFormHandler;
    FLang         :TLangCommon;
    FLangProjects :TLangProjects;
    FOrderField   :string;
    procedure PrepareQuery;
    procedure RefreshDB;
  public
  end;

var WProyectos: TWProyectos;

implementation

uses Globales, Tools, DM, DMControl;

{$R *.DFM}

procedure TWProyectos.FormCreate(Sender: TObject);
begin
   FLang := TLangCommon.Create;
   BtnAccept.Caption      := FLang.BtnAccept;
   BtnCancel.Caption      := FLang.BtnCancel;
   BtnNew.Caption         := FLang.BtnNew;
   BtnModify.Caption      := FLang.BtnModify;
   BtnDelete.Caption      := FLang.BtnDelete;
   BtnReport.Caption      := FLang.BtnReport;
   GroupBoxSearch.Caption := FLang.TextSearch;
   DataGrid.Columns[0].Title.Caption := FLang.TextCode;
   DataGrid.Columns[1].Title.Caption := FLang.TextDescription;

   FLangProjects := TLangProjects.Create;
   LabelFormTitle.Caption     := FLangProjects.FormTitle;
   LabelSearchProject.Caption := FLangProjects.TextProject;
   LabelSearchName.Caption    := FLang.TextName;
   LabelFieldProject.Caption  := FLangProjects.TextProject;
   LabelFieldName.Caption     := FLang.TextName;

   Self.Caption := '';
   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(BtnNew.Name              , fmBrowse);
   FormManager.AddComp(EditCD_PROJECT.Name      , fmEdit  );
   FormManager.AddComp(EditDS_PROJECT.Name      , fmEdit  );
   FormManager.AddComp(EditSearchCD_PROJECT.Name, fmBrowse);
   FormManager.AddComp(EditSearchDS_PROJECT.Name, fmBrowse);
   FormManager.AddComp(BtnRefresh.Name          , fmBrowse);
   FormManager.AddComp(BtnAccept.Name           , fmEdit  );
   FormManager.AddComp(BtnCancel.Name           , fmEdit  );
   FormManager.AddComp(BtnDelete.Name           , fmBrowse);
   FormManager.AddComp(BtnModify.Name           , fmBrowse);
   FormManager.AddComp(BtnReport.Name           , fmBrowse);
   FormManager.AddComp(Navigator.Name           , fmBrowse);
   FormManager.AddComp(DataGrid.Name            , fmBrowse);

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

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

procedure TWProyectos.PrepareQuery;
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

procedure TWProyectos.RefreshDB;
begin
   DMRef.QProyecto.Close;
   DMRef.QProyectoNom.Close;

   DMRef.QProyecto.Open;
   DMRef.QProyectoNom.Open;
end;

procedure TWProyectos.BtnNewClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   FormManager.Mode := fmEdit;
   
   EditCD_PROJECT.SetFocus;
   try
      QData.Insert;
   except
      DatabaseError(FLang.ImposibleInsert);
   end;
end;

procedure TWProyectos.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if not QData.IsEmpty then begin
      if MessageDlg(FLang.AskForDelete, mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         try QData.Delete;
             QData.Transaction.CommitRetaining;
             RefreshDB;
         except DatabaseError(FLang.ImposibleDelete + #13 + Format(FLang.ReferenceMessageText, [FLangProjects.TextProject, FLangProjects.TextAnalytics]));
         end;
      end;
   end;
end;

procedure TWProyectos.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := FLangProjects.TextProject+'.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWProyectos.BtnAcceptClick(Sender: TObject);
begin
   {Force focus to the next taborder control}
   Perform(wm_NextDlgCtl, 0, 0);

   if QDataID_PROYECTO.AsString = '' then begin
      EditCD_PROJECT.SetFocus;
      DatabaseError(Format(FLang.FieldCantBeLeftBlank, [FLang.TextCode]));
   end;

   if QDataNOMBRE.AsString = '' then begin
      EditDS_PROJECT.SetFocus;
      DatabaseError(Format(FLang.FieldCantBeLeftBlank, [FLang.TextDescription]));
   end;

   QData.Post;
   QData.Transaction.CommitRetaining;

   RefreshDB;

   FormManager.Mode := fmBrowse;

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

procedure TWProyectos.BtnCancelClick(Sender: TObject);
begin
   {force focus to the next taborder control}
   Perform(wm_NextDlgCtl, 0, 0);

   if QData.Modified then begin
   end;
   if MessageDlg(FLang.AskCancelEditing,  mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try    QData.Cancel;
      except DatabaseError(FLang.ImposibleCancel);
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWProyectos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TWProyectos.FormShow(Sender: TObject);
begin
   EditSearchCD_PROJECT.SetFocus;
end;

procedure TWProyectos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TWProyectos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QData.State = dsBrowse then begin
      FormManager.Free;
      FLangProjects.Free;
      FLang.Free;
      Action := caFree;
   end
   else ShowMessage(FLang.CloseNotAllowed);
end;

procedure TWProyectos.CleanFilter(Sender: TObject);
begin
   if not (HFilter.state in dseditmodes) then begin
      HFilter.edit;
   end;
   HFilterBCODIGO.AsString      := '';
   HFilterBDESCRIPCION.AsString := '';
end;

procedure TWProyectos.ShowData(Sender: TObject);
begin
   HFilter.Edit;
   HFilterBCODIGO.AsString      := '';
   HFilterBDESCRIPCION.AsString := '';
   HFilter.Post;
   PrepareQuery;
end;

procedure TWProyectos.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWProyectos.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'ID_PROYECTO') or (UpperCase(Column.FieldName) = 'NOMBRE') then begin
      FOrderField := UpperCase(Column.FieldName);
      PrepareQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWProyectos.BtnModifyClick(Sender: TObject);
begin
   if (DMControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR)) and (not QData.IsEmpty) then begin
      try QData.Edit;
      except MessageDlg(FLang.ImposibleModify, mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditCD_PROJECT.SetFocus;
   end;
end;

end.
