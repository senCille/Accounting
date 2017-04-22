unit UFiltroMayorSubcuenta;

interface

uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Mask, Messages, StdCtrls, SysUtils, Windows,
     UFiltroMayorSubcuentaModel;
     
type
  TWFiltroMayorSubcuenta = class(TForm)
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
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
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    RadiotGroupConcepto: TDBRadioGroup;
    Label3: TLabel;
    ComboBoxID_CONCEPTOS: TDBLookupComboBox;
    ComboBoxDS_CONCEPTOS: TDBLookupComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    lTitulo: TLabel;
    Shape1: TShape;
    BtnProcess: TButton;
    CDSFiltroFECHA_DESDE: TDateField;
    CDSFiltroFECHA_HASTA: TDateField;
    CDSFiltroFECHA_IMPRIMIR: TDateField;
    CDSFiltroTIPO_CONCEPTO: TStringField;
    CDSFiltroCONCEPTO: TStringField;
    CDSFiltroCUENTA: TStringField;
    CDSFiltroID_DELEGACION: TStringField;
    CDSFiltroID_DEPARTAMENTO: TStringField;
    CDSFiltroID_SECCION: TStringField;
    CDSFiltroID_PROYECTO: TStringField;
    procedure BtnProcessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TFiltroMayorSubcuentaModel;
  public
    FSubcuenta: String;
  end;

var WFiltroMayorSubcuenta: TWFiltroMayorSubcuenta;

implementation

uses DM, DMConta, General, Globales, UFiltroListadosMayorModel;
{$R *.DFM}

procedure TWFiltroMayorSubcuenta.FormCreate(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   FModel := TFiltroMayorSubcuentaModel.Create(DMRef.BDContab);
   Self.Caption := '';
   
   FSubcuenta := '';
   
   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;

   DMContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   CDSFiltroFECHA_DESDE.AsDateTime := dPrimeraFecha;
   CDSFiltroFECHA_HASTA.AsDateTime := dUltimaFecha;
   CDSFiltroFECHA_IMPRIMIR.Value   := Date;
   CDSFiltroTIPO_CONCEPTO.AsString := 'T';
end;

procedure TWFiltroMayorSubcuenta.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWFiltroMayorSubcuenta.BtnProcessClick(Sender: TObject);
var LMayorModel :TFiltroListadosMayorModel;
begin
   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   PonerTipoConta(CDSFiltroTIPO_CONCEPTO.AsString);
   Config.FormatoOficial := CheckBoxFormatoOficial.Checked;

   LMayorModel := TFiltroListadosMayorModel.Create(DMRef.BDContab);
   try
      LMayorModel.LanzarInfMayor(True                              ,
                                 False                             ,
                                 FSubcuenta                        ,
                                 FSubcuenta                        ,
                                 ''                                ,
                                 ''                                ,
                                 CDSFiltroFECHA_DESDE.AsDateTime   ,
                                 CDSFiltroFECHA_HASTA.AsDateTime   ,
                                 CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                 CDSFiltroTIPO_CONCEPTO.AsString   ,
                                 CDSFiltroCONCEPTO.AsString        ,
                                 CDSFiltroCUENTA.AsString          ,
                                 CDSFiltroID_DELEGACION.AsString   ,
                                 CDSFiltroID_DEPARTAMENTO.AsString ,
                                 CDSFiltroID_SECCION.AsString      ,
                                 CDSFiltroID_PROYECTO.AsString     ,
                                 'E'                               ,
                                 ''                                ,
                                 True                              ,
                                 CheckBoxSaldosAcumulados.Checked  ,
                                 CheckBoxFormatoOficial.Checked    ,
                                 CheckBoxSinPuntear.Checked        );
   finally
      LMayorModel.Free;
   end;
end;

procedure TWFiltroMayorSubcuenta.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

end.
