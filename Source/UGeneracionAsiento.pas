unit UGeneracionAsiento;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils,
     WinProcs, WinTypes;

(* Juan C.Cilleruelo. Queda pendiente, hacer que el combo box, muestre los valores de la derecha y asigne los de la izquierda
     Items.Strings = (
        'PENDIENTE'#9'N'
        'REMESADO'#9'B'
        'COBRADO'#9'C'
        'DEVUELTO'#9'D'
        'PAGADO'#9'P'
        'ACEPTADO'#9'A'
        'VENCIDO'#9'V')  *)

type
  TWGeneracionAsiento = class(TForm)
    Datos: TGroupBox;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnAccept: TButton;
    SFichero: TDataSource;
    QFichero: TClientDataSet;
    QFicheroSITUACION: TStringField;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBoxSITUACION: TDBComboBox;
    ComboBoxCD_SUBCUENTA_BANCO: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_BANCO: TDBLookupComboBox;
    EditFECHA_ASIENTO: TDBEdit;
    CheckBoxBorrarVencimientos: TCheckBox;
    QFicheroFASIENTO: TDateTimeField;
    QFicheroSUBCTABANCO: TStringField;
    ComboBoxDS_CONCEPTO: TDBLookupComboBox;
    ComboBoxCD_CONCEPTO: TDBLookupComboBox;
    Label1: TLabel;
    QFicheroID_CONCEPTOS: TVarBytesField;
    Label6: TLabel;
    EditIMPORTE: TDBEdit;
    QFicheroIMPORTE: TFloatField;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  public
    ImporteAsiento: Double;
  end;

var WGeneracionAsiento: TWGeneracionAsiento;

implementation

uses DM, Globales, UCarteraEfectos, UEspere;

{$R *.DFM}

procedure TWGeneracionAsiento.BtnAcceptClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if QFicheroSUBCTABANCO.AsString = '' then  begin
      ComboBoxCD_SUBCUENTA_BANCO.SetFocus;
      DatabaseError('La subcuenta del banco está en blanco.');
   end;
   if QFicheroID_CONCEPTOS.AsString = '' then  begin
      ComboBoxCD_Concepto.SetFocus;
      DatabaseError('El concepto está en blanco.');
   end;
   if QFicheroFASIENTO.IsNull then  begin
      EditFECHA_ASIENTO.SetFocus;
      DatabaseError('La fecha de asiento está en blanco.');
   end;
   if QFicheroSITUACION.AsString = '' then  begin
      ComboBoxSITUACION.SetFocus;
      DatabaseError('La situación está en blanco.');
   end;

   WCarteraEfectos.FSituacion    := QFicheroSITUACION.AsString;
   WCarteraEfectos.FSubctaBanco  := QFicheroSUBCTABANCO.AsString;
   WCarteraEfectos.FFechaAsiento := QFicheroFASIENTO.AsDateTime;
   WCarteraEfectos.FConcepto     := QFicheroID_CONCEPTOS.AsString;
   WCarteraEfectos.FBorrarVtos   := CheckBoxBorrarVencimientos.Checked;

   Close;
end;

procedure TWGeneracionAsiento.FormShow(Sender: TObject);
begin
   //QFichero.FieldDefs.Add('SCTAEFECTDESCONTADOS', ftString, 10, False);
   //QFichero.FieldDefs.Add('SCTADEUDASDESCUENTOS', ftString, 10, False);
   QFichero.CreateDataset;
   QFichero.Open;
   QFichero.Append;

   QFicheroSITUACION.AsString    := 'B';
   QFicheroFASIENTO.AsDateTime   := Date;
   QFicheroIMPORTE.AsFloat       := ImporteAsiento;
   QFicheroSUBCTABANCO.AsString  := DMRef.QParametrosSCTAREMESAEFECTOS.AsString;
   QFicheroID_CONCEPTOS.AsString := DMRef.QParametrosCTOREMESAEFECTOS.AsString;

   ComboBoxCD_SUBCUENTA_BANCO.SetFocus;
end;

procedure TWGeneracionAsiento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

end.
