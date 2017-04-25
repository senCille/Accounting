unit UEditApunte;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils,
     WinProcs, WinTypes,
     UCargaAsientoModel;

type
  TWEditApunte = class(TForm)
    SFichero: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnAccept: TButton;
    QFichero: TClientDataSet;
    QFicheroSUBCUENTA: TStringField;
    Datos: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    LabelSubcuenta: TLabel;
    LabelContrapartida: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    BtnDetalleIVA: TSpeedButton;
    EditImporte: TDBEdit;
    ComboBoxContraDESCSUBCUENTA: TDBLookupComboBox;
    ComboBoxDESCSUBCUENTA: TDBLookupComboBox;
    EditComentario: TDBEdit;
    ComboBoxDescConceptos: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA: TDBLookupComboBox;
    ComboBoxContrapartidaSUBCUENTA: TDBLookupComboBox;
    ComboBoxCD_CONCEPTO: TDBLookupComboBox;
    EditFactura: TDBEdit;
    EditAnaliticaNom: TDBLookupComboBox;
    ComboBoxAnaliticaA: TDBLookupComboBox;
    EditDebeHaber: TDBEdit;
    EditCD_TIPO: TDBEdit;
    QFicheroCONTRAPARTIDA: TStringField;
    QFicheroDEBEHABER: TStringField;
    QFicheroIMPORTE: TFloatField;
    QFicheroCUENTA_ANALITICA: TStringField;
    QFicheroNUMEROFACTURA: TStringField;
    QFicheroCOMENTARIO: TStringField;
    QFicheroID_CONCEPTOS: TStringField;
    QFicheroTIPOASIENTO: TIntegerField;
    QFicheroIVA: TFloatField;
    QFicheroRECARGO: TFloatField;
    QFicheroAPUNTE: TSmallintField;
    QFicheroFECHA: TDateTimeField;
    QFicheroMONEDA: TStringField;
    QFicheroCUOTAIVA: TFloatField;
    QFicheroCUOTARECARGO: TFloatField;
    QFicheroBASEIMPONIBLE: TFloatField;
    BtnNewSubAccount: TButton;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnDetalleIVAClick(Sender: TObject);
    procedure BtnNewSubAccountClick(Sender: TObject);
    procedure ComboBoxCD_SUBCUENTACloseUp(Sender: TObject);
  private
    FModel :TCargaAsientoModel;
  public
    ImporteAsiento    :Double;
    TipoAsiento       :Integer;
    SubCuentaAlEntrar :string;
    property Model :TCargaAsientoModel read FModel write FModel;
  end;

var WEditApunte: TWEditApunte;

implementation

uses System.Math,
     Globales, UCarteraEfectos, Processing,
     DM, DMConta, UDetalleIVA, UNuevaSubcuenta;

{$R *.DFM}

procedure TWEditApunte.BtnAcceptClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);
   if QFicheroSUBCUENTA.IsNull then begin
      ShowMessage('La Subcuenta no puede quedar vacia');
      ComboBoxCD_SUBCUENTA.SetFocus;
      Exit;
   end else
   if QFicheroCONTRAPARTIDA.IsNull then begin
      ShowMessage('El contrapartida no puede quedar vacia');
      ComboBoxContrapartidaSUBCUENTA.SetFocus;
      Exit;
   end else
   if QFicheroDEBEHABER.IsNull then begin
      ShowMessage('Debe/Haber no puede quedar vacio.');
      EditDebeHaber.SetFocus;
      Exit;
   end else
   if QFicheroIMPORTE.IsNull then begin
      ShowMessage('El importe no puede quedar vacio');
      EditImporte.SetFocus;
      Exit;
   end else
   if QFicheroID_CONCEPTOS.IsNull then begin
      ShowMessage('El Concepto no puede quedar vacio');
      ComboBoxCD_CONCEPTO.SetFocus;
      Exit;
   end
   else begin
      QFichero.Post;
      ModalResult := mrOK;
   end;
end;

procedure TWEditApunte.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWEditApunte.FormCreate(Sender: TObject);
begin
   QFichero.CreateDataset;
   QFichero.Open;
   QFicheroIMPORTE.DisplayFormat       := '###,###,##0.#0';
   QFicheroBASEIMPONIBLE.DisplayFormat := '###,###,##0.#0';
   QFicheroCUOTAIVA.DisplayFormat      := '###,###,##0.#0';
   QFicheroCUOTAIVA.DisplayFormat      := '###,###,##0.#0';

   QFicheroIMPORTE.EditFormat          := '#########.#0';
   QFicheroBASEIMPONIBLE.EditFormat    := '#########.#0';
   QFicheroCUOTAIVA.EditFormat         := '#########.#0';
   QFicheroCUOTARECARGO.EditFormat     := '#########.#0';
end;

procedure TWEditApunte.FormDestroy(Sender: TObject);
begin
   //
end;

procedure TWEditApunte.BtnDetalleIVAClick(Sender: TObject);
begin
   if (QFicheroSUBCUENTA.AsString <> '') and
      ((DMContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString) = 'R') or
       (DMContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString) = 'S')) then begin
       {Abrir ventana con el detalle del IVA}
       if not (QFichero.State in dsEditModes) then QFichero.Edit;

       QFicheroIVA.AsFloat     := FModel.GetCurrentIVA;
       QFicheroRECARGO.AsFloat := FModel.GetCurrentRECARGO; 

       WDetalleIVA := TWDetalleIVA.Create(nil);
       try
          WDetalleIVA.SFichero.DataSet := QFichero;

          if WDetalleIVA.ShowModal = mrOk then begin
             EditImporte.SetFocus;
          end;
       finally
          FreeAndNil(WDetalleIVA);
       end;
   end;
end;

procedure TWEditApunte.BtnNewSubAccountClick(Sender: TObject);
begin
   WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
   try
      WNuevaSubcuenta.ShowModal;
      if WNuevaSubcuenta.FNuevaSubcuenta <> '' then begin
         FModel.RefreshAccounts;
         if not (QFichero.State in dsEditModes) then QFichero.Edit;
         QFicheroSUBCUENTA.AsString := WNuevaSubcuenta.FNuevaSubcuenta;
         if WNuevaSubcuenta.FContrapartidaSubcta <> '' then begin
            QFicheroCONTRAPARTIDA.AsString := WNuevaSubcuenta.FContrapartidaSubcta;
         end;
      end;
   finally
      FreeAndNil(WNuevaSubcuenta);
   end;
end;

procedure TWEditApunte.ComboBoxCD_SUBCUENTACloseUp(Sender: TObject);
var TipoSubcuenta :string;
begin
   if (TipoAsiento = ASIENTO_FACTURA_COMPRA) or (TipoAsiento = ASIENTO_FACTURA_VENTA) then begin
      TipoSubcuenta := DMContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString);
      if (SubcuentaAlEntrar <> '') and (DmRef.QParametrosACTCOMENTARIO.AsString <> 'S') and (SubcuentaAlEntrar <> QFicheroSUBCUENTA.AsString) and
         ((TipoSubcuenta      = 'P') or (TipoSubcuenta = 'C')) and
         (TipoSubcuenta = DMContaRef.ObtenerTipoSubcuenta(SubcuentaAlEntrar)) then begin
         QFicheroCOMENTARIO.AsString := TDataSet(TDBLookupComboBox(Sender).DataSource).FieldByName('COMENTARIO').AsString;
      end else
      { Si es subcuenta de IVA, abrir ventana de importes }
      if (TipoSubcuenta = 'R') or (TipoSubcuenta = 'S') then begin
         BtnDetalleIVA.Click;
      end
      else begin
         if not (QFichero.State in dsEditModes) then QFichero.Edit;
         QFicheroBASEIMPONIBLE.AsFloat := 0;
         QFicheroIVA.AsFloat           := 0;
         QFicheroRECARGO.AsFloat       := 0;
         QFicheroCUOTAIVA.AsFloat      := 0;
         QFicheroCUOTARECARGO.AsFloat  := 0;
         QFichero.Post;
      end;
   end;

   if not (QFichero.State in dsEditModes) then QFichero.Edit;

   FModel.SetContrapartida(QFicheroCONTRAPARTIDA);
end;

end.
