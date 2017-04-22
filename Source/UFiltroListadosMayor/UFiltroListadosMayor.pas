unit UFiltroListadosMayor;

interface

uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Mask, Messages, StdCtrls, SysUtils, Windows,
     Grids, DBGrids,
     UFiltroListadosMayorModel, Provider;

type
  TWFiltroListadosMayor = class(TForm)
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    Panel1: TPanel;
    lTitulo: TLabel;
    Shape1: TShape;
    CDSFiltroSUBCUENTA_DESDE: TStringField;
    CDSFiltroSUBCUENTA_HASTA: TStringField;
    CDSFiltroBUSINESS_ID: TStringField;
    CDSFiltroCONTENIENDO: TStringField;
    CDSFiltroDESCRIPCION_DESDE: TStringField;
    CDSFiltroDESCRIPCION_HASTA: TStringField;
    CDSFiltroFECHA_DESDE: TDateField;
    CDSFiltroFECHA_HASTA: TDateField;
    CDSFiltroFECHA_IMPRIMIR: TDateField;
    CDSFiltroTIPO_CONCEPTO: TStringField;
    CDSFiltroCUENTA: TStringField;
    CDSFiltroID_DELEGACION: TStringField;
    CDSFiltroID_DEPARTAMENTO: TStringField;
    CDSFiltroID_SECCION: TStringField;
    CDSFiltroID_PROYECTO: TStringField;
    CDSFiltroORDEN: TStringField;
    CDSFiltroID_CONCEPTOS: TStringField;
    PageControl: TPageControl;
    TabSheetQuery: TTabSheet;
    TabSheetResults: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    CheckBoxSaltoPaginaPorSubcta: TCheckBox;
    CheckBoxSaldosAcumulados: TCheckBox;
    CheckBoxFormatoOficial: TCheckBox;
    CheckBoxSinPuntear: TCheckBox;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBoxCD_ANALITICA: TDBLookupComboBox;
    ComboBoxDELEGACION: TDBLookupComboBox;
    ComboBoxDEPARTAMENTO: TDBLookupComboBox;
    ComboBoxSECCION: TDBLookupComboBox;
    ComboBoxPROYECTO: TDBLookupComboBox;
    ComboBoxDS_ANALITICA: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDESC_CD_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxDESC_CD_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDESC_DS_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDESC_DS_SUBCUENTA_DESDE: TDBLookupComboBox;
    CheckBoxDescripcion: TCheckBox;
    CheckBoxSubcuenta: TCheckBox;
    EditBUSINESS_ID: TDBEdit;
    EditCONTENIENDO: TDBEdit;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    RadioGroupConcepto: TDBRadioGroup;
    ComboBoxID_CONCEPTOS: TDBLookupComboBox;
    ComboBoxDS_CONCEPTOS: TDBLookupComboBox;
    RadioGroupORDEN: TDBRadioGroup;
    Panel2: TPanel;
    BtnProcess: TButton;
    Panel3: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Panel4: TPanel;
    Panel5: TPanel;
    Label12: TLabel;
    Shape4: TShape;
    DBGridSubcuentasMayor: TDBGrid;
    DBGridEntries: TDBGrid;
    Panel6: TPanel;
    Label13: TLabel;
    Shape5: TShape;
    Cancelar: TButton;
    BtnPrint: TButton;
    procedure BtnProcessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FiltroCBSUBCUENTADesdeCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure CheckBoxSubcuentaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControlChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure CancelarClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
  private
    FModel :TFiltroListadosMayorModel;
  public
    TipoListado: Integer;
  end;

var WFiltroListadosMayor: TWFiltroListadosMayor;

implementation

uses DM, DMConta, General, Globales;
{$R *.DFM}

procedure TWFiltroListadosMayor.FormCreate(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   FModel := TFiltroListadosMayorModel.Create(DMRef.BDContab);
   Self.Caption := '';
   TabSheetQuery.Show;

   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;

   DmContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   CDSFiltroSUBCUENTA_DESDE.Value  := '';
   CDSFiltroSUBCUENTA_HASTA.Value  := '';
   CDSFiltroFECHA_DESDE.AsDateTime := dPrimeraFecha;
   CDSFiltroFECHA_HASTA.AsDateTime := dUltimaFecha;
   CDSFiltroFECHA_IMPRIMIR.Value   := Date;
   CDSFiltroTIPO_CONCEPTO.AsString := 'T';
   CDSFiltroORDEN.AsString         := 'S';
end;

procedure TWFiltroListadosMayor.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWFiltroListadosMayor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

procedure TWFiltroListadosMayor.FiltroCBSUBCUENTADesdeCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   CDSFiltroSUBCUENTA_HASTA.AsString := CDSFiltroSUBCUENTA_DESDE.AsString;
end;

procedure TWFiltroListadosMayor.CheckBoxSubcuentaClick(Sender: TObject);
begin
   ComboBoxCD_SUBCUENTA_DESDE.Enabled := CheckBoxSubcuenta.Checked;
   ComboBoxDS_SUBCUENTA_DESDE.Enabled := CheckBoxSubcuenta.Checked;
   ComboBoxCD_SUBCUENTA_HASTA.Enabled := CheckBoxSubcuenta.Checked;
   ComboBoxDS_SUBCUENTA_HASTA.Enabled := CheckBoxSubcuenta.Checked;

   ComboBoxDESC_DS_SUBCUENTA_DESDE.Enabled := CheckBoxDescripcion.Checked;
   ComboBoxDESC_CD_SUBCUENTA_DESDE.Enabled := CheckBoxDescripcion.Checked;
   ComboBoxDESC_DS_SUBCUENTA_HASTA.Enabled := CheckBoxDescripcion.Checked;
   ComboBoxDESC_CD_SUBCUENTA_HASTA.Enabled := CheckBoxDescripcion.Checked;
end;

procedure TWFiltroListadosMayor.BtnProcessClick(Sender: TObject);
begin
   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   PonerTipoConta(CDSFiltroTIPO_CONCEPTO.AsString);
   Config.FormatoOficial := CheckBoxFormatoOficial.Checked;

   case TipoListado of
      INF_MAYOR: begin
         FModel.LanzarInfMayor(CheckBoxSubcuenta.Checked,
                               CheckBoxDescripcion.Checked,
                               CDSFiltroSUBCUENTA_DESDE.AsString,
                               CDSFiltroSUBCUENTA_HASTA.AsString,
                               CDSFiltroDESCRIPCION_DESDE.AsString,
                               CDSFiltroDESCRIPCION_HASTA.AsString,
                               CDSFiltroFECHA_DESDE.AsDateTime,
                               CDSFiltroFECHA_HASTA.AsDateTime,
                               CDSFiltroFecha_Imprimir.AsDateTime,
                               CDSFiltroTIPO_CONCEPTO.AsString,
                               CDSFiltroID_CONCEPTOS.AsString,
                               CDSFiltroCUENTA.AsString,
                               CDSFiltroID_DELEGACION.AsString,
                               CDSFiltroID_DEPARTAMENTO.AsString,
                               CDSFiltroID_SECCION.AsString,
                               CDSFiltroID_PROYECTO.AsString,
                               CDSFiltroBUSINESS_ID.AsString,
                               CDSFiltroCONTENIENDO.AsString,
                               CheckBoxSaltoPaginaPorSubcta.Checked,
                               CheckBoxSaldosAcumulados.Checked,
                               CheckBoxFormatoOficial.Checked,
                               CheckBoxSinPuntear.Checked,
                               CDSFiltroORDEN.AsString);
         TabSheetResults.Show;
      end;
   end;
end;

procedure TWFiltroListadosMayor.PageControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
   {The user only can change throuth the use of the buttons}
   AllowChange := False;
end;

procedure TWFiltroListadosMayor.CancelarClick(Sender: TObject);
begin
   FModel.EmptyMayor;
   FModel.EmptyLinesDiario;
   TabSheetQuery.Show;
end;

procedure TWFiltroListadosMayor.BtnPrintClick(Sender: TObject);
begin
   FModel.PrintMayor;
end;

end.
