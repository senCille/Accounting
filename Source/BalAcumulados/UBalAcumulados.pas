unit UBalAcumulados;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils, WinProcs, WinTypes,
     UBalAcumuladosModel;
     
type
  TWBalAcumulados = class(TForm)
    Datos: TGroupBox;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    lSubtotales1: TLabel;
    lSubtotales2: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    CheckBoxConSubcuentas: TCheckBox;
    EdtiNIVEL_1: TDBEdit;
    EditNIVEL_2: TDBEdit;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox;
    RadioGroupTIPO_CONCEPTO: TDBRadioGroup;
    RGAcumulacion: TRadioGroup;
    QFiltro: TClientDataSet;
    SFiltro: TDataSource;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBoxDELEGACION: TDBLookupComboBox;
    ComboBoxDEPARTAMENTO: TDBLookupComboBox;
    ComboBoxSECCION: TDBLookupComboBox;
    ComboBoxPROYECTO: TDBLookupComboBox;
    ComboBoxCD_CUENTA: TDBLookupComboBox;
    ComboBoxDS_CUENTA: TDBLookupComboBox;
    ComboBoxCD_CUENTA_H: TDBLookupComboBox;
    ComboBoxDS_CUENTA_H: TDBLookupComboBox;
    Panel1: TPanel;
    Shape1: TShape;
    lTitulo: TLabel;
    Panel2: TPanel;
    BtnEdtProcesar: TButton;
    QFiltroSUBCUENTA_DESDE: TStringField;
    QFiltroSUBCUENTA_HASTA: TStringField;
    QFiltroFECHA_DESDE: TDateField;
    QFiltroFECHA_HASTA: TDateField;
    QFiltroTIPO_CONCEPTO: TStringField;
    QFiltroFECHA_IMPRIMIR: TDateField;
    QFiltroNIVEL_1: TIntegerField;
    QFiltroNIVEL_2: TIntegerField;
    QFiltroCUENTA: TStringField;
    QFiltroCUENTA_H: TStringField;
    QFiltroID_DELEGACION: TStringField;
    QFiltroID_DEPARTAMENTO: TStringField;
    QFiltroID_SECCION: TStringField;
    QFiltroID_PROYECTO: TStringField;
    procedure BtnEdtProcesarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TBalAcumuladosModel;
  public
  end;

var WBalAcumulados: TWBalAcumulados;

implementation

uses System.StrUtils,
     DM, DMConta, Globales, Processing, ccStr;

{$R *.DFM}

procedure TWBalAcumulados.FormCreate(Sender: TObject);
begin
   FModel := TBalAcumuladosModel.Create(DMRef.BDContab);
   Self.Caption := '';
end;

procedure TWBalAcumulados.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWBalAcumulados.FormShow(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   DmContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);

   QFiltro.CreateDataSet;
   
   QFiltro.Active := True;
   QFiltro.Append;
   QFiltroSUBCUENTA_HASTA.AsString  := DupeString('9', Config.MaxLengthAccounts);
   QFiltroFECHA_DESDE.AsDateTime    := dPrimeraFecha;
   QFiltroFECHA_HASTA.AsDateTime    := dUltimaFecha;
   QFiltroTIPO_CONCEPTO.AsString    := 'T';
   QFiltroFECHA_IMPRIMIR.AsDateTime := Date;
   QFiltroNIVEL_1.AsInteger         := 3;
   QFiltroNIVEL_2.AsInteger         := 1;

   EditFECHA_DESDE.SetFocus;
end;

procedure TWBalAcumulados.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnEdtProcesar.Click;
      end;
   end;
end;

procedure TWBalAcumulados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TWBalAcumulados.BtnEdtProcesarClick(Sender: TObject);
var TituloBalance :string;
    nAuxiliar     :Integer;
begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   Config.SetAccountingType(QFiltroTIPO_CONCEPTO.AsString);
   Config.ReportCurrency := 'E';

   if RGAcumulacion.ItemIndex = 0 then  begin
      TituloBalance := 'BALANCE DE ACUMULADOS POR SALDOS';
   end
   else begin
      TituloBalance := 'BALANCE DE ACUMULADOS POR MOVIMIENTOS';
   end;

   if not (QFiltro.State in dsEditModes) then begin
      QFiltro.Edit;
   end;

   if QFiltroNIVEL_2.AsInteger > QFiltroNIVEL_1.AsInteger then begin
      nAuxiliar := QFiltroNIVEL_1.AsInteger;
      QFiltroNIVEL_1.AsInteger := QFiltroNIVEL_2.AsInteger;
      QFiltroNIVEL_2.AsInteger := nAuxiliar;
   end;

   if QFiltroSUBCUENTA_HASTA.AsString = '' then begin
      QFiltroSUBCUENTA_HASTA.AsString := QFiltroSUBCUENTA_DESDE.AsString;
   end;

   if Length(QFiltroSUBCUENTA_DESDE.AsString) < Config.MaxLengthAccounts then begin
      QFiltroSUBCUENTA_DESDE.AsString := TStrTools.BackChar(QFiltroSUBCUENTA_DESDE.AsString, '0', Config.MaxLengthAccounts);
   end;
   if Length(QFiltroSUBCUENTA_HASTA.AsString) < Config.MaxLengthAccounts then begin
      QFiltroSUBCUENTA_HASTA.AsString := TStrTools.Backchar(QFiltroSUBCUENTA_HASTA.AsString, '9', Config.MaxLengthAccounts);
   end;

   QFiltro.Post;

   FModel.GeneraBalanceDeAcumulados(TituloBalance                   ,
                                    QFiltroFECHA_IMPRIMIR.AsDateTime,
                                    QFiltroTIPO_CONCEPTO.AsString   ,
                                    QFiltroFECHA_DESDE.AsDateTime   ,
                                    QFiltroFECHA_HASTA.AsDateTime   ,
                                    QFiltroSUBCUENTA_DESDE.AsString ,
                                    QFiltroSUBCUENTA_HASTA.AsString ,
                                    QFiltroCUENTA.AsString          ,
                                    QFiltroCUENTA_H.AsString        ,
                                    QFiltroID_DELEGACION.AsString   ,
                                    QFiltroID_DEPARTAMENTO.AsString ,
                                    QFiltroID_SECCION.AsString      ,
                                    QFiltroID_PROYECTO.AsString     ,
                                    QFiltroNIVEL_1.AsInteger        ,
                                    QFiltroNIVEL_2.AsInteger        ,
                                    CheckBoxConSubcuentas.Checked   ,
                                    RGAcumulacion.ItemIndex         );
end;

end.
