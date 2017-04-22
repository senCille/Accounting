unit USituacionEfecto;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Globales, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages,
     StdCtrls, SysUtils, WinProcs, WinTypes;

(*Está pendiente de hacer que el ComboBox muestre los valores de la izquierda, pero guarde los de la derecha Juan C.Cilleruelo*)     
(*     Items.Strings = (
        'PENDIENTE'#9'N'
        'REMESADO'#9'B'
        'COBRADO'#9'C'
        'DEVUELTO'#9'D'
        'PAGADO'#9'P'
        'ACEPTADO'#9'A'
        'VENCIDO'#9'V')*)
     
type
  TWSituacionEfecto = class(TForm)
    Datos: TGroupBox;
    Shape1: TShape;
    lTitulo: TLabel;
    lDescripcion: TLabel;
    BtnAccept: TButton;
    BtnCancel: TButton;
    ComboBoxSITUACION: TDBComboBox;
    SFichero: TDataSource;
    QFichero: TClientDataSet;
    QFicheroSITUACION: TStringField;
    QFicheroCHEQUE: TStringField;
    EditCHEQUE: TDBEdit;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelClick(Sender: TObject);
  private
  public
    FOperacionEfectos: TOperacionEfectos;
  end;

var WSituacionEfecto: TWSituacionEfecto;

implementation

uses DM, General, UCarteraEfectos, UEspere;
{$R *.DFM}

procedure TWSituacionEfecto.BtnAcceptClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);
   QFichero.Post;

   if FOperacionEfectos = GENERAR_ASIENTO then   begin
      WCarteraEfectos.FSituacion := QFicheroSITUACION.AsString;
   end
   else begin
      WCarteraEfectos.FCheque := QFicheroCHEQUE.AsString;
   end;
end;

procedure TWSituacionEfecto.FormShow(Sender: TObject);
begin
   QFichero.CreateDataset;
   QFichero.Open;
   QFichero.Append;

   if FOperacionEfectos = GENERAR_ASIENTO then  begin
      lDescripcion.Caption      := 'Seleccione la situación del efecto seleccionado';
      ComboBoxSITUACION.Visible := True;
      EditCheque.Visible        := False;
   end
   else begin
      lDescripcion.Caption      := 'Introduzca el número de cheque';
      ComboBoxSITUACION.Visible := False;
      EditCHEQUE.Visible        := True;
   end;

   QFicheroSITUACION.AsString := 'B';
   QFicheroCHEQUE.AsString    := '';
end;

procedure TWSituacionEfecto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWSituacionEfecto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   WCarteraEfectos.FSituacion := '';
   WCarteraEfectos.FCheque    := '';
end;

procedure TWSituacionEfecto.BtnCancelClick(Sender: TObject);
begin
   Close;
end;

end.
