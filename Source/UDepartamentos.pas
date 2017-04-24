unit UDepartamentos;

interface
uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     Grids, IBX.IBCustomDataSet, IBX.IBDatabase, Mask, Messages, StdCtrls, SysUtils, WinProcs,
     WinTypes, FormHandler, DBGrids, frxClass, frxExportPDF, frxDBSet;

type
  TWDepartamentos = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroNOMBRE: TIBStringField;
    QFicheroID_DEPARTAMENTO: TIBStringField;
    Panel2: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    Panel3: TPanel;
    Panel1: TPanel;
    BtnAppend: TButton;
    BtnDelete: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    BtnRefresh: TButton;
    BtnReport: TButton;
    BtnModify: TButton;
    DBNavigator: TDBNavigator;
    Panel4: TPanel;
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
    FastReport: TfrxReport;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
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

var WDepartamentos: TWDepartamentos;

implementation

uses DM, DMControl, Tools, Globales;

{$R *.DFM}

procedure TWDepartamentos.FormCreate(Sender: TObject);
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

   ActivateTransactions(Self, DMRef.BDContab);

   CrearFiltro;
   FCampoOrden := 'ID_DEPARTAMENTO';
   PrepararQuery;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

procedure TWDepartamentos.CrearFiltro;
begin
   TbFiltro.Active := False;
   TbFiltro.FieldDefs.Clear;
   TbFiltro.FieldDefs.Add('BCodigo', ftString, 10, False);
   TbFiltro.FieldDefs.Add('BDescripcion', ftstring, 50, False);
   TbFiltro.CreateDataSet;
   TbFiltro.Active := True;
   TbFiltro.Append;
   TbFiltro.FieldByName('BCodigo').AsString      := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWDepartamentos.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySql.Clear;
   QFichero.ModifySql.Add('UPDATE DEPARTAMENTO SET NOMBRE =:NOMBRE, ID_DEPARTAMENTO = :ID_DEPARTAMENTO');
   QFichero.ModifySql.Add('WHERE ID_DEPARTAMENTO = :old_ID_DEPARTAMENTO');
   
   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM DEPARTAMENTO');

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE ID_DEPARTAMENTO LIKE :ID_DEPARTAMENTO');
   end else
   if TbFiltro.FieldByName('BDESCRIPCION').AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE UPPER(NOMBRE) LIKE UPPER(:NOMBRE)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then   begin
      QFichero.Params.byname('ID_DEPARTAMENTO').AsString := Copy(TbFiltro.FieldByName('BCODIGO').AsString + '%', 1,
                                                                 TbFiltro.FieldByName('BCODIGO').Size);
   end else
   if TbFiltro.FieldByName('BDESCRIPCION').AsString <> '' then   begin
      QFichero.Params.byname('NOMBRE').AsString := Copy(TbFiltro.FieldByName('BDESCRIPCION').AsString + '%', 1,
                                                        TbFiltro.FieldByName('BDESCRIPCION').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;
   QFichero.EnableControls;
end;

procedure TWDepartamentos.RefrescarBD;
begin
   DMRef.QDepartamento.Close;
   DMRef.QDepartamentoNom.Close;

   DMRef.QDepartamento.Open;
   DMRef.QDepartamentoNom.Open;
end;

procedure TWDepartamentos.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   EditCodigo.SetFocus;
   try
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar un nuevo departamento.');
   end;
   FormManager.Mode := fmEdit;
end;

procedure TWDepartamentos.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then Exit;
   if MessageDlg('¿Desea borrar este departamento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Delete;
          QFichero.Transaction.CommitRetaining;
          RefrescarBD;
      except DatabaseError('No se ha podido borrar el departamento seleccionado.' + #13 +
                           'El departamento seleccionado se encuentra referenciado en alguna analítica.');
      end;
   end;
end;

procedure TWDepartamentos.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Departamentos.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWDepartamentos.BtnAcceptClick(Sender: TObject);
var
   ha_insertado: Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('ID_DEPARTAMENTO').AsString = '' then  begin
      EditCodigo.SetFocus;
      DatabaseError('No se puede dejar el código del departamento en blanco.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;

   if QFichero.FieldByName('NOMBRE').AsString = '' then  begin
      EditNombre.SetFocus;
      DatabaseError('No se puede dejar el nombre del departamento en blanco.' +
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
      TbFiltro.FieldByName('BCODIGO').AsString := QFicheroID_DEPARTAMENTO.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;
end;

procedure TWDepartamentos.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;
   
   if MessageDlg('¿Quiere anular las modificaciones realizadas a este departamento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWDepartamentos.RejillaDblClick(Sender: TObject);
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

procedure TWDepartamentos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TWDepartamentos.FormShow(Sender: TObject);
begin
   EditBCodigo.SetFocus;
end;

procedure TWDepartamentos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            key := 0;
            BtnCancel.Click;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditBCodigo) and
            (ActiveControl <> EditBNombre) and not
            (QFichero.State in dsEditModes) then   begin
            Key := 0;
            RejillaDblClick(Self);
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

procedure TWDepartamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWDepartamentos.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BCODIGO').AsString      := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
end;

procedure TWDepartamentos.VerTabla(Sender: TObject);
begin
   TbFiltro.Edit;
   TbFiltro.FieldByName('BCODIGO').AsString      := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
   TbFiltro.Post;
   PrepararQuery;
end;

procedure TWDepartamentos.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWDepartamentos.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'ID_DEPARTAMENTO') or (UpperCase(Column.FieldName) = 'NOMBRE') then  begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

end.
