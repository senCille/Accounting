unit USecciones;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, Messages, StdCtrls,
     SysUtils, WinProcs, WinTypes, DBGrids, Mask, FormHandler, frxClass, frxExportPDF, frxDBSet;

type
  TWSecciones = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroNOMBRE: TIBStringField;
    QFicheroID_SECCION: TIBStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    Panel1: TPanel;
    BtnRefresh: TSpeedButton;
    BtnNew: TButton;
    BtnModify: TButton;
    BtnDelete: TButton;
    BtnReport: TButton;
    Navigator: TDBNavigator;
    BtnAccept: TButton;
    BtnCancel: TButton;
    Datos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditDESCRIPCION: TDBEdit;
    EditCodigo: TDBEdit;
    FiltroBuscar: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EditFiltroBDESCRIPCION: TDBEdit;
    EditFiltroBCodigo: TDBEdit;
    DataGrid: TDBGrid;
    FastReport: TfrxReport;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LimpiarFiltro(Sender: TObject);
    procedure VerTabla(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure BtnModifyClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnReportClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure DataGridTitleClick(Column: TColumn);
    procedure DataGridDblClick(Sender: TObject);
  private
    FormManager :TccFormHandler;
    FCampoOrden: string;
    procedure CrearFiltro;
    procedure PrepararQuery;
    procedure RefrescarBD;
  public
  end;

var WSecciones: TWSecciones;

implementation

uses DM, DMControl, General, Globales;
{$R *.DFM}

procedure TWSecciones.FormCreate(Sender: TObject);
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
   FCampoOrden := 'ID_SECCION';
   PrepararQuery;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;      

procedure TWSecciones.CrearFiltro;
begin
   TBFiltro.Active := False;
   TBFiltro.FieldDefs.Clear;
   TBFiltro.FieldDefs.Add('BCodigo', ftString, 10, False);
   TBFiltro.FieldDefs.Add('BDescripcion', ftstring, 50, False);
   TBFiltro.CreateDataSet;
   TBFiltro.Active := True;
   TBFiltro.Append;
   TBFiltro.FieldByName('BCodigo').AsString      := '';
   TBFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWSecciones.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySql.Clear;
   QFichero.ModifySql.Add('UPDATE SECCION SET NOMBRE =:NOMBRE, ID_SECCION = :ID_SECCION');
   QFichero.ModifySql.Add('WHERE ID_SECCION = :old_ID_SECCION');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM SECCION');

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE ID_SECCION LIKE :ID_SECCION');
   end else
   if TbFiltro.FieldByName('BDESCRIPCION').AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE UPPER(NOMBRE) LIKE UPPER(:NOMBRE)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then   begin
      QFichero.Params.byname('ID_SECCION').AsString := Copy(TbFiltro.FieldByName('BCODIGO').AsString + '%', 1,
                                                            TbFiltro.FieldByName('BCODIGO').Size);
   end else
   if TBFiltro.FieldByName('BDESCRIPCION').AsString <> '' then   begin
      QFichero.Params.byname('NOMBRE').AsString := Copy(TbFiltro.FieldByName('BDESCRIPCION').AsString + '%', 1,
                                               TbFiltro.FieldByName('BDESCRIPCION').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;
   QFichero.EnableControls;
end;

procedure TWSecciones.RefrescarBD;
begin
   QueryRefresh(DmRef.QSeccion);
   QueryRefresh(DmRef.QSeccionNom);
end;

procedure TWSecciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // Si pulsamos enter y el control actual no es un grid pasamos al siguiente
   // control
   if (Key = Chr(VK_RETURN)) then   begin
      // Comprobacion del filtro por código
      if (EditFiltroBCodigo.Focused) and (EditFiltroBCodigo.Text <> '') then   begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end

      // Comprobacion del filtro por descripción
      else
      if (EditFiltroBDescripcion.Focused) and (EditFiltroBDescripcion.Text <> '') then   begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWSecciones.FormShow(Sender: TObject);
begin
   EditFiltroBCodigo.SetFocus;
end;

procedure TWSecciones.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            Key := 0;
            BtnCancel.Click;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditFiltroBCodigo) and
            (ActiveControl <> EditFiltroBDescripcion) and not
            (QFichero.State in dsEditModes) then   begin
            Key := 0;
            BtnModify.Click;
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

procedure TWSecciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWSecciones.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BCODIGO').AsString      := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
end;

procedure TWSecciones.VerTabla(Sender: TObject);
begin
   TBFiltro.Edit;
   TBFiltro.FieldByName('BCODIGO').AsString      := '';
   TBFiltro.FieldByName('BDESCRIPCION').AsString := '';
   TBFiltro.Post;
   PrepararQuery;
end;

procedure TWSecciones.BtnNewClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   EditCODIGO.SetFocus;
   try
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar una nueva sección.');
   end;
   FormManager.Mode := fmEdit;
end;

procedure TWSecciones.BtnModifyClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      try QFichero.Edit;
      except MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditCODIGO.SetFocus;
   end;
end;

procedure TWSecciones.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then   begin
      if MessageDlg('¿Desea borrar esta sección?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         try QFichero.Delete;
             QFichero.Transaction.CommitRetaining;
             RefrescarBD;
         except DatabaseError('No se ha podido borrar la sección seleccionada.' + #13 +
                              'La sección seleccionada se encuentra referenciada en alguna analítica.');
         end;
      end;
   end;
end;

procedure TWSecciones.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Secciones.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWSecciones.BtnAcceptClick(Sender: TObject);
var ha_insertado :Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('ID_SECCION').AsString = '' then  begin
      EditCODIGO.SetFocus;
      DatabaseError('No se puede dejar el código de la sección en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;

   if QFichero.FieldByName('NOMBRE').AsString = '' then  begin
      EditDESCRIPCION.SetFocus;
      DatabaseError('No se puede dejar el nombre de la sección en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;

   QFichero.Post;
   QFichero.Transaction.CommitRetaining;

   RefrescarBD;
   FormManager.Mode := fmBrowse;
   DataGrid.SetFocus;
   if ha_insertado then  begin
      if not (TbFiltro.State in dsEditModes) then begin
         TbFiltro.Edit;
      end;
      TbFiltro.FieldByName('BCODIGO').AsString := QFicheroID_SECCION.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;

end;

procedure TWSecciones.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;

   if MessageDlg('¿Quiere anular las modificaciones realizadas a esta sección?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWSecciones.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'ID_SECCION') or (UpperCase(Column.FieldName) = 'NOMBRE') then  begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWSecciones.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

end.
