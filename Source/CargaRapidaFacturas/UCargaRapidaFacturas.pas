unit UCargaRapidaFacturas;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics, Grids,
     IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils,
     Variants, WinProcs, WinTypes, DBGrids, ComCtrls, UCargaRapidaFacturasModel, UEditLineaIVA;
     
type
  TWCargaRapidaFacturas = class(TForm)
    SFichero: TDataSource;
    Transaccion: TIBTransaction;
    QMovimientos: TIBDataSet;
    SMovimientos: TDataSource;
    QMovimientosASIENTO: TIntegerField;
    QMovimientosAPUNTE: TSmallintField;
    QMovimientosFECHA: TDateTimeField;
    QMovimientosSUBCUENTA: TIBStringField;
    QMovimientosID_CONCEPTOS: TIBStringField;
    QMovimientosDEBEHABER: TIBStringField;
    QMovimientosCONTRAPARTIDA: TIBStringField;
    QMovimientosCOMENTARIO: TIBStringField;
    QMovimientosNUMEROFACTURA: TIBStringField;
    QMovimientosCUENTA_ANALITICA: TIBStringField;
    QMovimientosDESCCONCEPTO: TIBStringField;
    QMovimientosDESCSUBCUENTA: TIBStringField;
    QMovimientosIMPORTE: TFloatField;
    QMovimientosDescComentario: TStringField;
    SGastos: TDataSource;
    QGastos: TClientDataSet;
    QGastosSBCTA_IVA: TStringField;
    QGastosSBCTA_IVA_DESC: TStringField;
    QGastosBASE_IMPONIBLE_IVA: TFloatField;
    QGastosCONTRAPARTIDA: TStringField;
    QGastosCONTRAPARTIDA_DESC: TStringField;
    QGastosGENERADO: TStringField;
    QGastosCUOTA_IVA: TFloatField;
    QMovimientosABREVIATURA: TIBStringField;
    QGastosCTO_IVA: TStringField;
    QMovimientosTIPOASIENTO: TIntegerField;
    QMovimientosASIENTONOMINA: TIntegerField;
    QMovimientosEJERCICIO: TIntegerField;
    QMovimientosSERIE: TIBStringField;
    QFichero: TClientDataSet;
    Panel2: TPanel;
    Panel1: TPanel;
    BtnEdtSubcuenta: TButton;
    BtnEdtGuardar: TButton;
    Shape1: TShape;
    lTitulo: TLabel;
    PageControl1: TPageControl;
    TabSheetAsientos: TTabSheet;
    TabSheetLastMoves: TTabSheet;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    CheckBoxRealizarPago: TCheckBox;
    ComboBoxCD_SUBCUENTA_BANCO: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_BANCO: TDBLookupComboBox;
    EditFECHAVTO: TDBEdit;
    ComboDS_CONCEPTO_BANCO: TDBLookupComboBox;
    ComboCD_CONCEPTO_BANCO: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    lCtoIVAIntra: TLabel;
    lIntracomunitaria: TLabel;
    EditCOMENTARIO: TDBEdit;
    ComboBoxCD_ANALITICA: TDBLookupComboBox;
    ComboBoxDS_ANALITICA: TDBLookupComboBox;
    ComboCD_CONCEPTO_IVA: TDBLookupComboBox;
    ComboD_CONCEPTO_IVA: TDBLookupComboBox;
    ComboCD_CONCEPTO_IVA_INTRA: TDBLookupComboBox;
    ComboDS_CONCEPTO_IVA_INTRA: TDBLookupComboBox;
    CheckBoxIntracomunitaria: TCheckBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label20: TLabel;
    LbSubcuenta: TLabel;
    LbCtoSubcuenta: TLabel;
    Label15: TLabel;
    Label65: TLabel;
    Label64: TLabel;
    Label66: TLabel;
    LbProfArre: TLabel;
    LbCtoContra: TLabel;
    Label4: TLabel;
    lFacturaIntracom: TLabel;
    lbRetVentas: TLabel;
    ComboCD_CONCEPTO: TDBLookupComboBox;
    EditNUMEROFACTURA: TDBEdit;
    EditIMPORTE: TDBEdit;
    EditIMPORTEPRONTOPAGO: TDBEdit;
    ComboBoxCD_SUBCUENTA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA: TDBLookupComboBox;
    EditFECHA: TDBEdit;
    EditNIF: TDBEdit;
    ComboBoxCD_FORMAPAGO: TDBLookupComboBox;
    ComboBoxDS_FORMAPAGO: TDBLookupComboBox;
    EditDIAPAGO1: TDBEdit;
    DIAPAGO2: TDBEdit;
    ComboDS_CONCEPTO: TDBLookupComboBox;
    EditTANTORETENCION: TDBEdit;
    ComboCD_CONCEPTO_COMPRA_VENTA: TDBLookupComboBox;
    ComboDS_CONCEPTO_COMPRA_VENTA: TDBLookupComboBox;
    DIAPAGO3: TDBEdit;
    EditNUMEROFACTURAINTRACOM: TDBEdit;
    EditIMPORTERETVENTA: TDBEdit;
    Datos: TGroupBox;
    Panel3: TPanel;
    BtnResetIVA: TButton;
    BtnDeleteIVA: TButton;
    BtnNewIVA: TButton;
    Panel4: TPanel;
    Label5: TLabel;
    DBText1: TDBText;
    BtnEdtModificar: TButton;
    BtnEdtBorrarMovim: TButton;
    BtnEdtMayor: TButton;
    DBGridMoves: TDBGrid;
    QFicheroNUMEROFACTURA: TStringField;
    QFicheroNUMEROFACTURAINTRACOM: TStringField;
    QFicheroFECHA: TDateField;
    QFicheroIMPORTE: TFloatField;
    QFicheroIMPORTERETVENTA: TFloatField;
    QFicheroIMPORTEPRONTOPAGO: TFloatField;
    QFicheroSUBCUENTA: TStringField;
    QFicheroCTOSUBCUENTA: TStringField;
    QFicheroCTOIVA: TStringField;
    QFicheroCTOIVAINTRA: TStringField;
    QFicheroCTOCONTRA: TStringField;
    QFicheroCOMENTARIO: TStringField;
    QFicheroANALITICA: TStringField;
    QFicheroTANTORETENCION: TFloatField;
    QFicheroNIF: TStringField;
    QFicheroBANCO: TStringField;
    QFicheroFECHAVTO: TDateField;
    QFicheroCTOBANCO: TStringField;
    QFicheroFORMAPAGO: TStringField;
    QFicheroDIAPAGO1: TIntegerField;
    QFicheroDIAPAGO2: TIntegerField;
    QFicheroDIAPAGO3: TIntegerField;
    BtnModifyIVA: TButton;
    DBGridIVA: TDBGrid;
    procedure BtnEdtGuardarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboBoxCD_SUBCUENTAExit(Sender: TObject);
    procedure EditFECHAExit(Sender: TObject);
    procedure EditNIFExit(Sender: TObject);
    procedure QMovimientosCalcFields(DataSet: TDataSet);
    procedure BtnEdtBorrarMovimClick(Sender: TObject);
    procedure CheckBoxRealizarPagoClick(Sender: TObject);
    procedure BtnEdtSubcuentaClick(Sender: TObject);
    procedure BtnDeleteIVAClick(Sender: TObject);
    procedure QGastosNewRecord(DataSet: TDataSet);
    procedure BtnNewIVAClick(Sender: TObject);
    procedure BtnResetIVAClick(Sender: TObject);
    procedure CheckBoxIntracomunitariaClick(Sender: TObject);
    procedure BtnEdtModificarClick(Sender: TObject);
    procedure BtnEdtMayorClick(Sender: TObject);
    procedure EditIMPORTEExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridMovesDblClick(Sender: TObject);
    procedure DBGridMovesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridMovesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ComboBoxCD_SUBCUENTACloseUp(Sender: TObject);
    procedure BtnModifyIVAClick(Sender: TObject);
  private
    FModel           :TCargaRapidaFacturasModel;
    FContrapartida   :string;
    FColorActual     :TColor;
    FAsientoAnterior :Integer;
    FLineaIVA        :TWEditLineaIVA;
    procedure InitializeView;
    procedure OnShowWLineaIVA(Sender: TObject);
    procedure IterateAllIVAs;
    procedure RecalcularBaseImponible;
    procedure RecalcularIVA;
    procedure PrepararQueryMovimientos;
  public
    TipoCarga:        Integer;
    cTipoDH, cContra: String;
    lProfesional, lArrendador, lIntracom: Boolean;
  end;

var WCargaRapidaFacturas: TWCargaRapidaFacturas;

implementation

uses System.UITypes, System.Math,
     DM, DMConta, Tools, Globales, UFiltroListadosMayorModel, UCargaAsiento,
     UCargaRapidaNominas, UFiltroMayorSubcuenta, UNuevaSubcuenta, UVencimientos;

{$R *.DFM}

procedure TWCargaRapidaFacturas.FormCreate(Sender: TObject);
//var Pos1 :Integer;
begin
   FModel := TCargaRapidaFacturasModel.Create(DMRef.BDContab);
   Caption := '';

   { Create dataset for Invoices of Sales and Purchases }
   QFichero.CreateDataset;
   QFichero.Open;
   QFichero.Append;

   QFicheroNUMEROFACTURA.AsString         := '';
   QFicheroNUMEROFACTURAINTRACOM.AsString := '';
   QFicheroFECHA.AsDateTime               := Date;

   QGastosCUOTA_IVA.DisplayFormat          := '###,###,##0.00';
   QGastosBASE_IMPONIBLE_IVA.DisplayFormat := '###,###,##0.00';

   QFicheroCTOIVAINTRA.AsString := DMRef.QParametrosCTOIVAINTRA.AsString;
   if TipoCarga = CARGA_FACTURAS_COMPRA then begin
      QFicheroCTOIVA.AsString := DmRef.QParametrosCTOIVACNORMAL.AsString;
      DBGridIVA.Columns[4].Title.Caption := 'COMPRAS / AMORTIZACIÓN';
   end
   else begin
      QFicheroCTOIVA.AsString := DmRef.QParametrosCTOIVANORMAL.AsString;
      DBGridIVA.Columns[4].Title.Caption := 'VENTAS';
   end;

   {-----------------------------------}

   if TipoCarga = CARGA_FACTURAS_COMPRA then begin
      QGastosCONTRAPARTIDA_DESC.LookupDataSet := DMContaRef.QSubctaAmortGastos;
      QGastosSBCTA_IVA_DESC.LookupDataSet     := DMContaRef.QSubCTAIVADeducibleIntra;
   end
   else begin
      QGastosCONTRAPARTIDA_DESC.LookupDataSet := DMContaRef.QSubctaVentas;
      QGastosSBCTA_IVA_DESC.LookupDataSet     := DMContaRef.QSubCTAIVARepercutidoIntra;
   end;

   QGastos.CreateDataSet;
   QGastos.Active := True;

   QGastos.Append;
   if TipoCarga = CARGA_FACTURAS_COMPRA then begin
      QGastosSBCTA_IVA.AsString     := DMRef.QParametrosSCTAIVACNORMAL.AsString;
      QGastosCONTRAPARTIDA.AsString := DMRef.QParametrosSCTACOMPRAS.AsString;
   end
   else begin
      QGastosSBCTA_IVA.AsString     := DMRef.QParametrosSCTAIVANORMAL.AsString;
      QGastosCONTRAPARTIDA.AsString := DMRef.QParametrosSCTAVENTAS.AsString;
   end;
   QGastos.Post;
   QGastos.Edit;
   {-----------------------------------}

   ActivateTransactions(Self, DMRef.BDContab);

   InitializeView;
end;

procedure TWCargaRapidaFacturas.InitializeView;
begin
   ComboBoxCD_SUBCUENTA.OnCloseUp := ComboBoxCD_SUBCUENTACloseUp;
   ComboBoxDS_SUBCUENTA.OnCloseUp := ComboBoxCD_SUBCUENTACloseUp;
   EditIMPORTE.OnExit             := EditIMPORTEExit;
end;

procedure TWCargaRapidaFacturas.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWCargaRapidaFacturas.RecalcularBaseImponible;
var TipoIVA       :Double;
    Recargo       :Double;
    BaseImponible :Double;
    QSelSubcuenta :TIBQuery;
begin
   if QGastos.State in dsEditModes then begin
      QGastos.Post;
   end;

   if not QGastos.IsEmpty and (QGastosSBCTA_IVA.AsString <> '') then  begin
      QSelSubcuenta := TIBQuery.Create(nil);
      try
         QSelSubcuenta.Database := DMRef.BDContab;
         QSelSubcuenta.SQL.Clear;
         QSelSubcuenta.SQL.Add('SELECT * FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA');
         QSelSubcuenta.ParamByName('SUBCUENTA').AsString := QGastosSBCTA_IVA.AsString;
         QSelSubcuenta.Open;
         TipoIVA := QSelSubcuenta.FieldByName('IVA').AsFloat;
         Recargo := QSelSubcuenta.FieldByName('RECARGO').AsFloat;
      finally
         QSelSubcuenta.Free;
      end;

      if (RoundTo(QFicheroTANTORETENCION.AsFloat, -3) <> 0) then begin
         BaseImponible := QFicheroIMPORTE.AsFloat / ((1 + (0.01 * TipoIVA) + (0.01 * Recargo)) -
                          (0.01 * QFicheroTANTORETENCION.AsFloat));
      end
      else begin
         BaseImponible := QFicheroIMPORTE.AsFloat / (1 + (0.01 * TipoIVA) + (0.01 * Recargo));
      end;

      QGastos.Edit;
      QGastosBASE_IMPONIBLE_IVA.AsFloat := RoundTo(BaseImponible, -2);
      QGastos.Post;
   end;
end;

procedure TWCargaRapidaFacturas.RecalcularIVA;
var
   TipoIVA, Recargo, CuotaIVA: Double;
   QSelSubcuenta: TIBQuery;
begin
   if QGastos.State in dsEditModes then begin
      QGastos.Post;
   end;

   if not QGastos.IsEmpty and (QGastosSBCTA_IVA.AsString <> '') then  begin
      QSelSubcuenta := TIBQuery.Create(nil);
      try
         QSelSubcuenta.Database := DMRef.BDContab;
         QSelSubcuenta.SQL.Add('SELECT * FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA');
         QSelSubcuenta.ParamByName('SUBCUENTA').AsString := QGastosSBCTA_IVA.AsString;
         QSelSubcuenta.Open;
         TipoIVA := QSelSubcuenta.FieldByName('IVA').AsFloat;
         Recargo := QSelSubcuenta.FieldByName('RECARGO').AsFloat;
      finally
         QSelSubcuenta.Free;
      end;

      if RoundTo(Recargo, -3) = 0 then begin
         CuotaIVA := (QGastosBASE_IMPONIBLE_IVA.AsFloat * 0.01 * TipoIVA);
      end
      else begin
         CuotaIVA := (QGastosBASE_IMPONIBLE_IVA.AsFloat * 0.01 * TipoIVA) +
            (QGastosBASE_IMPONIBLE_IVA.AsFloat * 0.01 * Recargo);
      end;

      QGastos.Edit;
      QGastosCUOTA_IVA.AsFloat := RoundTo(CuotaIVA, -2);
      QGastos.Post;
   end;
end;

procedure TWCargaRapidaFacturas.PrepararQueryMovimientos;
var Asiento: Integer;
begin
   Asiento := DMRef.ObtenerValor('GEN_ID(ASIENTO, 0)', 'RDB$DATABASE', '');
   QMovimientos.DisableControls;
   QMovimientos.Close;
   QMovimientos.Transaction.Active := True;
   QMovimientos.Transaction.CommitRetaining;
   QMovimientos.SelectSQL.Clear;
   QMovimientos.SelectSQL.Add('SELECT D.ASIENTO,D.APUNTE,D.FECHA,D.SUBCUENTA,D.ID_CONCEPTOS, D.DEBEHABER,                ');
   QMovimientos.SelectSQL.Add('       D.CONTRAPARTIDA,D.COMENTARIO,D.NUMEROFACTURA,D.CUENTA_ANALITICA,                   ');
   QMovimientos.SelectSQL.Add('       C.DESCRIPCION DESCCONCEPTO, S.DESCRIPCION DESCSUBCUENTA, D.IMPORTE, S.ABREVIATURA, ');
   QMovimientos.SelectSQL.Add('       D.TIPOASIENTO, D.ASIENTONOMINA, D.SERIE, D.EJERCICIO                               ');
   QMovimientos.SelectSQL.Add('FROM DIARIO D, CONCEPTOS C, SUBCTAS S                                                     ');
   QMovimientos.SelectSQL.Add('WHERE D.ASIENTO >= :ASIENTO1 AND D.ASIENTO <= :ASIENTO2 AND                               ');
   QMovimientos.SelectSQL.Add('      D.ID_CONCEPTOS = C.ID_CONCEPTOS AND                                                 ');
   QMovimientos.SelectSQL.Add('      D.SUBCUENTA    = S.SUBCUENTA                                                        ');
   QMovimientos.SelectSQL.Add('ORDER BY D.ASIENTO, D.APUNTE                                                              ');
   QMovimientos.Params.ByName('ASIENTO1').AsInteger := Asiento - 30;
   QMovimientos.Params.ByName('ASIENTO2').AsInteger := Asiento;
   QMovimientos.Prepare;
   QMovimientos.EnableControls;
   QMovimientos.Open;
   QMovimientos.Last;
end;

procedure TWCargaRapidaFacturas.BtnEdtGuardarClick(Sender: TObject);
var nAsiento         :Integer;
    nApunte          :Integer;
    nAsientoFactura  :Integer;
    lCondAnalitica   :Boolean;
    nImpBase         :Double;
    nImpCli          :Double;
    nSumaIva         :Double;
    cComentario      :string;
    cSubctaRetVenta  :string;
    QDiario          :TIBSQL;
    DatosCorrectos   :Boolean;
    ConceptoIVA      :string;
    DebeHaberIVA     :string;
    ComentarioIVA    :string;
    BaseImponibleIVA :Double;
    ImporteIVA       :Double;
    QSubcuentas      :TIBSQL;

   procedure ComprobarDatosSubcuentasIVAValidos(var OK: Boolean);
   var Msg        :string;
       TotImporte :Double;
   begin
      OK := True;

      // Msg contendrá la información a presentar al usuario sobre los datos
      // que ha de introducir antes de guardar el registro.
      Msg := '';

      if QGastos.State in dsEditModes then begin
         QGastos.Post;
      end;

      QGastos.DisableControls;
      QGastos.First;
      while not QGastos.EOF do begin
         if (QGastosSBCTA_IVA.AsString         = '') and
            (QGastosBASE_IMPONIBLE_IVA.AsFloat =  0) and
            (QGastosCUOTA_IVA.AsFloat          =  0) then begin
            QGastos.Delete;
         end
         else begin
            QGastos.Next;
         end;
      end;
      QGastos.First;
      QGastos.EnableControls;

      if QGastos.IsEmpty then begin
         Msg := 'Debe seleccionar el tipo de I.V.A.';
         TabSheetAsientos.Show;
         OK := False;
         DatabaseError(Msg);
      end
      else begin
         QGastos.DisableControls;
         QGastos.First;
         while not QGastos.EOF do begin
            if QGastosSBCTA_IVA.AsString = '' then begin
               Msg := Msg + 'No se puede dejar la subcta de IVA en blanco.' + #13;
            end;
            if QGastosCONTRAPARTIDA.AsString = '' then begin
               Msg := Msg + 'No se puede dejar la contrapartida en blanco.' + #13;
            end;
            if QGastosCTO_IVA.AsString = '' then begin
               Msg := Msg + 'No se puede dejar el concepto de IVA en blanco.' + #13;
            end;
            if (QGastosBASE_IMPONIBLE_IVA.AsFloat = 0) and
               (QGastosCUOTA_IVA.AsFloat = 0) and (QGastos.RecordCount > 1) and
               not CheckBoxIntracomunitaria.Checked then begin
               Msg := Msg + 'No se puede dejar la base imponible y la cuota en blanco.' + #13;
            end;

            if (QGastosBASE_IMPONIBLE_IVA.AsFloat <> 0) and
               (QGastosCUOTA_IVA.AsFloat = 0) and
               (DMRef.ObtenerValor('IVA', 'SUBCTAS', 'SUBCUENTA = "' +
               QGastosSBCTA_IVA.AsString + '"') > 0) then begin
               QGastos.Edit;
               if (QGastos.RecordCount = 1) or CheckBoxIntracomunitaria.Checked then begin
                  QGastosCUOTA_IVA.AsFloat := RoundTo(QFicheroIMPORTE.AsFloat - QGastosBASE_IMPONIBLE_IVA.AsFloat, -3);
               end
               else begin
                  Msg := Msg + 'No se puede dejar la cuota de IVA en blanco.' + #13;
               end;
               QGastos.Post;
            end else
            if (QGastosCUOTA_IVA.AsFloat <> 0) and
               (QGastosBASE_IMPONIBLE_IVA.AsFloat = 0) then begin
               QGastos.Edit;
               if (QGastos.RecordCount = 1) or CheckBoxIntracomunitaria.Checked then begin
                  QGastosBASE_IMPONIBLE_IVA.AsFloat := RoundTo(QFicheroIMPORTE.AsFloat - QGastosCUOTA_IVA.AsFloat, -3);
               end
               else begin
                  Msg := Msg + 'No se puede dejar la base imponible en blanco.' + #13;
               end;
               QGastos.Post;
            end;

            // Si los datos especificados no son válidos, presentar mensaje de error.
            if Trim(Msg) <> '' then begin
               Msg := Msg + 'Por favor, revise los datos de entrada.';

               QGastos.EnableControls;
               PageControl1.Pages[0].Show;
               OK := False;
               DatabaseError(Msg);
            end;

            QGastos.Next;
         end;
         QGastos.EnableControls;
      end;

      QGastos.First;
      if (QGastos.RecordCount > 1) and not CheckBoxIntracomunitaria.Checked and
         (RoundTo(QFicheroIMPORTEPRONTOPAGO.AsFloat, -3) = 0) then begin
         if TipoCarga = CARGA_FACTURAS_COMPRA then begin
            TotImporte := 0;
            while not QGastos.EOF do begin
               QSubcuentas.Close;
               QSubcuentas.ParamByName('SUBCUENTA').AsString := QGastosSBCTA_IVA.AsString;
               QSubcuentas.ExecQuery;

               TotImporte := TotImporte + QGastosCUOTA_IVA.AsFloat;
               TotImporte := TotImporte + QGastosBASE_IMPONIBLE_IVA.AsFloat +
                  QSubcuentas.FieldByName('recargo').AsFloat;
               if (RoundTo(QFicheroTANTORETENCION.AsFloat, -3) <> 0) then begin
                  TotImporte := TotImporte - RoundTo(QGastosBASE_IMPONIBLE_IVA.AsFloat * 0.01 *
                                                     QFicheroTANTORETENCION.AsFloat, -3);
               end;
               QGastos.Next;
            end;
         end       // CARGA_FACTURAS_COMPRA
         else begin
            TotImporte := 0;
            while not QGastos.EOF do begin
               QSubcuentas.Close;
               QSubcuentas.parambyname('subcuenta').AsString := QGastosSBCTA_IVA.AsString;
               QSubcuentas.ExecQuery;

               TotImporte := TotImporte + QGastosCUOTA_IVA.AsFloat;
               TotImporte := TotImporte + QGastosBASE_IMPONIBLE_IVA.AsFloat +
                  QSubcuentas.FieldByName('recargo').AsFloat;
               if QFicheroTANTORETENCION.AsFloat <> 0 then begin
                  TotImporte := TotImporte + RoundTo(QGastosBASE_IMPONIBLE_IVA.AsFloat * 0.01 *
                                                     QFicheroTANTORETENCION.AsFloat, -3);
               end;
               QGastos.Next;
            end;
         end;      // CARGA_FACTURAS_VENTA
         if QFicheroIMPORTERETVENTA.AsFloat <> 0 then begin
            TotImporte := TotImporte - QFicheroIMPORTERETVENTA.AsFloat;
         end;
         if RoundTo(TotImporte, -2) <> 0 then begin
            if RoundTo(TotImporte, -2) <> RoundTo(
               QFicheroIMPORTE.AsFloat, -2) then begin
               if MessageDlg('La factura está descuadrada.' + #13 + '¿Desea continuar?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
                  QGastos.EnableControls;
                  TabSheetAsientos.Show;
                  OK := False;
               end;
            end;
         end;
      end else
      // Si sólo se especifica un tipo de IVA y se introduce la cuota de IVA y
      // la base imponible, generar el apunte de IVA sin tener en cuenta el
      // tipo de IVA de la subcuenta.
      if (QGastos.RecordCount = 1) and (QGastosCUOTA_IVA.AsFloat <> 0) and
         (QGastosBASE_IMPONIBLE_IVA.AsFloat <> 0) then begin
         TotImporte := RoundTo(QGastosCUOTA_IVA.AsFloat +
            QGastosBASE_IMPONIBLE_IVA.AsFloat, -3);
         if QFicheroTANTORETENCION.AsFloat <> 0 then begin
            if TipoCarga = CARGA_FACTURAS_COMPRA then begin
               TotImporte := TotImporte - RoundTo(QGastosBASE_IMPONIBLE_IVA.AsFloat * 0.01 * QFicheroTANTORETENCION.AsFloat, -3);
            end
            else begin
               TotImporte := TotImporte + RoundTo(QGastosBASE_IMPONIBLE_IVA.AsFloat * 0.01 * QFicheroTANTORETENCION.AsFloat, -3);
            end;
         end;
         if QFicheroIMPORTERETVENTA.AsFloat <> 0 then begin
            TotImporte := TotImporte - QFicheroIMPORTERETVENTA.AsFloat;
         end;
         if RoundTo(TotImporte, -2) <> RoundTo(
            QFicheroIMPORTE.AsFloat, -2) then begin
            if MessageDlg('La factura está descuadrada.' + #13 + '¿Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
               OK := False;
            end;
         end;
      end;
      QGastos.First;
   end;

var Q :TIBSQL;

begin
   TabSheetAsientos.Show;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   EditNUMEROFACTURA.SetFocus;

   if not DMContaRef.FechaAsientoPerteneceEjercicio(QFicheroFECHA.AsDateTime) then  begin
      if MessageDlg('La fecha de factura no pertenece al ejercicio actual.' + #13 +
                    '¿Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
   end;

   // Verificar numero de factura.
   if IsEmpty(QFicheroNUMEROFACTURA.AsString) then begin
      if MessageDlg('No ha indicado número de factura ¿Confirma?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         EditNUMEROFACTURA.SetFocus;
         Exit;
      end;
   end
   else begin
      Q := TIBSQL.Create(nil);
      try
         Q.Database := DMRef.BDContab;
         Q.SQL.Add('SELECT ASIENTO                        ');
         Q.SQL.Add('FROM DIARIO                           ');
         Q.SQL.Add('WHERE SUBCUENTA     =  :SUBCUENTA     ');
         Q.SQL.Add('AND   NUMEROFACTURA =  :NUMEROFACTURA ');
         Q.SQL.Add('AND   DEBEHABER     =  :DEBEHABER     ');
         Q.SQL.Add('AND   FECHA         >= :FECHAINI      ');
         Q.SQL.Add('AND   FECHA         <= :FECHAFIN      ');
         Q.Prepare;
         Q.ParamByName('FECHAINI'     ).AsDateTime := DmRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime;
         Q.Parambyname('FECHAFIN'     ).AsDateTime := DmRef.QParametrosFECHA_FIN_EJERCICIO.AsDateTime;
         Q.Parambyname('DEBEHABER'    ).AsString   := cTipoDH;
         Q.Parambyname('SUBCUENTA'    ).AsString   := QFicheroSUBCUENTA.AsString;
         Q.Parambyname('NUMEROFACTURA').AsString   := QFicheroNUMEROFACTURA.AsString;
         Q.ExecQuery;
         nAsiento := Q.FieldByName('ASIENTO').AsInteger;
         if nAsiento > 0 then begin
            DatabaseError('Factura ' + Trim(QFicheroNUMEROFACTURA.AsString) + ' duplicada en asiento nº ' + Trim(IntToStr(nAsiento)) + '.');
         end;
      finally
         Q.Free;
      end;
   end;

   { Check that import is not zero }
   if RoundTo(QFicheroIMPORTE.AsFloat, -3) = 0 then begin
      EditIMPORTE.SetFocus;
      DatabaseError('El importe no puede ser cero.');
   end;

   { Check that account is not empty }
   if IsEmpty(QFicheroSUBCUENTA.AsString) then begin
      ComboBoxCD_SUBCUENTA.SetFocus;
      DatabaseError('La subcuenta Cliente/Proveedor seleccionada no puede estar vacía.');
   end;

   if QFicheroCTOSUBCUENTA.AsString = '' then begin
      ComboCD_CONCEPTO.SetFocus;
      DatabaseError('El concepto de Cliente/Proveedor no puede estar vacío.');
   end;

   if QFicheroCTOCONTRA.AsString = '' then begin
      ComboCD_CONCEPTO_COMPRA_VENTA.SetFocus;
      DatabaseError('El concepto de Ventas/Compras no puede estar vacío.');
   end;

   QSubcuentas := TIBSQL.Create(nil);
   QSubcuentas.Database := DMRef.BDContab;
   QSubcuentas.SQL.Add('SELECT DESCRIPCION, IVA, RECARGO, PROFESIONAL, ARRENDADOR, CONTRAPARTIDA, ');
   QSubcuentas.SQL.Add('       FORMAPAGO, DIAPAGO1, DIAPAGO2, DIAPAGO3, TIPOIVA,                  ');
   QSubcuentas.SQL.Add('       INTRACOMUNITARIO, SUBCTARET                                        ');
   QSubcuentas.SQL.Add('FROM   SUBCTAS                                                            ');
   QSubcuentas.SQL.Add('WHERE  SUBCUENTA = :SUBCUENTA                                             ');
   QSubcuentas.Prepare;

   { Chect Tax types }
   ComprobarDatosSubcuentasIVAValidos(DatosCorrectos);

   // Verificar q tiene subcuenta retencion ventas
   if QFicheroIMPORTERETVENTA.AsFloat <> 0 then begin
      QSubcuentas.Close;
      QSubcuentas.ParamByName('SUBCUENTA').AsString := QFicheroSUBCUENTA.AsString;
      QSubcuentas.ExecQuery;
      cSubCtaRetVenta := QSubcuentas.FieldByName('SUBCTARET').AsString;
      if IsEmpty(QSubcuentas.FieldByName('SUBCTARET').AsString) then begin
         DatabaseError('No tiene subcuenta de retención en el cliente seleccionado en esta factura.');
      end;
   end;

   if not DatosCorrectos then begin
      Exit;
   end;

   QGastos.First;

   // Chequeos
   if CheckBoxRealizarPago.Checked then  begin
      if IsEmpty(QFicheroBANCO.AsString) then begin
         ComboBoxCD_SUBCUENTA_BANCO.SetFocus;
         DatabaseError('La subcuenta de Banco / Caja seleccionada no puede estar vacía.');
      end;
      // Verificar fecha de cobro/pago
      if QFicheroFECHAVTO.AsDateTime = 0 then begin
         EditFECHAVTO.SetFocus;
         DatabaseError('Fecha de Cobro / Pago no válida.');
      end;
      if IsEmpty(QFicheroCTOBANCO.AsString) then begin
         ComboCD_CONCEPTO_BANCO.SetFocus;
         DatabaseError('El Concepto Banco / Caja seleccionado no puede estar vacío.');
      end;
   end;


   // Generacion del asiento
   nAsiento        := DMContaRef.ObtenerNumeroAsiento;
   nAsientoFactura := nAsiento;
   lCondAnalitica  := not IsEmpty(QFicheroANALITICA.AsString);

   QDiario := TIBSql.Create(nil);
   QDiario.Database := DMRef.BDContab;
   QDiario.Close;
   QDiario.SQL.Clear;
   QDiario.SQL.Add('INSERT INTO DIARIO ');
   QDiario.SQL.Add('   (TIPOASIENTO, APUNTE, ASIENTO, COMENTARIO, NIF,');

   if (QGastos.RecordCount = 1) or CheckBoxIntracomunitaria.Checked then begin
      QDiario.SQL.Add('CONTRAPARTIDA,');
   end;

   QDiario.SQL.Add('    DEBEHABER, FECHA, ID_CONCEPTOS,');
   if lCondAnalitica then begin
      QDiario.SQL.Add('CUENTA_ANALITICA,');
   end;

   QDiario.SQL.Add('    IMPORTE, MONEDA, NUMEROFACTURA, PUNTEO, SUBCUENTA)');
   QDiario.SQL.Add('VALUES');
   QDiario.SQL.Add('   (:TIPOASIENTO, :APUNTE, :ASIENTO,:COMENTARIO, :NIF,');

   if (QGastos.RecordCount = 1) or CheckBoxIntracomunitaria.Checked then begin
      QDiario.SQL.Add(':CONTRAPARTIDA,');
   end;

   QDiario.SQL.Add('    :DEBEHABER, :FECHA, :ID_CONCEPTOS,');
   if lCondAnalitica then begin
      QDiario.SQL.Add(':ANALITICA,');
   end;
   QDiario.SQL.Add('    :IMPORTE, :MONEDA, :NUMEROFACTURA, :PUNTEO, :SUBCUENTA)');

   // apunte 1
   // Si la factura es intracomunitaria, el apunte de compras es el 1
   if CheckBoxIntracomunitaria.Checked then begin
      nApunte := 2;
   end
   else begin
      nApunte := 1;
   end;

   if TipoCarga = CARGA_FACTURAS_COMPRA then begin
      QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_COMPRA;
   end
   else begin
      QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_VENTA;
   end;

   QDiario.parambyname('Apunte').AsInteger := nApunte;
   Inc(nApunte);
   QDiario.parambyname('asiento').AsInteger := nAsiento;
   QDiario.parambyname('Fecha').AsDateTime  := QFicheroFECHA.AsDateTime;
   QDiario.parambyname('moneda').AsString   := 'E';

   QSubcuentas.Close;
   QSubcuentas.parambyname('subcuenta').AsString := QFicheroSUBCUENTA.AsString;
   QSubcuentas.ExecQuery;

   lProfesional := (QSubcuentas.FieldByName('profesional').AsString = 'S');
   lArrendador  := (QSubcuentas.FieldByName('arrendador').AsString = 'S');
   lIntracom    := (QSubcuentas.FieldByName('INTRACOMUNITARIO').AsString = 'S');

   QDiario.parambyname('subcuenta').AsString := QFicheroSUBCUENTA.AsString;

   if lCondAnalitica then begin
      QDiario.parambyname('analitica').AsString := QFicheroANALITICA.AsString;
   end;

   if QFicheroSUBCUENTA.AsString = DmRef.QParametrosVGENERICA.AsString then begin
      QDiario.parambyname('id_Conceptos').AsString := DmRef.QParametrosCTOCOBROF.AsString;
   end
   else
   if QFicheroSUBCUENTA.AsString = DmRef.QParametrosVGENERICAC.AsString then begin
      QDiario.parambyname('id_Conceptos').AsString := DmRef.QParametrosCTOPAGOF.AsString;
   end
   else begin
      QDiario.parambyname('id_Conceptos').AsString := QFicheroCTOSUBCUENTA.AsString;
   end;

   if TipoCarga = CARGA_FACTURAS_COMPRA then begin
      QDiario.parambyname('DebeHaber').AsString := 'H';
   end
   else begin
      QDiario.parambyname('DebeHaber').AsString := 'D';
   end;

   if (QGastos.RecordCount = 1) or CheckBoxIntracomunitaria.Checked then begin
      QDiario.parambyname('Contrapartida').AsString := QGastosCONTRAPARTIDA.AsString;
   end;

   QDiario.ParamByName('Importe').AsFloat := RoundTo(QFicheroIMPORTE.AsFloat, -3);

   nImpCli := QDiario.ParamByName('importe').AsFloat;

   QDiario.ParamByName('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;

   if CheckBoxRealizarPago.Checked then begin
      QDiario.ParamByName('punteo').AsString := 'S';
   end
   else begin
      QDiario.ParamByName('punteo').AsString := 'N';
   end;

   cComentario := Copy(QSubcuentas.FieldByName('descripcion').AsString, 1, 40);
   if IsEmpty(QFicheroCOMENTARIO.AsString) then begin
      QDiario.ParamByName('comentario').AsString := cComentario;
   end
   else begin
      QDiario.ParamByName('comentario').AsString := QFicheroCOMENTARIO.AsString;
   end;

   QDiario.ParamByName('NIF').AsString := QFicheroNIF.AsString;

   QDiario.ExecQuery;
   QDiario.Transaction.CommitRetaining;
   // Final Apunte 1


   nSumaIva := 0;
   nImpBase := 0;

   // Factura Intracomunitaria
   if CheckBoxIntracomunitaria.Checked then begin
      QDiario.Close;
      QDiario.SQL.Clear;
      QDiario.SQL.Add('INSERT INTO DIARIO ');
      QDiario.SQL.Add('   (TIPOASIENTO, APUNTE, ASIENTO, BASEIMPONIBLE, COMENTARIO, NIF, RECARGO,');
      QDiario.SQL.Add('    CONTRAPARTIDA, DEBEHABER, FECHA, ID_CONCEPTOS, CUOTAIVA,CUOTARECARGO,');
      if lCondAnalitica then begin
         QDiario.SQL.Add('CUENTA_ANALITICA,');
      end;
      QDiario.SQL.Add('    IMPORTE, IVA, MONEDA, NUMEROFACTURA, SUBCUENTA)');
      QDiario.SQL.Add('VALUES');
      QDiario.SQL.Add('   (:TIPOASIENTO, :APUNTE, :ASIENTO, :BASEIMPONIBLE, :COMENTARIO, :NIF,:RECARGO,');
      QDiario.SQL.Add('    :CONTRAPARTIDA, :DEBEHABER, :FECHA, :ID_CONCEPTOS,:CUOTAIVA,:CUOTARECARGO,');
      if lCondAnalitica then begin
         QDiario.SQL.Add(':ANALITICA,');
      end;
      QDiario.SQL.Add('    :IMPORTE, :IVA, :MONEDA, :NUMEROFACTURA, :SUBCUENTA)');

      QGastos.First;
      while not QGastos.EOF do begin
         QDiario.Close;

         if TipoCarga = CARGA_FACTURAS_COMPRA then begin
            QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_COMPRA;
         end
         else begin
            QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_VENTA;
         end;

         QDiario.parambyname('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         QDiario.parambyname('asiento').AsInteger := nAsiento;
         QDiario.parambyname('Fecha').AsDateTime  := QFicheroFECHA.AsDateTime;
         QDiario.parambyname('moneda').AsString   := 'E';

         QSubcuentas.Close;
         QSubcuentas.ParamByName('subcuenta').AsString := QGastosSBCTA_IVA.AsString;
         QSubcuentas.ExecQuery;

         QDiario.parambyname('subcuenta').AsString := QGastosSBCTA_IVA.AsString;

         if lCondAnalitica then begin
            QDiario.parambyname('analitica').AsString := QFicheroANALITICA.AsString;
         end;

         if TipoCarga = CARGA_FACTURAS_COMPRA then begin
            if DMContaRef.ObtenerTipoSubcuenta(QGastosSBCTA_IVA.AsString) = 'R' then
            begin
               QDiario.parambyname('DebeHaber').AsString    := 'H';
               QDiario.parambyname('id_Conceptos').AsString := QGastosCTO_IVA.AsString;
            end
            else begin
               QDiario.parambyname('DebeHaber').AsString    := 'D';
               QDiario.parambyname('id_Conceptos').AsString := QGastosCTO_IVA.AsString;
            end;
         end
         else begin
            if (QSubcuentas.FieldByName('TIPOIVA').AsString = 'C') or
               (QSubcuentas.FieldByName('TIPOIVA').AsString = 'A') then begin
               QDiario.parambyname('DebeHaber').AsString    := 'D';
               QDiario.parambyname('id_Conceptos').AsString := QGastosCTO_IVA.AsString;
            end
            else begin
               QDiario.parambyname('DebeHaber').AsString    := 'H';
               QDiario.parambyname('id_Conceptos').AsString := QGastosCTO_IVA.AsString;
            end;
         end;


         if lIntracom and (DMRef.QParametrosSCTAGENINTRACOM.AsString <> '') then
         begin
            if (QSubcuentas.FieldByName('TIPOIVA').AsString = 'C') or
               (QSubcuentas.FieldByName('TIPOIVA').AsString = 'A') then begin
               QDiario.ParamByName('CONTRAPARTIDA').AsString := DMRef.QParametrosSCTAGENINTRACOM.AsString;
            end
            else begin
               QDiario.parambyname('Contrapartida').AsString := QFicheroSUBCUENTA.AsString;
            end;
         end
         else begin
            QDiario.parambyname('Contrapartida').AsString := QFicheroSUBCUENTA.AsString;
         end;

         QDiario.parambyname('Iva').AsFloat := QSubcuentas.FieldByName('iva').AsFloat;

         QDiario.parambyname('recargo').AsFloat := QSubcuentas.FieldByName('recargo').AsFloat;

         nImpBase := nImpCli;

         QDiario.ParamByName('IMPORTE').AsFloat := RoundTo(nImpBase * ((0.01 * QDiario.ParamByName('IVA').AsFloat) + (0.01 * QDiario.ParamByName('RECARGO').AsFloat)), -3);

         QDiario.ParamByName('BASEIMPONIBLE').AsFloat := RoundTo(nImpBase, -3);

         if RoundTo(QDiario.parambyname('recargo').AsFloat, -3) = 0 then begin
            QDiario.parambyname('cuotaiva').AsFloat     := QDiario.parambyname('importe').AsFloat;
            QDiario.parambyname('cuotarecargo').AsFloat := 0;
         end
         else begin
            QDiario.parambyname('cuotaiva').AsFloat     := QDiario.parambyname('baseimponible').AsFloat * 0.01 *
               QDiario.parambyname('iva').AsFloat;
            QDiario.parambyname('cuotarecargo').AsFloat := QDiario.parambyname('baseimponible').AsFloat * 0.01 *
               QDiario.parambyname('recargo').AsFloat;
         end;

         if lIntracom and (QFicheroNUMEROFACTURAINTRACOM.AsString <> '') then begin
            if (QSubcuentas.FieldByName('TIPOIVA').AsString = 'C') or
               (QSubcuentas.FieldByName('TIPOIVA').AsString = 'A') then begin
               QDiario.ParamByName('NUMEROFACTURA').AsString := QFicheroNUMEROFACTURAINTRACOM.AsString;
            end
            else begin
               QDiario.parambyname('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;
            end;
         end
         else begin
            QDiario.parambyname('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;
         end;

         if IsEmpty(QFicheroCOMENTARIO.AsString) then begin
            QDiario.parambyname('comentario').AsString := cComentario;
         end
         else begin
            QDiario.parambyname('comentario').AsString := QFicheroCOMENTARIO.AsString;
         end;

         QDiario.parambyname('NIF').AsString := QFicheroNIF.AsString;

         ConceptoIVA      := QDiario.ParamByName('ID_CONCEPTOS').AsString;
         DebeHaberIVA     := QDiario.ParamByname('DEBEHABER').AsString;
         BaseImponibleIVA := QDiario.ParamByName('BASEIMPONIBLE').AsFloat;
         ImporteIVA       := QDiario.ParamByName('IMPORTE').AsFloat;
         ComentarioIVA    := QDiario.ParamByName('COMENTARIO').AsString;

         QDiario.ExecQuery;
         QDiario.Transaction.CommitRetaining;

         // Generar un nuevo apunte contra la subcuenta genérica intracomunitaria
         // por cada subcuenta de IVA
         if lIntracom and (DMRef.QParametrosSCTAGENINTRACOM.AsString <> '') then
         begin
            if (QSubcuentas.FieldByName('TIPOIVA').AsString = 'C') or
               (QSubcuentas.FieldByName('TIPOIVA').AsString = 'A') then begin
               Close;

               if TipoCarga = CARGA_FACTURAS_COMPRA then begin
                  QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_COMPRA;
               end
               else begin
                  QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_VENTA;
               end;

               QDiario.ParamByName('APUNTE').AsInteger := nApunte;
               Inc(nApunte);
               QDiario.ParamByName('ASIENTO').AsInteger     := nAsiento;
               QDiario.ParamByName('BASEIMPONIBLE').AsFloat := 0;
               QDiario.ParamByName('COMENTARIO').AsString   := ComentarioIVA;
               QDiario.ParamByName('NIF').AsString          := QFicheroNIF.AsString;
               QDiario.ParamByName('RECARGO').AsFloat       := 0;
               QDiario.ParamByName('CONTRAPARTIDA').AsVariant := null;
               QDiario.ParamByName('DEBEHABER').AsString    := DebeHaberIVA;
               QDiario.ParamByName('FECHA').AsDateTime      := QFicheroFECHA.AsDateTime;
               QDiario.ParamByName('ID_CONCEPTOS').AsString := ConceptoIVA;
               QDiario.ParamByName('CUOTAIVA').AsFloat      := 0;
               QDiario.ParamByName('CUOTARECARGO').AsFloat  := 0;
               if lCondAnalitica then begin
                  QDiario.ParamByName('ANALITICA').AsString := QFicheroANALITICA.AsString;
               end;
               QDiario.ParamByName('IMPORTE').AsFloat := BaseImponibleIVA + ImporteIVA;
               QDiario.ParamByName('IVA').AsFloat     := 0;
               QDiario.ParamByName('MONEDA').AsString := 'E';
               if (QFicheroNUMEROFACTURAINTRACOM.AsString <> '') then begin
                  QDiario.ParamByName('NUMEROFACTURA').AsString := QFicheroNUMEROFACTURAINTRACOM.AsString;
               end
               else begin
                  QDiario.ParamByName('NUMEROFACTURA').AsString := QFicheroNUMEROFACTURA.AsString;
               end;
               QDiario.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTAGENINTRACOM.AsString;
               QDiario.ExecQuery;
               QDiario.Transaction.CommitRetaining;
            end;
         end;

         QGastos.Next;
      end;
   end     // if oIntracomunitaria.Checked then

   // Apunte 2
   else
   if QGastos.RecordCount > 1 then // Varios I.V.A.
   begin
      QGastos.First;
      while not QGastos.EOF do begin
         QSubcuentas.Close;
         QSubcuentas.parambyname('subcuenta').AsString := QGastosSBCTA_IVA.AsString;
         QSubcuentas.ExecQuery;

         if (RoundTo(QGastosCUOTA_IVA.AsFloat, -3) <> 0) or
            (QSubcuentas.FieldByName('IVA').AsFloat = 0) then begin
            // Apunte IVA
            QDiario.Close;
            QDiario.SQL.Clear;
            QDiario.SQL.Add('INSERT INTO DIARIO ');
            QDiario.SQL.Add('   (TIPOASIENTO, APUNTE, ASIENTO, BASEIMPONIBLE, COMENTARIO, NIF, RECARGO,');
            QDiario.SQL.Add('    CONTRAPARTIDA, DEBEHABER, FECHA, ID_CONCEPTOS, CUOTAIVA,CUOTARECARGO,');
            if lCondAnalitica then begin
               QDiario.SQL.Add('CUENTA_ANALITICA,');
            end;
            QDiario.SQL.Add('    IMPORTE, IVA, MONEDA, NUMEROFACTURA, SUBCUENTA)');
            QDiario.SQL.Add('VALUES');
            QDiario.SQL.Add('   (:TIPOASIENTO, :APUNTE, :ASIENTO, :BASEIMPONIBLE, :COMENTARIO, :NIF,:RECARGO,');
            QDiario.SQL.Add('    :CONTRAPARTIDA, :DEBEHABER, :FECHA, :ID_CONCEPTOS,:CUOTAIVA,:CUOTARECARGO,');
            if lCondAnalitica then begin
               QDiario.SQL.Add(':ANALITICA,');
            end;
            QDiario.SQL.Add('    :IMPORTE, :IVA, :MONEDA, :NUMEROFACTURA, :SUBCUENTA)');

            if TipoCarga = CARGA_FACTURAS_COMPRA then begin
               QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_COMPRA;
            end
            else begin
               QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_VENTA;
            end;

            QDiario.parambyname('Apunte').AsInteger := nApunte;
            Inc(nApunte);
            QDiario.parambyname('asiento').AsInteger := nAsiento;
            QDiario.parambyname('Fecha').AsDateTime  := QFicheroFECHA.AsDateTime;
            QDiario.parambyname('moneda').AsString   := 'E';

            QSubcuentas.Close;
            QSubcuentas.parambyname('subcuenta').AsString := QGastosSBCTA_IVA.AsString;
            QSubcuentas.ExecQuery;

            QDiario.parambyname('subcuenta').AsString := QGastosSBCTA_IVA.AsString;

            if lCondAnalitica then begin
               QDiario.parambyname('analitica').AsString := QFicheroANALITICA.AsString;
            end;

            QDiario.parambyname('id_Conceptos').AsString := QGastosCTO_IVA.AsString;

            if TipoCarga = CARGA_FACTURAS_COMPRA then begin
               QDiario.parambyname('DebeHaber').AsString := 'D';
            end
            else begin
               QDiario.parambyname('DebeHaber').AsString := 'H';
            end;

            QDiario.parambyname('Fecha').AsDateTime       := QFicheroFECHA.AsDateTime;
            QDiario.parambyname('Contrapartida').AsString := QFicheroSUBCUENTA.AsString;
            QDiario.parambyname('Iva').AsFloat            := QSubcuentas.FieldByName('iva').AsFloat;
            QDiario.parambyname('recargo').AsFloat        := QSubcuentas.FieldByName('recargo').AsFloat;
            QDiario.parambyname('importe').AsFloat        := RoundTo(QGastosCUOTA_IVA.AsFloat, -3);
            QDiario.parambyname('baseimponible').AsFloat  := RoundTo(QGastosBASE_IMPONIBLE_IVA.AsFloat, -3);

{       parambyname('baseimponible').asfloat:=
         RoundTo(100*(parambyname('importe').asfloat/
         (parambyname('iva').asfloat+parambyname('recargo').asfloat)), 3);}

            if RoundTo(QDiario.parambyname('recargo').AsFloat, -3) = 0 then begin
               QDiario.parambyname('cuotaiva').AsFloat     := QDiario.parambyname('importe').AsFloat;
               QDiario.parambyname('cuotarecargo').AsFloat := 0;
            end
            else begin
               QDiario.parambyname('cuotaiva').AsFloat     := QGastosBASE_IMPONIBLE_IVA.AsFloat * 0.01 * QDiario.parambyname('iva').AsFloat;
               QDiario.parambyname('cuotarecargo').AsFloat := QDiario.parambyname('baseimponible').AsFloat * 0.01 *
                  QDiario.parambyname('recargo').AsFloat;
            end;

            nSumaIva := RoundTo(nSumaIva + QGastosCUOTA_IVA.AsFloat, -3);

            QDiario.parambyname('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;

            if IsEmpty(QFicheroCOMENTARIO.AsString) then begin
               QDiario.parambyname('comentario').AsString := cComentario;
            end
            else begin
               QDiario.parambyname('comentario').AsString := QFicheroCOMENTARIO.AsString;
            end;

            QDiario.parambyname('NIF').AsString := QFicheroNIF.AsString;
            QDiario.ExecQuery;
            QDiario.Transaction.CommitRetaining;
            // Final Apunte IVA


            // Apunte Gasto o Ventas
            QDiario.Close;
            QDiario.SQL.Clear;
            QDiario.SQL.Add('INSERT INTO DIARIO ');
            QDiario.SQL.Add('   (TIPOASIENTO, APUNTE, ASIENTO, COMENTARIO, ');
            QDiario.SQL.Add('    CONTRAPARTIDA, DEBEHABER, FECHA, ID_CONCEPTOS,');
            if lCondAnalitica then begin
               QDiario.SQL.Add('CUENTA_ANALITICA,');
            end;
            QDiario.SQL.Add('    IMPORTE, IVA, MONEDA, NUMEROFACTURA, SUBCUENTA)');
            QDiario.SQL.Add('VALUES');
            QDiario.SQL.Add('   (:TIPOASIENTO, :APUNTE, :ASIENTO, :COMENTARIO,');
            QDiario.SQL.Add('    :CONTRAPARTIDA, :DEBEHABER, :FECHA, :ID_CONCEPTOS,');
            if lCondAnalitica then begin
               QDiario.SQL.Add(':ANALITICA,');
            end;
            QDiario.SQL.Add('    :IMPORTE, :IVA, :MONEDA, :NUMEROFACTURA, :SUBCUENTA)');

            if TipoCarga = CARGA_FACTURAS_COMPRA then begin
               QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_COMPRA;
            end
            else begin
               QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_VENTA;
            end;

            QDiario.parambyname('Apunte').AsInteger := nApunte;
            Inc(nApunte);
            QDiario.parambyname('asiento').AsInteger := nAsiento;
            QDiario.parambyname('Fecha').AsDateTime  := QFicheroFECHA.AsDateTime;
            QDiario.parambyname('moneda').AsString   := 'E';

            QDiario.parambyname('subcuenta').AsString := QGastosCONTRAPARTIDA.AsString;

            if lCondAnalitica then begin
               QDiario.parambyname('analitica').AsString := QFicheroANALITICA.AsString;
            end;

            QDiario.parambyname('id_Conceptos').AsString := QFicheroCTOCONTRA.AsString;

            if TipoCarga = CARGA_FACTURAS_COMPRA then begin
               QDiario.parambyname('DebeHaber').AsString := 'D';
            end
            else begin
               QDiario.parambyname('DebeHaber').AsString := 'H';
            end;

            QDiario.parambyname('Fecha').AsDateTime := QFicheroFECHA.AsDateTime;
            QDiario.parambyname('Contrapartida').AsString := QFicheroSUBCUENTA.AsString;
            QDiario.parambyname('Importe').AsFloat := RoundTo(QGastosBASE_IMPONIBLE_IVA.AsFloat, -3);
            QDiario.parambyname('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;
            if IsEmpty(QFicheroCOMENTARIO.AsString) then begin
               QDiario.parambyname('comentario').AsString := cComentario;
            end
            else begin
               QDiario.parambyname('comentario').AsString := QFicheroCOMENTARIO.AsString;
            end;

            QDiario.ExecQuery;
            QDiario.Transaction.CommitRetaining;
            // Final Apunte Gasto o Ventas
         end; // Final
         QGastos.Next;
      end;
   end

   else // Solo un tipo de Iva
   begin
      QDiario.Close;
      QDiario.SQL.Clear;
      QDiario.SQL.Add('INSERT INTO DIARIO ');
      QDiario.SQL.Add('   (TIPOASIENTO, APUNTE, ASIENTO, BASEIMPONIBLE, COMENTARIO, NIF, RECARGO,');
      QDiario.SQL.Add('    CONTRAPARTIDA, DEBEHABER, FECHA, ID_CONCEPTOS, CUOTAIVA,CUOTARECARGO,');
      if lCondAnalitica then begin
         QDiario.SQL.Add('CUENTA_ANALITICA,');
      end;
      QDiario.SQL.Add('    IMPORTE, IVA, MONEDA, NUMEROFACTURA, SUBCUENTA)');
      QDiario.SQL.Add('VALUES');
      QDiario.SQL.Add('   (:TIPOASIENTO, :APUNTE, :ASIENTO, :BASEIMPONIBLE, :COMENTARIO, :NIF,:RECARGO,');
      QDiario.SQL.Add('    :CONTRAPARTIDA, :DEBEHABER, :FECHA, :ID_CONCEPTOS,:CUOTAIVA,:CUOTARECARGO,');
      if lCondAnalitica then begin
         QDiario.SQL.Add(':ANALITICA,');
      end;
      QDiario.SQL.Add('    :IMPORTE, :IVA, :MONEDA, :NUMEROFACTURA, :SUBCUENTA)');

      if TipoCarga = CARGA_FACTURAS_COMPRA then begin
         QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_COMPRA;
      end
      else begin
         QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_VENTA;
      end;

      QDiario.parambyname('Apunte').AsInteger := 2;
      Inc(nApunte);
      QDiario.parambyname('asiento').AsInteger := nAsiento;
      QDiario.parambyname('Fecha').AsDateTime  := QFicheroFECHA.AsDateTime;
      QDiario.parambyname('moneda').AsString   := 'E';

      QSubcuentas.Close;
      QSubcuentas.parambyname('subcuenta').AsString := QGastosSBCTA_IVA.AsString;
      QSubcuentas.ExecQuery;

      QDiario.parambyname('subcuenta').AsString := QGastosSBCTA_IVA.AsString;

      if lCondAnalitica then begin
         QDiario.parambyname('analitica').AsString := QFicheroANALITICA.AsString;
      end;

      QDiario.parambyname('id_Conceptos').AsString := QGastosCTO_IVA.AsString;

      if TipoCarga = CARGA_FACTURAS_COMPRA then begin
         QDiario.parambyname('DebeHaber').AsString := 'D';
      end
      else begin
         QDiario.parambyname('DebeHaber').AsString := 'H';
      end;

      QDiario.parambyname('Fecha').AsDateTime := QFicheroFECHA.AsDateTime;
      QDiario.parambyname('Contrapartida').AsString := QFicheroSUBCUENTA.AsString;
      QDiario.parambyname('Iva').AsFloat := QSubcuentas.FieldByName('iva').AsFloat;
      QDiario.parambyname('recargo').AsFloat := QSubcuentas.FieldByName('recargo').AsFloat;

      // Si sólo se especifica un tipo de IVA y se introduce la cuota de IVA y
      // la base imponible, generar el apunte de IVA sin tener en cuenta el
      // tipo de IVA de la subcuenta.
      if (QGastosCUOTA_IVA.AsFloat <> 0) and (QGastosBASE_IMPONIBLE_IVA.AsFloat <> 0) then begin
         QDiario.ParamByName('IMPORTE').AsFloat       := QGastosCUOTA_IVA.AsFloat;
         QDiario.ParamByName('BASEIMPONIBLE').AsFloat := QGastosBASE_IMPONIBLE_IVA.AsFloat;
         if RoundTo(QDiario.parambyname('recargo').AsFloat, -3) = 0 then begin
            QDiario.parambyname('cuotaiva').AsFloat     := QDiario.parambyname('importe').AsFloat;
            QDiario.parambyname('cuotarecargo').AsFloat := 0;
         end
         else begin
            QDiario.parambyname('cuotaiva').AsFloat     := QDiario.parambyname('baseimponible').AsFloat * 0.01 *
               QDiario.parambyname('iva').AsFloat;
            QDiario.parambyname('cuotarecargo').AsFloat := QDiario.parambyname('baseimponible').AsFloat * 0.01 *
               QDiario.parambyname('recargo').AsFloat;
         end;
         nImpBase := QGastosBASE_IMPONIBLE_IVA.AsFloat;
      end
      else begin
         if QFicheroTANTORETENCION.AsFloat > 0 then begin
            nImpBase := nImpCli / ((1 + (0.01 * QDiario.parambyname('iva').AsFloat) +
               (0.01 * QDiario.parambyname('recargo').AsFloat)) - (0.01 * QFicheroTANTORETENCION.AsFloat));

            QDiario.parambyname('importe').AsFloat :=
               RoundTo(nImpBase * ((0.01 * QDiario.parambyname('iva').AsFloat) +
               (0.01 * QDiario.parambyname('recargo').AsFloat)), -3);
         end
         else begin
            nImpBase := nImpCli / (1 + (0.01 * QDiario.parambyname('iva').AsFloat) +
               (0.01 * QDiario.parambyname('recargo').AsFloat));

            QDiario.parambyname('importe').AsFloat := RoundTo(nImpCli - nImpBase, -3);
         end;

         QDiario.parambyname('baseimponible').AsFloat := RoundTo(nImpBase, -3);


         if RoundTo(QDiario.parambyname('recargo').AsFloat, -3) = 0 then begin
            QDiario.parambyname('cuotaiva').AsFloat     := QDiario.parambyname('importe').AsFloat;
            QDiario.parambyname('cuotarecargo').AsFloat := 0;
         end
         else begin
            QDiario.parambyname('cuotaiva').AsFloat     := QDiario.parambyname('baseimponible').AsFloat * 0.01 *
               QDiario.parambyname('iva').AsFloat;
            QDiario.parambyname('cuotarecargo').AsFloat := QDiario.parambyname('baseimponible').AsFloat * 0.01 *
               QDiario.parambyname('recargo').AsFloat;
         end;
      end;

      QDiario.parambyname('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;

      if IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         QDiario.parambyname('comentario').AsString := cComentario;
      end
      else begin
         QDiario.parambyname('comentario').AsString := QFicheroCOMENTARIO.AsString;
      end;

      QDiario.parambyname('NIF').AsString := QFicheroNIF.AsString;
      QDiario.ExecQuery;
      QDiario.Transaction.CommitRetaining;
   end;  // Apunte 2
         // Final un solo tipo de IVA


   QGastos.First;
   if (QGastos.RecordCount = 1) or CheckBoxIntracomunitaria.Checked then begin
      // Apunte 3
      QDiario.Close;
      QDiario.SQL.Clear;
      QDiario.SQL.Add('INSERT INTO DIARIO ');
      QDiario.SQL.Add('   (TIPOASIENTO, APUNTE, ASIENTO, COMENTARIO, ');
      QDiario.SQL.Add('    CONTRAPARTIDA, DEBEHABER, FECHA, ID_CONCEPTOS,');
      if lCondAnalitica then begin
         QDiario.SQL.Add('CUENTA_ANALITICA,');
      end;
      QDiario.SQL.Add('    IMPORTE, IVA, MONEDA, NUMEROFACTURA, SUBCUENTA)');
      QDiario.SQL.Add('VALUES');
      QDiario.SQL.Add('   (:TIPOASIENTO, :APUNTE, :ASIENTO, :COMENTARIO,');
      QDiario.SQL.Add('    :CONTRAPARTIDA, :DEBEHABER, :FECHA, :ID_CONCEPTOS,');
      if lCondAnalitica then begin
         QDiario.SQL.Add(':ANALITICA,');
      end;
      QDiario.SQL.Add('    :IMPORTE, :IVA, :MONEDA, :NUMEROFACTURA, :SUBCUENTA)');

      if TipoCarga = CARGA_FACTURAS_COMPRA then begin
         QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_COMPRA;
      end
      else begin
         QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_VENTA;
      end;

      // Si la factura es intracomunitaria, el apunte de compras es el 1
      if CheckBoxIntracomunitaria.Checked then begin
         QDiario.ParamByName('APUNTE').AsInteger := 1;
      end
      else begin
         QDiario.parambyname('Apunte').AsInteger := nApunte;
      end;

      Inc(nApunte);
      QDiario.parambyname('asiento').AsInteger := nAsiento;
      QDiario.parambyname('Fecha').AsDateTime  := QFicheroFECHA.AsDateTime;
      QDiario.parambyname('moneda').AsString   := 'E';

      QDiario.parambyname('subcuenta').AsString := QGastosCONTRAPARTIDA.AsString;

      if lCondAnalitica then begin
         QDiario.parambyname('analitica').AsString := QFicheroANALITICA.AsString;
      end;

      QDiario.parambyname('id_Conceptos').AsString := QFicheroCTOCONTRA.AsString;

      if TipoCarga = CARGA_FACTURAS_COMPRA then begin
         QDiario.parambyname('DebeHaber').AsString := 'D';
      end
      else begin
         QDiario.parambyname('DebeHaber').AsString := 'H';
      end;

      QDiario.parambyname('Fecha').AsDateTime := QFicheroFECHA.AsDateTime;

      QDiario.parambyname('Contrapartida').AsString := QFicheroSUBCUENTA.AsString;

      // Defecto
      if QGastos.RecordCount > 1 then begin
         QDiario.parambyname('Importe').AsFloat := RoundTo(QFicheroIMPORTE.AsFloat - nSumaIva, -3);
      end
      else begin
         QDiario.parambyname('Importe').AsFloat := RoundTo(nImpBase, -3);
      end;

      if RoundTo(QFicheroIMPORTEPRONTOPAGO.AsFloat, -3) <> 0 then begin
         QDiario.parambyname('Importe').AsFloat := RoundTo(nImpBase + QFicheroIMPORTEPRONTOPAGO.AsFloat, -3);
      end;

      QDiario.parambyname('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;

      if IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         QDiario.parambyname('comentario').AsString := cComentario;
      end
      else begin
         QDiario.parambyname('comentario').AsString := QFicheroCOMENTARIO.AsString;
      end;

      QDiario.ExecQuery;
      QDiario.Transaction.CommitRetaining;
   end; // cbIva.Itemindex<>4

   if (RoundTo(QFicheroIMPORTEPRONTOPAGO.AsFloat, -3) <> 0) or
      (RoundTo(QFicheroIMPORTERETVENTA.AsFloat  , -3) <> 0) or
      (RoundTo(QFicheroTANTORETENCION.AsFloat   , -3) <> 0) then begin
      // Apunte 4
      QDiario.Close;
      QDiario.SQL.Clear;
      QDiario.SQL.Add('INSERT INTO DIARIO ');
      QDiario.SQL.Add('   (TIPOASIENTO, APUNTE, ASIENTO, COMENTARIO, ');
      QDiario.SQL.Add('    CONTRAPARTIDA, DEBEHABER, FECHA, ID_CONCEPTOS,');
      if lCondAnalitica then begin
         QDiario.SQL.Add('CUENTA_ANALITICA,');
      end;
      QDiario.SQL.Add('    IMPORTE, IVA, MONEDA, NUMEROFACTURA, SUBCUENTA)');
      QDiario.SQL.Add('VALUES');
      QDiario.SQL.Add('   (:TIPOASIENTO, :APUNTE, :ASIENTO, :COMENTARIO,');
      QDiario.SQL.Add('    :CONTRAPARTIDA, :DEBEHABER, :FECHA, :ID_CONCEPTOS,');
      if lCondAnalitica then begin
         QDiario.SQL.Add(':ANALITICA,');
      end;
      QDiario.SQL.Add('    :IMPORTE, :IVA, :MONEDA, :NUMEROFACTURA, :SUBCUENTA)');

      if TipoCarga = CARGA_FACTURAS_COMPRA then begin
         QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_COMPRA;
      end
      else begin
         QDiario.ParamByName('TIPOASIENTO').AsInteger := ASIENTO_FACTURA_VENTA;
      end;

      QDiario.parambyname('Apunte').AsInteger  := nApunte;
      QDiario.parambyname('asiento').AsInteger := nAsiento;
      QDiario.parambyname('Fecha').AsDateTime  := QFicheroFECHA.AsDateTime;
      QDiario.parambyname('moneda').AsString   := 'E';

      if (RoundTo(QFicheroTANTORETENCION.AsFloat, -3) <> 0) then begin
         if lProfesional then begin
            QDiario.parambyname('subcuenta').AsString := DmRef.QParametrosSCTARETPROF.AsString;
         end
         else begin
            QDiario.parambyname('subcuenta').AsString := DmRef.QParametrosSCTARETARRE.AsString;
         end;
      end
      else
      if (RoundTo(QFicheroIMPORTERETVENTA.AsFloat, -3) <> 0) then begin
         QDiario.parambyname('subcuenta').AsString := cSubctaRetVenta;
      end
      else begin
         if TipoCarga = CARGA_FACTURAS_COMPRA then begin
            QDiario.parambyname('subcuenta').AsString := DmRef.QParametrosSCTADTOPPC.AsString;
         end
         else begin
            QDiario.parambyname('subcuenta').AsString := DmRef.QParametrosSCTADTOPPV.AsString;
         end;
      end;

      if lCondAnalitica then begin
         QDiario.parambyname('analitica').AsString := QFicheroANALITICA.AsString;
      end;

      if (RoundTo(QFicheroTANTORETENCION.AsFloat, -3) <> 0) then begin
         if lProfesional then begin
            QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTORETPROF.AsString;
         end
         else begin
            QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTORETARRE.AsString;
         end;
      end
      else
      if (RoundTo(QFicheroIMPORTERETVENTA.AsFloat, -3) <> 0) then begin
         QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOCLIENTES.AsString;
      end
      else begin
         if TipoCarga = CARGA_FACTURAS_COMPRA then begin
            QDiario.parambyname('id_Conceptos').AsString := DmRef.QParametrosCTODTOPPC.AsString;
         end
         else begin
            QDiario.parambyname('id_Conceptos').AsString := DmRef.QParametrosCTODTOPPV.AsString;
         end;
      end;

      if (RoundTo(QFicheroTANTORETENCION.AsFloat, -3) <> 0) then begin
         QDiario.parambyname('DebeHaber').AsString := 'H';
      end
      else
      if (RoundTo(QFicheroIMPORTERETVENTA.AsFloat, -3) <> 0) then begin
         QDiario.parambyname('DebeHaber').AsString := 'D';
      end
      else
      if TipoCarga = CARGA_FACTURAS_COMPRA then begin
         QDiario.parambyname('DebeHaber').AsString := 'H';
      end
      else begin
         QDiario.parambyname('DebeHaber').AsString := 'D';
      end;

      QDiario.parambyname('Fecha').AsDateTime := QFicheroFECHA.AsDateTime;
      QDiario.parambyname('Contrapartida').AsString := QFicheroSUBCUENTA.AsString;
      if (RoundTo(QFicheroTANTORETENCION.AsFloat, -3) <> 0) then begin
         QDiario.parambyname('Importe').AsFloat :=
            RoundTo(nImpBase * (0.01 * QFicheroTANTORETENCION.AsFloat), -3);
      end
      else
      if (RoundTo(QFicheroIMPORTERETVENTA.AsFloat, -3) <> 0) then begin
         QDiario.parambyname('Importe').AsFloat := RoundTo(QFicheroIMPORTERETVENTA.AsFloat, -3);
      end
      else begin
         QDiario.parambyname('Importe').AsFloat := RoundTo(QFicheroIMPORTEPRONTOPAGO.AsFloat, 3);
      end;

      QDiario.parambyname('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;

      if IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         QDiario.parambyname('comentario').AsString := cComentario;
      end
      else begin
         QDiario.parambyname('comentario').AsString := QFicheroCOMENTARIO.AsString;
      end;

      QDiario.ExecQuery;
      QDiario.Transaction.CommitRetaining;
   end;

   if CheckBoxRealizarPago.Checked then begin
      // Generacion del asiento del banco
      nAsiento := DMContaRef.ObtenerNumeroAsiento;
      // apunte 1 banco
      QDiario.Close;
      QDiario.SQL.Clear;
      QDiario.SQL.Add('INSERT INTO DIARIO ');
      QDiario.SQL.Add('   (APUNTE, ASIENTO, COMENTARIO, ');
      QDiario.SQL.Add('    CONTRAPARTIDA, DEBEHABER, FECHA, ID_CONCEPTOS, PUNTEO,');
      if lCondAnalitica then begin
         QDiario.SQL.Add('CUENTA_ANALITICA,');
      end;
      QDiario.SQL.Add('    IMPORTE, IVA, MONEDA, NUMEROFACTURA, SUBCUENTA)');
      QDiario.SQL.Add('VALUES');
      QDiario.SQL.Add('   (:APUNTE, :ASIENTO, :COMENTARIO,');
      QDiario.SQL.Add('    :CONTRAPARTIDA, :DEBEHABER, :FECHA, :ID_CONCEPTOS, :PUNTEO,');
      if lCondAnalitica then begin
         QDiario.SQL.Add(':ANALITICA,');
      end;
      QDiario.SQL.Add('    :IMPORTE, :IVA, :MONEDA, :NUMEROFACTURA, :SUBCUENTA)');

      QDiario.parambyname('Apunte').AsInteger  := 1;
      QDiario.parambyname('asiento').AsInteger := nAsiento;
      QDiario.parambyname('Fecha').AsDateTime  := QFicheroFECHA.AsDateTime;
      QDiario.parambyname('moneda').AsString   := 'E';

      if TipoCarga = CARGA_FACTURAS_VENTA then begin
         QDiario.parambyname('subcuenta').AsString     := QFicheroBANCO.AsString;
         QDiario.parambyname('Contrapartida').AsString := QFicheroSUBCUENTA.AsString;
         QDiario.ParamByName('PUNTEO').AsString        := '';
      end
      else begin
         QDiario.parambyname('subcuenta').AsString     := QFicheroSUBCUENTA.AsString;
         QDiario.parambyname('Contrapartida').AsString := QFicheroBANCO.AsString;
         QDiario.ParamByName('PUNTEO').AsString        := 'S';
      end;

      if lCondAnalitica then begin
         QDiario.parambyname('analitica').AsString := QFicheroANALITICA.AsString;
      end;

      QDiario.parambyname('id_Conceptos').AsString := QFicheroCTOBANCO.AsString;
      QDiario.parambyname('DebeHaber').AsString := 'D';
      QDiario.parambyname('Fecha').AsDateTime := QFicheroFECHAVTO.AsDateTime;
      QDiario.parambyname('importe').AsFloat := RoundTo(QFicheroIMPORTE.AsFloat, -3);
      QDiario.parambyname('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;

      if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         QDiario.parambyname('comentario').AsString := QFicheroCOMENTARIO.AsString;
      end
      else begin
         QSubcuentas.Close;
         QSubcuentas.parambyname('subcuenta').AsString := QFicheroSUBCUENTA.AsString;
         QSubcuentas.ExecQuery;
         QDiario.parambyname('comentario').AsString := QSubcuentas.FieldByName('descripcion').AsString;
      end;
      QDiario.ExecQuery;
      QDiario.Transaction.CommitRetaining;

      // Apunte 2 banco
      QDiario.Close;
      QDiario.SQL.Clear;
      QDiario.SQL.Add('INSERT INTO DIARIO ');
      QDiario.SQL.Add('   (APUNTE, ASIENTO, COMENTARIO, PUNTEO,');
      QDiario.SQL.Add('    CONTRAPARTIDA, DEBEHABER, FECHA, ID_CONCEPTOS,');
      if lCondAnalitica then begin
         QDiario.SQL.Add('CUENTA_ANALITICA,');
      end;
      QDiario.SQL.Add('    IMPORTE, IVA, MONEDA, NUMEROFACTURA, SUBCUENTA)');
      QDiario.SQL.Add('VALUES');
      QDiario.SQL.Add('   (:APUNTE, :ASIENTO, :COMENTARIO, :PUNTEO,');
      QDiario.SQL.Add('    :CONTRAPARTIDA, :DEBEHABER, :FECHA, :ID_CONCEPTOS,');
      if lCondAnalitica then begin
         QDiario.SQL.Add(':ANALITICA,');
      end;
      QDiario.SQL.Add('    :IMPORTE, :IVA, :MONEDA, :NUMEROFACTURA, :SUBCUENTA)');
      QDiario.parambyname('Apunte').AsInteger  := 2;
      QDiario.parambyname('asiento').AsInteger := nAsiento;
      QDiario.parambyname('Fecha').AsDateTime  := QFicheroFECHA.AsDateTime;
      QDiario.parambyname('moneda').AsString   := 'E';

      if TipoCarga = CARGA_FACTURAS_COMPRA then begin
         QDiario.parambyname('subcuenta').AsString     := QFicheroBANCO.AsString;
         QDiario.parambyname('Contrapartida').AsString := QFicheroSUBCUENTA.AsString;
         QDiario.ParamByName('PUNTEO').AsString        := '';
      end
      else begin
         QDiario.parambyname('subcuenta').AsString     := QFicheroSUBCUENTA.AsString;
         QDiario.parambyname('Contrapartida').AsString := QFicheroBANCO.AsString;
         QDiario.ParamByName('PUNTEO').AsString        := 'S';
      end;

      if lCondAnalitica then begin
         QDiario.parambyname('analitica').AsString := QFicheroANALITICA.AsString;
      end;

      QDiario.parambyname('id_Conceptos').AsString := QFicheroCTOBANCO.AsString;
      QDiario.parambyname('DebeHaber').AsString := 'H';
      QDiario.parambyname('Fecha').AsDateTime := QFicheroFECHAVTO.AsDateTime;
      QDiario.parambyname('importe').AsFloat := RoundTo(QFicheroIMPORTE.AsFloat, -3);
      QDiario.parambyname('numerofactura').AsString := QFicheroNUMEROFACTURA.AsString;
      if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         QDiario.parambyname('comentario').AsString := QFicheroCOMENTARIO.AsString;
      end
      else begin
         QSubcuentas.Close;
         QSubcuentas.parambyname('subcuenta').AsString := QFicheroSUBCUENTA.AsString;
         QSubcuentas.ExecQuery;
         QDiario.parambyname('comentario').AsString :=
            QSubcuentas.FieldByName('descripcion').AsString;
      end;
      QDiario.ExecQuery;
      QDiario.Transaction.CommitRetaining;
   end;

   if CheckBoxRealizarPago.Checked then begin
      MessageDlg('Generados asientos nº ' + FormatFloat('###,###,###', nAsientoFactura) + ' y ' +
                 FormatFloat('###,###,###', nAsiento), mtInformation, [mbOK], 0);
   end
   else begin
      MessageDlg('Generado asiento nº ' + FormatFloat('###,###,###', nAsientoFactura), mtInformation, [mbOK], 0);
   end;

   if QFicheroFORMAPAGO.AsString <> '' then begin
      if MessageDlg('¿Desea generar los vencimientos correspondientes a esta factura?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         WVencimientos := TWVencimientos.Create(nil);
         WVencimientos.FFormaPago       := QFicheroFORMAPAGO.AsString;
         WVencimientos.FFechaEmision    := QFicheroFECHA.AsDateTime;
         WVencimientos.FDiaPago1        := QFicheroDIAPAGO1.AsInteger;
         WVencimientos.FDiaPago2        := QFicheroDIAPAGO2.AsInteger;
         WVencimientos.FDiaPago3        := QFicheroDIAPAGO3.AsInteger;
         WVencimientos.FSubcuenta       := QFicheroSUBCUENTA.AsString;
         WVencimientos.FFactura         := QFicheroNUMEROFACTURA.AsString;
         WVencimientos.FEsFacturaCompra := (TipoCarga = CARGA_FACTURAS_COMPRA);
         WVencimientos.FImporteFactura  := RoundTo(QFicheroIMPORTE.AsFloat, -3);
         WVencimientos.FFechaFactura    := QFicheroFECHA.AsDateTime;
         WVencimientos.FAsiento         := nAsientoFactura;
         WVencimientos.ShowModal;
      end;
   end;

   // Toques finales
   QDiario.Free;
   QSubcuentas.Free;

   CheckBoxIntracomunitaria.Checked := False;
   if not (QFichero.State in dsEditModes) then begin
      QFichero.Edit;
   end;
   QFicheroIMPORTE.AsFloat                := 0;
   // No se quiere inicializar siempre el tanto por ciento, ya que si no
   // cambia de proveedor, se debe seguir manteniendo este valor
   //lbProfArre.caption:='% Retención de Profesional / Arrendatario ';
   //fieldbyname('tantoretencion').asfloat:=0;
   QFicheroIMPORTEPRONTOPAGO.AsFloat      := 0;
   QFicheroFECHAVTO.AsDateTime            := 0;
   QFicheroNUMEROFACTURA.AsString         := '';
   QFicheroNUMEROFACTURAINTRACOM.AsString := '';
   QFicheroNIF.AsString                   := '';
   QFicheroCOMENTARIO.AsString            := '';
   QFicheroANALITICA.AsString             := '';
   CheckBoxRealizarPago.Checked := False;

   EditNUMEROFACTURA.SetFocus;
   PrepararQueryMovimientos;
end;

procedure TWCargaRapidaFacturas.FormShow(Sender: TObject);
begin
   lbRetVentas.Visible         := (TipoCarga = CARGA_FACTURAS_VENTA);
   EditIMPORTERETVENTA.Visible := (TipoCarga = CARGA_FACTURAS_VENTA);

   // Poner Labels según tipo de Carga rapida
   case TipoCarga of
      CARGA_FACTURAS_COMPRA: begin
         lTitulo.Caption                 := 'Carga Rápida de Facturas de Compra';
         cTipoDH                         := 'H';
         lbSubcuenta.Caption             := 'Proveedor';
         ComboBoxCD_SUBCUENTA.ListSource := DMContaRef.SSubCTAProveedoresBancos;
         ComboBoxDS_SUBCUENTA.Listsource := DMContaRef.SSubCTAProveedoresBancos;
         lbCtoSubcuenta.Caption          := 'Concepto Proveedor';
         lbCtoContra.Caption             := 'Concepto Compras / Amortización';
         CheckBoxRealizarPago.Caption    := '¿Realizar el Pago?';
         //eContrapartida.LookupTable      := DmContaRef.QSubctaAmortGastos;
         //eContrapartidaDesc.LookupTable  := DmContaRef.QSubctaAmortGastosDesc;
         //eSbctaIVADesc.LookupTable       := DMContaRef.QSubCTAIVADeducibleDesc;
      end;
      CARGA_FACTURAS_VENTA: begin
         lTitulo.Caption                 := 'Carga Rápida de Facturas de Venta';
         cTipoDH                         := 'D';
         lbSubcuenta.Caption             := 'Cliente';
         ComboBoxCD_SUBCUENTA.ListSource := DMContaRef.SSubCtaClientes;
         ComboBoxDS_SUBCUENTA.ListSource := DMContaRef.SSubCtaClientes;
         lbCtoSubcuenta.Caption          := 'Concepto Cliente';
         lbCtoContra.Caption             := 'Concepto Ventas';
         CheckBoxRealizarPago.Caption    := '¿Realizar el Cobro?';
         //eContrapartida.LookupTable      := DmContaRef.QSubctaVentas;
         //eContrapartidaDesc.LookupTable  := DmContaRef.QSubctaVentasDesc;
         //eSbctaIVADesc.LookupTable       := DmcontaRef.QSubCTAIVARepercutidoDesc;
      end;
   end;

   TabSheetAsientos.Show;
   EditNUMEROFACTURA.SetFocus;
   PrepararQueryMovimientos;
end;

procedure TWCargaRapidaFacturas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnEdtGuardar.Click;
      end;
   end;
end;

procedure TWCargaRapidaFacturas.ComboBoxCD_SUBCUENTAExit(Sender: TObject);
begin
   if (QFicheroSUBCUENTA.AsString <> '') and
      ((QFicheroSUBCUENTA.AsString = DmRef.QParametrosVGENERICAC.AsString) or (QFicheroSUBCUENTA.AsString =
      DmRef.QParametrosVGENERICA.AsString) or
      (DMContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString) = 'B')) then begin
      EditNIF.SetFocus;
   end;
end;

procedure TWCargaRapidaFacturas.EditFECHAExit(Sender: TObject);
begin
   QFicheroFECHAVTO.AsDateTime := QFicheroFECHA.AsDateTime;
end;

procedure TWCargaRapidaFacturas.EditNIFExit(Sender: TObject);
//var cLetraNif :string;
//    cNif      :string;
begin
   (*ComboCD_CONCEPTO.SetFocus;
   cNif := QFicheroNIF.AsString;
   if IsEmpty(cNif) then begin
      exit;
   end;
   if cNif[1] in ['A'..'Z'] then begin
      EditCOMENTARIO.SetFocus;
      Exit;
   end;
   // chequeo del nif
   cLetraNif := LetraNif(Copy(cNif, 1, 8));
   if cLetraNif <> cNif[9] then  begin
      QFicheroNIF.AsString := Copy(cNif, 1, 8) + cLetraNif;
   end;
   EditCOMENTARIO.SetFocus;*)
end;

procedure TWCargaRapidaFacturas.QMovimientosCalcFields(DataSet: TDataSet);
begin
   QMovimientosDESCCOMENTARIO.AsString :=
         DMContaRef.GetDescripcionApunte(QMovimientosDESCCONCEPTO.AsString,
                                         QMovimientosNUMEROFACTURA.AsString,
                                         QMovimientosSERIE.AsString,
                                         QMovimientosEJERCICIO.AsInteger,
                                         QMovimientosCOMENTARIO.AsString,
                                         QMovimientosABREVIATURA.AsString);
end;

procedure TWCargaRapidaFacturas.BtnEdtBorrarMovimClick(Sender: TObject);
var Q :TIBSQL;
begin
   if not QMovimientos.IsEmpty then begin
      if DMContaRef.AsientoBloqueado(QMovimientosFECHA.AsDateTime) then begin
         DatabaseError('No se puede borrar un asiento bloqueado.');
      end;

      if MessageDlg('¿Desea borrar el asiento ' + FormatFloat('###,###,###', QMovimientosASIENTO.AsInteger) +
         ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Q := TIBSql.Create(nil);
         try
            Q.Database := DMRef.BDContab;
            Q.SQL.Add('DELETE FROM DIARIO WHERE ASIENTO = :prmASIENTO');
            Q.ParamByName('prmASIENTO').AsInteger := QMovimientosASIENTO.AsInteger;
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;
         finally
            Q.Free;
         end;
         PrepararQueryMovimientos;
      end;
   end;

   PageControl1.Update;
end;

procedure TWCargaRapidaFacturas.CheckBoxRealizarPagoClick(Sender: TObject);
begin
   QFicheroFECHAVTO.AsDateTime := QFicheroFECHA.AsDateTime;
   QFicheroBANCO.AsString      := DmRef.QParametrosSCTABANCO.AsString;
   if TipoCarga = CARGA_FACTURAS_COMPRA then begin
      QFicheroCTOBANCO.AsString := DmRef.QParametrosCTOPAGO.AsString;
   end
   else begin
      QFicheroCTOBANCO.AsString := DmRef.QParametrosCTOCOBRO.AsString;
   end;
end;

procedure TWCargaRapidaFacturas.BtnEdtSubcuentaClick(Sender: TObject);
begin
   WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
   try
      WNuevaSubcuenta.ShowModal;
      if WNuevaSubcuenta.FNuevaSubcuenta <> '' then  begin
         if not (QFichero.State in dsEditModes) then begin
            QFichero.Edit;
         end;
         QFicheroSUBCUENTA.AsString := WNuevaSubcuenta.FNuevaSubcuenta;
      end;

      ComboBoxCD_SUBCUENTA.SetFocus;
      ComboBoxCD_SUBCUENTA.CloseUp(True);
   finally
      FreeAndNil(WNuevaSubcuenta);
   end;
   PageControl1.Update;
end;

procedure TWCargaRapidaFacturas.BtnDeleteIVAClick(Sender: TObject);
begin
   if not QGastos.IsEmpty then begin
      if MessageDlg('¿Desea borrar el tipo de I.V.A. seleccionado', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         QGastos.Delete;
      end;
   end;
end;

procedure TWCargaRapidaFacturas.QGastosNewRecord(DataSet: TDataSet);
begin
   QGastosCONTRAPARTIDA.AsString := FContrapartida;

   if CheckBoxIntracomunitaria.Checked then begin
      QGastosCTO_IVA.AsString := QFicheroCTOIVAINTRA.AsString;
   end
   else begin
      QGastosCTO_IVA.AsString := QFicheroCTOIVA.AsString;
   end;
   //GridEdtSubcuentasIVA.SetActiveField('SBCTA_IVA_DESC');
end;

procedure TWCargaRapidaFacturas.IterateAllIVAs;
var TipoIVA       :Double;
    Recargo       :Double;
    BaseImponible :Double;
    CuotaIVA      :Double;
    QSelSubcuenta :TIBQuery;
begin
   if QGastos.State in dsEditModes then begin
      QGastos.Post;
   end;

   // Un tipo de IVA
   if QGastos.RecordCount = 1 then  begin
      QSelSubcuenta := TIBQuery.Create(nil);
      try
         QSelSubcuenta.Database := DMRef.BDContab;
         QSelSubcuenta.SQL.Add('SELECT * FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA');
         QSelSubcuenta.ParamByName('SUBCUENTA').AsString := QGastosSBCTA_IVA.AsString;
         QSelSubcuenta.Open;

         TipoIVA := QSelSubcuenta.FieldByName('IVA'    ).AsFloat;
         Recargo := QSelSubcuenta.FieldByName('RECARGO').AsFloat;

         if (RoundTo(QFicheroTANTORETENCION.AsFloat, -3) <> 0) then begin
            BaseImponible := QFicheroIMPORTE.AsFloat /
                             ((1 + (0.01 * TipoIVA) + (0.01 * Recargo)) -
                             (0.01 *
                             QFicheroTANTORETENCION.AsFloat));
            CuotaIVA      := BaseImponible * ((0.01 * TipoIVA) + (0.01 * Recargo));
         end
         else begin
            BaseImponible := QFicheroIMPORTE.AsFloat / (1 + (0.01 * TipoIVA) + (0.01 * Recargo));
            CuotaIVA      := QFicheroIMPORTE.AsFloat - BaseImponible;
         end;

         QGastos.Edit;
         QGastosBASE_IMPONIBLE_IVA.AsFloat := RoundTo(BaseImponible, -3);
         QGastosCUOTA_IVA.AsFloat          := RoundTo(CuotaIVA     , -3);
         QGastos.Post;
      finally
         QSelSubcuenta.Free;
      end;
   end
   // Varios tipos de IVA
   else begin
      if QGastosBASE_IMPONIBLE_IVA.AsFloat = 0 then begin
         RecalcularBaseImponible;
      end
      else begin
         RecalcularIVA;
      end;
   end;
end;

procedure TWCargaRapidaFacturas.OnShowWLineaIVA(Sender: TObject);
begin
   case TipoCarga of
      CARGA_FACTURAS_COMPRA: begin
         FLineaIVA.ComboBoxCD_SUBCUENTA_IVA.ListSource := FModel.Datamodule.SSubCTAIVADeducible;
         FLineaIVA.ComboBoxDS_SUBCUENTA_IVA.ListSource := FModel.Datamodule.SSubCTAIVADeducible;
         FLineaIVA.ComboBoxCD_SUBCUENTA_CONTRAPARTIDA.ListSource := FModel.Datamodule.SSubctaAmortGastos;
         FLineaIVA.ComboBoxDS_SUBCUENTA_CONTRAPARTIDA.ListSource := FModel.Datamodule.SSubctaAmortGastos;
      end;
      CARGA_FACTURAS_VENTA: begin
         FLineaIVA.ComboBoxCD_SUBCUENTA_IVA.ListSource := FModel.Datamodule.SSubCTAIVARepercutido;
         FLineaIVA.ComboBoxCD_SUBCUENTA_IVA.ListSource := FModel.Datamodule.SSubCTAIVARepercutido;
         FLineaIVA.ComboBoxCD_SUBCUENTA_CONTRAPARTIDA.ListSource := FModel.Datamodule.SSubCtaVentas;
         FLineaIVA.ComboBoxDS_SUBCUENTA_CONTRAPARTIDA.ListSource := FModel.Datamodule.SSubCtaVentas;
      end;
   end;

   FLineaIVA.ComboBoxCD_SUBCUENTA_IVA.SetFocus;
end;

procedure TWCargaRapidaFacturas.BtnNewIVAClick(Sender: TObject);
begin
   FLineaIVA := TWEditLineaIVA.Create(nil);
   try
      FLineaIVA.Model := FModel;
      FLineaIVA.OnShow := OnShowWLineaIVA;
      FLineaIVA.QFichero.Append;
      if FLineaIVA.ShowModal = mrOK then begin
         QGastos.Append;
         QGastosSBCTA_IVA.AsString         := FLineaIVA.QFicheroSUBCUENTA_IVA.AsString;
         QGastosBASE_IMPONIBLE_IVA.AsFloat := FLineaIVA.QFicheroBASE_IMPONIBLE.AsFloat;
         QGastosCUOTA_IVA.AsFloat          := FLineaIVA.QFicheroCUOTA_IVA.AsFloat;
         QGastosCONTRAPARTIDA.AsString     := FLineaIVA.QFicheroCONTRAPARTIDA.AsString;
         QGastosCTO_IVA.AsString           := FLineaIVA.QFicheroID_CONCEPTOS.AsString;
         QGastos.Post;
         RecalcularIVA;
         if not (QFicheroIMPORTERETVENTA.AsFloat <> 0) and (QGastos.RecordCount = 1) then begin
            RecalcularBaseImponible;
         end;
         IterateAllIVAs;
      end;
   finally
      FreeAndNil(FLineaIVA);
   end;
end;

procedure TWCargaRapidaFacturas.BtnModifyIVAClick(Sender: TObject);
begin
   FLineaIVA := TWEditLineaIVA.Create(nil);
   try
      FLineaIVA.Model := FModel;
      FLineaIVA.OnShow := OnShowWLineaIVA;
      FLineaIVA.QFichero.Append;
      if not QGastosSBCTA_IVA.IsNull          then FLineaIVA.QFicheroSUBCUENTA_IVA.AsString := QGastosSBCTA_IVA.AsString        ;
      if not QGastosBASE_IMPONIBLE_IVA.IsNull then FLineaIVA.QFicheroBASE_IMPONIBLE.AsFloat := QGastosBASE_IMPONIBLE_IVA.AsFloat;
      if not QGastosCUOTA_IVA.IsNull          then FLineaIVA.QFicheroCUOTA_IVA.AsFloat      := QGastosCUOTA_IVA.AsFloat         ;
      if not QGastosCONTRAPARTIDA.IsNull      then FLineaIVA.QFicheroCONTRAPARTIDA.AsString := QGastosCONTRAPARTIDA.AsString    ;
      if not QGastosCTO_IVA.IsNull            then FLineaIVA.QFicheroID_CONCEPTOS.AsString  := QGastosCTO_IVA.AsString          ;
      if FLineaIVA.ShowModal = mrOK then begin
         QGastos.Edit;
         QGastosSBCTA_IVA.AsString         := FLineaIVA.QFicheroSUBCUENTA_IVA.AsString;
         QGastosBASE_IMPONIBLE_IVA.AsFloat := FLineaIVA.QFicheroBASE_IMPONIBLE.AsFloat;
         QGastosCUOTA_IVA.AsFloat          := FLineaIVA.QFicheroCUOTA_IVA.AsFloat;
         QGastosCONTRAPARTIDA.AsString     := FLineaIVA.QFicheroCONTRAPARTIDA.AsString;
         QGastosCTO_IVA.AsString           := FLineaIVA.QFicheroID_CONCEPTOS.AsString;
         QGastos.Post;
         RecalcularIVA;
         if not (QFicheroIMPORTERETVENTA.AsFloat <> 0) and (QGastos.RecordCount = 1) then begin
            RecalcularBaseImponible;
         end;
         IterateAllIVAs;
      end;
   finally
      FreeAndNil(FLineaIVA);
   end;
end;

procedure TWCargaRapidaFacturas.BtnResetIVAClick(Sender: TObject);
begin
   if MessageDlg('¿Desea inicializar el asinto de factura?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      if not (QFichero.State in dsEditModes) then begin
         QFichero.Edit;
      end;
      QFicheroIMPORTE.AsFloat := 0;
      // No se quiere inicializar siempre el tanto por ciento, ya que si no
      // cambia de proveedor, se debe seguir manteniendo este valor
      //lbProfArre.caption:='% Retención de Profesional / Arrendatario ';
      //fieldbyname('tantoretencion').asfloat:=0;
      QFicheroImporteProntoPago.AsFloat := 0;
      QFicheroFECHAVTO.AsDateTime       := 0;
      QFicheroNUMEROFACTURA.AsString    := '';
      QFicheroNIF.AsString              := '';
      QFicheroCOMENTARIO.AsString       := '';
      QFicheroANALITICA.AsString        := '';
      CheckBoxRealizarPago.Checked      := False;

      QGastos.EmptyDataSet;
      QGastos.Append;
      if TipoCarga = CARGA_FACTURAS_COMPRA then begin
         QGastosSBCTA_IVA.AsString     := DMRef.QParametrosSCTAIVACNORMAL.AsString;
         QGastosCONTRAPARTIDA.AsString := FContrapartida;
      end
      else begin
         QGastosSBCTA_IVA.AsString     := DMRef.QParametrosSCTAIVANORMAL.AsString;
         QGastosCONTRAPARTIDA.AsString := FContrapartida;
      end;
      QGastos.Post;
      QGastos.Edit;
   end;

   EditNUMEROFACTURA.SetFocus;
end;

procedure TWCargaRapidaFacturas.CheckBoxIntracomunitariaClick(Sender: TObject);
begin
   lFacturaIntracom.Visible := CheckBoxIntracomunitaria.Checked;
   EditNUMEROFACTURAINTRACOM.Visible := CheckBoxIntracomunitaria.Checked;

   // Factura de compra
   if TipoCarga = CARGA_FACTURAS_COMPRA then  begin
      if CheckBoxIntracomunitaria.Checked then begin
         QFicheroCTOSUBCUENTA.AsString := DMRef.QParametrosCTOPROVINTRA.AsString;
         QFicheroCTOCONTRA.AsString    := DMRef.QParametrosCTOPROVINTRA.AsString;
         QFicheroCTOIVAINTRA.AsString  := DMRef.QParametrosCTOIVAINTRA.AsString;
         if (DmRef.QParametrosSCTAIVACINTRADEDUCIBLE.AsString <> '') or
            (DmRef.QParametrosSCTAIVACINTRAREPERCUTIDO.AsString <> '') then begin
            if QGastos.State in dsEditModes then begin
               QGastos.Cancel;
            end;
            QGastos.EmptyDataSet;
            if (DmRef.QParametrosSCTAIVACEXENTO.AsString <> '') then begin
               QGastos.Append;
               QGastosSBCTA_IVA.AsString         := DmRef.QParametrosSCTAIVACEXENTO.AsString;
               QGastosBASE_IMPONIBLE_IVA.AsFloat := RoundTo(QFicheroIMPORTE.AsFloat, -3);
               QGastos.Post;
            end;
            if (DmRef.QParametrosSCTAIVACINTRADEDUCIBLE.AsString <> '') then begin
               QGastos.Append;
               QGastosSBCTA_IVA.AsString := DmRef.QParametrosSCTAIVACINTRADEDUCIBLE.AsString;
               QGastos.Post;
            end;
            if (DmRef.QParametrosSCTAIVACINTRAREPERCUTIDO.AsString <> '') then begin
               QGastos.Append;
               QGastosSBCTA_IVA.AsString :=
                  DmRef.QParametrosSCTAIVACINTRAREPERCUTIDO.AsString;
               QGastos.Post;
            end;
         end;
      end   // if oIntracomunitaria.Checked then
      else begin
         QFicheroCTOSUBCUENTA.AsString := DmRef.QParametrosCTOPROVEEDORES.AsString;
      end;
   end

   // Factura de venta
   else
   if TipoCarga = CARGA_FACTURAS_VENTA then  begin
      if CheckBoxIntracomunitaria.Checked then begin
         if QGastos.State in dsEditModes then begin
            QGastos.Cancel;
         end;
         QGastos.EmptyDataSet;
         if (DmRef.QParametrosSCTAIVAINTRA.AsString <> '') then begin
            QGastos.Append;
            QGastosSBCTA_IVA.AsString := DmRef.QParametrosSCTAIVAINTRA.AsString;
            QGastos.Post;
         end;
      end   // if oIntracomunitaria.Checked then
      else begin

      end;
   end;


   if CheckBoxIntracomunitaria.Checked then begin
      EditNUMEROFACTURAINTRACOM.SetFocus;
   end;
end;

procedure TWCargaRapidaFacturas.BtnEdtModificarClick(Sender: TObject);
var
   Asiento: Integer;
   AsientoNomina, AsientoEmpresa: Integer;
begin
   if not QMovimientos.IsEmpty then  begin
      if DMContaRef.AsientoBloqueado(QMovimientosFECHA.AsDateTime) then begin
         DatabaseError('No se puede modificar un asiento bloqueado.');
      end;

      // ASIENTO DE NÓMINA / SS EMPRESA
      if (QMovimientosTIPOASIENTO.AsInteger = ASIENTO_NOMINA) or
         (QMovimientosTIPOASIENTO.AsInteger = ASIENTO_SSOCIAL_EMPRESA) then begin
         Asiento := QMovimientosASIENTO.AsInteger;

         if QMovimientosTIPOASIENTO.AsInteger = ASIENTO_NOMINA then begin
            AsientoNomina  := QMovimientosASIENTO.AsInteger;
            AsientoEmpresa := QMovimientosASIENTONOMINA.AsInteger;
         end
         else begin
            AsientoEmpresa := QMovimientosASIENTO.AsInteger;
            AsientoNomina  := QMovimientosASIENTONOMINA.AsInteger;
         end;

         if not Assigned(WCargaRapidaNominas) then begin
            WCargaRapidaNominas := TWCargaRapidaNominas.Create(nil);
         end;

         WCargaRapidaNominas.FModoArranque   := Modificacion;
         WCargaRapidaNominas.FAsientoNomina  := AsientoNomina;
         WCargaRapidaNominas.FAsientoEmpresa := AsientoEmpresa;

         WCargaRapidaNominas.ShowModal;
      end

      else begin
         WCargaAsiento := TWCargaAsiento.Create(nil);
         try
            WCargaAsiento.FModoArranque := Modificacion;
            Asiento := QMovimientosASIENTO.AsInteger;
            WCargaAsiento.FAsiento := Asiento;
            WCargaAsiento.ShowModal;
         finally
            FreeAndNil(WCargaAsiento);
         end;
      end;

      PrepararQueryMovimientos;

      QMovimientos.DisableControls;
      QMovimientos.First;
      while not QMovimientos.EOF do begin
         if QMovimientosASIENTO.AsInteger = Asiento then begin
            Break;
         end;
         QMovimientos.Next;
      end;
      QMovimientos.EnableControls;
   end;

   PageControl1.Update;
end;

procedure TWCargaRapidaFacturas.BtnEdtMayorClick(Sender: TObject);
var LMayorModel :TFiltroListadosMayorModel;
begin
   if DMRef.QParametrosMOSTRAR_FILTRO_MAYOR.AsString = 'S' then  begin
      WFiltroMayorSubcuenta := TWFiltroMayorSubcuenta.Create(nil);
      try
         WFiltroMayorSubcuenta.FSubcuenta := QMovimientosSUBCUENTA.AsString;
         WFiltroMayorSubcuenta.ShowModal;
      finally
         FreeAndNil(WFiltroMayorSubcuenta);
      end;
   end
   else begin
      // Primero vaciar el fichero
      DMContaRef.QInformesConta.EmptyDataset;

      Config.SetAccountingType('T');
      LMayorModel := TFiltroListadosMayorModel.Create(DMRef.BDContab);
      try
         LMayorModel.LanzarInfMayor(True,
                                    False,
                                    QMovimientosSUBCUENTA.AsString,
                                    QMovimientosSUBCUENTA.AsString,
                                    '',
                                    '',
                                    DMRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime,
                                    DMRef.QParametrosFECHA_FIN_EJERCICIO.AsDateTime,
                                    Date,
                                    'T',
                                    '',
                                    '',
                                    '',
                                    '',
                                    '',
                                    '',
                                    '',
                                    '');
      finally
         LMayorModel.Free;
      end;
   end;

   PageControl1.Update;
end;

procedure TWCargaRapidaFacturas.EditIMPORTEExit(Sender: TObject);
var
   TipoIVA, Recargo, CuotaIVA, BaseImponible: Double;
   QSelSubcuenta: TIBQuery;
begin
   if not CheckBoxIntracomunitaria.Checked and (QFicheroIMPORTE.AsFloat <> 0) then  begin
      if QGastos.State in dsEditModes then begin
         QGastos.Post;
      end;

      if QGastos.RecordCount = 1 then begin
         QSelSubcuenta := TIBQuery.Create(nil);
         QSelSubcuenta.Close;
         QSelSubcuenta.Database := DMRef.BDContab;
         QSelSubcuenta.SQL.Clear;
         QSelSubcuenta.SQL.Add('SELECT * FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA');
         QSelSubcuenta.ParamByName('SUBCUENTA').AsString := QGastosSBCTA_IVA.AsString;
         QSelSubcuenta.Open;
         TipoIVA := QSelSubcuenta.FieldByName('IVA').AsFloat;
         Recargo := QSelSubcuenta.FieldByName('RECARGO').AsFloat;

         if (RoundTo(QFicheroTANTORETENCION.AsFloat, -3) <> 0) then begin
            BaseImponible :=
               QFicheroIMPORTE.AsFloat /
               ((1 + (0.01 * TipoIVA) + (0.01 * Recargo)) -
               (0.01 *
               QFicheroTANTORETENCION.AsFloat));
            CuotaIVA      := BaseImponible * ((0.01 * TipoIVA) + (0.01 * Recargo));
         end
         else
         if (RoundTo(QFicheroIMPORTERETVENTA.AsFloat, -3) <> 0) then begin
            BaseImponible :=
               (QFicheroIMPORTE.AsFloat + QFicheroIMPORTERETVENTA.AsFloat) / (1 + (0.01 * TipoIVA) + (0.01 * Recargo));
            CuotaIVA      := QFicheroIMPORTE.AsFloat + QFicheroIMPORTERETVENTA.AsFloat - BaseImponible;
         end
         else begin
            BaseImponible :=
               QFicheroIMPORTE.AsFloat / (1 + (0.01 * TipoIVA) + (0.01 * Recargo));
            CuotaIVA      := QFicheroIMPORTE.AsFloat - BaseImponible;
         end;

         QGastos.Edit;
         QGastosBASE_IMPONIBLE_IVA.AsFloat := RoundTo(BaseImponible, -3);
         QGastosCUOTA_IVA.AsFloat          := RoundTo(CuotaIVA     , -3);

         QSelSubcuenta.Close;
         QSelSubcuenta.Free;
      end;
   end;
end;

procedure TWCargaRapidaFacturas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if MessageDlg('¿Quiere cancelar los cambios?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
end;

procedure TWCargaRapidaFacturas.DBGridMovesDblClick(Sender: TObject);
begin
   BtnEdtModificar.Click;
end;

procedure TWCargaRapidaFacturas.DBGridMovesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   FAsientoAnterior := QMovimientosASIENTO.AsInteger;
   DBGridMoves.Refresh;
end;

procedure TWCargaRapidaFacturas.DBGridMovesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if QMovimientosASIENTO.AsInteger <> FAsientoAnterior then begin
      FAsientoAnterior := QMovimientosASIENTO.AsInteger;
      if FColorActual = $00EDFBFC then FColorActual := $00D9D1C0
                                  else FColorActual := $00EDFBFC;
   end;

   if State * [gdFixed, gdSelected] = [] then begin
      DBGridMoves.Canvas.Brush.Color := FColorActual;
      DBGridMoves.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TWCargaRapidaFacturas.ComboBoxCD_SUBCUENTACloseUp(Sender: TObject);
var lFormaPago  :string;
    QSubCuentas :TIBSQL;
begin

   if not (QFichero.State in dsEditModes) then begin
      QGastos.Edit;
   end;

   QSubcuentas := TIBSQL.Create(nil);
   QSubcuentas.Database := DMRef.BDContab;
   try
      QSubcuentas.SQL.Add(' select contrapartida, arrendador, profesional, formapago,');
      QSubcuentas.SQL.Add('        diapago1, diapago2, diapago3, intracomunitario');
      QSubcuentas.SQL.Add(' from subctas');
      QSubcuentas.SQL.Add(' where subcuenta=:subcuenta');
      QSubcuentas.Prepare;
      QSubcuentas.ParamByName('subcuenta').AsString := QFicheroSUBCUENTA.AsString;
      QSubcuentas.ExecQuery;
      cContra      := QSubcuentas.FieldByName('contrapartida').AsString;
      lProfesional := QSubcuentas.FieldByName('profesional').AsString = 'S';
      lArrendador  := QSubcuentas.FieldByName('arrendador').AsString = 'S';

      if TipoCarga = CARGA_FACTURAS_VENTA then  begin
         if Length(Trim(cContra)) > 0 then begin
            FContrapartida := cContra;
         end
         else begin
            FContrapartida := DmRef.QParametrosSCTAVENTAS.AsString;
         end;
      end else
      if TipoCarga = CARGA_FACTURAS_COMPRA then  begin
         if Length(Trim(cContra)) > 0 then begin
            FContrapartida := cContra;
         end
         else begin
            FContrapartida := DmRef.QParametrosSCTACOMPRAS.AsString;
         end;
      end;

      lIntracom := QSubcuentas.FieldByName('INTRACOMUNITARIO').AsString = 'S';
      CheckBoxIntracomunitaria.Checked := lIntracom;

      //  lbProfArre.caption:='% Retención de Profesional / Arrendatario ';
      lbProfArre.Caption := '% Retención';
      if QSubcuentas.FieldByName('FORMAPAGO').IsNull then begin
         lFormaPago := '';
      end
      else begin
         lFormaPago := QSubcuentas.FieldByName('FORMAPAGO').AsVariant;
      end;


      QFicheroTANTORETENCION.AsFloat := 0;
      QFicheroFORMAPAGO.AsString     := lFormaPago;

      QFicheroDIAPAGO1.AsInteger   := QSubcuentas.FieldByName('DIAPAGO1').AsInteger;
      QFicheroDIAPAGO2.AsInteger   := QSubcuentas.FieldByName('DIAPAGO2').AsInteger;
      QFicheroDIAPAGO3.AsInteger   := QSubcuentas.FieldByName('DIAPAGO3').AsInteger;
      QFicheroCTOIVAINTRA.AsString := DMRef.QParametrosCTOIVAINTRA.AsString;
   finally
      QSubcuentas.Free;
   end;


   if TipoCarga = CARGA_FACTURAS_VENTA then  begin
      // Clientes
      if not lIntracom then begin
         QGastos.EmptyDataSet;
         QGastos.Append;
         QGastosSBCTA_IVA.AsString     := DmRef.QParametrosSCTAIVANORMAL.AsString;
         QGastosCONTRAPARTIDA.AsString := FContrapartida;
         QFicheroCTOIVA.AsString       := DmRef.QParametrosCTOIVANORMAL.AsString;
      end;
      QFicheroCTOCONTRA.AsString    := DmRef.QParametrosCTOVENTAS.AsString;
      QFicheroCTOSUBCUENTA.AsString := DmRef.QParametrosCTOCLIENTES.AsString;
   end;

   if TipoCarga = CARGA_FACTURAS_COMPRA then  begin
      // Proveedores
      if not lIntracom then begin
         QGastos.EmptyDataSet;
         QGastos.Append;
         QGastosSBCTA_IVA.AsString     := DmRef.QParametrosSCTAIVACNORMAL.AsString;
         QGastosCONTRAPARTIDA.AsString := FContrapartida;
      end;

      QFicheroCTOIVA.AsString := DmRef.QParametrosCTOIVACNORMAL.AsString;

      QFicheroCTOCONTRA.AsString := DmRef.QParametrosCTOCOMPRAS.AsString;

      if CheckBoxIntracomunitaria.Checked then begin
         QFicheroCTOSUBCUENTA.AsString := DMRef.QParametrosCTOPROVINTRA.AsString;
         QFicheroCTOCONTRA.AsString    := DMRef.QParametrosCTOPROVINTRA.AsString;
      end
      else begin
         QFicheroCTOSUBCUENTA.AsString := DmRef.QParametrosCTOPROVEEDORES.AsString;
      end;

      if lArrendador then begin
         QFicheroTANTORETENCION.AsFloat := DmRef.QParametrosTANTORETARRE.AsFloat;
      end;

      if lProfesional then begin
         QFicheroTANTORETENCION.AsFloat := DmRef.QParametrosTANTORETPROF.AsFloat;
      end;
   end;

   // Recalcular cuota y base imponible
   EditIMPORTE.OnExit(nil);
end;

end.
