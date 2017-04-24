unit UConceptos;

interface
uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms,
     Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, Mask, Messages, SysUtils,
     WinProcs, WinTypes, FormHandler, DBGrids, StdCtrls, frxClass,
  frxDBSet, frxExportPDF;

type
  TWConceptos = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroTIPOCONCEPTO: TIBStringField;
    QFicheroTipoConceptoDesc: TStringField;
    QFicheroDESCRIPCION: TIBStringField;
    QFicheroTIPOCONTABILIDAD: TIBStringField;
    QFicheroTipoContabilidadDesc: TIBStringField;
    QFicheroID_CONCEPTOS: TIBStringField;
    QFicheroOBSOLETO: TIBStringField;
    QFicheroSUBCUENTA: TIBStringField;
    QFicheroCONTRAPARTIDA: TIBStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    Label3: TLabel;
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
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditDescripcion: TDBEdit;
    RadioGroupTIPO: TDBRadioGroup;
    EditConcepto: TDBEdit;
    RadioGroupCLASE: TDBRadioGroup;
    CheckBoxOBSOLETO: TDBCheckBox;
    ComboBoxCD_Contrapartida: TDBLookupComboBox;
    ComboBoxDS_CONTRAPARTIDA: TDBLookupComboBox;
    ComboBoxCD_Subcuenta: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA: TDBLookupComboBox;
    DataGrid: TDBGrid;
    QSubCuentas: TIBDataSet;
    QSubCuentasSUBCUENTA: TIBStringField;
    QSubCuentasDESCRIPCION: TIBStringField;
    QSubCuentasABREVIATURA: TIBStringField;
    SSubCuentas: TDataSource;
    DBNavigator: TDBNavigator;
    FastReport: TfrxReport;
    PDFExport: TfrxPDFExport;
    ReportDBLInk: TfrxDBDataset;
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
    procedure QFicheroCalcFields(DataSet: TDataSet);
    procedure QFicheroNewRecord(DataSet: TDataSet);
    procedure DataGridTitleClick(Column: TColumn);
    procedure DataGridDblClick(Sender: TObject);
    procedure BtnModifyClick(Sender: TObject);
  private
    FormManager :TccFormHandler;
    FCampoOrden: String;
    procedure CrearFiltro;
    procedure PrepararQuery;
    procedure RefrescarBD;
  public
  end;

var WConceptos: TWConceptos;

implementation

uses DM, DMConta, DMControl, Tools, Globales;

{$R *.DFM}

procedure TWConceptos.FormCreate(Sender: TObject);
begin
   Self.Caption := '';
   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(EditBCodigo.Name , fmBrowse);
   FormManager.AddComp(EditBNombre.Name , fmBrowse);
   FormManager.AddComp(BtnAppend.Name   , fmBrowse);
   FormManager.AddComp(BtnRefresh.Name  , fmBrowse);
   FormManager.AddComp(BtnAccept.Name   , fmEdit  );
   FormManager.AddComp(BtnCancel.Name   , fmEdit  );
   FormManager.AddComp(BtnDelete.Name   , fmBrowse);
   FormManager.AddComp(BtnModify.Name   , fmBrowse);
   FormManager.AddComp(BtnReport.Name   , fmBrowse);
   FormManager.AddComp(DBNavigator.Name , fmBrowse);
   FormManager.AddComp(DataGrid.Name    , fmBrowse);

   FormManager.AddComp(EditConcepto.Name            , fmEdit  );
   FormManager.AddComp(EditDescripcion.Name         , fmEdit  );
   FormManager.AddComp(ComboBoxCD_Subcuenta.Name    , fmEdit  );
   FormManager.AddComp(ComboBoxDS_SUBCUENTA.Name    , fmEdit  );
   FormManager.AddComp(ComboBoxCD_Contrapartida.Name, fmEdit  );
   FormManager.AddComp(ComboBoxDS_CONTRAPARTIDA.Name, fmEdit  );
   FormManager.AddComp(RadioGroupTIPO.Name          , fmEdit  );
   FormManager.AddComp(RadioGroupCLASE.Name         , fmEdit  );
   FormManager.AddComp(CheckBoxOBSOLETO.Name        , fmEdit  );

   ActivateTransactions(Self, DMRef.BDContab);

   QSubCuentas.Open;

   CrearFiltro;
   FCampoOrden := 'ID_CONCEPTOS';
   PrepararQuery;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

procedure TWConceptos.CrearFiltro;
begin
   TbFiltro.Active := False;
   TbFiltro.FieldDefs.Clear;
   TbFiltro.FieldDefs.Add('BConcepto', ftString, 3, False);
   TbFiltro.FieldDefs.Add('BDescripcion', ftstring, 25, False);
   TbFiltro.CreateDataSet;
   TbFiltro.Active := True;
   TbFiltro.Append;
   TbFiltro.FieldByName('BConcepto').AsString    := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWConceptos.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySql.Clear;
   QFichero.ModifySql.Add('UPDATE CONCEPTOS SET DESCRIPCION=:DESCRIPCION,ID_CONCEPTOS=:ID_CONCEPTOS,');
   QFichero.ModifySql.Add('TIPOCONTABILIDAD=:TIPOCONTABILIDAD,TIPOCONCEPTO=:TIPOCONCEPTO,OBSOLETO=:OBSOLETO,');
   QFichero.ModifySql.Add('SUBCUENTA=:SUBCUENTA, CONTRAPARTIDA=:CONTRAPARTIDA');
   QFichero.ModifySql.Add('WHERE ID_CONCEPTOS=:OLD_ID_CONCEPTOS');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM Conceptos');

   if TbFiltro.FieldByName('BConcepto').AsString <> '' then begin
      QFichero.SelectSQL.Add('WHERE ID_CONCEPTOS LIKE :IDCONCEPTOS');
   end else
   if TbFiltro.FieldByName('BDescripcion').AsString <> '' then begin
      QFichero.SelectSQL.Add('where UPPER(Descripcion) like UPPER(:Descripcion)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;

   if TbFiltro.FieldByName('BConcepto').AsString <> '' then begin
      QFichero.Params.ByName('IDCONCEPTOS').AsString := Copy(TbFiltro.FieldByName('BCONCEPTO').AsString + '%', 1,
                                                             TbFiltro.FieldByName('BCONCEPTO').Size);
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

procedure TWConceptos.RefrescarBD;
begin
   DMContaRef.QConceptos.Close;
   DMContaRef.QConceptosDesc.Close;

   DMContaRef.QConceptos.Open;
   DMContaRef.QConceptosDesc.Open;
end;

procedure TWConceptos.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   EditConcepto.SetFocus;
   QFichero.Insert;
   FormManager.Mode := fmEdit;
end;

procedure TWConceptos.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then Exit;
   if MessageDlg('¿Desea borrar este concepto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Delete;
          QFichero.Transaction.CommitRetaining;
          RefrescarBD;
      except DatabaseError('No se ha podido borrar el concepto seleccionado.' + #13 +
                           'Tiene asientos en el diario con ese concepto');
      end;
   end;
end;

procedure TWConceptos.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Conceptos.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWConceptos.BtnAcceptClick(Sender: TObject);
var ha_insertado: Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('Id_Conceptos').AsString = '' then  begin
      EditConcepto.SetFocus;
      DatabaseError('No se puede dejar el concepto en blanco.' + #13 + 'Por favor, revise los datos de entrada.');
   end;
   if QFichero.FieldByName('Descripcion').AsString = '' then  begin
      EditDescripcion.SetFocus;
      DatabaseError('No se puede dejar el nombre del concepto en blanco.' + #13 + 'Por favor, revise los datos de entrada.');
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
      TbFiltro.FieldByName('BConcepto').AsString := QFicheroID_conceptos.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;
end;

procedure TWConceptos.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;

   if MessageDlg('¿Quiere anular las modificaciones realizadas a este concepto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWConceptos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = Chr(VK_RETURN)) then  begin
      if (EditBCodigo.Focused) and (EditBCodigo.Text <> '') then begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end else
      if (EditBNombre.Focused) and (EditBNombre.Text <> '') then begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWConceptos.FormShow(Sender: TObject);
begin
   EditBCodigo.SetFocus;
end;

procedure TWConceptos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            BtnCancel.Click;
            Key := 0;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditBCodigo) and
            (ActiveControl <> EditBNombre) and not
            (QFichero.State in dsEditModes) then begin
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

procedure TWConceptos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWConceptos.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BConcepto').AsString    := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWConceptos.VerTabla(Sender: TObject);
begin
   TbFiltro.Edit;
   TbFiltro.FieldByName('BConcepto').AsString    := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
   TbFiltro.Post;
   PrepararQuery;
end;

procedure TWConceptos.QFicheroCalcFields(DataSet: TDataSet);
begin
   if Dataset.FieldByName('TipoConcepto').AsString = 'I' then begin
      Dataset.FieldByName('TipoConceptoDesc').AsString := 'I.V.A.';
   end else
   if Dataset.FieldByName('TipoConcepto').AsString = '3' then begin
      Dataset.FieldByName('TipoConceptoDesc').AsString := '347';
   end else
   if Dataset.FieldByName('TipoConcepto').AsString = '1' then begin
      Dataset.FieldByName('TipoConceptoDesc').AsString := '110';
   end else
   if Dataset.FieldByName('TipoConcepto').AsString = '9' then begin
      Dataset.FieldByName('TipoConceptoDesc').AsString := '349';
   end else
   if Dataset.FieldByName('TipoConcepto').AsString = '2' then begin
      Dataset.FieldByName('TipoConceptoDesc').AsString := '216';
   end else
   if Dataset.FieldByName('TipoConcepto').AsString = 'O' then begin
      Dataset.FieldByName('TipoConceptoDesc').AsString := 'Otros';
   end else
   if Dataset.FieldByName('TipoConcepto').AsString = 'A' then begin
      Dataset.FieldByName('TipoConceptoDesc').AsString := 'Apertura';
   end else
   if Dataset.FieldByName('TipoConcepto').AsString = 'C' then begin
      Dataset.FieldByName('TipoConceptoDesc').AsString := 'Cierre';
   end;

   if Dataset.FieldByName('TipoContabilidad').AsString = 'N' then begin
      Dataset.FieldByName('TipoContabilidadDesc').AsString := 'Normal';
   end
   else
   if Dataset.FieldByName('TipoContabilidad').AsString = 'E' then begin
      Dataset.FieldByName('TipoContabilidadDesc').AsString := 'Especial';
   end;
end;

procedure TWConceptos.QFicheroNewRecord(DataSet: TDataSet);
begin
   QFicheroTipoContabilidad.AsString := 'N';
   QFicheroObsoleto.AsString         := 'N';
   QFicheroTipoConcepto.AsString     := 'O';
end;

procedure TWConceptos.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'ID_CONCEPTOS') or (UpperCase(Column.FieldName) = 'DESCRIPCION') then  begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWConceptos.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWConceptos.BtnModifyClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      try QFichero.Edit;
      except MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditConcepto.SetFocus;
   end;
end;

end.
