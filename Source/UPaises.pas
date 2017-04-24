unit UPaises;

interface

uses Buttons, DBClient, IBX.IBDatabase, IBX.IBCustomDataSet, Forms,
     StdCtrls, Grids, Controls, windows, ExtCtrls, Graphics, Classes,
     SysUtils, Messages, DB, Mask, DBCtrls, DBGrids, ComCtrls,
     FormHandler;

type
   TWPaises = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    Datos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditDS_PAIS: TDBEdit;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroPAIS: TIBStringField;
    QFicheroNOMBRE: TIBStringField;
    EditCD_PAIS: TDBEdit;
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

var WPaises: TWPaises;

implementation

uses Dialogs, Tools, Globales, DM, DMControl;

{$R *.DFM}

procedure TWPaises.CrearFiltro;
begin
   TbFiltro.Active := False;
   TbFiltro.FieldDefs.Clear;
   TbFiltro.FieldDefs.Add('BPais', ftString, 2, False);
   TbFiltro.FieldDefs.Add('BNombre', ftString, 20, False);
   TbFiltro.CreateDataSet;
   TbFiltro.Active := True;
   TbFiltro.Append;
   TbFiltro.FieldByName('BPais').AsString   := '';
   TbFiltro.FieldByName('BNombre').AsString := '';
end;

procedure TWPaises.PrepararQuery;
begin
   QFichero.Close;
   QFichero.ModifySQL.Clear;
   QFichero.ModifySQL.Add('UPDATE PAISES SET NOMBRE=:NOMBRE,PAIS=:PAIS');
   QFichero.ModifySQL.Add('WHERE PAIS=:OLD_PAIS');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM PAISES');

   if TbFiltro.FieldByName('BPais').AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE PAIS LIKE :PAIS');
   end
   else
   if TbFiltro.FieldByName('BNombre').AsString <> '' then   begin
      QFichero.SelectSQL.Add('WHERE UPPER(NOMBRE) LIKE UPPER(:NOMBRE)');
   end;

   if FCampoOrden <> '' then   begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;

   // Parámetros
   if TbFiltro.FieldByName('BPais').AsString <> '' then   begin
      QFichero.Params.ByName('PAIS').AsString :=
         Copy(TbFiltro.FieldByName('BPAIS').AsString + '%', 1,
         TbFiltro.FieldByName('BPAIS').Size);
   end
   else
   if TbFiltro.FieldByName('BNombre').AsString <> '' then   begin
      QFichero.Params.byname('NOMBRE').AsString :=
         Copy(TbFiltro.FieldByName('BNombre').AsString + '%', 1,
         TbFiltro.FieldByName('BNombre').Size);
   end;

   QFichero.Prepare;
   QFichero.EnableControls;
   QFichero.Open;
end;

procedure TWPaises.RefrescarBD;
begin
   DMRef.QPaisNom.Close;
   DMRef.QPaisNom.Open;
end;

procedure TWPaises.BtnAddClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   DataGrid.SetFocus;
   try
      EditCD_PAIS.SetFocus;
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar un nuevo país.');
   end;
   FormManager.Mode := fmEdit;
end;

procedure TWPaises.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

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

procedure TWPaises.BtnReportClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      Exit;
   end;

   {Probably this form is going to disapear, because of this we don't waste time doing this report}
   {FormPrincipal.LanzarListado('LPaises.rtm', SFichero);}
end;

procedure TWPaises.BtnSaveClick(Sender: TObject);
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

   if QFichero.FieldByName('Pais').AsString = '' then   begin
      Msg := Msg + 'No se puede dejar el código del país en blanco.' + #13;
   end;

   if QFichero.FieldByName('Nombre').AsString = '' then   begin
      Msg := Msg + 'No se puede dejar el nombre del país en blanco.' + #13;
   end;

   if Trim(Msg) <> '' then  begin
      Msg := Msg + 'Por favor, revise los datos de entrada.';
      EditCD_PAIS.SetFocus;
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
      TbFiltro.FieldByName('BPais').AsString := QFicheroPais.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;

end;

procedure TWPaises.BtnCancelClick(Sender: TObject);
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

procedure TWPaises.DataGridDblClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      try QFichero.Edit;
      except MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditCD_PAIS.SetFocus;
   end;
end;

procedure TWPaises.FormCreate(Sender: TObject);
begin
   FormManager := TccFormHandler.Create(Self);

   FormManager.AddComp(EditCD_PAIS.Name , fmEdit );
   FormManager.AddComp(EditDS_PAIS.Name , fmEdit );

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
   FCampoOrden := 'PAIS';
   PrepararQuery;
   FormManager.Mode := fmBrowse;
end;

procedure TWPaises.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TWPaises.RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
begin
   if (UpperCase(AFieldName) = 'NOMBRE') or (UpperCase(AFieldName) = 'PAIS') then  begin
      FCampoOrden := UpperCase(AFieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWPaises.RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String;
   AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
begin
   if (UpperCase(AFieldName) = UpperCase(FCampoOrden)) then  begin
      ABrush.Color := clBlue;
      AFont.Style  := [fsBold];
      AFont.Color  := clWhite;
   end;
end;

procedure TWPaises.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      Action := caFree;
      FormManager.Free;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWPaises.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dsEditModes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BPAIS').AsString   := '';
   TbFiltro.FieldByName('BNombre').AsString := '';
end;

procedure TWPaises.FormShow(Sender: TObject);
begin
   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

end.
