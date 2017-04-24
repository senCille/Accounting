unit UEditEmpleado;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils,
     WinProcs, WinTypes,
     UCargaRapidaNominasModel;

type
  TWEditEmpleado = class(TForm)
    Datos: TGroupBox;
    SFichero: TDataSource;
    Label10: TLabel;
    ComboBoxCD_SUBCUENTA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA: TDBLookupComboBox;
    Label6: TLabel;
    EditIRPF: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnAccept: TButton;
    EditNOMINA: TDBEdit;
    Label3: TLabel;
    QFichero: TClientDataSet;
    QFicheroSUBCUENTA: TStringField;
    QFicheroDESCRIPCION: TStringField;
    QFicheroNOMINA: TFloatField;
    QFicheroIRPF: TFloatField;
    QFicheroSSOCIAL: TFloatField;
    QFicheroNETO: TFloatField;
    QFicheroN: TStringField;
    EditSSOCIAL: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditNETO: TDBEdit;
    CheckBoxN: TDBCheckBox;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure QFicheroCalcFields(DataSet: TDataSet);
  private
    FModel :TCargaRapidaNominasModel;
  public
    ImporteAsiento: Double;
    property Model :TCargaRapidaNominasModel read FModel write FModel;
  end;

var WEditEmpleado: TWEditEmpleado;

implementation

uses DM, Globales, UCarteraEfectos, UEspere, Math;

{$R *.DFM}

procedure TWEditEmpleado.BtnAcceptClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);
   if QFicheroSUBCUENTA.IsNull then begin
      ShowMessage('La Subcuenta no puede quedar vacia');
      ComboBoxCD_SUBCUENTA.SetFocus;
      Exit;
   end else
   if QFicheroNOMINA.IsNull then begin
      ShowMessage('El Importe de la nómina no puede quedar vacio');
      EditNOMINA.SetFocus;
      Exit;
   end else
   if QFicheroIRPF.IsNull then begin
      ShowMessage('El importe del IRPF no puede quedar vacio');
      EditIRPF.SetFocus;
      Exit;
   end else
   if QFicheroSSOCIAL.IsNull then begin
      ShowMessage('El importe de la Seguridad Social no puede quedar vacio');
      EditSSOCIAL.SetFocus;
      Exit;
   end else
   if QFicheroNETO.IsNull then begin
      ShowMessage('El Importe Neto no puede quedar vacio');
      EditNETO.SetFocus;
      Exit;
   end
   else ModalResult := mrOK;
end;

procedure TWEditEmpleado.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWEditEmpleado.FormCreate(Sender: TObject);
begin
   QFichero.CreateDataset;
   QFichero.Open;
end;

procedure TWEditEmpleado.FormDestroy(Sender: TObject);
begin
   //
end;

procedure TWEditEmpleado.QFicheroCalcFields(DataSet: TDataSet);
begin
   QFicheroNETO.AsFloat := RoundTo(QFicheroNOMINA.AsFloat - QFicheroIRPF.AsFloat - QFicheroSSOCIAL.AsFloat, -2);
end;

end.
