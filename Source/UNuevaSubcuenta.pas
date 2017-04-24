unit UNuevaSubcuenta;

interface

uses Buttons, Classes, ComCtrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBSQL,
     Menus, Messages, StdCtrls, SysUtils, Windows, 
     FormHandler, Mask;
     
type
  TWNuevaSubcuenta = class(TForm)
    BtnAccept: TButton;
    BtnCancel: TButton;
    Label2: TLabel;
    Shape1: TShape;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    DSFichero: TDataSource;
    QFicheroSaldo: TFloatField;
    QFicheroACUDB01: TFloatField;
    QFicheroACUDB02: TFloatField;
    QFicheroACUDB03: TFloatField;
    QFicheroACUDB04: TFloatField;
    QFicheroACUDB05: TFloatField;
    QFicheroACUDB06: TFloatField;
    QFicheroACUDB07: TFloatField;
    QFicheroACUDB08: TFloatField;
    QFicheroACUDB09: TFloatField;
    QFicheroACUDB10: TFloatField;
    QFicheroACUDB11: TFloatField;
    QFicheroACUDB12: TFloatField;
    QFicheroACUHB01: TFloatField;
    QFicheroACUHB02: TFloatField;
    QFicheroACUHB03: TFloatField;
    QFicheroACUHB04: TFloatField;
    QFicheroACUHB05: TFloatField;
    QFicheroACUHB06: TFloatField;
    QFicheroACUHB07: TFloatField;
    QFicheroACUHB08: TFloatField;
    QFicheroACUHB09: TFloatField;
    QFicheroACUHB10: TFloatField;
    QFicheroACUHB11: TFloatField;
    QFicheroACUHB12: TFloatField;
    QFicheroANTDB: TFloatField;
    QFicheroANTDB01: TFloatField;
    QFicheroANTDB02: TFloatField;
    QFicheroANTDB03: TFloatField;
    QFicheroANTDB04: TFloatField;
    QFicheroANTDB05: TFloatField;
    QFicheroANTDB06: TFloatField;
    QFicheroANTDB07: TFloatField;
    QFicheroANTDB08: TFloatField;
    QFicheroANTDB09: TFloatField;
    QFicheroANTDB10: TFloatField;
    QFicheroANTDB11: TFloatField;
    QFicheroANTDB12: TFloatField;
    QFicheroANTHB: TFloatField;
    QFicheroANTHB01: TFloatField;
    QFicheroANTHB02: TFloatField;
    QFicheroANTHB03: TFloatField;
    QFicheroANTHB04: TFloatField;
    QFicheroANTHB05: TFloatField;
    QFicheroANTHB06: TFloatField;
    QFicheroANTHB07: TFloatField;
    QFicheroANTHB08: TFloatField;
    QFicheroANTHB09: TFloatField;
    QFicheroANTHB10: TFloatField;
    QFicheroANTHB11: TFloatField;
    QFicheroANTHB12: TFloatField;
    QFicheroARRENDADOR: TIBStringField;
    QFicheroCONTRAPARTIDA: TIBStringField;
    QFicheroDESCRIPCION: TIBStringField;
    QFicheroDIRECCION: TIBStringField;
    QFicheroFAX: TIBStringField;
    QFicheroIVA: TFloatField;
    QFicheroPROFESIONAL: TIBStringField;
    QFicheroRECARGO: TFloatField;
    QFicheroSUBCUENTA: TIBStringField;
    QFicheroSUMADB: TFloatField;
    QFicheroSUMAHB: TFloatField;
    QFicheroTELEFONO: TIBStringField;
    QFicheroTIPOIVA: TIBStringField;
    QFicheroDIRECCION1: TIBStringField;
    QFicheroNIF: TIBStringField;
    QFicheroCODPOSTAL: TIBStringField;
    QFicheroPOBLACION: TIBStringField;
    QFicheroPROVINCIA: TIBStringField;
    QFicheroPAIS: TIBStringField;
    QFicheroNUMERO: TIBStringField;
    QFicheroFORMAPAGO: TIBStringField;
    QFicheroDIAPAGO1: TSmallintField;
    QFicheroDIAPAGO2: TSmallintField;
    QFicheroPRES01: TFloatField;
    QFicheroPRES02: TFloatField;
    QFicheroPRES03: TFloatField;
    QFicheroPRES04: TFloatField;
    QFicheroPRES05: TFloatField;
    QFicheroPRES06: TFloatField;
    QFicheroPRES07: TFloatField;
    QFicheroPRES08: TFloatField;
    QFicheroPRES09: TFloatField;
    QFicheroPRES10: TFloatField;
    QFicheroPRES11: TFloatField;
    QFicheroPRES12: TFloatField;
    QFicheroPRESTOT: TFloatField;
    QFicheroOBSOLETO: TIBStringField;
    QFicheroDESCFORMAPAGO: TStringField;
    GroupBox1: TGroupBox;
    Label30: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditDESCRIPCION: TDBEdit;
    EditSUBCUENTA: TDBEdit;
    ComboBoxCOD_CONTRAPARTIDA: TDBLookupComboBox;
    ComboBoxDES_CONTRAPARTIDA: TDBLookupComboBox;
    GroupBox14: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label36: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label5: TLabel;
    EditNIF: TDBEdit;
    ComboBoxPROVINCIA: TDBLookupComboBox;
    EditDIRECCION: TDBEdit;
    EditCODPOSTAL: TDBEdit;
    EditTELEFONO: TDBEdit;
    EditFAX: TDBEdit;
    CheckBoxPROFESIONAL: TDBCheckBox;
    CheckBoxARRENDADOR: TDBCheckBox;
    EditDIRECCION1: TDBEdit;
    EditPOBLACION: TDBEdit;
    ComboBoxPAIS: TDBLookupComboBox;
    EditNUMERO: TDBEdit;
    GroupBox25: TGroupBox;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    EditDIAPAGO1: TDBEdit;
    EditComboBoxCD_FORMAPAGO: TDBLookupComboBox;
    EditComboBoxDS_FORMAPAGO: TDBLookupComboBox;
    EditDIAPAGO2: TDBEdit;
    CheckBoxOBSOLETO: TDBCheckBox;
    CheckBoxINTRACOMUNITARIO: TDBCheckBox;
    QFicheroDIAPAGO3: TSmallintField;
    QFicheroABREVIATURA: TIBStringField;
    QFicheroINTRACOMUNITARIO: TIBStringField;
    Label1: TLabel;
    EditDIAPAGO3: TDBEdit;
    ChecBoxSubctaRet: TCheckBox;
    QFicheroSUBCTARET: TIBStringField;
    QFormaPago: TIBDataSet;
    QFormaPagoFORMAPAGO: TIBStringField;
    QFormaPagoCLASE: TIBStringField;
    QFormaPagoDESCRIBE: TIBStringField;
    QFormaPagoINTERVALO: TSmallintField;
    QFormaPagoNUMVENCI: TSmallintField;
    QFormaPagoOBSOLETO: TIBStringField;
    SFormaPago: TDataSource;
    procedure fcIBCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QFicheroNewRecord(DataSet: TDataSet);
    procedure fcIBMinimizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fcImageBtnMinimizarClick(Sender: TObject);
    procedure PonerDecimal(Sender: TObject; var Key: Char);
    procedure EditSUBCUENTAExit(Sender: TObject);
    procedure EditNIFExit(Sender: TObject);
  private
    FormManager :TccFormHandler;
    procedure ActivarTransacciones;
    procedure AniadirSubcuenta;
    procedure PrepararQuery;
  public
    FNuevaSubcuenta      :string;
    FContrapartidaSubcta :string;
  end;

var WNuevaSubcuenta: TWNuevaSubcuenta;

implementation

uses DM, DMConta, DMControl, Globales;

{$R *.DFM}

procedure TWNuevaSubcuenta.FormCreate(Sender: TObject);
begin
   QFormaPago.Database := DMRef.BDContab;
   QFormaPago.Open;
   
   Self.Caption := '';
   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(EditSUBCUENTA.Name             , fmEdit);
   FormManager.AddComp(ChecBoxSubctaRet.Name          , fmEdit);
   FOrmManager.AddComp(CheckBoxOBSOLETO.Name          , fmEdit);

   FormManager.AddComp(EditDESCRIPCION.Name           , fmEdit);
   FormManager.AddComp(ComboBoxCOD_CONTRAPARTIDA.Name , fmEdit);
   FormManager.AddComp(ComboBoxDES_CONTRAPARTIDA.Name , fmEdit);
   FormManager.AddComp(EditNIF.Name                   , fmEdit);
   FormManager.AddComp(CheckBoxPROFESIONAL.Name       , fmEdit);
   FormManager.AddComp(CheckBoxARRENDADOR.Name        , fmEdit);
   FormManager.AddComp(CheckBoxINTRACOMUNITARIO.Name  , fmEdit);
   FormManager.AddComp(EditDIRECCION.Name             , fmEdit);
   FormManager.AddComp(EditNUMERO.Name                , fmEdit);
   FormManager.AddComp(EditDIRECCION1.Name            , fmEdit);
   FormManager.AddComp(EditCODPOSTAL.Name             , fmEdit);
   FormManager.AddComp(EditPOBLACION.Name             , fmEdit);
   FormManager.AddComp(ComboBoxPROVINCIA.Name         , fmEdit);
   FormManager.AddComp(ComboBoxPAIS.Name              , fmEdit);
   FormManager.AddComp(EditTELEFONO.Name              , fmEdit);
   FormManager.AddComp(EditFAX.Name                   , fmEdit);
   FormManager.AddComp(EditComboBoxCD_FORMAPAGO.Name  , fmEdit);
   FormManager.AddComp(EditComboBoxDS_FORMAPAGO.Name  , fmEdit);
   FormManager.AddComp(EditDIAPAGO1.Name              , fmEdit);
   FormManager.AddComp(EditDIAPAGO2.Name              , fmEdit);
   FormManager.AddComp(EditDIAPAGO3.Name              , fmEdit);
   FormManager.AddComp(BtnAccept.Name                 , fmEdit);
   FormManager.AddComp(BtnCancel.Name                 , fmEdit);

   if not Assigned(DMContaRef) then begin
      DMContaRef := TDMContaRef.Create(Application);
   end;

   ActivarTransacciones;
   PrepararQuery;

   EditSUBCUENTA.MaxLength := DmRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;

   FormManager.Mode := fmBrowse;
   FormManager.Mode := fmEdit;
end;

procedure TWNuevaSubcuenta.ActivarTransacciones;
var i :Word;
begin
   for i := 0 to (ComponentCount - 1) do begin
      if (Components[i] is TibTransaction) then begin
         TibTransaction(Components[i]).active := False;
         TibTransaction(Components[i]).Params.Clear;
         TibTransaction(Components[i]).Params.Add('Read_committed');
         TibTransaction(Components[i]).Params.Add('Rec_version');
         TibTransaction(Components[i]).Params.Add('Write');
         {Next block was be added after change the name of the Database Component}
         if (TibTransaction(Components[i]).DefaultDatabase = nil) then begin
           TibTransaction(Components[i]).DefaultDatabase := DMRef.BDContab;
         end;
         TibTransaction(Components[i]).Active := True;
      end;
   end;
end;

procedure TWNuevaSubcuenta.AniadirSubcuenta;
begin
   QFichero.Insert;
   QFicheroSUBCUENTA.AsString := FNuevaSubcuenta;
   EditSUBCUENTA.SetFocus;
   FormManager.Mode := fmEdit;
end;

procedure TWNuevaSubcuenta.PrepararQuery;
begin
   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.Transaction.active := True;
   QFichero.SelectSQL.Add('SELECT * FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA');

   QFichero.Prepare;
   QFichero.EnableControls;
   QFichero.Open;
end;

procedure TWNuevaSubcuenta.fcIBCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TWNuevaSubcuenta.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         BtnCancel.Click;
      end;
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWNuevaSubcuenta.QFicheroNewRecord(DataSet: TDataSet);
begin
   QFicheroPROFESIONAL.AsString      := 'N';
   QFicheroArrendador.AsString       := 'N';
   QFicheroObsoleto.AsString         := 'N';
   QFicheroINTRACOMUNITARIO.AsString := 'N';
end;

procedure TWNuevaSubcuenta.fcIBMinimizarClick(Sender: TObject);
begin
   WindowState := wsMinimized;
end;

procedure TWNuevaSubcuenta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then begin
      FormManager.Free;
      Action := caFree;
      // Liberar formulario desde la ventana que lo llamó,
      // para poder recoger la nueva subcuenta creada.
   end
   else BtnCancel.Click;
end;

procedure TWNuevaSubcuenta.BtnAcceptClick(Sender: TObject);
var
   cSubctaRet, cDescripcion, cNif: String;
begin
   Perform(wm_NextDlgCtl, 0, 0);

   // Quitar espacios de subcuenta
   QFicheroSubcuenta.AsString := Trim(QFicheroSubcuenta.AsString);
   cDescripcion := QFicheroDescripcion.AsString;
   cNif         := QFicheroNif.AsString;

   FNuevaSubcuenta      := QFicheroSUBCUENTA.AsString;
   FContrapartidaSubcta := QFicheroCONTRAPARTIDA.AsString;

   if Length(QFicheroSUBCUENTA.AsString) < DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger then begin
      MessageDlg('La longitud de subcuenta es menor de ' +
                 DMRef.QParametrosLONGITUD_SUBCUENTAS.AsString + ' caracteres.', mtError, [mbOK], 0);
      EditSUBCUENTA.SetFocus;
      Exit;
   end;

   // Comprobar si existe la cuenta a la que pertenece la subcuenta
   if not DMRef.ExistenRegistros('CUENTAS', 'CUENTA = "' +
      Copy(QFicheroSUBCUENTA.AsString, 1, 3) + '"') then begin
      MessageDlg('No existe la cuenta ' + Copy(QFicheroSUBCUENTA.AsString, 1, 3) +' a la que pertenece la subcuenta seleccionada.',
                 mtError, [mbOK], 0);
   end
   else begin
      if ChecBoxSubctaRet.Checked then begin
         QFichero.FieldByName('SubctaRet').AsString := '434' + Copy(QFichero.FieldByName('Subcuenta').AsString, 4, 7);
      end;
      QFichero.DisableControls;
      QFichero.Post;
      QFichero.Transaction.CommitRetaining;
      DMContaRef.RefrescarSubcuentas(QFicheroSUBCUENTA.AsString);
      try
         if ChecBoxSubctaRet.Checked then begin
            cSubctaRet := '434' + Copy(QFichero.FieldByName('Subcuenta').AsString, 4, 7);
            Qfichero.insert;
            QFichero.FieldByName('Subcuenta').AsString   := cSubctaRet;
            QFichero.FieldByName('Descripcion').AsString := cDescripcion;
            QFichero.FieldByName('Nif').AsString         := cNif;
            Qfichero.post;
            QFichero.Transaction.CommitRetaining;
            DMContaRef.RefrescarSubcuentas(QFicheroSUBCUENTA.AsString);
         end;
         QFichero.EnableControls;
      except
         Self.SendToBack;
         DatabaseError('Error al guardar datos de la Subcuenta.' + #13 +
            'Puede estar duplicada');
         QFichero.EnableControls;
      end;

      FormManager.Mode := fmBrowse;

      Close;
   end;
end;

procedure TWNuevaSubcuenta.BtnCancelClick(Sender: TObject);
begin
   if MessageDlg('¿Quiere anular los cambios realizados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('Error al cancelar la operación');
      end;
      FNuevaSubcuenta      := '';
      FContrapartidaSubcta := '';
      FormManager.Mode := fmBrowse;
      Close;
   end;
end;

procedure TWNuevaSubcuenta.FormShow(Sender: TObject);
begin
   EditSUBCUENTA.MaxLength             := DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;

   AniadirSubcuenta;
end;

procedure TWNuevaSubcuenta.fcImageBtnMinimizarClick(Sender: TObject);
begin
   WindowState := wsMinimized;
end;

procedure TWNuevaSubcuenta.PonerDecimal(Sender: TObject; var Key: Char);
begin
   if (key = '.') then begin
      key := ',';
   end;
end;

procedure TWNuevaSubcuenta.EditSUBCUENTAExit(Sender: TObject);
begin
   if (QFichero.State in dsEditModes) and
      ((DMContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString) = 'C') or
      (DMContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString) = 'P')) and
      (QFicheroPAIS.AsString = '') then begin
      QFicheroPAIS.AsString := 'ES';
      EditNIF.MaxLength     := 9;
   end
   else begin
      EditNIF.MaxLength := 20;
   end;
end;

procedure TWNuevaSubcuenta.EditNIFExit(Sender: TObject);
//var NIF, Letra: String;
begin
   (*if QFicheroPAIS.AsString = 'ES' then begin
      if QFichero.State in dsEditModes then begin
         NIF := QFicheroNIF.AsString;
         if Empty(NIF) then begin
            Exit;
         end;
         if NIF[1] in ['A'..'Z'] then begin
            Exit;
         end;
         // chequeo del nif
         Letra := LetraNif(Copy(NIF, 1, 8));
         if Letra <> NIF[9] then begin
            QFicheroNIF.AsString := Copy(NIF, 1, 8) + Letra;
         end;
      end;
   end;*)
end;

end.
