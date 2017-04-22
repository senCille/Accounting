unit UFiltroListadosAsientos;

interface

uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Mask, Messages, StdCtrls, SysUtils, Windows,
     UFiltroListadosAsientosModel;
     
type
  TWFiltroListadosAsientos = class(TForm)
    GroupBox1: TGroupBox;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    EditASIENTO_DESDE: TDBEdit;
    EditASIENTO_HASTA: TDBEdit;
    CheckBoxSoloAsientosDesc: TCheckBox;
    RadioGroupINFORME: TDBRadioGroup;
    CheckBoxFormatoOficial: TCheckBox;
    RadioGroupConcepto: TDBRadioGroup;
    RadioGroupOrden: TDBRadioGroup;
    GroupBox3: TGroupBox;
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
    CheckBoxSoloAsientosMezcla: TCheckBox;
    Panel1: TPanel;
    Panel2: TPanel;
    lTitulo: TLabel;
    Shape1: TShape;
    BtnProcess: TButton;
    CDSFiltroASIENTO_DESDE: TIntegerField;
    CDSFiltroASIENTO_HASTA: TIntegerField;
    CDSFiltroFECHA_DESDE: TDateField;
    CDSFiltroFECHA_HASTA: TDateField;
    CDSFiltroFECHA_IMPRIMIR: TDateField;
    CDSFiltroINFORME: TStringField;
    CDSFiltroORDEN: TStringField;
    CDSFiltroTIPO_CONCEPTO: TStringField;
    CDSFiltroCUENTA: TStringField;
    CDSFiltroID_DELEGACION: TStringField;
    CDSFiltroID_DEPARTAMENTO: TStringField;
    CDSFiltroID_SECCION: TStringField;
    CDSFiltroID_PROYECTO: TStringField;
    procedure BtnProcessClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FModel :TFiltroListadosAsientosModel;
  public
    TipoListado: Integer;
  end;

var WFiltroListadosAsientos: TWFiltroListadosAsientos;

implementation
uses DM, DMConta, General, Globales;
{$R *.DFM}

procedure TWFiltroListadosAsientos.FormCreate(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   FModel := TFiltroListadosAsientosModel.Create(DMRef.BDContab);
   Self.Caption := '';

   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;

   DMContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   CDSFiltroASIENTO_DESDE.Value    := nPrimerAsiento;
   CDSFiltroASIENTO_HASTA.Value    := nUltimoAsiento;
   CDSFiltroFECHA_DESDE.AsDateTime := dPrimeraFecha;
   CDSFiltroFECHA_HASTA.AsDateTime := dUltimaFecha;
   CDSFiltroFECHA_IMPRIMIR.Value   := Date;
   CDSFiltroINFORME.AsString       := 'N';
   CDSFiltroORDEN.AsString         := 'A';
   CDSFiltroTIPO_CONCEPTO.AsString := 'T';
end;

procedure TWFiltroListadosAsientos.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWFiltroListadosAsientos.BtnProcessClick(Sender: TObject);
begin
   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);
   PonerTipoConta(CDSFiltroTIPO_CONCEPTO.AsString);

   case TipoListado of
      INF_ASIENTOS: begin
         FModel.LanzarInfAsientos(CDSFiltroASIENTO_DESDE.AsInteger  ,
                                  CDSFiltroASIENTO_HASTA.AsInteger  ,
                                  CDSFiltroFECHA_DESDE.AsDateTime   ,
                                  CDSFiltroFECHA_HASTA.AsDateTime   ,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CDSFiltroTIPO_CONCEPTO.AsString   ,
                                  CDSFiltroCUENTA.AsString          ,
                                  CDSFiltroID_DELEGACION.AsString   ,
                                  CDSFiltroID_DEPARTAMENTO.AsString ,
                                  CDSFiltroID_SECCION.AsString      ,
                                  CDSFiltroID_PROYECTO.AsString     ,
                                  CDSFiltroOrden.AsString   = 'A'   ,
                                  CDSFiltroInforme.AsString = 'N'   ,
                                  CheckBoxSoloAsientosDesc.Checked  ,
                                  CheckBoxSoloAsientosMezcla.Checked,
                                  CheckBoxFormatoOficial.Checked    );
      end;
   end;
end;

procedure TWFiltroListadosAsientos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

procedure TWFiltroListadosAsientos.FormShow(Sender: TObject);
begin
   EditASIENTO_DESDE.SetFocus;
end;

end.
