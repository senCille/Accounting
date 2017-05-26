unit UInputVAT;

interface

uses Buttons, DBClient, IBX.IBDatabase, IBX.IBCustomDataSet, Forms,
     StdCtrls, Grids, Controls, windows, ExtCtrls, Graphics, Classes,
     SysUtils, Messages, DB, Mask, DBCtrls, DBGrids, ComCtrls,
     FormHandler;

type
   TWInputVAT = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    Datos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditDESCRIPCION: TDBEdit;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    EditTIPO: TDBEdit;
    StatusBar1: TStatusBar;
    PanelFondo: TPanel;
    DataGrid: TDBGrid;
    PanelButtons: TPanel;
    BtnAdd: TSpeedButton;
    BtnDelete: TSpeedButton;
    BtnSave: TSpeedButton;
    BtnCancel: TSpeedButton;
    BtnReport: TSpeedButton;
    BtnModify: TSpeedButton;
    QFicheroTIPO: TWideStringField;
    QFicheroDESCRIPCION: TWideStringField;
    TbFiltroTIPO: TStringField;
    TbFiltroDESCRIPCION: TStringField;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure DataGridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LimpiarFiltro(Sender: TObject);
    procedure BtnReportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
   private
    FormManager :TccFormHandler;
    FCampoOrden: String;
    procedure CrearFiltro;
    procedure PrepararQuery;
    procedure RefrescarBD;
   public
   end;

var WInputVAT: TWInputVAT;

implementation

uses System.UITypes,
     VCL.Dialogs,
     Tools, Globales, DM, DMControl;

{$R *.DFM}

procedure TWInputVAT.CrearFiltro;
begin
   TbFiltro.CreateDataSet;
   TbFiltro.Active := True;
   TbFiltro.Append;
   TbFiltroTIPO.AsString        := '';
   TbFiltroDESCRIPCION.AsString := '';
end;

procedure TWInputVAT.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySQL.Clear;
   QFichero.ModifySQL.Add('UPDATE IVAS SET TIPO = :TIPO, DESCRIPCION = :DESCRIPCION');
   QFichero.ModifySQL.Add('WHERE TIPO = :OLD_TIPO');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT TIPO, DESCRIPCION FROM IVAS');

   if TbFiltroTIPO.AsString <> '' then begin
      QFichero.SelectSQL.Add('WHERE TIPO LIKE :TIPO');
   end else
   if TbFiltroDESCRIPCION.AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE UPPER(DESCRIPCION) LIKE UPPER(:DESCRIPCION)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;

   // Parámetros
   if TbFiltroTIPO.AsString <> '' then begin
      QFichero.ParamByName('TIPO').AsString := Copy(TbFiltroTIPO.AsString + '%', 1, TbFiltroTIPO.Size);
   end
   else
   if TbFiltroDESCRIPCION.AsString <> '' then begin
      QFichero.ParamByName('DESCRIPCION').AsString := Copy(TbFiltroDESCRIPCION.AsString + '%', 1, TbFiltroDESCRIPCION.Size);
   end;

   QFichero.Prepare;
   QFichero.EnableControls;
   QFichero.Open;
end;

procedure TWInputVAT.RefrescarBD;
begin
   DMRef.QPaisNom.Close;
   DMRef.QPaisNom.Open;
end;

procedure TWInputVAT.BtnAddClick(Sender: TObject);
begin
   //if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
   //   Exit;
   //end;

   DataGrid.SetFocus;
   try
      EditTIPO.SetFocus;
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar un nuevo país.');
   end;
   FormManager.Mode := fmEdit;
end;

procedure TWInputVAT.BtnDeleteClick(Sender: TObject);
begin
   //if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
   //   Exit;
   //end;

   if QFichero.IsEmpty then Exit;
   if MessageDlg('¿Desea borrar este país?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Delete;
          QFichero.Transaction.CommitRetaining;
          RefrescarBD;
      except DatabaseError('No se ha podido borrar el país seleccionado.' + #13 +
                           'El País seleccionado se encuentra referenciado en alguna subcuenta.');
      end;
   end;
end;

procedure TWInputVAT.BtnReportClick(Sender: TObject);
begin
   //if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
   //   Exit;
   //end;

   {Probably this form is going to disapear, because of this we don't waste time doing this report}
   {FormPrincipal.LanzarListado('LPaises.rtm', SFichero);}
end;

procedure TWInputVAT.BtnSaveClick(Sender: TObject);
var
   ha_insertado: Boolean;
   Msg:          String;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   // Msg contendrá la información a presentar al usuario sobre los datos
   // que ha de introducir antes de guardar el registro.
   Msg := '';

   if QFicheroTIPO.AsString = '' then   begin
      Msg := Msg + 'No se puede dejar el código del país en blanco.' + #13;
   end;

   if QFicheroDESCRIPCION.AsString = '' then   begin
      Msg := Msg + 'No se puede dejar el nombre del país en blanco.' + #13;
   end;

   if Trim(Msg) <> '' then  begin
      Msg := Msg + 'Por favor, revise los datos de entrada.';
      EditTIPO.SetFocus;
      DatabaseError(Msg);
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
      TbFiltroTIPO.AsString := QFicheroTIPO.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;

end;

procedure TWInputVAT.BtnCancelClick(Sender: TObject);
var Canceled :Boolean;
begin
   Perform(WM_NextDlgCtl, 0, 0);

   if not QFichero.Modified then Canceled := True
   else Canceled := MessageDlg('¿Quiere anular las modificaciones realizadas a este país?',
                               mtConfirmation, [mbYes, mbNo], 0) = mrYes;

   if Canceled then begin
      try    QFichero.Cancel;
      except Canceled := False;
             DatabaseError('No se ha podido cancelar la operación.');
      end;
   end
   else Canceled := False;

   if Canceled then begin
      FormManager.Mode := fmBrowse;
      DataGrid.SetFocus;
   end;
end;

procedure TWInputVAT.DataGridDblClick(Sender: TObject);
begin
   //if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
   //   Exit;
   //end;

   if not QFichero.IsEmpty then  begin
      try QFichero.Edit;
      except MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditTIPO.SetFocus;
   end;
end;

procedure TWInputVAT.FormCreate(Sender: TObject);
begin
   FormManager := TccFormHandler.Create(Self);

   FormManager.AddComp(EditTIPO.Name , fmEdit );
   FormManager.AddComp(EditDESCRIPCION.Name , fmEdit );

   FormManager.AddComp(DataGrid.Name        , fmBrowse);
   //FormManager.AddComp(BtnCopy.Name         , fmBrowse);
   //FormManager.AddComp(BtnPaste.Name        , fmBrowse);

   FormManager.AddComp(BtnAdd.Name          , fmBrowse);
   //FormManager.AddComp(BtnDuplicate.Name    , fmBrowse);
   FormManager.AddComp(BtnModify.Name       , fmBrowse);
   FormManager.AddComp(BtnDelete.Name       , fmBrowse);
   //FormManager.AddComp(BtnReload.Name       , fmBrowse);
   FormManager.AddComp(BtnReport.Name       , fmBrowse);

   FormManager.AddComp(BtnSave.Name         , fmEdit  );
   FormManager.AddComp(BtnCancel.Name       , fmEdit  );

   ActivateTransactions(Self, DMRef.BDContab);

   CrearFiltro;
   FCampoOrden := 'TIPO';
   PrepararQuery;
   FormManager.Mode := fmBrowse;
end;

procedure TWInputVAT.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            key := 0;
            BtnCancel.Click;
         end;
      end;
   end;
end;

procedure TWInputVAT.RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
begin
   if (UpperCase(AFieldName) = 'DESCRIPCION') or (UpperCase(AFieldName) = 'TIPO') then  begin
      FCampoOrden := UpperCase(AFieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWInputVAT.RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String;
   AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
begin
   if (UpperCase(AFieldName) = UpperCase(FCampoOrden)) then  begin
      ABrush.Color := clBlue;
      AFont.Style  := [fsBold];
      AFont.Color  := clWhite;
   end;
end;

procedure TWInputVAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      Action := caFree;
      FormManager.Free;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWInputVAT.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dsEditModes) then begin
      TbFiltro.edit;
   end;
   TbFiltroTIPO.AsString   := '';
   TbFiltroDESCRIPCION.AsString := '';
end;

procedure TWInputVAT.FormShow(Sender: TObject);
begin
   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

end.
