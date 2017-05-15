unit UEditApunte;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils,
     WinProcs, WinTypes,
     UCargaAsientoModel;

type
  TWEditApunte = class(TForm)
    SApunte: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnAccept: TButton;
    QApunte: TClientDataSet;
    QApunteSUBCUENTA: TStringField;
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
    QApunteCONTRAPARTIDA: TStringField;
    QApunteDEBEHABER: TStringField;
    QApunteIMPORTE: TFloatField;
    QApunteCUENTA_ANALITICA: TStringField;
    QApunteNUMEROFACTURA: TStringField;
    QApunteCOMENTARIO: TStringField;
    QApunteID_CONCEPTOS: TStringField;
    QApunteTIPOASIENTO: TIntegerField;
    QApunteIVA: TFloatField;
    QApunteRECARGO: TFloatField;
    QApunteAPUNTE: TSmallintField;
    QApunteFECHA: TDateTimeField;
    QApunteMONEDA: TStringField;
    QApunteCUOTAIVA: TFloatField;
    QApunteCUOTARECARGO: TFloatField;
    QApunteBASEIMPONIBLE: TFloatField;
    BtnNewSubAccount: TButton;
    QApunteASIENTO: TIntegerField;
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
   if QApunteSUBCUENTA.IsNull then begin
      ShowMessage('La Subcuenta no puede quedar vacia');
      ComboBoxCD_SUBCUENTA.SetFocus;
      Exit;
   end else
   if QApunteCONTRAPARTIDA.IsNull then begin
      ShowMessage('El contrapartida no puede quedar vacia');
      ComboBoxContrapartidaSUBCUENTA.SetFocus;
      Exit;
   end else
   if QApunteDEBEHABER.IsNull then begin
      ShowMessage('Debe/Haber no puede quedar vacio.');
      EditDebeHaber.SetFocus;
      Exit;
   end else
   if QApunteIMPORTE.IsNull then begin
      ShowMessage('El importe no puede quedar vacio');
      EditImporte.SetFocus;
      Exit;
   end else
   if QApunteID_CONCEPTOS.IsNull then begin
      ShowMessage('El Concepto no puede quedar vacio');
      ComboBoxCD_CONCEPTO.SetFocus;
      Exit;
   end
   else begin
      QApunte.Post;
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
   QApunte.CreateDataset;
   QApunte.Open;
   QApunteIMPORTE.DisplayFormat       := '###,###,##0.#0';
   QApunteBASEIMPONIBLE.DisplayFormat := '###,###,##0.#0';
   QApunteCUOTAIVA.DisplayFormat      := '###,###,##0.#0';
   QApunteCUOTAIVA.DisplayFormat      := '###,###,##0.#0';

   QApunteIMPORTE.EditFormat          := '#########.#0';
   QApunteBASEIMPONIBLE.EditFormat    := '#########.#0';
   QApunteCUOTAIVA.EditFormat         := '#########.#0';
   QApunteCUOTARECARGO.EditFormat     := '#########.#0';
end;

procedure TWEditApunte.FormDestroy(Sender: TObject);
begin
   //
end;

procedure TWEditApunte.BtnDetalleIVAClick(Sender: TObject);
begin
   if (QApunteSUBCUENTA.AsString <> '') and
      ((DMContaRef.ObtenerTipoSubcuenta(QApunteSUBCUENTA.AsString) = 'R') or
       (DMContaRef.ObtenerTipoSubcuenta(QApunteSUBCUENTA.AsString) = 'S')) then begin
       {Abrir ventana con el detalle del IVA}
       if not (QApunte.State in dsEditModes) then QApunte.Edit;

       QApunteIVA.AsFloat     := FModel.GetCurrentIVA;
       QApunteRECARGO.AsFloat := FModel.GetCurrentRECARGO;

       WDetalleIVA := TWDetalleIVA.Create(nil);
       try
          WDetalleIVA.SFichero.DataSet := QApunte;

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
         if not (QApunte.State in dsEditModes) then QApunte.Edit;
         QApunteSUBCUENTA.AsString := WNuevaSubcuenta.FNuevaSubcuenta;
         if WNuevaSubcuenta.FContrapartidaSubcta <> '' then begin
            QApunteCONTRAPARTIDA.AsString := WNuevaSubcuenta.FContrapartidaSubcta;
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
      TipoSubcuenta := DMContaRef.ObtenerTipoSubcuenta(QApunteSUBCUENTA.AsString);
      if (SubcuentaAlEntrar <> '') and (DmRef.QParametrosACTCOMENTARIO.AsString <> 'S') and (SubcuentaAlEntrar <> QApunteSUBCUENTA.AsString) and
         ((TipoSubcuenta      = 'P') or (TipoSubcuenta = 'C')) and
         (TipoSubcuenta = DMContaRef.ObtenerTipoSubcuenta(SubcuentaAlEntrar)) then begin
         QApunteCOMENTARIO.AsString := TDataSet(TDBLookupComboBox(Sender).DataSource).FieldByName('COMENTARIO').AsString;
      end else
      { Si es subcuenta de IVA, abrir ventana de importes }
      if (TipoSubcuenta = 'R') or (TipoSubcuenta = 'S') then begin
         BtnDetalleIVA.Click;
      end
      else begin
         if not (QApunte.State in dsEditModes) then QApunte.Edit;
         QApunteBASEIMPONIBLE.AsFloat := 0;
         QApunteIVA.AsFloat           := 0;
         QApunteRECARGO.AsFloat       := 0;
         QApunteCUOTAIVA.AsFloat      := 0;
         QApunteCUOTARECARGO.AsFloat  := 0;
         QApunte.Post;
      end;
   end;

   if not (QApunte.State in dsEditModes) then QApunte.Edit;

   FModel.SetContrapartida(QApunteCONTRAPARTIDA);
end;

end.
