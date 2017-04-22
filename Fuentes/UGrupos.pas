unit UGrupos;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     IBX.IBCustomDataSet, IBX.IBDatabase, Messages, StdCtrls, SysUtils, WinProcs, WinTypes,
     DBGrids, FormHandler, Grids, Mask, frxClass, frxExportPDF, frxDBSet;

type
  TWGrupos = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroDESCRIPCION: TIBStringField;
    QFicheroGRUPO: TIBStringField;
    Panel2: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    FiltroBuscar: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EditFiltroBDescripcion: TDBEdit;
    EditFiltroBGrupo: TDBEdit;
    Datos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditDESCRIPCION: TDBEdit;
    EditGRUPO: TDBEdit;
    DataGrid: TDBGrid;
    Panel1: TPanel;
    BtnAppend: TButton;
    BtnDelete: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    BtnRefresh: TButton;
    BtnReports: TButton;
    BtnModify: TButton;
    DBNavigator: TDBNavigator;
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
    procedure RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LimpiarFiltro(Sender: TObject);
    procedure VerTabla(Sender: TObject);
    procedure BtnReportsClick(Sender: TObject);
  private
    FormManager :TccFormHandler;
    FCampoOrden: String;
    procedure CrearFiltro;
    procedure PrepararQuery;
    procedure RefrescarBD;
  public
  end;

var WGrupos: TWGrupos;

implementation
uses DM, DMConta, DMControl, General, Globales;
{$R *.DFM}

procedure TWGrupos.FormCreate(Sender: TObject);
begin
   FormManager := TccFormHandler.Create(Self);
   
   ActivarTransacciones(self);
   CrearFiltro;
   FCampoOrden := 'Grupo';
   PrepararQuery;

   FormManager.AddComp(DataGrid.Name              , fmBrowse);
   FormManager.AddComp(DBNavigator.Name           , fmBrowse);
   FormManager.AddComp(EditFiltroBGrupo.Name      , fmBrowse);
   FormManager.AddComp(EditFiltroBDescripcion.Name, fmBrowse);
   FormManager.AddComp(EditGRUPO.Name             , fmEdit  );
   FormManager.AddComp(EditDESCRIPCION.Name       , fmEdit  );
   FormManager.AddComp(BtnAppend.Name             , fmBrowse);
   FormManager.AddComp(BtnModify.Name             , fmBrowse);
   FormManager.AddComp(BtnDelete.Name             , fmBrowse);
   FormManager.AddComp(BtnReports.Name            , fmBrowse);
   FormManager.AddComp(BtnRefresh.Name            , fmBrowse);
   FormManager.AddComp(BtnAccept.Name             , fmEdit  );
   FormManager.AddComp(BtnCancel.Name             , fmEdit  );

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;      

procedure TWGrupos.CrearFiltro;
begin
   TBFiltro.Active := False;
   TBFiltro.FieldDefs.Clear;
   TBFiltro.FieldDefs.Add('BGrupo', ftString, 3, False);
   TBFiltro.FieldDefs.Add('BDescripcion', ftstring, 50, False);
   TBFiltro.CreateDataSet;
   TBFiltro.Active := True;
   TBFiltro.Append;
   TBFiltro.FieldByName('BGrupo').AsString       := '';
   TBFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWGrupos.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySQL.Clear;
   QFichero.ModifySQL.Add('UPDATE GRUPOS SET DESCRIPCION=:DESCRIPCION,GRUPO=:GRUPO');
   QFichero.ModifySQL.Add('WHERE GRUPO=:OLD_GRUPO');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM Grupos');

   if TbFiltro.FieldByName('BGrupo').AsString <> '' then begin
      QFichero.SelectSQL.Add(' WHERE UPPER(Grupo) LIKE UPPER(:Grupo)');
   end
   else
   if TbFiltro.FieldByName('BDescripcion').AsString <> '' then begin
      QFichero.SelectSQL.Add('where UPPER(Descripcion) like UPPER(:Descripcion)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;


   if TbFiltro.FieldByName('BGrupo').AsString <> '' then begin
      QFichero.Params.byname('Grupo').AsString := Copy(TbFiltro.FieldByName('BGrupo').AsString + '%', 1,
                                                       TbFiltro.FieldByName('BGrupo').Size);
   end
   else
   if TbFiltro.FieldByName('BDescripcion').AsString <> '' then begin
      QFichero.Params.byname('Descripcion').AsString := Copy(TbFiltro.FieldByName('BDescripcion').AsString + '%', 1,
                                                             TbFiltro.FieldByName('BDescripcion').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;
   QFichero.EnableControls;
end;

procedure TWGrupos.RefrescarBD;
begin
   QueryRefresh(DmContaRef.QGrupos);
   QueryRefresh(DmContaRef.QGruposDesc);
end;

procedure TWGrupos.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   EditGRUPO.SetFocus;
   try
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar un nuevo grupo.');
   end;
   FormManager.Mode := fmEdit;
end;

procedure TWGrupos.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then Exit;
   if MessageDlg('¿Desea borrar este grupo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Delete;
          QFichero.Transaction.CommitRetaining;
          RefrescarBD;
      except DatabaseError('No se ha podido borrar el grupo seleccionado.' + #13 +
                           'El grupo selecccionado esta referenciado en alguna cuenta.');
      end;
   end;
end;

procedure TWGrupos.BtnReportsClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Grupos.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWGrupos.BtnAcceptClick(Sender: TObject);
var
   ha_insertado: Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('Grupo').AsString = '' then  begin
      EditGRUPO.SetFocus;
      DatabaseError('No se puede dejar el código del grupo en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;

   if QFichero.FieldByName('Descripcion').AsString = '' then  begin
      EditGRUPO.SetFocus;
      DatabaseError('No se puede dejar el nombre del grupo en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;

   if not DMRef.ExistenRegistros('TITULOS', 'TITULO = "' +
      Copy(QFichero.FieldByName('GRUPO').AsString, 1, 2) + '"') then  begin
      EditGRUPO.SetFocus;
      DatabaseError('No existe el título ' + Copy(
         QFichero.FieldByName('GRUPO').AsString, 1, 2) + ' al que pertenece el grupo.' +
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
      TbFiltro.FieldByName('BGrupo').AsString := QFicheroGrupo.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;

end;

procedure TWGrupos.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;

   if MessageDlg('¿Quiere anular las modificaciones realizadas a este grupo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWGrupos.RejillaDblClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      try QFichero.Edit;
      except MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditGRUPO.SetFocus;
   end;
end;

procedure TWGrupos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // Si pulsamos enter y el control actual no es un grid pasamos al siguiente
   // control
   if (Key = Chr(VK_RETURN)) then  begin
      // Comprobacion del filtro por codigo de provincia
      if (EditFiltroBGrupo.Focused) and (EditFiltroBGrupo.Text <> '') then begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end

      // Comprobacion del filtro por nombre
      else
      if (EditFiltroBDescripcion.Focused) and (EditFiltroBDescripcion.Text <> '') then begin
         Key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWGrupos.FormShow(Sender: TObject);
begin
   EditFiltroBGrupo.SetFocus;
end;

procedure TWGrupos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            BtnCancel.Click;
            Key := 0;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditFiltroBGrupo) and
            (ActiveControl <> EditFiltroBDescripcion) and not
            (QFichero.State in dsEditModes) then begin
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

procedure TWGrupos.RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
begin
   if (UpperCase(AFieldName) = 'GRUPO') or (UpperCase(AFieldName) = 'DESCRIPCION') then  begin
      FCampoOrden := UpperCase(AFieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWGrupos.RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String;
   AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
begin
   if (UpperCase(AFieldName) = UpperCase(FCampoOrden)) then  begin
      ABrush.Color := clBlue;
      AFont.Style  := [fsBold];
      AFont.Color  := clWhite;
   end;
end;

procedure TWGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWGrupos.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BGrupo').AsString       := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWGrupos.VerTabla(Sender: TObject);
begin
   TBFiltro.Edit;
   TBFiltro.FieldByName('BGrupo').AsString       := '';
   TBFiltro.FieldByName('BDescripcion').AsString := '';
   TBFiltro.Post;
   PrepararQuery;
end;

end.
