unit Proyectos;

interface

uses Buttons, Classes, Controls, DB, Forms, Graphics, Messages, SysUtils, WinProcs, WinTypes, DBClient,
     ExtCtrls, Grids, IBX.IBCustomDataSet, StdCtrls, Mask, DBCtrls, Dialogs, DBGrids,
     IBX.IBDatabase, frxClass, FormHandler, frxExportPDF, frxDBSet;

type
  TWProyectos = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    Panel1: TPanel;
    BtnNew: TButton;
    BtnDelete: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    PanelSombra: TPanel;
    Navigator: TDBNavigator;
    BtnRefresh: TSpeedButton;
    BtnReport: TButton;
    BtnModify: TButton;
    QFicheroNOMBRE:  TIBStringField;
    QFicheroID_PROYECTO: TIBStringField;
    DataGrid: TDBGrid;
    Datos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditDESCRIPCION: TDBEdit;
    EditCODIGO: TDBEdit;
    Panel2: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    FiltroBuscar: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EditFiltroBDESCRIPCION: TDBEdit;
    EditFiltroBCODIGO: TDBEdit;
    FastReport: TfrxReport;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LimpiarFiltro(Sender: TObject);
    procedure VerTabla(Sender: TObject);
    procedure BtnReportClick(Sender: TObject);
    procedure DataGridDblClick(Sender: TObject);
    procedure DataGridTitleClick(Column: TColumn);
    procedure BtnModifyClick(Sender: TObject);
  private
    FormManager :TccFormHandler;
    FCampoOrden :string;
    procedure CrearFiltro;
    procedure PrepararQuery;
    procedure RefrescarBD;
  public
  end;

var WProyectos: TWProyectos;

implementation

uses General, Globales, DM, DMControl;
{$R *.DFM}

procedure TWProyectos.FormCreate(Sender: TObject);
begin
   Self.Caption := '';
   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(BtnNew.Name                , fmBrowse);
   FormManager.AddComp(EditCODIGO.Name            , fmEdit  );
   FormManager.AddComp(EditDESCRIPCION.Name       , fmEdit  );
   FormManager.AddComp(EditFiltroBCODIGO.Name     , fmBrowse);
   FormManager.AddComp(EditFiltroBDESCRIPCION.Name, fmBrowse);
   FormManager.AddComp(BtnRefresh.Name            , fmBrowse);
   FormManager.AddComp(BtnAccept.Name             , fmEdit  );
   FormManager.AddComp(BtnCancel.Name             , fmEdit  );
   FormManager.AddComp(BtnDelete.Name             , fmBrowse);
   FormManager.AddComp(BtnModify.Name             , fmBrowse);
   FormManager.AddComp(BtnReport.Name             , fmBrowse);
   FormManager.AddComp(Navigator.Name             , fmBrowse);
   FormManager.AddComp(DataGrid.Name              , fmBrowse);

   ActivarTransacciones(Self);
   CrearFiltro;
   FCampoOrden := 'ID_PROYECTO';
   PrepararQuery;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

procedure TWProyectos.CrearFiltro;
begin
   TBFiltro.Active := False;
   TBFiltro.FieldDefs.Clear;
   TBFiltro.FieldDefs.Add('BCODIGO'     , ftString, 10, False);
   TBFiltro.FieldDefs.Add('BDESCRIPCION', ftstring, 50, False);
   TBFiltro.CreateDataSet;
   TBFiltro.Active := True;
   TBFiltro.Append;
   TBFiltro.FieldByName('BCODIGO').AsString      := '';
   TBFiltro.FieldByName('BDESCRIPCION').AsString := '';
end;

procedure TWProyectos.PrepararQuery;
begin
   QFichero.DisableControls;
   try
      QFichero.Close;
      QFichero.ModifySQL.Clear;
      QFichero.ModifySQL.Add('UPDATE PROYECTO                      ');
      QFichero.ModifySQL.Add('  SET NOMBRE      = :NOMBRE,         ');
      QFichero.ModifySQL.Add('      ID_PROYECTO = :ID_PROYECTO     ');
      QFichero.ModifySQL.Add('WHERE ID_PROYECTO = :old_ID_PROYECTO ');

      QFichero.Close;
      QFichero.SelectSQL.Clear;
      QFichero.SelectSQL.Add('SELECT ID_PROYECTO,  ');
      QFichero.SelectSQL.Add('       NOMBRE        ');
      QFichero.SelectSQL.Add('FROM PROYECTO        ');

      if TBFiltro.FieldByName('BCODIGO').AsString <> '' then begin
         QFichero.SelectSQL.Add('WHERE ID_PROYECTO LIKE :ID_PROYECTO');
      end
      else
      if TBFiltro.FieldByName('BDESCRIPCION').AsString <> '' then begin
         QFichero.SelectSQL.Add('WHERE UPPER(NOMBRE) LIKE UPPER(:NOMBRE)');
      end;

      if FCampoOrden <> '' then begin
         QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
      end;

      if TbFiltro.FieldByName('BCODIGO').AsString <> '' then begin
         QFichero.Params.ByName('ID_PROYECTO').AsString :=
            Copy(TbFiltro.FieldByName('BCODIGO').AsString + '%', 1,
            TbFiltro.FieldByName('BCODIGO').Size);
      end
      else
      if TbFiltro.FieldByName('BDESCRIPCION').AsString <> '' then begin
         QFichero.Params.ByName('NOMBRE').AsString :=
            Copy(TbFiltro.FieldByName('BDESCRIPCION').AsString + '%', 1,
            TbFiltro.FieldByName('BDESCRIPCION').Size);
      end;

      QFichero.Prepare;
      QFichero.Open;
   finally
      QFichero.EnableControls;
   end;
end;

procedure TWProyectos.RefrescarBD;
begin
   QueryRefresh(DmRef.QProyecto);
   QueryRefresh(DmRef.QProyectoNom);
end;

procedure TWProyectos.BtnNewClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   FormManager.Mode := fmEdit;
   
   EditCODIGO.SetFocus;
   try
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar un nuevo proyecto.');
   end;
end;

procedure TWProyectos.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then begin
      if MessageDlg('¿Desea borrar este proyecto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         try QFichero.Delete;
             QFichero.Transaction.CommitRetaining;
             RefrescarBD;
         except DatabaseError('No se ha podido borrar el proyecto seleccionado.' + #13 +
                              'El proyecto seleccionado se encuentra referenciado en alguna analítica.');
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
      PDFExport.FileName        := 'Proyectos.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWProyectos.BtnAcceptClick(Sender: TObject);
var
   ha_insertado: Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('ID_PROYECTO').AsString = '' then begin
      EditCODIGO.SetFocus;
      DatabaseError('No se puede dejar el código del proyecto en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;

   if QFichero.FieldByName('NOMBRE').AsString = '' then begin
      EditDESCRIPCION.SetFocus;
      DatabaseError('No se puede dejar el nombre del proyecto en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;

   QFichero.Post;
   QFichero.Transaction.CommitRetaining;

   RefrescarBD;
   
   FormManager.Mode := fmBrowse;
  
   DataGrid.SetFocus;
   if ha_insertado then begin
      if not (TbFiltro.State in dsEditModes) then begin
         TbFiltro.Edit;
      end;
      TbFiltro.FieldByName('BCODIGO').AsString := QFicheroID_PROYECTO.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;

end;

procedure TWProyectos.BtnCancelClick(Sender: TObject);
begin
   // Pasamos al siguiente campo antes de comprobar si se ha modificado el registro.
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.Modified then begin
   end;
   if MessageDlg('¿Quiere anular las modificaciones realizadas a este proyecto?',  mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try    QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWProyectos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = Chr(VK_RETURN)) then begin
      { Comprobacion del filtro por código }
      if (EditFiltroBCODIGO.Focused) and (EditFiltroBCODIGO.Text <> '') then begin
         if tbFiltro.State in dsEditModes then begin
            Key := #0;
            tbFiltro.Post;
         end;
         PrepararQuery;
      end else
      // Comprobacion del filtro por descripción
      if (EditFiltroBDESCRIPCION.Focused) and (EditFiltroBDESCRIPCION.Text <> '') then begin
         if tbFiltro.State in dsEditModes then begin
            Key := #0;
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWProyectos.FormShow(Sender: TObject);
begin
   EditFiltroBCODIGO.SetFocus;
end;

procedure TWProyectos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_ESCAPE: begin
         key := 0;
         if QFichero.State in dsEditModes then begin
            BtnCancel.Click;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditFiltroBCODIGO     ) and
            (ActiveControl <> EditFiltroBDESCRIPCION) and not
            (QFichero.State in dsEditModes) then begin
            //Anulamos el evento de la tecla
            Key := 0;
            DataGrid.OnDblClick(Self);
         end;
      end;
      VK_F4: begin
         if not (QFichero.State in dsEditModes) then begin
            BtnNew.Click;
         end;
      end;
      VK_F9: begin
         if QFichero.State in dsEditModes then begin
            BtnAccept.Click;
         end;
      end;
      VK_F12: begin
         if not (QFichero.State in dsEditModes) then begin
            VerTabla(Sender);
         end;
      end;
   end;
end;

procedure TWProyectos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWProyectos.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BCODIGO').AsString      := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
end;

procedure TWProyectos.VerTabla(Sender: TObject);
begin
   TbFiltro.Edit;
   TbFiltro.FieldByName('BCODIGO').AsString      := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
   TbFiltro.Post;
   PrepararQuery;
end;

procedure TWProyectos.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWProyectos.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'ID_PROYECTO') or (UpperCase(Column.FieldName) = 'NOMBRE') then begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWProyectos.BtnModifyClick(Sender: TObject);
begin
   if (DMControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR)) and (not QFichero.IsEmpty) then begin
      try QFichero.Edit;
      except MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditCODIGO.SetFocus;
   end;
end;

end.
