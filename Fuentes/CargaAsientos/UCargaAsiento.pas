unit UCargaAsiento;

interface

uses Buttons, Classes, ComCtrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Globales,
     Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, jpeg, Mask, Menus, Messages,
     StdCtrls, SysUtils, Windows, FormHandler, DBGrids, UCargaAsientoModel, UEditApunte;

type
  TWCargaAsiento = class(TForm)
    QDiario: TIBDataSet;
    QDiarioDescApunte: TStringField;
    QDiarioID_DIARIO: TIntegerField;
    QDiarioAPUNTE: TSmallintField;
    QDiarioASIENTO: TIntegerField;
    QDiarioBASEIMPONIBLE: TFloatField;
    QDiarioCOMENTARIO: TIBStringField;
    QDiarioCONTRAPARTIDA: TIBStringField;
    QDiarioDEBEHABER: TIBStringField;
    QDiarioFECHA: TDateTimeField;
    QDiarioIMPORTE: TFloatField;
    QDiarioIVA: TFloatField;
    QDiarioNIF: TIBStringField;
    QDiarioMONEDA: TIBStringField;
    QDiarioNUMEROFACTURA: TIBStringField;
    QDiarioRECARGO: TFloatField;
    QDiarioSUBCUENTA: TIBStringField;
    QDiarioPUNTEO: TIBStringField;
    QDiarioASIENTOPUNTEO: TIntegerField;
    QDiarioPUNTEOIVA: TIBStringField;
    QDiarioID_CONCEPTOS: TIBStringField;
    QDiarioTIPODIARIO: TIBStringField;
    QDiarioCUENTA_ANALITICA: TIBStringField;
    QDiarioCUOTAIVA: TFloatField;
    QDiarioCUOTARECARGO: TFloatField;
    QDiarioTIPOASIENTO: TIntegerField;
    QDiarioASIENTONOMINA: TIntegerField;
    QDiarioEJERCICIO: TIntegerField;
    QDiarioSERIE: TIBStringField;
    QMovimientos: TIBDataSet;
    QMovimientosASIENTO: TIntegerField;
    QMovimientosFECHA: TDateTimeField;
    QMovimientosID_CONCEPTOS: TIBStringField;
    QMovimientosDescComentario: TStringField;
    QMovimientosDEBEHABER: TIBStringField;
    QMovimientosIMPORTE: TFloatField;
    QMovimientosCONTRAPARTIDA: TIBStringField;
    QMovimientosCOMENTARIO: TIBStringField;
    QMovimientosNUMEROFACTURA: TIBStringField;
    QMovimientosDESCCONCEPTO: TStringField;
    QMovimientosEJERCICIO: TIntegerField;
    QMovimientosSERIE: TIBStringField;
    Transaccion: TIBTransaction;
    QFiltro: TClientDataSet;
    SFiltro: TDataSource;
    SMovimientos: TDataSource;
    SFichero: TDataSource;
    QConceptos: TIBSQL;
    Panel3: TPanel;
    LabelTitulo: TLabel;
    PageControl: TPageControl;
    TabAsiento: TTabSheet;
    TabMovimientos: TTabSheet;
    TabMayor: TTabSheet;
    Panel2: TPanel;
    Label9: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    lSaldoDeudorAcreedor1: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText12: TDBText;
    Panel5: TPanel;
    Panel4: TPanel;
    BtnCancel: TButton;
    BtnAccept: TButton;
    BtnDouplicate: TButton;
    BtnReestablish: TButton;
    BtnDelete: TButton;
    BtnNew: TButton;
    BtnNewSubAccount: TButton;
    Panel6: TPanel;
    Panel7: TPanel;
    EditFECHA_ASIENTO: TDBEdit;
    Label5: TLabel;
    gDescuadre: TGroupBox;
    LabelDescuadre: TLabel;
    Panel8: TPanel;
    Bevel1: TBevel;
    Label2: TLabel;
    DBText4: TDBText;
    DBText6: TDBText;
    Label18: TLabel;
    Label19: TLabel;
    lSaldoDeudorAcreedor2: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    Panel1: TPanel;
    Label11: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label27: TLabel;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    EditIMPORTE_DESDE: TDBEdit;
    EditIMPORTE_HASTA: TDBEdit;
    ComboBoxDescConcepto: TDBLookupComboBox;
    BtnReport: TButton;
    ComboBoxConcepto: TDBLookupComboBox;
    RGConcepto: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    ComboBoxAnalitica: TDBLookupComboBox;
    ComboBoxDelegacion: TDBLookupComboBox;
    ComboBoxDepartamento: TDBLookupComboBox;
    ComboBoxSeccion: TDBLookupComboBox;
    ComboBoxProyecto: TDBLookupComboBox;
    ComboBoxDescAnalitica: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_Desde: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_Hasta: TDBLookupComboBox;
    DataGrid: TDBGrid;
    GridMovimientos: TDBGrid;
    QFiltroFECHA_ASIENTO: TDateField;
    QFiltroFECHA_DESDE: TDateField;
    QFiltroFECHA_HASTA: TDateField;
    QFiltroIMPORTE_DESDE: TFloatField;
    QFiltroIMPORTE_HASTA: TFloatField;
    QFiltroSUBCUENTA: TStringField;
    QFiltroCONCEPTO: TVarBytesField;
    QFiltroTIPO_CONCEPTO: TStringField;
    QFiltroCUENTA: TStringField;
    QFiltroID_DELEGACION: TStringField;
    QFiltroID_DEPARTAMENTO: TStringField;
    QFiltroID_SECCION: TStringField;
    QFiltroID_PROYECTO: TStringField;
    BtnModifyApunte: TButton;
    procedure fcIBCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure QDiarioCalcFields(DataSet: TDataSet);
    procedure BtnReportClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure QMovimientosCalcFields(DataSet: TDataSet);
    procedure BtnNewSubAccountClick(Sender: TObject);
    procedure BtnReestablishClick(Sender: TObject);
    procedure BtnDouplicateClick(Sender: TObject);
    procedure GridMovimientosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridMovimientosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure BtnModifyApunteClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
  private
    FormManager            :TccFormHandler;
    FModel                 :TCargaAsientoModel;
    FEditApunte            :TWEditApunte;
    FDescuadre             :Double;  {Descuadre de Asiento}
    FApunte                :Integer;
    FImporteAnterior       :Double;
    FMoneda                :string;
    FConceptoAnterior      :string;
    FComentarioAnterior    :string;
    FFacturaAnterior       :string;
    FSubcuentaAnterior     :string;
    FContrapartidaAnterior :string;
    FCtaAnaliticaAnterior  :string;
    {------------------------------}
    FSubcuentaAlEntrar     :string;
    FContrapartidaAlEntrar :string;
    {------------------------------}
    FSubcuentaCobroPago    :string;
    FTipoAsiento           :Integer;
    FColorActual           :TColor;
    FAsientoAnterior       :Integer;
    procedure SetDescuadre(Value :Double);
    function GetDescuadre:Double;
    procedure ActualizarComentarioAsiento(Comentario: String);
    procedure VerificarTodasLasContrapartidas;
    procedure InicializarModoArranque;
    procedure PrepararQueryApuntes;
    procedure PrepararQueryMovimientos;
    function  SelectNextApunte(prmAsiento :Integer):Integer;

    procedure RecalculaDescuadre;
    property  Descuadre :Double read GetDescuadre write SetDescuadre;
    procedure OnShowWEditApunte(Sender: TObject);
  public
    FModoArranque   :TModoArranque;
    FAsientoFactura :Integer;
    FAsiento        :Integer;
  end;

var WCargaAsiento: TWCargaAsiento;

implementation

uses DM, DMConta, General, UFiltroListadosMayorModel, UEspere, UNuevaSubcuenta,
     UFiltroLibroFacturasEmitidas, Math;
{$R *.DFM}

const TabAsiento = 0;
      TabMovim   = 1;
      TabMayor   = 2;
      
procedure TWCargaAsiento.FormCreate(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   FModel := TCargaAsientoModel.Create(DMRef.BDContab);

   Self.Caption := '';

   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(DataGrid.Name                      , fmEdit  );
   FormManager.AddComp(GridMovimientos.Name               , fmEdit  );
   FormManager.AddComp(BtnNewSubAccount.Name              , fmEdit  );
   FormManager.AddComp(BtnNew.Name                        , fmEdit  );
   FormManager.AddComp(BtnDelete.Name                     , fmEdit  );
   FormManager.AddComp(BtnReestablish.Name                , fmEdit  );
   FormManager.AddComp(BtnDouplicate.Name                 , fmEdit  );
   FormManager.AddComp(BtnAccept.Name                     , fmEdit  );
   FormManager.AddComp(BtnCancel.Name                     , fmEdit  );
   FormManager.AddComp(BtnReport.Name                     , fmEdit  );
   FormManager.AddComp(EditFECHA_ASIENTO.Name             , fmEdit  );
   FormManager.AddComp(EditFECHA_DESDE.Name               , fmEdit  );
   FormManager.AddComp(EditFECHA_HASTA.Name               , fmEdit  );
   FormManager.AddComp(EditIMPORTE_DESDE.Name             , fmEdit  );
   FormManager.AddComp(EditIMPORTE_HASTA.Name             , fmEdit  );
   FormManager.AddComp(ComboBoxCD_SUBCUENTA_Desde.Name    , fmEdit  );
   FormManager.AddComp(ComboBoxDS_SUBCUENTA_Hasta.Name    , fmEdit  );
   FormManager.AddComp(ComboBoxConcepto.Name              , fmEdit  );
   FormManager.AddComp(ComboBoxDescConcepto.Name          , fmEdit  );
   FormManager.AddComp(ComboBoxAnalitica.Name             , fmEdit  );
   FormManager.AddComp(ComboBoxDescAnalitica.Name         , fmEdit  );
   FormManager.AddComp(ComboBoxDelegacion.Name            , fmEdit  );
   FormManager.AddComp(ComboBoxDepartamento.Name          , fmEdit  );
   FormManager.AddComp(ComboBoxSeccion.Name               , fmEdit  );
   FormManager.AddComp(ComboBoxProyecto.Name              , fmEdit  );

   ActivarTransacciones(Self);

   {----------------------------------------------------------------------------------------------------------}
   QDiarioIMPORTE.DisplayFormat       := '###,###,##0.#0';
   QDiarioBASEIMPONIBLE.DisplayFormat := '###,###,##0.#0';
   QDiarioCUOTAIVA.DisplayFormat      := '###,###,##0.#0';
   QDiarioCUOTAIVA.DisplayFormat      := '###,###,##0.#0';

   QDiarioIMPORTE.EditFormat          := '#########.#0';
   QDiarioBASEIMPONIBLE.EditFormat    := '#########.#0';
   QDiarioCUOTAIVA.EditFormat         := '#########.#0';
   QDiarioCUOTARECARGO.EditFormat     := '#########.#0';
   {----------------------------------------------------------------------------------------------------------}

   QFiltro.CreateDataSet;
   QFiltro.Active := True;
   QFiltro.Append;
   
   DmContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   if not(QFiltro.State in dsEditModes) then begin
      QFiltro.Edit;
   end;
   QFiltroFECHA_DESDE.AsDateTime := dPrimeraFecha;
   QFiltroFECHA_HASTA.AsDateTime := dUltimaFecha;
   QFiltroIMPORTE_HASTA.AsFloat  := 999999999;
   QFiltroTIPO_CONCEPTO.AsString := 'T';
   QFiltroSUBCUENTA.AsString     := QDiarioSUBCUENTA.AsString;

   {----------------------------------------------------------------------------------------------------------}

   QConceptos.Close;
   QConceptos.SQL.Clear;
   QConceptos.SQL.Add('SELECT DESCRIPCION                  ');
   QConceptos.SQL.Add('FROM   CONCEPTOS                    ');
   QConceptos.SQL.Add('WHERE  ID_CONCEPTOS = :ID_CONCEPTOS ');
   QConceptos.Prepare;

   FormManager.Mode := fmBrowse;
   FormManager.Mode := fmEdit;
end;

procedure TWCargaAsiento.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWCargaAsiento.SetDescuadre(Value :Double);
begin
   if Value <> FDescuadre then begin
      FDescuadre := Value;
      LabelDESCUADRE.Caption := FormatFloat('#0,00', RoundTo(FDescuadre, -2));
      if RoundTo(FDescuadre, -2) < 0 then LabelDESCUADRE.Font.Color := clRed
                                     else LabelDESCUADRE.Font.Color := clNavy;
   end;
end;

function TWCargaAsiento.GetDescuadre:Double;
begin
   Result := RoundTo(FDescuadre, -2);
end;

procedure TWCargaAsiento.ActualizarComentarioAsiento(Comentario: String);
var Apunte :Integer;
begin
   { Si es factura de compra o venta, actualizar el comentario con la descripción de la subcta de proveedor o cliente seleccionado.}
   if (FTipoAsiento = ASIENTO_FACTURA_COMPRA) or (FTipoAsiento = ASIENTO_FACTURA_VENTA) then begin
      if QDiario.State in dsEditModes then begin
         QDiario.Post;
         QDiario.ApplyUpdates;
      end;
      Apunte := QDiarioAPUNTE.AsInteger;

      QDiario.DisableControls;
      try QDiario.First;
          while not QDiario.EOF do begin
             QDiario.Edit;
             QDiarioCOMENTARIO.AsString := Comentario;
             QDiario.Post;
             QDiario.ApplyUpdates;
             QDiario.Next;
          end;

          QDiario.First;
          while not QDiario.EOF do begin
             if QDiarioAPUNTE.AsInteger = Apunte then begin
                Break;
             end;
             QDiario.Next;
          end;
      finally QDiario.EnableControls;
      end;
   end;
end;

procedure TWCargaAsiento.VerificarTodasLasContrapartidas;
var Apunte         :Integer;
    NuevaSubcuenta :string;
begin
   { Si se modifica la subcuenta, comprobar las contrapartidas del resto de apuntes. }
   if (FSubcuentaAlEntrar <> '') and (FSubcuentaAlEntrar <> QDiarioSUBCUENTA.AsString) then begin
      if QDiario.State in dsEditModes then begin
         QDiario.Post;
         QDiario.ApplyUpdates;
      end;

      Apunte         := QDiarioAPUNTE.AsInteger;
      NuevaSubcuenta := QDiarioSUBCUENTA.AsString;

      QDiario.DisableControls;
      try QDiario.First;
          while not QDiario.EOF do begin
             if QDiarioCONTRAPARTIDA.AsString = FSubcuentaAlEntrar then begin
                QDiario.Edit;
                QDiarioCONTRAPARTIDA.AsString := NuevaSubcuenta;
                QDiario.Post;
                QDiario.ApplyUpdates;
             end;
             QDiario.Next;
          end;
          QDiario.First;

          while not QDiario.EOF do begin
             if QDiarioAPUNTE.AsInteger = Apunte then begin
                Break;
             end;
             QDiario.Next;
          end;
      finally QDiario.EnableControls;
      end;
   end;
end;

function TWCargaAsiento.SelectNextApunte(prmAsiento :Integer):Integer;
var Q :TIBQuery;
begin
   Q := DMRef.CreateQuery(['SELECT MAX(APUNTE) MAXIMO    ',
                           'FROM   DIARIO                ',
                           'WHERE  ASIENTO = :prmASIENTO ']);
   Q.ParamByName('prmASIENTO').AsInteger := prmASIENTO;
   try Q.Open;
       Result := Q.FieldByName('MAXIMO').AsInteger + 1;
   finally Q.Free;
   end;
end;

procedure TWCargaAsiento.InicializarModoArranque;
var Subcta          :string;
    Banco           :string;
    Factura         :string;
    CuentaAnalitica :string;
    Importe         :Double;
    Q               :TIBQuery;
    QAbrev          :TIBQuery;
begin
   FSubcuentaCobroPago := '';
   { Inserción de asiento }
   if FModoArranque = INSERCION then begin
      FApunte      := 0;
      FTipoAsiento := ASIENTO_GENERAL;
      FAsiento     := DMContaRef.ObtenerNumeroAsiento;
      if not(QFiltro.State in dsEditModes) then QFiltro.Edit;
      QFiltroFECHA_ASIENTO.AsDateTime := Date;
      FMoneda               := 'E';
      FConceptoAnterior     := '';
      FComentarioAnterior   := '';
      FFacturaAnterior      := '';
      FImporteAnterior      :=  0;
      FCtaAnaliticaAnterior := '';

      QDiario.Insert;

      BtnDouplicate.Visible := False;
   end else
   { Creación de asiento de cobro / pago }
   if (FModoArranque = COBRO_FACTURA) or (FModoArranque = PAGO_FACTURA) then begin
      if not(QFiltro.State in dsEditModes) then QFiltro.Edit;
      QFiltroFECHA_ASIENTO.AsDateTime := Date;
      FMoneda      := 'E';
      FTipoAsiento := ASIENTO_GENERAL;
      FApunte      := 0;
      Importe      := 0;
      Factura      := '';
      Q := DMRef.CreateQuery(['SELECT D.SUBCUENTA     ,       ',
                              '       D.IMPORTE       ,       ',
                              '       D.NUMEROFACTURA ,       ',
                              '       D.CUENTA_ANALITICA      ',
                              'FROM   DIARIO  D,              ',
                              '       CUENTAS C               ',
                              'WHERE D.ASIENTO = :ASIENTO AND ']);
      if FModoArranque = COBRO_FACTURA then Q.SQL.Add('   C.TIPOCUENTA = "C" AND')
                                       else Q.SQL.Add('   C.TIPOCUENTA = "P" AND');
      Q.SQL.Add('   SUBSTR(D.SUBCUENTA, 1, 3) = C.CUENTA');

      Q.ParamByName('ASIENTO').AsInteger := FAsientoFactura;
      try
         Q.Open;
         if not Q.EOF then begin
            { Datos para el nuevo asiento }
            Subcta           := Q.FieldByName('SUBCUENTA').AsString;
            Banco            := DmRef.QParametrosSCTABANCO.AsString;
            Importe          := Q.FieldByName('IMPORTE').AsFloat;
            FImporteAnterior := Importe;
            Factura          := Q.FieldByName('NUMEROFACTURA'   ).AsString;
            CuentaAnalitica  := Q.FieldByName('CUENTA_ANALITICA').AsString;

            { Subcuenta de cliente / proveedor para puntear asientos al grabar }
            FSubcuentaCobroPago := Subcta;

            FAsiento := DMContaRef.ObtenerNumeroAsiento;

            { APUNTE 1 ------------------------------------------------------------}
            QDiario.Append;
            QDiarioAPUNTE.AsInteger          := FApunte;
            QDiarioASIENTO.AsInteger         := FAsiento;
            QDiarioTIPOASIENTO.AsInteger     := FTipoAsiento;
            QDiarioDEBEHABER.AsString        := 'D';
            QDiarioFECHA.AsDateTime          := Date;
            QDiarioIMPORTE.AsFloat           := Importe;
            QDiarioMONEDA.AsString           := FMoneda;
            QDiarioCUENTA_ANALITICA.AsString := CuentaAnalitica;

            { Asiento de cobro }
            if FModoArranque = COBRO_FACTURA then begin
               QDiarioSUBCUENTA.AsString     := Banco;        { Subcta banco   }
               QDiarioCONTRAPARTIDA.AsString := Subcta;       { Subcta cliente }
               QDiarioID_CONCEPTOS.AsString  := DmRef.QParametrosCTOCOBRO.AsString;
            end
            else begin {Asiento de pago}
               QDiarioSUBCUENTA.AsString     := Subcta;       { Subcta proveedor }
               QDiarioCONTRAPARTIDA.AsString := Banco;        { Subcta banco     }
               QDiarioID_CONCEPTOS.AsString  := DmRef.QParametrosCTOPAGO.AsString;
            end;

            { Abreviatura de subcta banco }
            try QAbrev := DMRef.CreateQuery(['SELECT ABREVIATURA               ',
                                             'FROM   SUBCTAS                   ',
                                             'WHERE  SUBCUENTA = :prmSUBCUENTA ']);

                QAbrev.ParamByName('prmSUBCUENTA').AsString := Banco;
                QAbrev.Open;

                { Si la subcta tiene abreviatura, numerofactura = abreviatura }
                if not QAbrev.EOF and not QAbrev.FieldByName('ABREVIATURA').IsNull then begin
                   Factura := QAbrev.FieldByName('ABREVIATURA').AsString;
                end;
            finally Q.Free;
            end;

            QDiarioNUMEROFACTURA.AsString := Factura;

            QDiario.Post;    { FIN APUNTE 1 }
            QDiario.ApplyUpdates;

            { APUNTE 2 ------------------------------------------------------------}
            QDiario.Append;
            QDiarioAPUNTE.AsInteger          := FApunte;
            QDiarioASIENTO.AsInteger         := FAsiento;
            QDiarioTIPOASIENTO.AsInteger     := FTipoAsiento;
            QDiarioDEBEHABER.AsString        := 'H';
            QDiarioFECHA.AsDateTime          := Date;
            QDiarioIMPORTE.AsFloat           := Importe;
            QDiarioMONEDA.AsString           := FMoneda;
            QDiarioCUENTA_ANALITICA.AsString := CuentaAnalitica;
            QDiarioNUMEROFACTURA.AsString    := Factura;

            { Asiento de cobro }
            if FModoArranque = COBRO_FACTURA then begin
               QDiarioSUBCUENTA.AsString     := Subcta;       { Subcta cliente }
               QDiarioCONTRAPARTIDA.AsString := Banco;        { Subcta banco   }
               QDiarioID_CONCEPTOS.AsString  := DmRef.QParametrosCTOCOBRO.AsString;
            end
            else begin  { Asiento de pago }
               QDiarioSUBCUENTA.AsString     := Banco;        { Subcta banco     }
               QDiarioCONTRAPARTIDA.AsString := Subcta;       { Subcta proveedor }
               QDiarioID_CONCEPTOS.AsString  := DmRef.QParametrosCTOPAGO.AsString;
            end;
            QDiario.Post;    // FIN APUNTE 2
            QDiario.ApplyUpdates;
         end;  // if not Eof then
      finally
         Q.Free;
      end;

      FConceptoAnterior     := QDiarioID_CONCEPTOS.AsString;
      FComentarioAnterior   := '';
      FCtaAnaliticaAnterior := '';
      FFacturaAnterior      := Factura;
      FImporteAnterior      := Importe;

      BtnDouplicate.Visible := False;
   end   { else if (FModoArranque = COBRO_FACTURA) or (FModoArranque = PAGO_FACTURA) then }
   else begin { Modificación de asiento }
      FApunte := SelectNextApunte(QDiarioAPUNTE.AsInteger);
      if not(QDiario.State in dsEditModes) then begin
         QDiario.Edit;
      end;

      FTipoAsiento := QDiarioTIPOASIENTO.AsInteger;
      if not(QFiltro.State in dsEditModes) then begin
         QFiltro.Edit;
      end;
      
      QFiltroFECHA_ASIENTO.AsDateTime := QDiarioFECHA.AsDateTime;
      FMoneda               := QDiarioMONEDA.AsString;
      FConceptoAnterior     := QDiarioID_CONCEPTOS.AsString;
      FComentarioAnterior   := QDiarioCOMENTARIO.AsString;
      FFacturaAnterior      := QDiarioNUMEROFACTURA.AsString;
      FImporteAnterior      := QDiarioIMPORTE.AsFloat;
      FCtaAnaliticaAnterior := QDiarioCUENTA_ANALITICA.AsString;

      BtnDouplicate.Visible := True;

      { Solución tratar asientos de factura sin TIPOASIENTO }
      if (FModoArranque = MODIFICACION_INFORME) and QDiarioTIPOASIENTO.IsNull and
         Assigned(WFiltroLibroFactEmitidas) then begin
         if WFiltroLibroFactEmitidas.TipoListado = INF_FACTURAS_EMITIDAS then begin
            FTipoAsiento := ASIENTO_FACTURA_VENTA;
         end else
         if WFiltroLibroFactEmitidas.TipoListado = INF_FACTURAS_RECIBIDAS then begin
            FTipoAsiento := ASIENTO_FACTURA_COMPRA;
         end;
      end;
   end;

   LabelTitulo.Caption := 'Carga del Asiento Nº ' + FormatFloat('###,###,###', QDiarioASIENTO.AsInteger);

   EditFECHA_ASIENTO.SetFocus;
end;

procedure TWCargaAsiento.PrepararQueryApuntes;
begin
   // temporalmente desactivados QDiario.CachedUpdates := True;
   QDiario.Close;
   try QDiario.SelectSQL.Clear;
       QDiario.SelectSQL.Add('SELECT *                  ');
       QDiario.SelectSQL.Add('FROM   DIARIO             ');
       QDiario.SelectSQL.Add('WHERE  ASIENTO = :ASIENTO ');
       QDiario.SelectSQL.Add('ORDER  BY ASIENTO, APUNTE ');
       QDiario.Params.ByName('ASIENTO').AsInteger := FAsiento;
       QDiario.Prepare;
   finally QDiario.EnableControls;
           QDiario.Open;
   end;
end;

procedure TWCargaAsiento.PrepararQueryMovimientos;
begin
   QMovimientos.DisableControls;
   try QMovimientos.Close;
       QMovimientos.SelectSQL.Clear;
       QMovimientos.Transaction.Active := True;
       QMovimientos.SelectSQL.Add('SELECT * FROM DAME_APUNTES_SUBCUENTA(:prmSUBCUENTA, :prmCUANTOS)');
       QMovimientos.SelectSQL.Add('ORDER BY FECHA');
       QMovimientos.ParamByName('prmSUBCUENTA').AsString  := QDiarioSUBCUENTA.AsString;
       QMovimientos.ParamByName('prmCUANTOS'  ).AsInteger := 30;
       QMovimientos.Prepare;
   finally QMovimientos.EnableControls;
   end;
   QMovimientos.Open;
   QMovimientos.Last;
end;

procedure TWCargaAsiento.RecalculaDescuadre;
var SumaDebe  :Double;
    SumaHaber :Double;
    Marca     :TBookmark;
begin
   if QDiario.State in dsEditModes then begin
      QDiario.Post;
      QDiario.ApplyUpdates;
   end;

   Marca := QDiario.GetBookmark;
   QDiario.DisableControls;
   try
      QDiario.First;
      SumaDebe  := 0;
      SumaHaber := 0;
      while not QDiario.EOF do begin
         if QDiarioDEBEHABER.AsString = 'D' then SumaDebe  := SumaDebe + QDiarioIMPORTE.AsFloat
                                            else SumaHaber := SumaHaber + QDiarioIMPORTE.AsFloat;
         QDiario.Next;
      end;
   finally
      QDiario.GotoBookmark(Marca);
      QDiario.FreeBookmark(Marca);
      QDiario.EnableControls;
   end;

   Descuadre := SumaDebe - SumaHaber; 
end;

procedure TWCargaAsiento.FormShow(Sender: TObject);
begin
   TabAsiento.Show;

   PrepararQueryApuntes;
   PrepararQueryMovimientos;

   InicializarModoArranque;
end;

procedure TWCargaAsiento.fcIBCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TWCargaAsiento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_ESCAPE: begin
         Key := 0;
         BtnCancel.Click;
      end;
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWCargaAsiento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QDiario.State = dsBrowse then begin
      FormManager.Free;
      Action := caFree;
   end
   else BtnCancel.Click;
end;

procedure TWCargaAsiento.BtnAcceptClick(Sender: TObject);
var Q :TIBQuery;
begin
   Perform(WM_NextDlgCtl, 0, 0);
   if QDiario.State in dsEditModes then begin
      QDiario.Post;
      QDiario.ApplyUpdates;                                                              
   end;
   FMoneda := QDiarioMONEDA.AsString;

   QDiario.First;
   QDiario.DisableControls;
   Screen.Cursor := crHourGlass;
   try
      while not QDiario.EOF do begin
         if (Empty(QDiarioSUBCUENTA.AsString)) then begin
            DatabaseError('No se puede dejar la subcuenta en blanco.');
         end else
         if QDiarioID_CONCEPTOS.AsString = '' then begin
            DatabaseError('No se puede dejar el concepto en blanco.');
         end;
         QDiario.Next;
      end;
   finally QDiario.EnableControls;
      Screen.Cursor := crDefault;
   end;

   { Comprobar si el asiento está descuadrado }
   if (Descuadre <> 0) and
      (MessageDlg('El asiento está descuadrado.' + #13 +
                  '¿Desea guardar los datos?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then begin
      Exit;
   end;

   if not DMContaRef.FechaAsientoPerteneceEjercicio(QFiltroFECHA_ASIENTO.AsDateTime) then begin
      if MessageDlg('La fecha del asiento no pertenece al ejercicio actual.' + #13 +
                   '¿Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         Exit;
      end;
   end;

   Screen.Cursor := crHourGlass;
   QDiario.DisableControls;
   try QDiario.First;
       FApunte := 0;
       while not QDiario.EOF do begin
          Inc(FApunte);
          try QDiario.Edit;
              QDiarioAPUNTE.AsInteger      := FApunte;                         {Renumerar apuntes       }
              QDiarioFECHA.AsDateTime      := QFiltroFECHA_ASIENTO.AsDateTime; {Asignar fecha de asiento}
              QDiarioMONEDA.AsString       := FMoneda;                         {Asignar moneda          }
              QDiarioTIPOASIENTO.AsInteger := FTipoAsiento;                    {Tipo Asiento            }
          finally QDiario.Post;
                  QDiario.ApplyUpdates;
          end;
          QDiario.Next;
       end;
   finally
      Screen.Cursor := crDefault;
      QDiario.EnableControls;
   end;
   
   QDiario.ApplyUpdates;
   QDiario.Transaction.CommitRetaining; 

   if FModoArranque = INSERCION then begin
      FAsiento := DMContaRef.ObtenerNumeroAsiento;
      FApunte  := 0;

      LabelTitulo.Caption := 'Carga del Asiento Nº ' + FormatFloat('###,###,###', FAsiento);
      PrepararQueryApuntes;

      if not (QFiltro.State in dsEditModes) then QFiltro.Edit;
      QFiltroFECHA_ASIENTO.AsDateTime := Date;
      FMoneda               := 'E';
      FConceptoAnterior     := '';
      FComentarioAnterior   := '';
      FFacturaAnterior      := '';
      FImporteAnterior      :=  0;
      FCtaAnaliticaAnterior := '';

      RecalculaDescuadre;

      QDiario.Insert;

      FormManager.Mode := fmEdit;
      EditFECHA_ASIENTO.SetFocus;
   end else
   { Si es asiento de cobro / pago, puntear asientos }
   if (FModoArranque = COBRO_FACTURA) or (FModoArranque = PAGO_FACTURA) then begin
      Q := DMRef.CreateQuery(['UPDATE DIARIO SET PUNTEO = "S"                ',
                              'WHERE (    ASIENTO   = :ASIENTOFACTURA    OR  ',    { Punteo asiento factura    }
                              '       OR  ASIENTO   = :ASIENTOCOBROPAGO) AND ',    { Punteo asiento cobro/pago }
                              '       AND SUBCUENTA = :SUBCUENTA             ']);  { Cliente / Proveedor       }
      Q.ParamByName('SUBCUENTA'       ).AsString  := FSubcuentaCobroPago;
      Q.ParamByName('ASIENTOFACTURA'  ).AsInteger := FAsientoFactura;
      Q.ParamByName('ASIENTOCOBROPAGO').AsInteger := FAsiento;
      try Q.ExecSQL;
          {=> Q.Transaction.CommitRetaining;}{ No parece un código necesario}
      finally Q.Free;
      end;
      MessageDlg('Se ha generado el asiento ' + FormatFloat('###,###,###', QDiarioASIENTO.AsInteger) + #13 +
                 'Si desea ver las modificaciones realizadas, deberá volver a generar el informe.', mtInformation, [mbOK], 0);
      Close;
   end else
   if FModoArranque = MODIFICACION_INFORME then begin
      MessageDlg('Se ha modificado el asiento ' + FormatFloat('###,###,###', QDiarioASIENTO.AsInteger) + #13 +
                 'Si desea ver las modificaciones realizadas, deberá volver a generar el informe.', mtInformation, [mbOK], 0);
      Close;
   end
   else begin
      Close;
   end;
end;

procedure TWCargaAsiento.BtnCancelClick(Sender: TObject);
var Cancelar :Boolean;
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if (FModoArranque = INSERCION) then begin
      Cancelar := MessageDlg('¿Desea abandonar la inserción de asientos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
   end
   else begin
      Cancelar := MessageDlg('¿Quiere anular las modificaciones realizadas a este asiento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
   end;

   if cancelar then begin
      try
         if QDiario.State in dsEditModes then begin
            QDiario.Cancel;
         end;

         if not QDiario.IsEmpty then begin
            QDiario.CancelUpdates;
         end;

         // Actualizar el valor del generador
         if (FModoArranque = INSERCION    ) or (FModoArranque = DUPLICAR) or
            (FModoArranque = COBRO_FACTURA) or (FModoArranque = PAGO_FACTURA) then begin
            DmRef.EjecutarSQL('SET GENERATOR ASIENTO TO ' + IntToStr(FAsiento - 1));
         end;

      except
         DatabaseError('No se ha podido cancelar la operación.');
      end;
      Close;
   end;
end;

procedure TWCargaAsiento.BtnDeleteClick(Sender: TObject);
begin
   if not QDiario.IsEmpty then begin
      if MessageDlg('¿Desea borrar este apunte?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         try QDiario.Delete;
             RecalculaDescuadre;
         except DatabaseError('No se ha podido borrar el apunte seleccionado.');
         end;
      end;
   end;

   PageControl.Update;
end;

procedure TWCargaAsiento.QDiarioCalcFields(DataSet: TDataSet);
var DescConcepto :string;
begin
   DescConcepto := '';
   if (QDiarioID_CONCEPTOS.AsString <> '') then begin
      QConceptos.Close;
      QConceptos.ParamByName('ID_CONCEPTOS').AsString := QDiarioID_CONCEPTOS.AsString;
      QConceptos.ExecQuery;
      DescConcepto := Trim(QConceptos.FieldByName('DESCRIPCION').AsString);
   end;
   { Descripción del apunte }
   QDiarioDESCAPUNTE.AsString := FModel.GetDescripcionApunte(DescConcepto,
                                                             QDiarioNUMEROFACTURA.AsString,
                                                             QDiarioSERIE.AsString,
                                                             QDiarioEJERCICIO.AsInteger,
                                                             QDiarioCOMENTARIO.AsString);{,
                                                             QSubCuentasABREVIATURA.AsString);}
end;

procedure TWCargaAsiento.BtnReportClick(Sender: TObject);
var LMayorModel :TFiltroListadosMayorModel;
begin
   {  Primero vaciar el fichero }
   DMContaRef.QInformesConta.EmptyDataset;

   Perform(wm_NextDlgCtl, 0, 0);

   PonerTipoConta(QFiltroTIPO_CONCEPTO.AsString);
   Config.FormatoOficial := False;
   Config.ReportCurrency := 'E';

   LMayorModel := TFiltroListadosMayorModel.Create(DMRef.BDContab);
   try
      LMayorModel.LanzarInfMayor(True                           ,
                                 False                          ,
                                 QFiltroSUBCUENTA.AsString      ,
                                 QDiarioSUBCUENTA.AsString      ,
                                 ''                             ,
                                 ''                             ,
                                 QFiltroFECHA_DESDE.AsDateTime  ,
                                 QFiltroFECHA_HASTA.AsDateTime  ,
                                 Date                           ,   // Fecha de Impresion
                                 QFiltroTIPO_CONCEPTO.AsString  ,
                                 QFiltroCONCEPTO.AsString       ,
                                 QFiltroCUENTA.AsString         ,
                                 QFiltroID_DELEGACION.AsString  ,
                                 QFiltroID_DEPARTAMENTO.AsString,
                                 QFiltroID_SECCION.AsString     ,
                                 QFiltroID_PROYECTO.AsString    ,
                                 ''                             ,
                                 ''                             ,
                                 False                          ,  // Formato Oficial
                                 False                          ); // Solo Asientos sin puntear

   finally
      LMayorModel.Free;
   end;
   TabAsiento.Show;
   PageControl.Update;
end;

procedure TWCargaAsiento.OnShowWEditApunte(Sender: TObject);
begin
   FEditApunte.ComboBoxCD_SUBCUENTA.SetFocus;
end;

procedure TWCargaAsiento.BtnNewClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   Inc(FApunte);

   FEditApunte := TWEditApunte.Create(nil);
   try
      FEditApunte.Model  := FModel;
      FEditApunte.OnShow := OnShowWEditApunte;
      FEditApunte.QFichero.Append;
      FEditApunte.QFicheroAPUNTE.AsInteger := FApunte;
      FEditApunte.QFicheroTIPOASIENTO.AsInteger := FTipoAsiento;
      FEditApunte.QFicheroFECHA.AsDateTime      := QFiltroFECHA_ASIENTO.AsDateTime;
      FEditApunte.QFicheroMONEDA.AsString       := FMoneda;

      { Sólo en el segundo apunte }
      if FApunte = 2 then begin
         FEditApunte.QFicheroSUBCUENTA.AsString     := FContrapartidaAnterior;
         FEditApunte.QFicheroCONTRAPARTIDA.AsString := FSubcuentaAnterior;
      end;

      { Si el descuadre es negativo o nulo, generar apunte DEBE}
      if Descuadre < 0 then begin
         FEditApunte.QFicheroDEBEHABER.AsString := 'D';
         FEditApunte.QFicheroIMPORTE.AsFloat    := - Descuadre;
      end else { Si el descuadre es positivo, generar apunte HABER }
      if Descuadre > 0 then begin
         FEditApunte.QFicheroDEBEHABER.AsString := 'H';
         FEditApunte.QFicheroIMPORTE.AsFloat    := Descuadre;
      end
      else begin
         FEditApunte.QFicheroDEBEHABER.AsString := 'D';
         FConceptoAnterior := '';
         FFacturaAnterior  := '';
      end;

      FEditApunte.QFicheroID_CONCEPTOS.AsString     := FConceptoAnterior;
      FEditApunte.QFicheroCOMENTARIO.AsString       := FComentarioAnterior;
      FEditApunte.QFicheroNUMEROFACTURA.AsString    := FFacturaAnterior;
      FEditApunte.QFicheroCUENTA_ANALITICA.AsString := FCtaAnaliticaAnterior;

      FEditApunte.TipoAsiento       := FTipoAsiento;
      FEditApunte.SubCuentaAlEntrar := '';
      if FEditApunte.ShowModal = mrOK then begin
         QDiario.Append;
         QDiarioAPUNTE.AsInteger          := FEditApunte.QFicheroAPUNTE.AsInteger;
         QDiarioFECHA.AsDateTime          := FEditApunte.QFicheroFECHA.AsDateTime;
         QDiarioSUBCUENTA.AsString        := FEditApunte.QFicheroSUBCUENTA.AsString;
         QDiarioCONTRAPARTIDA.AsString    := FEditApunte.QFicheroCONTRAPARTIDA.AsString;
         QDiarioID_CONCEPTOS.AsString     := FEditApunte.QFicheroID_CONCEPTOS.AsString;
         QDiarioDEBEHABER.AsString        := FEditApunte.QFicheroDEBEHABER.AsString;
         QDiarioTIPOASIENTO.AsInteger     := FEditApunte.QFicheroTIPOASIENTO.AsInteger;
         QDiarioIMPORTE.AsFloat           := FEditApunte.QFicheroIMPORTE.AsFloat;
         QDiarioNUMEROFACTURA.AsString    := FEditApunte.QFicheroNUMEROFACTURA.AsString;
         QDiarioCOMENTARIO.AsString       := FEditApunte.QFicheroCOMENTARIO.AsString;
         QDiarioCUENTA_ANALITICA.AsString := FEditApunte.QFicheroCUENTA_ANALITICA.AsString;
         QDiarioIVA.AsFloat               := FEditApunte.QFicheroIVA.AsFloat;
         QDiarioCUOTAIVA.AsFloat          := FEditApunte.QFicheroCUOTAIVA.AsFloat;
         QDiarioRECARGO.AsFloat           := FEditApunte.QFicheroRECARGO.AsFloat;
         QDiarioCUOTARECARGO.AsFloat      := FEditApunte.QFicheroCUOTARECARGO.AsFloat;
         QDiarioMONEDA.AsString           := FEditApunte.QFicheroMONEDA.AsString;
         QDiarioBASEIMPONIBLE.AsFloat     := FEditApunte.QFicheroBASEIMPONIBLE.AsFloat;
         QDiario.Post;
         QDiario.ApplyUpdates;

         {after post }
         FConceptoAnterior      := QDiarioID_CONCEPTOS.AsString;
         FComentarioAnterior    := QDiarioCOMENTARIO.AsString;
         FFacturaAnterior       := QDiarioNUMEROFACTURA.AsString;
         FImporteAnterior       := QDiarioIMPORTE.AsFloat;
         FSubcuentaAnterior     := QDiarioSUBCUENTA.AsString;
         FContrapartidaAnterior := QDiarioCONTRAPARTIDA.AsString;
         FCtaAnaliticaAnterior  := QDiarioCUENTA_ANALITICA.AsString;
         FTipoAsiento           := QDiarioTipoAsiento.AsInteger;
         {--------------}

         QDiario.Refresh;
         VerificarTodasLasContrapartidas;
         ActualizarComentarioAsiento(QDiarioCOMENTARIO.AsString);
         RecalculaDescuadre;
      end;
   finally
      FreeAndNil(FEditApunte);
   end;
   PageControl.Update;
end;

procedure TWCargaAsiento.BtnModifyApunteClick(Sender: TObject);
var TipoSubcuenta :string;
begin
   if QDiario.IsEmpty then Exit;

   Perform(wm_NextDlgCtl, 0, 0);

   FEditApunte := TWEditApunte.Create(nil);
   try
      FSubcuentaAlEntrar     := QDiarioSUBCUENTA.AsString;
      FContrapartidaAlEntrar := QDiarioCONTRAPARTIDA.AsString;

      { Si es subcuenta de IVA de factura, el importe es no modificable }
      if not QDiario.EOF and ((FTipoAsiento = CARGA_FACTURAS_COMPRA) or
                              (FTipoAsiento = CARGA_FACTURAS_VENTA)) and (QDiarioSUBCUENTA.AsString <> '') then begin
         TipoSubcuenta := DMContaRef.ObtenerTipoSubcuenta(QDiarioSUBCUENTA.AsString);
         if (TipoSubcuenta = 'R') or (TipoSubcuenta = 'S') then begin
            FEditApunte.EditImporte.ReadOnly := True;
            FEditApunte.EditImporte.TabStop  := False;
            FEditApunte.EditImporte.Ctl3D    := False;
            FEditApunte.EditImporte.Enabled  := False;
         end;

         FEditApunte.BtnDetalleIVA.Visible := (FTipoAsiento = ASIENTO_FACTURA_COMPRA) or (FTipoAsiento = ASIENTO_FACTURA_VENTA);
         if FEditApunte.BtnDetalleIVA.Visible then begin
            TipoSubcuenta := DMContaRef.ObtenerTipoSubcuenta(QDiarioSUBCUENTA.AsString);
            FEditApunte.BtnDetalleIVA.Visible := (TipoSubcuenta = 'R') or (TipoSubcuenta = 'S');
         end;
      end;

      FEditApunte.Model  := FModel;
      FEditApunte.OnShow := OnShowWEditApunte;
      FEditApunte.QFichero.Append;
      if not QDiarioAPUNTE.IsNull           then FEditApunte.QFicheroAPUNTE.AsInteger          := QDiarioAPUNTE.AsInteger         ;
      if not QDiarioFECHA.IsNull            then FEditApunte.QFicheroFECHA.AsDateTime          := QDiarioFECHA.AsDateTime         ;
      if not QDiarioSUBCUENTA.IsNull        then FEditApunte.QFicheroSUBCUENTA.AsString        := QDiarioSUBCUENTA.AsString       ;
      if not QDiarioCONTRAPARTIDA.IsNull    then FEditApunte.QFicheroCONTRAPARTIDA.AsString    := QDiarioCONTRAPARTIDA.AsString   ;
      if not QDiarioID_CONCEPTOS.IsNull     then FEditApunte.QFicheroID_CONCEPTOS.AsString     := QDiarioID_CONCEPTOS.AsString    ;
      if not QDiarioDEBEHABER.IsNull        then FEditApunte.QFicheroDEBEHABER.AsString        := QDiarioDEBEHABER.AsString       ;
      if not QDiarioTIPOASIENTO.IsNull      then FEditApunte.QFicheroTIPOASIENTO.AsInteger     := QDiarioTIPOASIENTO.AsInteger    ;
      if not QDiarioIMPORTE.IsNull          then FEditApunte.QFicheroIMPORTE.AsString          := QDiarioIMPORTE.AsString         ;
      if not QDiarioNUMEROFACTURA.IsNull    then FEditApunte.QFicheroNUMEROFACTURA.AsString    := QDiarioNUMEROFACTURA.AsString   ;
      if not QDiarioCOMENTARIO.IsNull       then FEditApunte.QFicheroCOMENTARIO.AsString       := QDiarioCOMENTARIO.AsString      ;
      if not QDiarioCUENTA_ANALITICA.IsNull then FEditApunte.QFicheroCUENTA_ANALITICA.AsString := QDiarioCUENTA_ANALITICA.AsString;
      if not QDiarioIVA.IsNull              then FEditApunte.QFicheroIVA.AsFloat               := QDiarioIVA.AsFloat              ;
      if not QDiarioCUOTAIVA.IsNull         then FEditApunte.QFicheroCUOTAIVA.AsFloat          := QDiarioCUOTAIVA.AsFloat         ;
      if not QDiarioRECARGO.IsNull          then FEditApunte.QFicheroRECARGO.AsFloat           := QDiarioRECARGO.AsFloat          ;
      if not QDiarioCUOTARECARGO.IsNull     then FEditApunte.QFicheroRECARGO.AsFloat           := QDiarioCUOTARECARGO.AsFloat     ;
      if not QDiarioMONEDA.IsNull           then FEditApunte.QFicheroMONEDA.AsString           := QDiarioMONEDA.AsString          ;
      if not QDiarioBASEIMPONIBLE.IsNull    then FEditApunte.QFicheroBASEIMPONIBLE.AsFloat     := QDiarioBASEIMPONIBLE.AsFloat    ;
      FEditApunte.TipoAsiento       := FTipoAsiento;
      FEditApunte.SubCuentaAlEntrar := FSubCuentaAlEntrar;
      if FEditApunte.ShowModal = mrOK then begin
         QDiario.Edit;
         QDiarioAPUNTE.AsInteger          := FEditApunte.QFicheroAPUNTE.AsInteger;
         QDiarioFECHA.AsDateTime          := FEditApunte.QFicheroFECHA.AsDateTime;
         QDiarioSUBCUENTA.AsString        := FEditApunte.QFicheroSUBCUENTA.AsString;
         QDiarioCONTRAPARTIDA.AsString    := FEditApunte.QFicheroCONTRAPARTIDA.AsString;
         QDiarioID_CONCEPTOS.AsString     := FEditApunte.QFicheroID_CONCEPTOS.AsString;
         QDiarioDEBEHABER.AsString        := FEditApunte.QFicheroDEBEHABER.AsString;
         QDiarioTIPOASIENTO.AsInteger     := FEditApunte.QFicheroTIPOASIENTO.AsInteger;
         QDiarioIMPORTE.AsFloat           := FEditApunte.QFicheroIMPORTE.AsFloat;
         QDiarioNUMEROFACTURA.AsString    := FEditApunte.QFicheroNUMEROFACTURA.AsString;
         QDiarioCOMENTARIO.AsString       := FEditApunte.QFicheroCOMENTARIO.AsString;
         QDiarioCUENTA_ANALITICA.AsString := FEditApunte.QFicheroCUENTA_ANALITICA.AsString;
         QDiarioIVA.AsFloat               := FEditApunte.QFicheroIVA.AsFloat;
         QDiarioCUOTAIVA.AsFloat          := FEditApunte.QFicheroCUOTAIVA.AsFloat;
         QDiarioRECARGO.AsFloat           := FEditApunte.QFicheroRECARGO.AsFloat;
         QDiarioCUOTARECARGO.AsFloat      := FEditApunte.QFicheroCUOTARECARGO.AsFloat;
         QDiarioMONEDA.AsString           := FEditApunte.QFicheroMONEDA.AsString;
         QDiarioBASEIMPONIBLE.AsFloat     := FEditApunte.QFicheroBASEIMPONIBLE.AsFloat;
         QDiario.Post;
         QDiario.ApplyUpdates;

         {after post }
         FConceptoAnterior      := QDiarioID_CONCEPTOS.AsString;
         FComentarioAnterior    := QDiarioCOMENTARIO.AsString;
         FFacturaAnterior       := QDiarioNUMEROFACTURA.AsString;
         FImporteAnterior       := QDiarioIMPORTE.AsFloat;
         FSubcuentaAnterior     := QDiarioSUBCUENTA.AsString;
         FContrapartidaAnterior := QDiarioCONTRAPARTIDA.AsString;
         FCtaAnaliticaAnterior  := QDiarioCUENTA_ANALITICA.AsString;
         FTipoAsiento           := QDiarioTipoAsiento.AsInteger;
         {--------------}

         QDiario.Refresh;

         VerificarTodasLasContrapartidas;
         ActualizarComentarioAsiento(QDiarioCOMENTARIO.AsString);
         RecalculaDescuadre;
      end;
   finally
      FreeAndNil(FEditApunte);
   end;
end;

procedure TWCargaAsiento.QMovimientosCalcFields(DataSet: TDataSet);
begin
   QMovimientosDESCCOMENTARIO.AsString := DMContaRef.GetDescripcionApunte(QMovimientosDESCCONCEPTO.AsString ,
                                                                          QMovimientosNUMEROFACTURA.AsString,
                                                                          QMovimientosSERIE.AsString        ,
                                                                          QMovimientosEJERCICIO.AsInteger   ,
                                                                          QMovimientosCOMENTARIO.AsString   , '');
end;

procedure TWCargaAsiento.BtnNewSubAccountClick(Sender: TObject);
begin
   WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
   try 
      WNuevaSubcuenta.ShowModal;
      if WNuevaSubcuenta.FNuevaSubcuenta <> '' then begin
         FModel.RefreshAccounts;
         if not (QDiario.State in dsEditModes) then QDiario.Edit;
         QDiarioSUBCUENTA.AsString := WNuevaSubcuenta.FNuevaSubcuenta;
         if WNuevaSubcuenta.FContrapartidaSubcta <> '' then begin
            QDiarioCONTRAPARTIDA.AsString := WNuevaSubcuenta.FContrapartidaSubcta;
         end;
      end;
   finally
      FreeAndNil(WNuevaSubcuenta);
   end;
   PageControl.Update;
end;

procedure TWCargaAsiento.BtnReestablishClick(Sender: TObject);
begin
   if MessageDlg('¿Desea restablecer las modificaciones realizadas a este asiento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      Perform(wm_NextDlgCtl, 0, 0);

      if QDiario.State in dsEditModes then begin
         QDiario.Post;
         QDiario.ApplyUpdates;
      end;

      PrepararQueryApuntes;  
      PrepararQueryMovimientos;

      if (FModoArranque = INSERCION) or (FModoArranque = COBRO_FACTURA) or (FModoArranque = PAGO_FACTURA) then begin
         FApunte := 0;
         if QFiltro.State in dsEditModes then QFiltro.Edit;
         QFiltroFECHA_ASIENTO.AsDateTime := Date;
         FMoneda               := 'E';
         FConceptoAnterior     :=  '';
         FComentarioAnterior   :=  '';
         FFacturaAnterior      :=  '';
         FImporteAnterior      :=   0;
         FCtaAnaliticaAnterior :=  '';

         QDiario.Insert;
      end
      else begin
         FApunte := QDiario.RecordCount;
         QDiario.Edit;
         if not (QFiltro.State in dsEditModes) then QFiltro.Edit;
         QFiltroFECHA_ASIENTO.AsDateTime := QDiarioFECHA.AsDateTime;
         FMoneda               := QDiarioMONEDA.AsString;
         FConceptoAnterior     := QDiarioID_CONCEPTOS.AsString;
         FComentarioAnterior   := QDiarioCOMENTARIO.AsString;
         FFacturaAnterior      := QDiarioNUMEROFACTURA.AsString;
         FImporteAnterior      := QDiarioIMPORTE.AsFloat;
         FCtaAnaliticaAnterior := QDiarioCUENTA_ANALITICA.AsString;
      end;

      LabelTitulo.Caption := 'Carga del Asiento Nº ' + FormatFloat('###,###,###', QDiarioASIENTO.AsInteger);

      TabAsiento.Show;
   end;
end;

procedure TWCargaAsiento.BtnDouplicateClick(Sender: TObject);
var Q :TIBQuery;
begin
   if (not QDiario.IsEmpty) and (MessageDlg('¿Desea duplicar el asiento ' + FormatFloat('###,###,###', QDiarioASIENTO.AsInteger) + ' ?',
           mtConfirmation, [mbYes, mbNo], 0) = mrYes) then begin
      Perform(wm_NextDlgCtl, 0, 0);
      Q := DMRef.CreateQuery(['SELECT TIPOASIENTO     ,     ',
                              '       ASIENTO         ,     ',
                              '       APUNTE          ,     ',
                              '       BASEIMPONIBLE   ,     ',
                              '       COMENTARIO      ,     ',
                              '       CONTRAPARTIDA   ,     ',
                              '       CUENTA_ANALITICA,     ',
                              '       CUOTAIVA        ,     ',
                              '       CUOTARECARGO    ,     ',
                              '       DEBEHABER       ,     ',
                              '       FECHA           ,     ',
                              '       IMPORTE         ,     ',
                              '       IVA             ,     ',
                              '       MONEDA          ,     ',
                              '       NIF             ,     ',
                              '       NUMEROFACTURA   ,     ',
                              '       RECARGO         ,     ',
                              '       ID_CONCEPTOS    ,     ',
                              '       SUBCUENTA             ',
                              'FROM   DIARIO                ',
                              'WHERE  ASIENTO = :prmASIENTO ',
                              'ORDER BY ASIENTO, APUNTE     ']);
      Q.ParamByName('prmASIENTO').AsInteger := FAsiento;
      try Q.Open;
          FModoArranque := DUPLICAR;
          FAsiento      := DMContaRef.ObtenerNumeroAsiento;
          EditFECHA_ASIENTO.SetFocus;
          LabelTitulo.Caption := 'Carga del Asiento Nº ' + FormatFloat('###,###,###', FAsiento);

          QDiario.Close;
          QDiario.ParamByName('ASIENTO').AsInteger := FAsiento;
          QDiario.Open;

          while not Q.EOF do begin
             QDiario.Insert;
             QDiarioTIPOASIENTO.AsInteger     := Q.FieldByName('TIPOASIENTO'     ).AsInteger;
             QDiarioASIENTO.AsInteger         := FAsiento;
             QDiarioAPUNTE.AsInteger          := Q.FieldByName('APUNTE'          ).AsInteger;
             QDiarioBASEIMPONIBLE.AsFloat     := Q.FieldByName('BASEIMPONIBLE'   ).AsFloat;
             QDiarioCOMENTARIO.AsString       := Q.FieldByName('COMENTARIO'      ).AsString;
             QDiarioCONTRAPARTIDA.AsString    := Q.FieldByName('CONTRAPARTIDA'   ).AsString;
             QDiarioCUENTA_ANALITICA.AsString := Q.FieldByName('CUENTA_ANALITICA').AsString;
             QDiarioCUOTAIVA.AsFloat          := Q.FieldByName('CUOTAIVA'        ).AsFloat;
             QDiarioCUOTARECARGO.AsFloat      := Q.FieldByName('CUOTARECARGO'    ).AsFloat;
             QDiarioDEBEHABER.AsString        := Q.FieldByName('DEBEHABER'       ).AsString;
             QDiarioFECHA.AsDateTime          := Q.FieldByName('FECHA'           ).AsDateTime;
             QDiarioID_CONCEPTOS.AsString     := Q.FieldByName('ID_CONCEPTOS'    ).AsString;
             QDiarioIMPORTE.AsFloat           := Q.FieldByName('IMPORTE'         ).AsFloat;
             QDiarioIVA.AsFloat               := Q.FieldByName('IVA'             ).AsFloat;
             QDiarioMONEDA.AsString           := Q.FieldByName('MONEDA'          ).AsString;
             QDiarioNIF.AsString              := Q.FieldByName('NIF'             ).AsString;
             QDiarioNUMEROFACTURA.AsString    := Q.FieldByName('NUMEROFACTURA'   ).AsString;
             QDiarioRECARGO.AsFloat           := Q.FieldByName('RECARGO'         ).AsFloat;
             QDiarioSUBCUENTA.AsString        := Q.FieldByName('SUBCUENTA'       ).AsString;
             QDiario.Post;
             QDiario.ApplyUpdates;

             FApunte := Q.FieldByName('APUNTE').AsInteger;
             if QFiltro.State in dsEditModes then QFiltro.Edit; 
             QFiltroFECHA_ASIENTO.AsDateTime := Q.FieldByName('FECHA').AsDateTime;

             FMoneda               := Q.FieldByName('MONEDA'          ).AsString;
             FConceptoAnterior     := Q.FieldByName('ID_CONCEPTOS'    ).AsString;
             FFacturaAnterior      := Q.FieldByName('NUMEROFACTURA'   ).AsString;
             FComentarioAnterior   := Q.FieldByName('COMENTARIO'      ).AsString;
             FImporteAnterior      := Q.FieldByName('IMPORTE'         ).AsFloat;
             FCtaAnaliticaAnterior := Q.FieldByName('CUENTA_ANALITICA').AsString;

             Q.Next;
          end;
      finally Q.Free;
      end;

      RecalculaDescuadre;
   end;
end;

procedure TWCargaAsiento.GridMovimientosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if QMovimientosASIENTO.AsInteger <> FAsientoAnterior then begin
      FAsientoAnterior := QMovimientosASIENTO.AsInteger;
      if FColorActual = $00EDFBFC then FColorActual := $00D9D1C0
                                  else FColorActual := $00EDFBFC;
   end;

   if State * [gdFixed, gdSelected] = [] then begin
      DataGrid.Canvas.Brush.Color := FColorActual;
      DataGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TWCargaAsiento.GridMovimientosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   FAsientoAnterior := QMovimientosASIENTO.AsInteger;
   GridMovimientos.Refresh;
end;


procedure TWCargaAsiento.PageControlChange(Sender: TObject);
begin
   if PageControl.ActivePage = TabMovimientos then begin
      PrepararQueryMovimientos;
   end else
   if PageControl.ActivePage = TabMayor then begin
      if not (QFiltro.State in dsEditModes) then begin
         QFiltro.Edit;
      end;
      QFiltroSUBCUENTA.AsString := QDiarioSUBCUENTA.AsString;
   end;
end;

end.
