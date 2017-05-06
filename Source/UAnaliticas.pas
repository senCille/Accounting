unit UAnaliticas;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     Grids, IBX.IBCustomDataSet, IBX.IBDatabase, jpeg, Mask, Messages, StdCtrls,
     SysUtils, WinProcs, WinTypes, FormHandler, DBGrids, frxClass, frxExportPDF, frxDBSet;
     
type
  TWAnaliticas = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroID_PROYECTO: TIBStringField;
    QFicheroID_SECCION: TIBStringField;
    QFicheroID_DEPARTAMENTO: TIBStringField;
    QFicheroID_DELEGACION: TIBStringField;
    QFicheroNOMBRE:  TIBStringField;
    QFicheroCUENTA:  TIBStringField;
    QFicheroNombreProyecto: TStringField;
    QFicheroNombreSeccion: TStringField;
    QFicheroNombreDepartamento: TStringField;
    QFicheroNombreDelegacion: TStringField;
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
    BtnRefresh: TSpeedButton;
    BtnReport: TButton;
    BtnModify: TButton;
    FiltroBuscar: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EditFiltroDESCRIPCION: TDBEdit;
    EditFiltroANALITICA: TDBEdit;
    Datos: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditDESCRIPCION: TDBEdit;
    EditCUENTA: TDBEdit;
    ComboBoxDELEGACION: TDBLookupComboBox;
    ComboBoxDEPARTAMENTO: TDBLookupComboBox;
    ComboBoxSECCION: TDBLookupComboBox;
    ComboBoxPROYECTO: TDBLookupComboBox;
    QDelegacion: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    SDelegacion: TDataSource;
    QDepartamento: TIBDataSet;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    SDepartamento: TDataSource;
    QProyecto: TIBDataSet;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    SProyecto: TDataSource;
    QSeccion: TIBDataSet;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    SSeccion: TDataSource;
    DBNavigator: TDBNavigator;
    DataGrid: TDBGrid;
    FastReport: TfrxReport;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    procedure BtnAppendClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
    procedure FormClose(Sender: TObject; var action: TCloseaction);
    procedure LimpiarFiltro(Sender: TObject);
    procedure VerTabla(Sender: TObject);
    procedure BtnReportClick(Sender: TObject);
    procedure QFicheroCalcFields(DataSet: TDataSet);
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

var WAnaliticas: TWAnaliticas;

implementation

uses System.UITypes,
     DM, DMConta, DMControl, Tools, Globales;

{$R *.DFM}

procedure TWAnaliticas.FormCreate(Sender: TObject);
begin
   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(DataGrid.Name             , fmBrowse);
   FormManager.AddComp(DBNavigator.Name          , fmBrowse);
   FormManager.AddComp(BtnRefresh.Name           , fmBrowse);
   FormManager.AddComp(BtnAppend.Name            , fmBrowse);
   FormManager.AddComp(BtnModify.Name            , fmBrowse);
   FormManager.AddComp(BtnDelete.Name            , fmBrowse);
   FormManager.AddComp(BtnReport.Name            , fmBrowse);
   FormManager.AddComp(BtnAccept.Name            , fmEdit  );
   FormManager.AddComp(BtnCancel.Name            , fmEdit  );

   FormManager.AddComp(EditFiltroANALITICA.Name  , fmBrowse);
   FormManager.AddComp(EditFiltroDESCRIPCION.Name, fmBrowse);
   FormManager.AddComp(EditCUENTA.Name           , fmEdit  );
   FormManager.AddComp(EditDESCRIPCION.Name      , fmEdit  );
   FormManager.AddComp(ComboBoxDELEGACION.Name   , fmEdit  );
   FormManager.AddComp(ComboBoxDEPARTAMENTO.Name , fmEdit  );
   FormManager.AddComp(ComboBoxSECCION.Name      , fmEdit  );
   FormManager.AddComp(ComboBoxPROYECTO.Name     , fmEdit  );

   ActivateTransactions(Self, DMRef.BDContab);

   QDelegacion.Open;
   QDepartamento.Open;
   QSeccion.Open;
   QProyecto.Open;

   CrearFiltro;
   FCampoOrden := 'CUENTA';
   PrepararQuery;
   
   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;      

procedure TWAnaliticas.CrearFiltro;
begin
   TBFiltro.Active := False;
   TbFiltro.FieldDefs.Clear;
   TbFiltro.FieldDefs.Add('BCuenta', ftString, 10, False);
   TbFiltro.FieldDefs.Add('BDescripcion', ftstring, 25, False);
   TbFiltro.CreateDataSet;
   TbFiltro.Active := True;
   TbFiltro.Append;
   TbFiltro.FieldByName('BCuenta').AsString      := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWAnaliticas.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySQL.Clear;
   QFichero.ModifySQL.Add('UPDATE ANALITICAS SET NOMBRE=:NOMBRE,CUENTA=:CUENTA,');
   QFichero.ModifySQL.Add('ID_PROYECTO=:ID_PROYECTO,ID_DELEGACION=:ID_DELEGACION,');
   QFichero.ModifySQL.Add('ID_DEPARTAMENTO=:ID_DEPARTAMENTO,ID_SECCION=:ID_SECCION');
   QFichero.ModifySQL.Add('WHERE CUENTA=:OLD_CUENTA');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM Analiticas');

   if TbFiltro.FieldByName('BCuenta').AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE CUENTA LIKE :CUENTA');
   end
   else
   if TbFiltro.FieldByName('BDescripcion').AsString <> '' then   begin
      QFichero.SelectSQL.Add('where UPPER(NOMBRE) like UPPER(:NOMBRE)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;


   if TbFiltro.FieldByName('BCuenta').AsString <> '' then   begin
      QFichero.Params.ByName('CUENTA').AsString :=
         Copy(TbFiltro.FieldByName('BCUENTA').AsString + '%', 1,
         TbFiltro.FieldByName('BCUENTA').Size);
   end
   else
   if TbFiltro.FieldByName('BDescripcion').AsString <> '' then   begin
      QFichero.Params.byname('NOMBRE').AsString :=
         Copy(TbFiltro.FieldByName('BDescripcion').AsString + '%', 1,
         TbFiltro.FieldByName('BDescripcion').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;
   QFichero.EnableControls;
end;

procedure TWAnaliticas.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   EditCUENTA.SetFocus;
   QFichero.Insert;
   FormManager.Mode := fmEdit;
end;

procedure TWAnaliticas.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then   begin
      if MessageDlg('¿Desea borrar esta cuenta analítica?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         try QFichero.Delete;
             QFichero.Transaction.CommitRetaining;
             RefrescarBD;
         except DatabaseError('No se ha podido borrar la cuenta seleccionada.' + #13 +
                              'Tiene asientos en el diario con ese concepto');
         end;
      end;
   end;
end;

procedure TWAnaliticas.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Analiticas.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWAnaliticas.BtnAcceptClick(Sender: TObject);
var
   ha_insertado: Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('cuenta').AsString = '' then  begin
      EditCUENTA.SetFocus;
      DatabaseError('No se puede dejar la cuenta en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;
   if QFichero.FieldByName('Nombre').AsString = '' then  begin
      EditDESCRIPCION.SetFocus;
      DatabaseError('No se puede dejar el nombre de la cuenta en blanco.' + #13 +
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
      TbFiltro.FieldByName('BCuenta').AsString := QFicheroCuenta.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;
end;

procedure TWAnaliticas.BtnCancelClick(Sender: TObject);
begin
   // Pasamos al siguiente campo antes de comprobar si se ha modificado el registro.
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;
   
   if MessageDlg('¿Confirma la generación de asientos automáticos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWAnaliticas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   { Si pulsamos enter y el control actual no es un grid pasamos al siguiente control}
   if (Key = Chr(VK_RETURN)) then  begin
      if (EditFiltroANALITICA.Focused) and (EditFiltroANALITICA.Text <> '') then   begin
         Key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end else
      if (EditFiltroDESCRIPCION.Focused) and (EditFiltroDESCRIPCION.Text <> '') then   begin
         Key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWAnaliticas.FormShow(Sender: TObject);
begin
   EditFiltroANALITICA.SetFocus;
end;

procedure TWAnaliticas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            key := 0;
            BtnCancel.Click;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditFiltroANALITICA) and
            (ActiveControl <> EditFiltroDESCRIPCION) and not
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

procedure TWAnaliticas.RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
begin
   if (UpperCase(AFieldName) = 'CUENTA') or (UpperCase(AFieldName) = 'NOMBRE') then  begin
      FCampoOrden := UpperCase(AFieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWAnaliticas.RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String;
   AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
begin
   if (UpperCase(AFieldName) = UpperCase(FCampoOrden)) then  begin
      ABrush.Color := clBlue;
      AFont.Style  := [fsBold];
      AFont.Color  := clWhite;
   end;
end;

procedure TWAnaliticas.FormClose(Sender: TObject; var action: TCloseaction);
begin
   if QFichero.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWAnaliticas.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BCuenta').AsString      := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWAnaliticas.VerTabla(Sender: TObject);
begin
   TbFiltro.Edit;
   TbFiltro.FieldByName('BCuenta').AsString      := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
   TbFiltro.Post;

   PrepararQuery;
end;

procedure TWAnaliticas.QFicheroCalcFields(DataSet: TDataSet);
begin
   // if Dataset.FieldByName('TipoConcepto').AsString = 'I' then
   //   Dataset.FieldByName('TipoConceptoDesc').AsString := 'I.V.A.'
end;

procedure TWAnaliticas.RefrescarBD;
begin
   DMRef.QAnaliticas.Close;
   DMRef.QAnaliticasNom.Close;

   DMRef.QAnaliticas.Open;
   DMRef.QAnaliticasNom.Open;
end;

procedure TWAnaliticas.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWAnaliticas.BtnModifyClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      try QFichero.Edit;
      except
         MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditCUENTA.SetFocus;
   end;
end;

end.
