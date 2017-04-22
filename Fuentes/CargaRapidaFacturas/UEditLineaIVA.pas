unit UEditLineaIVA;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils,
     WinProcs, WinTypes,
     UCargaRapidaFacturasModel;

type
  TWEditLineaIVA = class(TForm)
    Datos: TGroupBox;
    SFichero: TDataSource;
    QFichero: TClientDataSet;
    Label10: TLabel;
    ComboBoxCD_SUBCUENTA_IVA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_IVA: TDBLookupComboBox;
    ComboBoxDS_CONCEPTO: TDBLookupComboBox;
    ComboBoxCD_CONCEPTO: TDBLookupComboBox;
    Label1: TLabel;
    Label6: TLabel;
    EditCUOTA_IVA: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnAccept: TButton;
    QFicheroSUBCUENTA_IVA: TStringField;
    ComboBoxCD_SUBCUENTA_CONTRAPARTIDA: TDBLookupComboBox;
    Label2: TLabel;
    ComboBoxDS_SUBCUENTA_CONTRAPARTIDA: TDBLookupComboBox;
    QFicheroCONTRAPARTIDA: TStringField;
    QFicheroID_CONCEPTOS: TStringField;
    EditBASE_IMPONIBLE: TDBEdit;
    Label3: TLabel;
    QFicheroBASE_IMPONIBLE: TFloatField;
    QFicheroCUOTA_IVA: TFloatField;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TCargaRapidaFacturasModel;
  public
    ImporteAsiento: Double;
    property Model :TCargaRapidaFacturasModel read FModel write FModel;
  end;

var WEditLineaIVA: TWEditLineaIVA;

implementation

uses DM, General, Globales, UCarteraEfectos, UEspere;
{$R *.DFM}

procedure TWEditLineaIVA.BtnAcceptClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);
   if QFicheroSUBCUENTA_IVA.IsNull then begin
      ShowMessage('La Subcuenta de IVA no puede quedar vacia');
      ComboBoxCD_SUBCUENTA_IVA.SetFocus;
      Exit;
   end else
   if QFicheroBASE_IMPONIBLE.IsNull then begin
      ShowMessage('La Base Imponible no puede quedar vacia');
      EditBASE_IMPONIBLE.SetFocus;
      Exit;
   end else
   if QFicheroCUOTA_IVA.IsNull then begin
      ShowMessage('El importe del IVA no puede quedar vacio');
      EditCUOTA_IVA.SetFocus;
      Exit;
   end else
   if QFicheroCONTRAPARTIDA.IsNull then begin
      ShowMessage('La Subcuenta de Contrpartida no puede quedar vacia');
      ComboBoxCD_SUBCUENTA_CONTRAPARTIDA.SetFocus;
      Exit;
   end else
   if QFicheroID_CONCEPTOS.IsNull then begin
      ShowMessage('El Concepto no puede quedar vacio');
      ComboBoxCD_CONCEPTO.SetFocus;
      Exit;
   end
   else ModalResult := mrOK;
end;

procedure TWEditLineaIVA.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWEditLineaIVA.FormCreate(Sender: TObject);
begin
   QFichero.CreateDataset;
   QFichero.Open;
end;

procedure TWEditLineaIVA.FormDestroy(Sender: TObject);
begin
   //
end;

end.
