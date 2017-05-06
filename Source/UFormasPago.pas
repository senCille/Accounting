unit UFormasPago;

interface
uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     Grids, IBX.IBCustomDataSet, IBX.IBDatabase, Mask, Messages, StdCtrls, SysUtils, WinProcs,
     WinTypes, FormHandler, DBGrids, frxClass, frxExportPDF, frxDBSet;
     
type
  TWFormasPago = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroFORMAPAGO: TIBStringField;
    QFicheroCLASE: TIBStringField;
    QFicheroDESCRIBE: TIBStringField;
    QFicheroINTERVALO: TSmallintField;
    QFicheroNUMVENCI: TSmallintField;
    QFicheroOBSOLETO: TIBStringField;
    QFicheroUnidades: TStringField;
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
    EditBDescripcion: TDBEdit;
    EditBCodigo: TDBEdit;
    Datos: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EditDescripcion: TDBEdit;
    EditFormaPago: TDBEdit;
    RadioGroupUnidades: TDBRadioGroup;
    EditIntervalo: TDBEdit;
    EditVencimiento: TDBEdit;
    CheckBoxObsoleto: TDBCheckBox;
    DataGrid: TDBGrid;
    DBNavigator: TDBNavigator;
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
    procedure FormClose(Sender: TObject; var action: TCloseaction);
    procedure LimpiarFiltro(Sender: TObject);
    procedure VerTabla(Sender: TObject);
    procedure BtnReportClick(Sender: TObject);
    procedure QFicheroCalcFields(DataSet: TDataSet);
    procedure QFicheroNewRecord(DataSet: TDataSet);
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

var WFormasPago: TWFormasPago;

implementation

uses System.UITypes,
     DM, DMConta, DMControl, Tools, Globales;

{$R *.DFM}

procedure TWFormasPago.FormCreate(Sender: TObject);
begin
   Self.Caption := '';
   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(BtnAppend.Name             , fmBrowse);
   FormManager.AddComp(EditBCodigo.Name           , fmBrowse);
   FormManager.AddComp(EditBDescripcion.Name      , fmBrowse);
   FormManager.AddComp(EditFormaPago.Name         , fmEdit  );
   FormManager.AddComp(EditDescripcion.Name       , fmEdit  );
   FormManager.AddComp(EditIntervalo.Name         , fmEdit  );
   FormManager.AddComp(EditVencimiento.Name       , fmEdit  );
   FormManager.AddComp(RadioGroupUnidades.Name    , fmEdit  );
   FormManager.AddComp(CheckBoxObsoleto.Name      , fmEdit  );
   FormManager.AddComp(BtnRefresh.Name            , fmBrowse);
   FormManager.AddComp(BtnAccept.Name             , fmEdit  );
   FormManager.AddComp(BtnCancel.Name             , fmEdit  );
   FormManager.AddComp(BtnDelete.Name             , fmBrowse);
   FormManager.AddComp(BtnModify.Name             , fmBrowse);
   FormManager.AddComp(BtnReport.Name             , fmBrowse);
   FormManager.AddComp(DBNavigator.Name           , fmBrowse);
   FormManager.AddComp(DataGrid.Name              , fmBrowse);

   ActivateTransactions(Self, DMRef.BDContab);
   CrearFiltro;
   FCampoOrden := 'FORMAPAGO';
   PrepararQuery;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;      

procedure TWFormasPago.CrearFiltro;
begin
   TBFiltro.Active := False;
   TBFiltro.FieldDefs.Clear;
   TBFiltro.FieldDefs.Add('BCodigo', ftString, 3, False);
   TBFiltro.FieldDefs.Add('BDescripcion', ftstring, 40, False);
   TBFiltro.CreateDataSet;
   TBFiltro.Active := True;
   TBFiltro.Append;
   TBFiltro.FieldByName('BCodigo').AsString      := '';
   TBFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWFormasPago.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySql.Clear;
   QFichero.ModifySql.Add('UPDATE FORMAS SET FORMAPAGO = :FORMAPAGO, CLASE = :CLASE,');
   QFichero.ModifySql.Add('DESCRIBE = :DESCRIBE, INTERVALO = :INTERVALO, NUMVENCI = :NUMVENCI,');
   QFichero.ModifySql.Add('OBSOLETO = :OBSOLETO');
   QFichero.ModifySql.Add('WHERE FORMAPAGO = :old_FORMAPAGO');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM FORMAS');

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then begin
      QFichero.SelectSQL.Add(' WHERE FORMAPAGO LIKE :FORMAPAGO');
   end else
   if TbFiltro.FieldByName('BDescripcion').AsString <> '' then begin
      QFichero.SelectSQL.Add('WHERE UPPER(DESCRIBE) LIKE UPPER(:DESCRIBE)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;

   if TbFiltro.FieldByName('BCODIGO').AsString <> '' then begin
      QFichero.Params.ByName('FORMAPAGO').AsString := Copy(TbFiltro.FieldByName('BCODIGO').AsString + '%', 1,
                                                           TbFiltro.FieldByName('BCODIGO').Size);
   end
   else
   if TbFiltro.FieldByName('BDescripcion').AsString <> '' then begin
      QFichero.Params.ByName('DESCRIBE').AsString := Copy(TbFiltro.FieldByName('BDescripcion').AsString + '%', 1,
                                                          TbFiltro.FieldByName('BDescripcion').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;
   QFichero.EnableControls;
end;

procedure TWFormasPago.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;
   
   EditFormaPago.SetFocus;
   QFichero.Insert;
   FormManager.Mode := fmEdit;
end;

procedure TWFormasPago.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then Exit;
   if MessageDlg('¿Desea borrar esta forma de pago?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Delete;
          QFichero.Transaction.CommitRetaining;
          RefrescarBD;
      except DatabaseError('No se ha podido borrar la forma de pago seleccionada.' + #13 +
                           'La forma de pago seleccionada se encuentra referenciada en alguna subcuenta.');
      end;
   end;
end;

procedure TWFormasPago.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Formas de Pago.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWFormasPago.BtnAcceptClick(Sender: TObject);
var
   ha_insertado: Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('FORMAPAGO').AsString = '' then  begin
      EditFormaPago.SetFocus;
      DatabaseError('No se puede dejar el código de la forma de pago en blanco.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if QFichero.FieldByName('DESCRIBE').AsString = '' then  begin
      EditDescripcion.SetFocus;
      DatabaseError('No se puede dejar la descripción de la forma de pago en blanco.' +
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
      TbFiltro.FieldByName('BCODIGO').AsString := QFicheroFORMAPAGO.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;
end;

procedure TWFormasPago.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;

   if MessageDlg('¿Quiere anular las modificaciones realizadas a esta forma de pago?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWFormasPago.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // Si pulsamos enter y el control actual no es un grid pasamos al siguiente
   // control
   if (Key = Chr(VK_RETURN)) then  begin
      // Comprobacion del filtro por código
      if (EditBCodigo.Focused) and (EditBCodigo.Text <> '') then begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end

      // Comprobacion del filtro por nombre
      else
      if (EditBDescripcion.Focused) and (EditBDescripcion.Text <> '') then begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWFormasPago.FormShow(Sender: TObject);
begin
   EditBCodigo.SetFocus;
end;

procedure TWFormasPago.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
            (ActiveControl <> EditBDescripcion) and not
            (QFichero.State in dsEditModes) then begin
            //Anulamos el evento de la tecla
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

procedure TWFormasPago.FormClose(Sender: TObject; var action: TCloseaction);
begin
   if QFichero.State = dsBrowse then begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWFormasPago.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BCodigo').AsString      := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWFormasPago.VerTabla(Sender: TObject);
begin
   TBFiltro.Edit;
   TBFiltro.FieldByName('BCodigo').AsString      := '';
   TBFiltro.FieldByName('BDescripcion').AsString := '';
   TBFiltro.Post;
   PrepararQuery;
end;

procedure TWFormasPago.QFicheroCalcFields(DataSet: TDataSet);
begin
   if QFicheroCLASE.AsString = 'D' then   begin
      QFicheroUnidades.AsString := 'DÍAS';
   end
   else begin
      QFicheroUnidades.AsString := 'MESES';
   end;
end;

procedure TWFormasPago.RefrescarBD;
begin
   DMRef.QFormaPago.Close;
   DMRef.QFormaPagoNom.Close;

   DMRef.QFormaPago.Open;
   DMRef.QFormaPagoNom.Open;
end;

procedure TWFormasPago.QFicheroNewRecord(DataSet: TDataSet);
begin
   QFicheroCLASE.AsString    := 'D';
   QFicheroOBSOLETO.AsString := 'N';
end;

procedure TWFormasPago.BtnModifyClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      try QFichero.Edit;
      except MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditFormaPago.SetFocus;
   end;
end;

procedure TWFormasPago.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWFormasPago.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'FORMAPAGO') or (UpperCase(Column.FieldName) = 'DESCRIBE') or
      (UpperCase(Column.FieldName) = 'INTERVALO') or (UpperCase(Column.FieldName) = 'NUMVENCI') then  begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

end.
