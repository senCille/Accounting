unit UComerciales;

interface
uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms,
     Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, Mask, Messages, StdCtrls,
     SysUtils, WinProcs, WinTypes, FormHandler, DBGrids, frxClass,
     frxDBSet, frxExportPDF;
type
  TWComerciales = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroNOMBRE: TIBStringField;
    QFicheroCOMERCIAL: TIBStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    BtnAppend: TButton;
    BtnDelete: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    BtnRefresh: TButton;
    BtnReport: TButton;
    BtnModify: TButton;
    Datos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditNombre: TDBEdit;
    EditCodigo: TDBEdit;
    FiltroBuscar: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EditBNombre: TDBEdit;
    EditBCodigo: TDBEdit;
    DataGrid: TDBGrid;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label6: TLabel;
    DBNavigator: TDBNavigator;
    PDFExport: TfrxPDFExport;
    ReportDBLInk: TfrxDBDataset;
    FastReport: TfrxReport;
    procedure BtnAppendClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure RejillaDblClick(Sender: TObject);
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
  private
    FormManager :TccFormHandler;
    FCampoOrden: String;
    procedure CrearFiltro;
    procedure PrepararQuery;
    procedure RefrescarBD;
  public
  end;

var WComerciales: TWComerciales;

implementation
uses DM, DMControl, General, Globales;
{$R *.DFM}

procedure TWComerciales.FormCreate(Sender: TObject);
begin
   Self.Caption := '';
   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(BtnAppend.Name   , fmBrowse);
   FormManager.AddComp(EditBCodigo.Name , fmBrowse);
   FormManager.AddComp(EditBNombre.Name , fmBrowse);
   FormManager.AddComp(EditCodigo.Name  , fmEdit  );
   FormManager.AddComp(EditNombre.Name  , fmEdit  );
   FormManager.AddComp(BtnRefresh.Name  , fmBrowse);
   FormManager.AddComp(BtnAccept.Name   , fmEdit  );
   FormManager.AddComp(BtnCancel.Name   , fmEdit  );
   FormManager.AddComp(BtnDelete.Name   , fmBrowse);
   FormManager.AddComp(BtnModify.Name   , fmBrowse);
   FormManager.AddComp(BtnReport.Name   , fmBrowse);
   FormManager.AddComp(DBNavigator.Name , fmBrowse);
   FormManager.AddComp(DataGrid.Name    , fmBrowse);

   ActivarTransacciones(Self);
   CrearFiltro;
   FCampoOrden := 'COMERCIAL';
   PrepararQuery;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;      

procedure TWComerciales.CrearFiltro;
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

procedure TWComerciales.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySql.Clear;
   QFichero.ModifySql.Add('UPDATE COMERCIALES SET NOMBRE =:NOMBRE, COMERCIAL = :COMERCIAL');
   QFichero.ModifySql.Add('WHERE COMERCIAL = :old_COMERCIAL');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM COMERCIALES');

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then begin
      QFichero.SelectSQL.Add('WHERE COMERCIAL LIKE :COMERCIAL');
   end else
   if TbFiltro.FieldByName('BDESCRIPCION').AsString <> '' then begin
      QFichero.SelectSQL.Add('WHERE UPPER(NOMBRE) LIKE UPPER(:NOMBRE)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then begin
      QFichero.Params.ByName('COMERCIAL').AsString := Copy(TbFiltro.FieldByName('BCODIGO').AsString + '%', 1,
                                                           TbFiltro.FieldByName('BCODIGO').Size);
   end else
   if TbFiltro.FieldByName('BDESCRIPCION').AsString <> '' then begin
      QFichero.Params.byname('NOMBRE').AsString := Copy(TbFiltro.FieldByName('BDESCRIPCION').AsString + '%', 1,
                                                        TbFiltro.FieldByName('BDESCRIPCION').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;
   QFichero.EnableControls;
end;

procedure TWComerciales.RefrescarBD;
begin
   QueryRefresh(DmRef.QComercial);
   QueryRefresh(DmRef.QcomercialNom);
end;

procedure TWComerciales.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   EditCodigo.SetFocus;
   try
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar un nuevo comercial.');
   end;
   FormManager.Mode := fmEdit;
end;

procedure TWComerciales.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then Exit;
   if MessageDlg('¿Desea borrar este comercial?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Delete;
          QFichero.Transaction.CommitRetaining;
          RefrescarBD;
      except DatabaseError('No se ha podido borrar el comercial seleccionado.' + #13 +
                           'El comercial seleccionado se encuentra referenciado en alguna cartera de efectos.');
      end;
   end;
end;

procedure TWComerciales.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Comerciales.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWComerciales.BtnAcceptClick(Sender: TObject);
var
   ha_insertado: Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('COMERCIAL').AsString = '' then  begin
      EditCodigo.SetFocus;
      DatabaseError('No se puede dejar el código del comercial en blanco.' + #13 + 'Por favor, revise los datos de entrada.');
   end;

   if QFichero.FieldByName('NOMBRE').AsString = '' then  begin
      EditNombre.SetFocus;
      DatabaseError('No se puede dejar el nombre del comercial en blanco.' + #13 + 'Por favor, revise los datos de entrada.');
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
      TbFiltro.FieldByName('BCODIGO').AsString := QFicheroCOMERCIAL.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;
end;

procedure TWComerciales.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;

   if MessageDlg('¿Quiere anular las modificaciones realizadas a este comercial?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWComerciales.RejillaDblClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      try QFichero.Edit;
      except MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditCodigo.SetFocus;
   end;
end;

procedure TWComerciales.FormKeyPress(Sender: TObject; var Key: Char);
begin
   { Si pulsamos enter y el control actual no es un grid pasamos al siguiente control}
   if (Key = Chr(VK_RETURN)) then   begin
      if (EditBCodigo.Focused) and (EditBCodigo.Text <> '') then   begin
         Key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end else
      if (EditBNombre.Focused) and (EditBNombre.Text <> '') then   begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWComerciales.FormShow(Sender: TObject);
begin
   EditBCodigo.SetFocus;
end;

procedure TWComerciales.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            Key := 0;
            BtnCancel.Click;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditBCodigo) and
            (ActiveControl <> EditBNombre) and not
            (QFichero.State in dsEditModes) then   begin
            Key := 0;
            BtnModify.Click;
         end;
      end;
      VK_F4: begin
         if not (QFichero.State in dsEditModes) then begin
            BtnAppend.Click;
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

procedure TWComerciales.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWComerciales.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BCODIGO').AsString      := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
end;

procedure TWComerciales.VerTabla(Sender: TObject);
begin
   TBFiltro.Edit;
   TBFiltro.FieldByName('BCODIGO').AsString      := '';
   TBFiltro.FieldByName('BDESCRIPCION').AsString := '';
   TBFiltro.Post;
   PrepararQuery;
end;

procedure TWComerciales.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWComerciales.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'NOMBRE') or (UpperCase(Column.FieldName) = 'COMERCIAL') then  begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

end.
