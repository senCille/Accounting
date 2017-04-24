unit UFiltro347;

interface

uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics, Mask, Messages,
     StdCtrls, SysUtils, Windows,
     UFiltro347Model;

type
  TWFiltro347 = class(TForm)
    GroupBox1: TGroupBox;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    EditIMPORTE_DESDE: TDBEdit;
    Label2: TLabel;
    EditIMPORTE_HASTA: TDBEdit;
    Label7: TLabel;
    EditASIENTO_DESDE: TDBEdit;
    EditASIENTO_HASTA: TDBEdit;
    CheckBoxGenerarCartas: TCheckBox;
    CheckBoxGenerarDiskette: TCheckBox;
    RaditoGroupConcepto: TDBRadioGroup;
    GroupBox3: TGroupBox;
    ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDESC_CD_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxDESC_CD_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDESC_DS_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDESC_DS_SUBCUENTA_DESDE: TDBLookupComboBox;
    CheckBoxSubcuenta: TCheckBox;
    CheckBoxDescripcion: TCheckBox;
    RaditoGroupTipo216: TDBRadioGroup;
    CheckBoxExcluirProfesionales: TCheckBox;
    RaditoGroupOrden: TDBRadioGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    lTitulo: TLabel;
    Shape1: TShape;
    BtnAccept: TButton;
    CDSFiltroSUBCUENTA_DESDE: TStringField;
    CDSFiltroSUBCUENTA_HASTA: TStringField;
    CDSFiltroDESCRIPCION_DESDE: TStringField;
    CDSFiltroDESCRIPCION_HASTA: TStringField;
    CDSFiltroASIENTO_DESDE: TIntegerField;
    CDSFiltroASIENTO_HASTA: TIntegerField;
    CDSFiltroFECHA_DESDE: TDateField;
    CDSFiltroFECHA_HASTA: TDateField;
    CDSFiltroIMPORTE_DESDE: TFloatField;
    CDSFiltroIMPORTE_HASTA: TFloatField;
    CDSFiltroTIPO_CONCEPTO: TStringField;
    CDSFiltroTIPO_216: TStringField;
    CDSFiltroORDEN: TStringField;
    CDSFiltroFECHA_IMPRIMIR: TDateField;
    procedure FormShow(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBoxSubcuentaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TFiltro347Model;
  public
    TipoListado: Integer;
  end;

var WFiltro347: TWFiltro347;

implementation

uses DM, DMConta, Globales;

{$R *.DFM}

procedure TWFiltro347.FormCreate(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   FModel := TFiltro347Model.Create(DMRef.BDContab);
   Self.Caption := '';

   if TipoListado = INF_MOD_347 then  begin
      lTitulo.Caption := 'Operaciones con Terceros (347)';
   end
   else begin
      lTitulo.Caption := 'Operaciones con la C.E.E. (349 y 216)';
   end;

   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;

   DmContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   CDSFiltroASIENTO_DESDE.Value    := nPrimerAsiento;
   CDSFiltroASIENTO_HASTA.Value    := nUltimoAsiento;
   CDSFiltroFECHA_DESDE.AsDateTime := dPrimeraFecha;
   CDSFiltroFECHA_HASTA.AsDateTime := dUltimaFecha;
   if TipoListado = INF_MOD_347 then   begin
      CDSFiltroIMPORTE_DESDE.AsFloat := 3005.06;
   end
   else begin
      CDSFiltroIMPORTE_DESDE.AsFloat := -9999999;
   end;
   CDSFiltroIMPORTE_HASTA.AsFloat  := 9999999;
   CDSFiltroTIPO_CONCEPTO.AsString := 'T';
   CDSFiltroTIPO_216.AsString      := 'I';
   CDSFiltroFECHA_IMPRIMIR.Value   := Date;
   CDSFiltroORDEN.AsString         := 'S';
end;

procedure TWFiltro347.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWFiltro347.FormShow(Sender: TObject);
begin
   case TipoListado of
      INF_MOD_347: begin
         lTitulo.Caption := 'Operaciones con Terceros (347)';
      end;
   end;
end;

procedure TWFiltro347.BtnAcceptClick(Sender: TObject);
begin
   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   Config.SetAccountingType(CDSFiltroTIPO_CONCEPTO.AsString);

   FModel.LanzarInfModelo347(TipoListado,
                             CDSFiltroASIENTO_DESDE.AsInteger,
                             CDSFiltroASIENTO_HASTA.AsInteger,
                             CDSFiltroFECHA_DESDE.AsDateTime,
                             CDSFiltroFECHA_HASTA.AsDateTime,
                             CDSFiltroIMPORTE_DESDE.AsFloat,
                             CDSFiltroIMPORTE_HASTA.AsFloat,
                             CheckBoxSubcuenta.Checked,
                             CheckBoxDescripcion.Checked,
                             CDSFiltroSUBCUENTA_DESDE.AsString,
                             CDSFiltroSUBCUENTA_HASTA.AsString,
                             CDSFiltroDESCRIPCION_DESDE.AsString,
                             CDSFiltroDESCRIPCION_HASTA.AsString,
                             CDSFiltroTIPO_CONCEPTO.AsString,
                             CDSFiltroTIPO_216.AsString,
                             CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                             CheckBoxGenerarCartas.Checked,
                             CheckBoxGenerarDiskette.Checked,
                             CheckBoxExcluirProfesionales.Checked,
                             CDSFiltroORDEN.AsString);
end;

procedure TWFiltro347.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWFiltro347.CheckBoxSubcuentaClick(Sender: TObject);
begin
   ComboBoxCD_SUBCUENTA_DESDE.Enabled := CheckBoxSubcuenta.Checked;
   ComboBoxDS_SUBCUENTA_DESDE.Enabled := CheckBoxSubcuenta.Checked;
   ComboBoxCD_SUBCUENTA_HASTA.Enabled := CheckBoxSubcuenta.Checked;
   ComboBoxDS_SUBCUENTA_HASTA.Enabled := CheckBoxSubcuenta.Checked;

   ComboBoxDESC_CD_SUBCUENTA_DESDE.Enabled := CheckBoxDescripcion.Checked;
   ComboBoxDESC_DS_SUBCUENTA_DESDE.Enabled := CheckBoxDescripcion.Checked;
   ComboBoxDESC_CD_SUBCUENTA_HASTA.Enabled := CheckBoxDescripcion.Checked;
   ComboBoxDESC_DS_SUBCUENTA_HASTA.Enabled := CheckBoxDescripcion.Checked;
end;

end.
