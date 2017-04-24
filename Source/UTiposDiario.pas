unit UTiposDiario;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, jpeg, Mask,
     Messages, StdCtrls, SysUtils, WinProcs, WinTypes, FormHandler, DBGrids,
     frxClass, frxExportPDF, frxDBSet;

type
  TWTiposDiario = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroDESCRIPCION: TIBStringField;
    QFicheroTIPODIARIO: TIBStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    BtnRefresh: TSpeedButton;
    BtnNew: TButton;
    BtnModify: TButton;
    BtnDelete: TButton;
    BtnReport: TButton;
    Navigator: TDBNavigator;
    BtnAccept: TButton;
    BtnCancel: TButton;
    FiltroBuscar: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EditFiltroBDescripcion: TDBEdit;
    EditFiltroBCodigo: TDBEdit;
    Datos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditDescripcion: TDBEdit;
    EditCodigo: TDBEdit;
    DataGrid: TDBGrid;
    Shape1: TShape;
    Label3: TLabel;
    Report: TfrxReport;
    PDFExport: TfrxPDFExport;
    ReportDBLInk: TfrxDBDataset;
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
    FCampoOrden: String;
    procedure CrearFiltro;
    procedure PrepararQuery;
    procedure RefrescarBD;
  public
  end;

var WTiposDiario: TWTiposDiario;

implementation

uses DM, DMControl, Tools, Globales;

{$R *.DFM}

procedure TWTiposDiario.FormCreate(Sender: TObject);
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

   ActivateTransactions(Self, DMRef.BDContab);

   CrearFiltro;
   FCampoOrden := 'TIPODIARIO';
   PrepararQuery;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;      

procedure TWTiposDiario.CrearFiltro;
begin
   TbFiltro.Active := False;
   TbFiltro.FieldDefs.Clear;
   TbFiltro.FieldDefs.Add('BCodigo', ftString, 2, False);
   TbFiltro.FieldDefs.Add('BDescripcion', ftstring, 30, False);
   TbFiltro.CreateDataSet;
   TbFiltro.Active := True;
   TbFiltro.Append;
   TbFiltro.FieldByName('BCODIGO'     ).AsString := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
end;

procedure TWTiposDiario.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySql.Clear;
   QFichero.ModifySql.Add('UPDATE TIPODIARIO SET DESCRIPCION = :DESCRIPCION,');
   QFichero.ModifySql.Add('TIPODIARIO = :TIPODIARIO WHERE TIPODIARIO = :OLD_TIPODIARIO');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM TIPODIARIO');

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE TIPODIARIO LIKE :TIPODIARIO');
   end else
   if TbFiltro.FieldByName('BDESCRIPCION').AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE UPPER(DESCRIPCION) LIKE UPPER(:DESCRIPCION)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then   begin
      QFichero.Params.byname('TIPODIARIO').AsString := Copy(TbFiltro.FieldByName('BCODIGO').AsString + '%', 1,
                                                            TbFiltro.FieldByName('BCODIGO').Size);
   end else
   if TbFiltro.FieldByName('BDESCRIPCION').AsString <> '' then   begin
      QFichero.Params.byname('DESCRIPCION').AsString := Copy(TbFiltro.FieldByName('BDESCRIPCION').AsString + '%', 1,
                                                             TbFiltro.FieldByName('BDESCRIPCION').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;
   QFichero.EnableControls;
end;

procedure TWTiposDiario.RefrescarBD;
begin
   DMRef.QTipoDiario.Close;
   DMRef.QTipodiarioNom.Close;

   DMRef.QTipoDiario.Open;
   DMRef.QTipodiarioNom.Open;
end;

procedure TWTiposDiario.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TWTiposDiario.FormShow(Sender: TObject);
begin
   EditFiltroBCodigo.SetFocus;
end;

procedure TWTiposDiario.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            BtnCancel.Click;
            key := 0;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditFiltroBCodigo) and
            (ActiveControl <> EditFiltroBDescripcion) and not
            (QFichero.State in dsEditModes) then   begin
            //Anulamos el evento de la tecla
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

procedure TWTiposDiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
      WTiposDiario := nil;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWTiposDiario.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BCODIGO').AsString      := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
end;

procedure TWTiposDiario.VerTabla(Sender: TObject);
begin
   TbFiltro.Edit;
   TbFiltro.FieldByName('BCODIGO').AsString      := '';
   TbFiltro.FieldByName('BDESCRIPCION').AsString := '';
   TbFiltro.Post;
   PrepararQuery;
end;

procedure TWTiposDiario.BtnNewClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   EditCodigo.SetFocus;
   try
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar un nuevo tipo de diario.');
   end;
   FormManager.Mode := fmEdit;
end;

procedure TWTiposDiario.BtnModifyClick(Sender: TObject);
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

procedure TWTiposDiario.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then begin
      if MessageDlg('¿Desea borrar este tipo de diario?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         try QFichero.Delete;
             QFichero.Transaction.CommitRetaining;
             RefrescarBD;
         except DatabaseError('No se ha podido borrar el tipo de diario seleccionado.' + #13 +
                              'El tipo de diario seleccionado se encuentra referenciado en algún apunte.');
         end;
      end;
   end;
end;

procedure TWTiposDiario.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Tipos de Diario.pdf';
      PDFExport.OpenAfterExport := True;

      Report.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      Report.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      Report.PrepareReport(True);
      Report.Export(PDFExport);
   end;
end;

procedure TWTiposDiario.BtnAcceptClick(Sender: TObject);
var
   ha_insertado: Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('TIPODIARIO').AsString = '' then  begin
      EditCodigo.SetFocus;
      DatabaseError('No se puede dejar el código del tipo de diario en blanco.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;

   if QFichero.FieldByName('DESCRIPCION').AsString = '' then  begin
      EditDescripcion.SetFocus;
      DatabaseError('No se puede dejar la descripción del tipo de diario en blanco.' +
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
      TbFiltro.FieldByName('BCODIGO').AsString := QFicheroTIPODIARIO.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;

end;

procedure TWTiposDiario.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;

   if MessageDlg('¿Quiere anular las modificaciones realizadas a este tipo de diario?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try    QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWTiposDiario.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'DESCRIPCION') or (UpperCase(Column.FieldName) = 'TIPODIARIO') then  begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWTiposDiario.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

end.
