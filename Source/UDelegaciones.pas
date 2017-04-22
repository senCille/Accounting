unit UDelegaciones;

interface
uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms,
     Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, Messages, StdCtrls, SysUtils,
     WinProcs, WinTypes, DBGrids, FormHandler, Mask, frxClass, frxExportPDF, frxDBSet;
     
type
  TWDelegaciones = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroNOMBRE: TIBStringField;
    QFicheroID_DELEGACION: TIBStringField;
    Panel2: TPanel;
    Shape1: TShape;
    Label3: TLabel;
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
    FiltroBuscar: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EditBNombre: TDBEdit;
    EditBCodigo: TDBEdit;
    Datos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditNombre: TDBEdit;
    EditCodigo: TDBEdit;
    DataGrid: TDBGrid;
    DBNavigator: TDBNavigator;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    FastReport: TfrxReport;
    procedure BtnAppendClick(Sender: TObject);
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
    procedure BtnModifyClick(Sender: TObject);
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

var WDelegaciones: TWDelegaciones;

implementation

uses DM, DMControl, General, Globales;
{$R *.DFM}

procedure TWDelegaciones.FormCreate(Sender: TObject);
begin
   Self.Caption := '';
   
   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(DBNavigator.Name, fmBrowse);
   FormManager.AddComp(DataGrid.Name   , fmBrowse);
   FormManager.AddComp(BtnAppend.Name  , fmBrowse);
   FormManager.AddComp(BtnModify.Name  , fmBrowse);
   FormManager.AddComp(BtnDelete.Name  , fmBrowse);
   FormManager.AddComp(BtnReport.Name  , fmBrowse);
   FormManager.AddComp(BtnAccept.Name  , fmEdit  );
   FormManager.AddComp(BtnCancel.Name  , fmEdit  );
   FormManager.AddComp(BtnRefresh.Name , fmBrowse);
   FormManager.AddComp(EditBCodigo.Name, fmBrowse);
   FormManager.AddComp(EditBNombre.Name, fmBrowse);
   FormManager.AddComp(EditCodigo.Name , fmEdit  );
   FormManager.AddComp(EditNombre.Name , fmEdit  );

   ActivarTransacciones(Self);
   CrearFiltro;
   FCampoOrden := 'ID_DELEGACION';
   PrepararQuery;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

procedure TWDelegaciones.CrearFiltro;
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

procedure TWDelegaciones.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySql.Clear;
   QFichero.ModifySql.Add('UPDATE DELEGACION SET NOMBRE =:NOMBRE, ID_DELEGACION = :ID_DELEGACION');
   QFichero.ModifySql.Add('WHERE ID_DELEGACION = :old_ID_DELEGACION');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM DELEGACION');

   if TBFiltro.FieldByName('BCODIGO').AsString <> '' then begin
      QFichero.SelectSQL.Add('WHERE ID_DELEGACION LIKE :ID_DELEGACION');
   end
   else
   if TbFiltro.FieldByName('BDESCRIPCION').AsString <> '' then begin
      QFichero.SelectSQL.Add('WHERE UPPER(NOMBRE) LIKE UPPER(:NOMBRE)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;

   if TBFiltro.FieldByName('BCODIGO').AsString <> '' then begin
      QFichero.Params.ByName('ID_DELEGACION').AsString := Copy(TBFiltro.FieldByName('BCODIGO').AsString + '%', 1,
                                                               TBFiltro.FieldByName('BCODIGO').Size);
   end
   else
   if TBFiltro.FieldByName('BDESCRIPCION').AsString <> '' then begin
      QFichero.Params.ByName('NOMBRE').AsString := Copy(TBFiltro.FieldByName('BDESCRIPCION').AsString + '%', 1,
                                                         TBFiltro.FieldByName('BDESCRIPCION').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;
   QFichero.EnableControls;
end;

procedure TWDelegaciones.RefrescarBD;
begin
   QueryRefresh(DmRef.QDelegacion);
   QueryRefresh(DmRef.QDelegacionNom);
end;

procedure TWDelegaciones.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   EditCodigo.SetFocus;
   try
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar una nueva delegación.');
   end;
   FormManager.Mode := fmEdit;
end;

procedure TWDelegaciones.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then Exit;
   if MessageDlg('¿Desea borrar esta delegación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Delete;
          QFichero.Transaction.CommitRetaining;
          RefrescarBD;
      except DatabaseError('No se ha podido borrar la delegación seleccionada.' + #13 +
                           'La delegación seleccionada se encuentra referenciada en alguna analítica.');
      end;
   end;
end;

procedure TWDelegaciones.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Delegaciones.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWDelegaciones.BtnAcceptClick(Sender: TObject);
var ha_insertado :Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('ID_DELEGACION').AsString = '' then  begin
      EditCodigo.SetFocus;
      DatabaseError('No se puede dejar el código de la delegación en blanco.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;

   if QFichero.FieldByName('NOMBRE').AsString = '' then  begin
      EditNombre.SetFocus;
      DatabaseError('No se puede dejar el nombre de la delegación en blanco.' +
         #13 + 'Por favor, revise los datos de entrada.');
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
      TbFiltro.FieldByName('BCODIGO').AsString := QFicheroID_DELEGACION.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;
end;

procedure TWDelegaciones.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;
   
   if MessageDlg('¿Quiere anular las modificaciones realizadas a esta delegación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWDelegaciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // Si pulsamos enter y el control actual no es un grid pasamos al siguiente
   // control
   if (Key = Chr(VK_RETURN)) then   begin
      // Comprobacion del filtro por código
      if (EditBCodigo.Focused) and (EditBCodigo.Text <> '') then   begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end

      // Comprobacion del filtro por descripción
      else
      if (EditBNombre.Focused) and (EditBNombre.Text <> '') then   begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWDelegaciones.FormShow(Sender: TObject);
begin
   EditBCodigo.SetFocus;
end;

procedure TWDelegaciones.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TWDelegaciones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWDelegaciones.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BCODIGO').AsString      := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
end;

procedure TWDelegaciones.VerTabla(Sender: TObject);
begin
   TBFiltro.Edit;
   TBFiltro.FieldByName('BCODIGO').AsString      := '';
   TBFiltro.FieldByName('BDESCRIPCION').AsString := '';
   TBFiltro.Post;
   PrepararQuery;
end;

procedure TWDelegaciones.BtnModifyClick(Sender: TObject);
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

procedure TWDelegaciones.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWDelegaciones.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'ID_DELEGACION') or (UpperCase(Column.FieldName) = 'NOMBRE') then  begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

end.
