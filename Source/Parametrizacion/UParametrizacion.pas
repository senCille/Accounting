unit UParametrizacion;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, ExtCtrls,
     DB, IBX.IBCustomDataSet, Buttons, ComCtrls, jpeg, IBX.IBSQL, IBX.IBDatabase, Mask, DBClient,
     UParametrizacionModel;

     (*Falta de hacer que los comboBox de tipo empresa y moneda, muestren el dato de la izquierda, pero guarden el de la derecha.
     Items.Strings = (
            'PESETA'#9'P'
            'EURO'#9'E')

     Items.Strings = (
            'FÍSICA'#9'F'
            'JURÍDICA'#9'J')

            *)
     
type
  TWParametrizacion = class(TForm)
    DSFichero:        TDataSource;
    CDSFiltro:        TClientDataSet;
    DSFiltro:         TDataSource;
    OpenDialog:       TOpenDialog;
    DSControl:        TDataSource;
    CDSFiltroASIENTO: TIntegerField;
    CDSFiltroASIENTO_OLD: TIntegerField;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Shape1: TShape;
    BtnEdtAceptar: TButton;
    PageControl1: TPageControl;
    TabSheetGeneral: TTabSheet;
    TabSheetNominas: TTabSheet;
    TabSheetCierreEjercicio: TTabSheet;
    TabSheetDocumentos: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox11: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    PermSPClientes: TSpeedButton;
    PermSPProveedor: TSpeedButton;
    PermSP347: TSpeedButton;
    OvcDbPictureField5: TDBEdit;
    OvcDbPictureField7: TDBEdit;
    OvcDbPictureField8: TDBEdit;
    CBImprimir: TDBCheckBox;
    GroupBox12: TGroupBox;
    Label62: TLabel;
    GroupBox14: TGroupBox;
    Label63: TLabel;
    Label77: TLabel;
    DBText29: TDBText;
    DBText30: TDBText;
    DBLookupCombo16: TDBLookupComboBox;
    DBLookupCombo18: TDBLookupComboBox;
    GroupBox15: TGroupBox;
    Label78: TLabel;
    Label79: TLabel;
    DBText31: TDBText;
    DBText32: TDBText;
    DBLookupCombo62: TDBLookupComboBox;
    DBLookupCombo64: TDBLookupComboBox;
    CBSUBCUENTA29: TDBLookupComboBox;
    DBLookupCombo17: TDBLookupComboBox;
    GroupBox7: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBText22: TDBText;
    Label100: TLabel;
    CBSUBCUENTA18: TDBLookupComboBox;
    DBLookupCombo19: TDBLookupComboBox;
    CBSUBCUENTA19: TDBLookupComboBox;
    DBLookupCombo49: TDBLookupComboBox;
    CBSUBCUENTA20: TDBLookupComboBox;
    DBLookupCombo51: TDBLookupComboBox;
    CBSUBCUENTA21: TDBLookupComboBox;
    DBLookupCombo53: TDBLookupComboBox;
    DBLookupCombo55: TDBLookupComboBox;
    DBCheckBox7: TDBCheckBox;
    CBSUBCUENTA39: TDBLookupComboBox;
    DBLookupCombo35: TDBLookupComboBox;
    GroupBox8: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label50: TLabel;
    DBText23: TDBText;
    CBSUBCUENTA22: TDBLookupComboBox;
    DBLookupCombo57: TDBLookupComboBox;
    CBSUBCUENTA23: TDBLookupComboBox;
    DBLookupCombo59: TDBLookupComboBox;
    DBLookupCombo61: TDBLookupComboBox;
    GBFiscales: TGroupBox;
    LabelNif: TLabel;
    LabelDireccion: TLabel;
    LabelPostal: TLabel;
    LabelPoblacion: TLabel;
    LabelProvincia: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    Label60: TLabel;
    lLongSubcuentas: TLabel;
    Label20: TLabel;
    Label74: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    eNombreFiscal: TDBEdit;
    CampoNif: TDBEdit;
    CampoDireccion: TDBEdit;
    CampoCodPostal: TDBEdit;
    CampoPoblacion: TDBEdit;
    DBLookupComboProvincia: TDBLookupComboBox;
    OvcDbPictureField2: TDBEdit;
    OvcDbPictureField3: TDBEdit;
    OvcDbPictureField6: TDBEdit;
    eAsiento: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    eLongSubcuenta: TDBEdit;
    eMoneda: TDBComboBox;
    GroupBox2: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label46: TLabel;
    Label5: TLabel;
    eFechaInicioEjer: TDBEdit;
    eFechaFinEjer: TDBEdit;
    eFechaInicio: TDBEdit;
    DBDateTimePicker1: TDBEdit;
    OvcDbPictureField1: TDBEdit;
    OvcDbPictureField4: TDBEdit;
    OvcDbPictureField9: TDBEdit;
    OvcDbPictureField10: TDBEdit;
    OvcDbPictureField11: TDBEdit;
    OvcDbPictureField12: TDBEdit;
    OvcDbPictureField13: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    GroupBox16: TGroupBox;
    Label76: TLabel;
    Label80: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    eAsientosInicio: TDBEdit;
    eAsientosFin: TDBEdit;
    OvcDbNumericField3: TDBEdit;
    OvcDbNumericField4: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    eTipoEmpresa: TDBComboBox;
    eFiltroSubctas: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    procedure BtnNavCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnEdtAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PermSPClientesClick(Sender: TObject);
    procedure PermSPProveedorClick(Sender: TObject);
    procedure PermSP347Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TParametrizacionModel;
  public
  end;

var WParametrizacion: TWParametrizacion;

implementation

uses System.UITypes,
     DM, DMConta, DMControl, Tools, Globales;

{$R *.DFM}

procedure TWParametrizacion.FormCreate(Sender: TObject);
begin
   FModel := TParametrizacionModel.Create(DMRef.BDContab);
   Caption := '';

   ActivateTransactions(Self, DMRef.BDContab);

   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;
   CDSFiltroASIENTO.AsInteger     := DmContaRef.Dame_Contador('asiento');
   CDSFiltroASIENTO_OLD.AsInteger := CDSFiltroASIENTO.AsInteger;
end;

procedure TWParametrizacion.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWParametrizacion.BtnNavCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TWParametrizacion.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         if DMRef.QParametros.State in dsEditModes then   begin
            BtnEdtAceptar.Click;
         end;
      end;
   end;
end;

procedure TWParametrizacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not(DMRef.QParametros.Modified or DmControlRef.QControl.Modified) then begin
      DMRef.QParametros.Cancel;
      DMControlRef.QControl.Cancel;
      Action := caFree;
   end else
   if MessageDlg('¿Quiere anular las modificaciones realizadas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try DMRef.QParametros.Cancel;
          DMControlRef.QControl.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      Action := caFree;
   end;
end;

procedure TWParametrizacion.BtnEdtAceptarClick(Sender: TObject);
var nPoscoma :Cardinal;
begin
   Perform(wm_NextDlgCtl, 0, 0);
   nPosComa := Pos(',', DmRef.QParametrosNOMBREFISCAL.AsString);
   if (DmRef.QParametrosTIPOEMPRESA.AsString = 'F') and (nPoscoma = 0) then   begin
      DatabaseError('Debe poner una coma entre los apellidos y nombre (Ej.- Navarro,Angel Luis).');
   end;

   try
      DMRef.QParametros.Post;
      DMRef.QParametros.Transaction.CommitRetaining;
      DmControlRef.QControl.Post;
      DmControlRef.QControl.Transaction.CommitRetaining;

      if (CDSFiltroASIENTO_OLD.AsInteger <> CDSFiltroASIENTO.AsInteger) then begin
         // Actualizar contadores
         DmContaRef.Actualizar_contador('asiento', CDSFiltroASIENTO.AsInteger);
      end;
      
      Config.ActiveDS_BUSINESS := DmRef.QParametrosNOMBREFISCAL.AsString;

      Close;
   except
      DatabaseError('Error al guardar los datos');
   end;
end;

procedure TWParametrizacion.FormShow(Sender: TObject);
begin
   DMRef.QParametros.Close;
   //DMRef.QParametros.Regenerar := True;
   DMRef.QParametros.Close;
   DMRef.QParametros.Open;
   if not (DMRef.QParametros.State in dseditmodes) then begin
      DMRef.QParametros.Edit;
   end;

   if not (DmControlRef.QControl.State in dsEditModes) then   begin
      DmControlRef.QControl.Edit;
   end;

   TabSheetGeneral.Show;
   eNombreFiscal.SetFocus;
end;

procedure TWParametrizacion.PermSPClientesClick(Sender: TObject);
begin
   OpenDialog.Title      := 'SELECCIONE CARTA DE RECLAMACION A CLIENTES';
   OpenDialog.InitialDir := Config.AppFolder;
   OpenDialog.Execute;
   DMRef.QParametrosDOCCLIENTE.AsString := OpenDialog.FileName;     
end;

procedure TWParametrizacion.PermSPProveedorClick(Sender: TObject);
begin
   OpenDialog.Title      := 'SELECCIONE CARTA DE PAGOS A PROVEEDORES';
   OpenDialog.InitialDir := Config.AppFolder;
   OpenDialog.Execute;
   DMRef.QParametrosDOCPROVEEDOR.AsString := OpenDialog.FileName;
end;

procedure TWParametrizacion.PermSP347Click(Sender: TObject);
begin
   OpenDialog.Title      := 'SELECCIONE CARTA DE OPERACIONES CON TERCEROS (347)';
   OpenDialog.InitialDir := Config.AppFolder;
   OpenDialog.Execute;
   DMRef.QParametrosDOC347.AsString := OpenDialog.FileName;
end;

end.
