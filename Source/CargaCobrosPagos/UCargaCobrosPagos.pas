unit UCargaCobrosPagos;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics, Grids,
     IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils,
     WinProcs, WinTypes, UCargaCobrosPagosModel, ComCtrls, DBGrids;

type
  TWCargaCobrosPagos = class(TForm)
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
    SCobrosPagos: TDataSource;
    QCobrosPagos: TClientDataSet;
    QCobrosPagosFECHA: TDateTimeField;
    QCobrosPagosSUBCUENTA: TStringField;
    QCobrosPagosSUBCUENTADESC: TStringField;
    QCobrosPagosIMPORTE: TFloatField;
    QCobrosPagosDESCCONCEPTO: TStringField;
    QCobrosPagosID_DIARIO: TIntegerField;
    QCobrosPagosID_CARTERAEFECTOS: TIntegerField;
    QFichero: TClientDataSet;
    QFicheroSUBCUENTABANCO: TStringField;
    SFichero: TDataSource;
    QDiario: TIBSQL;
    QCobrosPagosNUMEROFACTURA: TStringField;
    QCobrosPagosCUENTA_ANALITICA: TStringField;
    QCobrosPagosSITUACION: TStringField;
    QCobrosPagosASIENTO_GENERADO: TIntegerField;
    QCobrosPagosCOMENTARIO: TStringField;
    QCobrosPagosDEBEHABER: TStringField;
    QMovimientosABREVIATURA: TIBStringField;
    QCobrosPagosIMPORTE_PUNTEO: TFloatField;
    QMovimientosTIPOASIENTO: TIntegerField;
    QMovimientosASIENTONOMINA: TIntegerField;
    QMovimientosEJERCICIO: TIntegerField;
    QMovimientosSERIE: TIBStringField;
    Panel2: TPanel;
    Panel1: TPanel;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnEdtSubcuenta: TButton;
    BtnEdtGuardar: TButton;
    PageControl1: TPageControl;
    TabSheetAsientos: TTabSheet;
    TabSheetLastMoves: TTabSheet;
    GroupBox1: TGroupBox;
    LbSubcuenta: TLabel;
    LbCtoSubcuenta: TLabel;
    eConceptoDfto: TDBLookupComboBox;
    eSubcuentaBanco: TDBLookupComboBox;
    eSubcuentaBancoDesc: TDBLookupComboBox;
    eConceptoDftoDesc: TDBLookupComboBox;
    oGenerarUnicoAsiento: TCheckBox;
    gTotalImporte: TGroupBox;
    LabelTotalImporte: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    lSubcuenta: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    eDescSubcuentaCBDESCSUBCUENTA: TDBLookupComboBox;
    EditCOMENTARIO: TDBEdit;
    eConceptoAsientoDesc: TDBLookupComboBox;
    EditIMPORTE: TDBEdit;
    eSubcuentaCBSUBCUENTA: TDBLookupComboBox;
    eConceptoAsiento: TDBLookupComboBox;
    eAnaliticaNom: TDBLookupComboBox;
    eAnalitica: TDBLookupComboBox;
    EditFACTURA: TDBEdit;
    EditDEBEHABER: TDBEdit;
    Datos: TGroupBox;
    Panel3: TPanel;
    Label5: TLabel;
    DBText1: TDBText;
    BtnEdtModificar: TButton;
    BtnEdtBorrarMovim: TButton;
    BtnEdtMayor: TButton;
    Panel4: TPanel;
    PermAniadir: TButton;
    PermBorrar: TButton;
    PermBqdaDiario: TButton;
    PermBqdaCartera: TButton;
    PermMayor: TButton;
    DBGridMoves: TDBGrid;
    EditFECHA: TDBEdit;
    DBGridMain: TDBGrid;
    QFicheroID_CONCEPTOS_DFTO: TStringField;
    QCobrosPagosID_CONCEPTOS: TStringField;
    procedure BtnEdtGuardarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QMovimientosCalcFields(DataSet: TDataSet);
    procedure BtnEdtBorrarMovimClick(Sender: TObject);
    procedure BtnEdtSubcuentaClick(Sender: TObject);
    procedure PermBorrarClick(Sender: TObject);
    procedure PermAniadirClick(Sender: TObject);
    procedure QCobrosPagosNewRecord(DataSet: TDataSet);
    procedure PermBqdaDiarioClick(Sender: TObject);
    procedure PermBqdaCarteraClick(Sender: TObject);
    procedure BtnEdtModificarClick(Sender: TObject);
    procedure QCobrosPagosCalcFields(DataSet: TDataSet);
    procedure BtnEdtMayorClick(Sender: TObject);
    procedure PermMayorClick(Sender: TObject);
    procedure QCobrosPagosAfterPost(DataSet: TDataSet);
    procedure oGenerarUnicoAsientoClick(Sender: TObject);
    procedure EditDEBEHABERExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridMovesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridMovesDblClick(Sender: TObject);
    procedure DBGridMovesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure eSubcuentaCBSUBCUENTACloseUp(Sender: TObject);
  private
    FModel           :TCargaCobrosPagosModel;
    FColorActual     :TColor;
    FAsientoAnterior :Integer;

    procedure ActualizarCarteraEfectos(ID_Cartera: Integer);
    procedure ComprobarAsientosCobroPago(var OK: Boolean);
    procedure GenerarAsientosCobroPago;
    procedure PrepararQueryMovimientos;
    procedure PuntearApunte(ID_Diario: Integer);
    procedure CalcularTotalImporte;
  public
    FID_Diario, FID_Cartera: Integer;
    FSituacion: String;
  end;

var WCargaCobrosPagos: TWCargaCobrosPagos;

implementation

uses DM, DMConta, DMControl, Tools, Globales, UFiltroListadosMayorModel, UCargaAsiento, Math,
     UCargaRapidaNominas, UCarteraEfectos, UDiario, UFiltroMayorSubcuenta, UNuevaSubcuenta;

{$R *.DFM}

procedure TWCargaCobrosPagos.FormCreate(Sender: TObject);
var Pos1 :Integer;
begin
   FModel := TCargaCobrosPagosModel.Create(DMRef.BDContab);
   Caption := '';

   { Crear fichero }
   QFichero.CreateDataset;
   QFichero.Open;
   QFichero.Append;

   QCobrosPagos.CreateDataset;
   QCobrosPagos.Open;
   {---------------}

   {Preperar Query Diario}
   QDiario.Close;
   QDiario.Database := DMRef.BDContab;
   QDiario.SQL.Clear;
   QDiario.SQL.Add('INSERT INTO DIARIO                                           ');
   QDiario.SQL.Add('(ASIENTO, APUNTE, CONTRAPARTIDA, DEBEHABER, FECHA,           ');
   QDiario.SQL.Add(' IMPORTE, MONEDA, NUMEROFACTURA, SUBCUENTA, PUNTEO,          ');
   QDiario.SQL.Add(' ID_CONCEPTOS, CUENTA_ANALITICA, COMENTARIO)                 ');
   QDiario.SQL.Add('VALUES                                                       ');
   QDiario.SQL.Add('(:ASIENTO, :APUNTE, :CONTRAPARTIDA, :DEBEHABER, :FECHA,      ');
   QDiario.SQL.Add(' :IMPORTE, :MONEDA, :NUMEROFACTURA, :SUBCUENTA, :PUNTEO,     ');
   QDiario.SQL.Add(' :ID_CONCEPTOS, :CUENTA_ANALITICA, :COMENTARIO)              ');
   {---------------------}


   ActivateTransactions(Self, DMRef.BDContab);

   // Búsqueda subcuenta
   if DMRef.QParametrosBUSQUEDA_SUBCTAS.AsString = 'D' then  begin
      Pos1 := eSubcuentaBanco.Left;
      eSubcuentaBancoDesc.Left := Pos1;
      eSubcuentaBanco.Left := eSubcuentaBanco.Left + eSubcuentaBancoDesc.Width;
      eSubcuentaBanco.TabStop := False;

      Pos1 := eSubcuentaCBSUBCUENTA.Left;
      eDescSubcuentaCBDESCSUBCUENTA.Left := Pos1;
      eSubcuentaCBSUBCUENTA.Left := eSubcuentaCBSUBCUENTA.Left + eDescSubcuentaCBDESCSUBCUENTA.Width;
      eSubcuentaCBSUBCUENTA.TabStop := False;
   end;
end;

procedure TWCargaCobrosPagos.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWCargaCobrosPagos.FormShow(Sender: TObject);
begin
   PrepararQueryMovimientos;

   // Configurar grid
   QCobrosPagosIMPORTE.DisplayFormat := '###,###,##0.00';

   TabSheetAsientos.Show;

   if DMRef.QParametrosBUSQUEDA_SUBCTAS.AsString = 'D' then begin
      eSubcuentaBancoDesc.SetFocus;
   end
   else begin
      eSubcuentaBanco.SetFocus;
   end;
end;

procedure TWCargaCobrosPagos.ActualizarCarteraEfectos(ID_Cartera: Integer);
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('UPDATE CARTERAEFECTOS SET');
      Q.SQL.Add('   FASIENTO = :FASIENTO,');
      Q.SQL.Add('   SUBCTABANCO = :SUBCTABANCO,');
      Q.SQL.Add('   SITUACION = :SITUACION');
      Q.SQL.Add('WHERE');
      Q.SQL.Add('   ID_CARTERAEFECTOS = :ID_CARTERAEFECTOS');

      Q.ParamByName('ID_CARTERAEFECTOS').AsInteger := ID_Cartera;
      Q.ParamByName('FASIENTO').AsDateTime         := QCobrosPagosFECHA.AsDateTime;
      Q.ParamByName('SUBCTABANCO').AsString        := QFicheroSUBCUENTABANCO.AsString;
      Q.ParamByName('SITUACION').AsString          := QCobrosPagosSITUACION.AsString;
      Q.ExecQuery;
   finally
      Q.Free;
   end;
end;

procedure TWCargaCobrosPagos.ComprobarAsientosCobroPago(var OK: Boolean);
var
   Msg: String;
begin
   OK := True;

   // Msg contendrá la información a presentar al usuario sobre los datos
   // que ha de introducir antes de guardar el registro.
   Msg := '';

   if QCobrosPagos.State in dsEditModes then begin
      QCobrosPagos.Post;
   end;

   QCobrosPagos.DisableControls;
   QCobrosPagos.First;

   while not QCobrosPagos.EOF do begin
      if QCobrosPagosFECHA.IsNull then begin
         Msg := Msg + 'La fecha del asiento no puede estar en blanco.' + #13;
      end
      else
      if not DMContaRef.FechaAsientoPerteneceEjercicio(QCobrosPagosFECHA.AsDateTime) then begin
         if  MessageDlg('La fecha de asiento no pertenece al ejercicio actual.' + #13 +
                        '¿Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
            OK := False;
            Exit;
         end;
      end;

      if QCobrosPagosID_CONCEPTOS.AsString = '' then begin
         Msg := Msg + 'El concepto no puede estar en blanco.' + #13;
      end;
      if QCobrosPagosSUBCUENTA.AsString = '' then begin
         Msg := Msg + 'La subcuenta no puede estar vacía.' + #13;
      end;

      // Si los datos especificados no son válidos, presentar mensaje de error.
      if Trim(Msg) <> '' then begin
         QCobrosPagos.EnableControls;
         DBGridMain.SetFocus;
         OK := False;
         DatabaseError(Msg);
      end;

      QCobrosPagos.Next;
   end;

   QCobrosPagos.First;
   QCobrosPagos.EnableControls;
end;

procedure TWCargaCobrosPagos.GenerarAsientosCobroPago;
var
   Asiento, Apunte: Integer;
   Importe:         Double;
   Puntear:         Boolean;
   Fecha:           TDateTime;
begin
   Asiento := 0;
   Apunte  := 0;
   Importe := 0;
   Fecha   := Date;

   QCobrosPagos.DisableControls;

   if not QCobrosPagos.IsEmpty and oGenerarUnicoAsiento.Checked then  begin
      Asiento := DMContaRef.ObtenerNumeroAsiento;
      Fecha   := QCobrosPagosFECHA.AsDateTime;
      Apunte  := 1;   // dejar libre el apunte 1 para generarlo al final
   end;

   QCobrosPagos.First;

   while not QCobrosPagos.EOF do begin
      if (QCobrosPagosID_DIARIO.AsInteger <> 0) and (QCobrosPagosNUMEROFACTURA.AsString <> '') and
         ((DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'P') or
         (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'C') or
         (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'A')) then begin
         Puntear := (RoundTo(QCobrosPagosIMPORTE_PUNTEO.AsFloat, -2) =
            RoundTo(QCobrosPagosIMPORTE.AsFloat, -2));
      end
      else begin
         Puntear := False;
      end;

      if Puntear then begin
         PuntearApunte(QCobrosPagosID_DIARIO.AsInteger);
      end;

      if QCobrosPagosID_CARTERAEFECTOS.AsInteger <> 0 then begin
         ActualizarCarteraEfectos(QCobrosPagosID_CARTERAEFECTOS.AsInteger);
      end;


      // Generar un asiento por cada registro
      if not oGenerarUnicoAsiento.Checked then begin
         Asiento := DMContaRef.ObtenerNumeroAsiento;

         // Apunte 1
         QDiario.Close;
         QDiario.ParamByName('ASIENTO').AsInteger := Asiento;
         QDiario.ParamByName('APUNTE').AsInteger  := 1;

         QDiario.ParamByName('DEBEHABER').AsString := QCobrosPagosDEBEHABER.AsString;

         QDiario.ParamByName('SUBCUENTA').AsString     := QCobrosPagosSUBCUENTA.AsString;
         QDiario.ParamByName('CONTRAPARTIDA').AsString := QFicheroSUBCUENTABANCO.AsString;
         QDiario.ParamByName('FECHA').AsDateTime       := QCobrosPagosFECHA.AsDateTime;
         QDiario.ParamByName('IMPORTE').AsFloat        := RoundTo(QCobrosPagosIMPORTE.AsFloat, -2);
         QDiario.ParamByName('MONEDA').AsString        := 'E';
         QDiario.ParamByName('ID_CONCEPTOS').AsString  := QCobrosPagosID_CONCEPTOS.AsString;
         if QCobrosPagosCUENTA_ANALITICA.IsNull then begin
            QDiario.ParamByName('CUENTA_ANALITICA').Clear;
         end
         else begin
            QDiario.ParamByName('CUENTA_ANALITICA').AsString := QCobrosPagosCUENTA_ANALITICA.AsString;
         end;
         QDiario.ParamByname('COMENTARIO').AsString    := QCobrosPagosCOMENTARIO.AsString;
         QDiario.ParamByName('NUMEROFACTURA').AsString := QCobrosPagosNUMEROFACTURA.AsString;

         if Puntear then begin
            QDiario.ParamByName('PUNTEO').AsString := 'S';
         end
         else begin
            QDiario.ParamByName('PUNTEO').AsString := 'N';
         end;

         QDiario.ExecQuery;
         QDiario.Transaction.CommitRetaining;

         // Apunte 2
         QDiario.Close;
         QDiario.ParamByName('ASIENTO').AsInteger := Asiento;
         QDiario.ParamByName('APUNTE').AsInteger  := 2;

         if QCobrosPagosDEBEHABER.AsString = 'D' then begin
            QDiario.ParamByName('DEBEHABER').AsString := 'H';
         end
         else begin
            QDiario.ParamByName('DEBEHABER').AsString := 'D';
         end;

         QDiario.ParamByName('SUBCUENTA').AsString     := QFicheroSUBCUENTABANCO.AsString;
         QDiario.ParamByName('CONTRAPARTIDA').AsString := QCobrosPagosSUBCUENTA.AsString;
         QDiario.ParamByName('FECHA').AsDateTime       := QCobrosPagosFECHA.AsDateTime;
         QDiario.ParamByName('IMPORTE').AsFloat        := RoundTo(QCobrosPagosIMPORTE.AsFloat, -2);
         QDiario.ParamByName('MONEDA').AsString        := 'E';
         QDiario.ParamByName('NUMEROFACTURA').AsString := QCobrosPagosNUMEROFACTURA.AsString;
         QDiario.ParamByName('PUNTEO').AsString        := 'N';
         QDiario.ParamByName('ID_CONCEPTOS').AsString := QCobrosPagosID_CONCEPTOS.AsString;
         if QCobrosPagosCUENTA_ANALITICA.IsNull then begin
            QDiario.ParamByName('CUENTA_ANALITICA').Clear;
         end
         else begin
            QDiario.ParamByName('CUENTA_ANALITICA').AsString := QCobrosPagosCUENTA_ANALITICA.AsString;
         end;
         QDiario.ParamByname('COMENTARIO').AsString := QCobrosPagosCOMENTARIO.AsString;
         QDiario.ExecQuery;
         QDiario.Transaction.CommitRetaining;
      end     // if not oGenerarUnicoAsiento.Checked then


      // Generar un único asiento de cobro / pago
      else begin
         Inc(Apunte);
         QDiario.Close;
         QDiario.ParamByName('ASIENTO').AsInteger := Asiento;
         QDiario.ParamByName('APUNTE').AsInteger  := Apunte;

         QDiario.ParamByName('DEBEHABER').AsString := QCobrosPagosDEBEHABER.AsString;
         if QCobrosPagosDEBEHABER.AsString = 'D' then begin
            Importe := Importe + RoundTo(QCobrosPagosIMPORTE.AsFloat, -2);
         end
         else begin
            Importe := Importe - RoundTo(QCobrosPagosIMPORTE.AsFloat, -2);
         end;

         QDiario.ParamByName('SUBCUENTA').AsString     := QCobrosPagosSUBCUENTA.AsString;
         QDiario.ParamByName('CONTRAPARTIDA').AsString := QFicheroSUBCUENTABANCO.AsString;
         QDiario.ParamByName('FECHA').AsDateTime       := Fecha;
         // Tomar la fecha de la primera línea del grid
         QDiario.ParamByName('IMPORTE').AsFloat        := RoundTo(QCobrosPagosIMPORTE.AsFloat, -2);
         QDiario.ParamByName('MONEDA').AsString        := 'E';
         QDiario.ParamByName('NUMEROFACTURA').AsString := QCobrosPagosNUMEROFACTURA.AsString;

         if Puntear then begin
            QDiario.ParamByName('PUNTEO').AsString := 'S';
         end
         else begin
            QDiario.ParamByName('PUNTEO').AsString := 'N';
         end;

         QDiario.ParamByName('ID_CONCEPTOS').AsString := QCobrosPagosID_CONCEPTOS.AsString;
         if QCobrosPagosCUENTA_ANALITICA.IsNull then begin
            QDiario.ParamByName('CUENTA_ANALITICA').Clear;
         end
         else begin
            QDiario.ParamByName('CUENTA_ANALITICA').AsString := QCobrosPagosCUENTA_ANALITICA.AsString;
         end;
         QDiario.ParamByname('COMENTARIO').AsString := QCobrosPagosCOMENTARIO.AsString;
         QDiario.ExecQuery;
         QDiario.Transaction.CommitRetaining;
      end;

      if not (QCobrosPagos.State in dsEditModes) then begin
         QCobrosPagos.Edit;
      end;
      QCobrosPagosASIENTO_GENERADO.AsInteger := Asiento;
      QCobrosPagos.Post;
      QCobrosPagos.Next;
   end;

   QCobrosPagos.First;
   QCobrosPagos.EnableControls;

   if not QCobrosPagos.IsEmpty and oGenerarUnicoAsiento.Checked then  begin
      QDiario.Close;
      QDiario.ParamByName('ASIENTO').AsInteger := Asiento;
      QDiario.ParamByName('APUNTE').AsInteger  := 1;

      if Importe > 0 then begin
         QDiario.ParamByName('DEBEHABER').AsString := 'H';
      end
      else begin
         QDiario.ParamByName('DEBEHABER').AsString := 'D';
      end;

      QDiario.ParamByName('SUBCUENTA').AsString      := QFicheroSUBCUENTABANCO.AsString;
      QDiario.ParamByName('CONTRAPARTIDA').Clear;
      QDiario.ParamByName('FECHA').AsDateTime        := Fecha;
      // Tomar la fecha de la primera línea del grid
      QDiario.ParamByName('IMPORTE').AsFloat         := Abs(Importe);
      QDiario.ParamByName('MONEDA').AsString         := 'E';
      QDiario.ParamByName('NUMEROFACTURA').Clear;
      QDiario.ParamByName('PUNTEO').AsString         := 'N';
      QDiario.ParamByName('ID_CONCEPTOS').AsString   := QCobrosPagosID_CONCEPTOS.AsString;
      if QCobrosPagosCUENTA_ANALITICA.IsNull then begin
         QDiario.ParamByName('CUENTA_ANALITICA').Clear;
      end
      else begin
         QDiario.ParamByName('CUENTA_ANALITICA').AsString := QCobrosPagosCUENTA_ANALITICA.AsString;
      end;
      QDiario.ParamByname('COMENTARIO').AsString := QCobrosPagosCOMENTARIO.AsString;
      QDiario.ExecQuery;
      QDiario.Transaction.CommitRetaining;
   end;
end;

procedure TWCargaCobrosPagos.PrepararQueryMovimientos;
var Asiento :Integer;
begin
   Asiento := DMRef.ObtenerValor('GEN_ID(ASIENTO, 0)', 'RDB$DATABASE', '');

   QMovimientos.DisableControls;
   QMovimientos.Close;
   QMovimientos.SelectSQL.Clear;
   QMovimientos.Transaction.active := True;
   QMovimientos.SelectSQL.Add('SELECT');
   QMovimientos.SelectSQL.Add('   D.ASIENTO,D.APUNTE,D.FECHA,D.SUBCUENTA,D.ID_CONCEPTOS, D.DEBEHABER,');
   QMovimientos.SelectSQL.Add('   D.CONTRAPARTIDA,D.COMENTARIO,D.NUMEROFACTURA,D.CUENTA_ANALITICA,D.SERIE, D.EJERCICIO,');
   QMovimientos.SelectSQL.Add('   C.DESCRIPCION DESCCONCEPTO, S.DESCRIPCION DESCSUBCUENTA,D.IMPORTE, S.ABREVIATURA,');
   QMovimientos.SelectSQL.Add('   D.TIPOASIENTO, D.ASIENTONOMINA');
   QMovimientos.SelectSQL.Add('FROM DIARIO D, CONCEPTOS C, SUBCTAS S');
   QMovimientos.SelectSQL.Add('WHERE');
   QMovimientos.SelectSQL.Add('   D.ASIENTO >= :ASIENTO1 AND D.ASIENTO <= :ASIENTO2 AND');
   QMovimientos.SelectSQL.Add('   D.ID_CONCEPTOS = C.ID_CONCEPTOS AND');
   QMovimientos.SelectSQL.Add('   D.SUBCUENTA = S.SUBCUENTA');
   QMovimientos.SelectSQL.Add('ORDER BY D.ASIENTO, D.APUNTE');
   QMovimientos.Params.ByName('ASIENTO1').AsInteger := Asiento - 30;
   QMovimientos.Params.ByName('ASIENTO2').AsInteger := Asiento;
   QMovimientos.Prepare;
   QMovimientos.EnableControls;
   QMovimientos.Open;
   QMovimientos.Last;
end;

procedure TWCargaCobrosPagos.PuntearApunte(ID_Diario: Integer);
var Q : TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('UPDATE DIARIO SET PUNTEO = "S"');
      Q.SQL.Add('WHERE');
      Q.SQL.Add('   ID_DIARIO = :ID_DIARIO AND');
      Q.SQL.Add('   NUMEROFACTURA = :NUMEROFACTURA');
      Q.ParamByName('ID_DIARIO').AsInteger    := ID_Diario;
      Q.ParamByName('NUMEROFACTURA').AsString := QCobrosPagosNUMEROFACTURA.AsString;
      Q.ExecQuery;
   finally
      Q.Free;
   end;
end;

procedure TWCargaCobrosPagos.CalcularTotalImporte;
var Marca :TBookMark;
begin
   if oGenerarUnicoAsiento.Checked then  begin
      if QCobrosPagos.State in dsEditModes then begin
         QCobrosPagos.Post;
      end;

      Marca := QCobrosPagos.GetBookMark;
      try
         QCobrosPagos.DisableControls;
         QCobrosPagos.First;
         LabelTotalImporte.Caption := '0';
         while not QCobrosPagos.EOF do begin
            if QCobrosPagosDEBEHABER.AsString = 'D' then begin
               LabelTotalImporte.Caption := FormatFloat('###,###,##0.00', StrToFloat(LabelTotalImporte.Caption) + QCobrosPagosIMPORTE.AsFloat);
            end
            else
            if QCobrosPagosDEBEHABER.AsString = 'H' then begin
               LabelTotalImporte.Caption := FormatFloat('###,###,##0.00', StrToFloat(LabelTotalImporte.Caption) - QCobrosPagosIMPORTE.AsFloat);
            end;
            QCobrosPagos.Next;
         end;
      finally
         QCobrosPagos.GotoBookMark(Marca);
         QCobrosPagos.FreeBookMark(Marca);
      end;

      QCobrosPagos.EnableControls;
   end
   else begin
      LabelTotalImporte.Caption := '0';
   end;
end;

procedure TWCargaCobrosPagos.BtnEdtGuardarClick(Sender: TObject);
var Msg :string;
    OK  :Boolean;
begin
   TabSheetAsientos.Show;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   // Comprobar subcuenta de banco / caja
   if QFicheroSUBCUENTABANCO.AsString = '' then  begin
      if DMRef.QParametrosBUSQUEDA_SUBCTAS.AsString = 'D' then begin
         eSubcuentaBancoDesc.SetFocus;
      end
      else begin                                  
         eSubcuentaBanco.SetFocus;
      end;
      DatabaseError('No puede dejar la subcuenta de banco / caja en blanco.');
   end;

   // Comprobar asientos de cobro / pago
   if QCobrosPagos.IsEmpty then  begin
      DBGridMain.SetFocus;
      DatabaseError('No se ha introducido ningún asiento de cobro / pago.');
   end
   else begin
      ComprobarAsientosCobroPago(OK);
   end;

   // Generar asientos
   if OK then  begin
      LabelTotalImporte.Caption := '0';
      GenerarAsientosCobroPago;

      QCobrosPagos.First;
      if oGenerarUnicoAsiento.Checked or (QCobrosPagos.RecordCount = 1) then begin
         MessageDlg('Generado asiento nº ' + FormatFloat('###,###,###', QCobrosPagosASIENTO_GENERADO.AsInteger), mtInformation, [mbOK], 0);
      end
      else begin
         Msg := 'Generados asientos nº ' + FormatFloat('###,###,###',
            QCobrosPagosASIENTO_GENERADO.AsInteger);
         QCobrosPagos.Next;
         while not QCobrosPagos.EOF do begin
            Msg := Msg + ', ' + FormatFloat('###,###,###', QCobrosPagosASIENTO_GENERADO.AsInteger);
            QCobrosPagos.Next;
         end;
         QCobrosPagos.First;
         MessageDlg(Msg, mtInformation, [mbOK], 0);
      end;

      // Inicializar fichero de cobros / pagos
      QCobrosPagos.EmptyDataSet;

      // Refrescar últimos movimientos
      PrepararQueryMovimientos;
      LabelTotalImporte.Caption := '0';
   end;
end;

procedure TWCargaCobrosPagos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F4: begin
         PermAniadir.Click;
      end;
      VK_F9: begin
         BtnEdtGuardar.Click;
      end;
   end;
end;

procedure TWCargaCobrosPagos.QMovimientosCalcFields(DataSet: TDataSet);
begin
   QMovimientosDESCCOMENTARIO.AsString :=
      DMContaRef.GetDescripcionApunte(QMovimientosDESCCONCEPTO.AsString,
                                      QMovimientosNUMEROFACTURA.AsString,
                                      QMovimientosSERIE.AsString,
                                      QMovimientosEJERCICIO.AsInteger,
                                      QMovimientosCOMENTARIO.AsString,
                                      QMovimientosABREVIATURA.AsString);
end;

procedure TWCargaCobrosPagos.BtnEdtBorrarMovimClick(Sender: TObject);
var Q :TIBSQL;
begin
   if not QMovimientos.IsEmpty then begin
      if DMContaRef.AsientoBloqueado(QMovimientosFECHA.AsDateTime) then begin
         DatabaseError('No se puede borrar un asiento bloqueado.');
      end;

      if MessageDlg('¿Desea borrar el asiento ' + FormatFloat('###,###,###', QMovimientosASIENTO.AsInteger) +
         ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Q := TIBSQL.Create(nil);
         try
            Q.Database := DMRef.BDContab;
            Q.SQL.Add('delete from diario where asiento=:asiento');
            Q.ParamByName('asiento').AsInteger := QMovimientosASIENTO.AsInteger;
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;
         finally
            Q.Free;
         end;
         PrepararQueryMovimientos;
      end;
   end;
end;

procedure TWCargaCobrosPagos.BtnEdtSubcuentaClick(Sender: TObject);
begin
   WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
   try
      WNuevaSubcuenta.ShowModal;
   finally
      FreeAndNil(WNuevaSubcuenta);
   end;
end;

procedure TWCargaCobrosPagos.PermBorrarClick(Sender: TObject);
begin
   if not QCobrosPagos.IsEmpty then begin
      if MessageDlg('¿Desea borrar el asiento seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         QCobrosPagos.Delete;
      end;
   end;
end;

procedure TWCargaCobrosPagos.PermAniadirClick(Sender: TObject);
begin
   QCobrosPagos.Append;
   if QFicheroID_CONCEPTOS_DFTO.AsString = '' then begin
      eConceptoAsiento.SetFocus;
   end
   else
   if DMRef.QParametrosBUSQUEDA_SUBCTAS.AsString = 'D' then begin
      eDescSubcuentaCBDESCSUBCUENTA.SetFocus;
   end
   else begin
      eSubcuentaCBSUBCUENTA.SetFocus;
   end;
end;

procedure TWCargaCobrosPagos.QCobrosPagosNewRecord(DataSet: TDataSet);
begin
   QCobrosPagosFECHA.AsDateTime      := Date;
   QCobrosPagosID_CONCEPTOS.AsString := QFicheroID_CONCEPTOS_DFTO.AsString;
   //GridEdtCobrosPagos.SetActiveField('SUBCUENTA');
end;

procedure TWCargaCobrosPagos.PermBqdaDiarioClick(Sender: TObject);
var Q :TIBQuery;
begin
   if QCobrosPagos.State in dsEditModes then begin
      QCobrosPagos.Post;
   end;

   if not QCobrosPagos.IsEmpty then  begin
      if not DmControlRef.AccesoUsuario(Config.IdUser, 'WDIARIO') then begin
         Exit;
      end;

      if QCobrosPagosSUBCUENTA.AsString <> '' then begin
         if MessageDlg('El asiento seleccionado ya tiene subcuenta.' +
            #13 + '¿Desea continuar la búsqueda de asientos sin tener en cuenta la subcuenta?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
      end;

      if Assigned(WDiario) then begin
         WDiario.Close;
      end;
      FID_Diario := 0;
      WDiario    := TWDiario.Create(nil);
      WDiario.FModoConsulta := True;
      WDiario.FImporteDesde := QCobrosPagosIMPORTE.AsFloat;
      WDiario.FImporteHasta := QCobrosPagosIMPORTE.AsFloat;
      WDiario.FFechaDesde := 0;
      WDiario.FFechaHasta := QCobrosPagosFECHA.AsDateTime;
      WDiario.ShowModal;
      if FID_Diario <> 0 then begin
         if not (QCobrosPagos.State in dsEditModes) then begin
            QCobrosPagos.Edit;
         end;

         QCobrosPagosID_DIARIO.AsInteger         := FID_Diario;
         QCobrosPagosID_CARTERAEFECTOS.AsInteger := 0;
         QCobrosPagosSITUACION.AsString          := '';
         
         Q := TIBQuery.Create(nil);
         try 
            Q.Database := DMRef.BDContab;
            Q.SQL.Add('SELECT NUMEROFACTURA, SUBCUENTA, CUENTA_ANALITICA, IMPORTE');
            Q.SQL.Add('FROM DIARIO WHERE ID_DIARIO = :ID_DIARIO         ');
            Q.ParamByName('ID_DIARIO').AsInteger := FID_Diario;
            Q.Open;

            QCobrosPagosNUMEROFACTURA.AsString    := Q.FieldByName('NUMEROFACTURA').AsString;
            QCobrosPagosSUBCUENTA.AsString        := Q.FieldByName('SUBCUENTA').AsString;
            QCobrosPagosCUENTA_ANALITICA.AsString := Q.FieldByName('CUENTA_ANALITICA').AsString;
            QCobrosPagosIMPORTE_PUNTEO.AsFloat    := Q.FieldByName('IMPORTE').AsFloat;

            if (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'P') or
               (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'A') or
               (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'B') or
               (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'N') then begin
               QCobrosPagosDEBEHABER.AsString := 'D';
            end
            else begin
               QCobrosPagosDEBEHABER.AsString := 'H';
            end;
         finally
            Q.Free;
         end;
      end;
      DBGridMain.SetFocus;
   end;
end;

procedure TWCargaCobrosPagos.PermBqdaCarteraClick(Sender: TObject);
var Q :TIBQuery;
begin
   if QCobrosPagos.State in dsEditModes then begin
      QCobrosPagos.Post;
   end;

   if not QCobrosPagos.IsEmpty then  begin
      if QCobrosPagosSUBCUENTA.AsString = '' then begin
         if MessageDlg('El asiento seleccionado no tiene subcuenta.' +
            #13 + '¿Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
      end;

      if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCARTERAEFECTOS') then begin
         Exit;
      end;

      if Assigned(WCarteraEfectos) then begin
         WCarteraEfectos.Close;
      end;
      FID_Cartera     := 0;
      FSituacion      := '';
      WCarteraEfectos := TWCarteraEfectos.Create(nil);
      WCarteraEfectos.FModoConsulta      := True;
      WCarteraEfectos.FSubcuenta         := QCobrosPagosSUBCUENTA.AsString;
      WCarteraEfectos.FImporteDesde      := QCobrosPagosIMPORTE.AsFloat;
      WCarteraEfectos.FImporteHasta      := QCobrosPagosIMPORTE.AsFloat;
      WCarteraEfectos.FFechaEmisionDesde := DMRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime;
      WCarteraEfectos.FFechaEmisionHasta := DMRef.QParametrosFECHA_FIN_EJERCICIO.AsDateTime;
      WCarteraEfectos.FFechaVtoDesde     := IncMonth(QCobrosPagosFECHA.AsDateTime, -1);
      WCarteraEfectos.FFechaVtoHasta     := IncMonth(QCobrosPagosFECHA.AsDateTime, 1);
      WCarteraEfectos.ShowModal;
      if FID_Cartera <> 0 then begin
         if not (QCobrosPagos.State in dsEditModes) then begin
            QCobrosPagos.Edit;
         end;
         QCobrosPagosID_CARTERAEFECTOS.AsInteger := FID_Cartera;
         QCobrosPagosID_DIARIO.AsInteger         := 0;
         QCobrosPagosSITUACION.AsString          := FSituacion;
         Q := TIBQuery.Create(nil);
         try
            Q.Database := DMRef.BDContab;
            Q.SQL.Add('SELECT SUBCUENTA, ABREVIATURA FROM SUBCTAS');
            Q.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA');
            Q.ParamByName('SUBCUENTA').AsString := QFicheroSUBCUENTABANCO.AsString;
            Q.Open;
            if not Q.EOF then begin
               QCobrosPagosNUMEROFACTURA.AsString := Q.FieldByName('ABREVIATURA').AsString;
            end
            else begin
               Q.Close;
               Q.SQL.Clear;
               Q.SQL.Add('SELECT SUBCUENTA, FACTCLIENT, FACTPROVEEDOR');
               Q.SQL.Add('FROM CARTERAEFECTOS WHERE ID_CARTERAEFECTOS = :ID_CARTERAEFECTOS');
               Q.ParamByName('ID_CARTERAEFECTOS').AsInteger := FID_Cartera;
               Q.Open;

               QCobrosPagosSUBCUENTA.AsString := Q.FieldByName('SUBCUENTA').AsString;
               if Q.FieldByName('FACTCLIENT').AsString <> '' then begin
                  QCobrosPagosNUMEROFACTURA.AsString := Q.FieldByName('FACTCLIENT').AsString;
               end;
               if Q.FieldByName('FACTPROVEEDOR').AsString <> '' then begin
                  QCobrosPagosNUMEROFACTURA.AsString := Q.FieldByName('FACTPROVEEDOR').AsString;
               end;

               if (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'P') or
                  (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'A') or
                  (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'B') or
                  (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'N') then
               begin
                  QCobrosPagosDEBEHABER.AsString := 'D';
               end
               else begin
                  QCobrosPagosDEBEHABER.AsString := 'H';
               end;
            end;
         finally
            Q.Free;
         end;
      end;
      DBGridMain.SetFocus;
   end;
end;

procedure TWCargaCobrosPagos.BtnEdtModificarClick(Sender: TObject);
var Asiento        :Integer;
    AsientoNomina  :Integer;
    AsientoEmpresa :Integer;
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
end;

procedure TWCargaCobrosPagos.QCobrosPagosCalcFields(DataSet: TDataSet);
var Q :TIBQuery;
begin
   if not (QCobrosPagos.IsEmpty) and (QCobrosPagosID_CONCEPTOS.AsString <> '') then begin
      Q := TIBQuery.Create(nil);
      try
         Q.Database := DMRef.BDContab;
         Q.SQL.Add('SELECT * FROM CONCEPTOS WHERE ID_CONCEPTOS = :ID_CONCEPTOS');
         Q.ParamByName('ID_CONCEPTOS').AsString := QCobrosPagosID_CONCEPTOS.AsString;
         Q.Open;
         if not Q.EOF then begin
            QCobrosPagosDESCCONCEPTO.AsString := Q.FieldByName('DESCRIPCION').AsString;
         end;
      finally
         Q.Free;
      end;
   end;
end;

procedure TWCargaCobrosPagos.BtnEdtMayorClick(Sender: TObject);
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
end;

procedure TWCargaCobrosPagos.PermMayorClick(Sender: TObject);
var LMayorModel :TFiltroListadosMayorModel;
begin
   if not QCobrosPagos.IsEmpty and (QCobrosPagosSUBCUENTA.AsString <> '') then  begin
      if DMRef.QParametrosMOSTRAR_FILTRO_MAYOR.AsString = 'S' then begin
         WFiltroMayorSubcuenta := TWFiltroMayorSubcuenta.Create(nil);
         try
            WFiltroMayorSubcuenta.FSubcuenta := QCobrosPagosSUBCUENTA.AsString;
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
                                       QCobrosPagosSUBCUENTA.AsString,
                                       QCobrosPagosSUBCUENTA.AsString,
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
            lMayorModel.Free;
         end;
      end;

      PageControl1.Update;
   end;
end;

procedure TWCargaCobrosPagos.QCobrosPagosAfterPost(DataSet: TDataSet);
begin
   if oGenerarUnicoAsiento.Checked then begin
      if QCobrosPagosDEBEHABER.AsString = 'D' then begin
         LabelTotalImporte.Caption := FormatFloat('###,###,##0.00', StrToFloat(LabelTotalImporte.Caption) + QCobrosPagosIMPORTE.AsFloat);
      end
      else
      if QCobrosPagosDEBEHABER.AsString = 'H' then begin
         LabelTotalImporte.Caption := FormatFloat('###,###,##0.00', StrToFloat(LabelTotalImporte.Caption) - QCobrosPagosIMPORTE.AsFloat);
      end;
   end;
end;

procedure TWCargaCobrosPagos.oGenerarUnicoAsientoClick(Sender: TObject);
begin
   CalcularTotalImporte;
end;

procedure TWCargaCobrosPagos.EditDEBEHABERExit(Sender: TObject);
begin
   CalcularTotalImporte;
end;

procedure TWCargaCobrosPagos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if MessageDlg('¿Quiere cancelar los cambios?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Abort;
end;

procedure TWCargaCobrosPagos.DBGridMovesDrawColumnCell(Sender: TObject;
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

procedure TWCargaCobrosPagos.DBGridMovesDblClick(Sender: TObject);
begin
   BtnEdtModificar.Click;
end;

procedure TWCargaCobrosPagos.DBGridMovesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   FAsientoAnterior := QMovimientosASIENTO.AsInteger;
   DBGridMoves.Refresh;
end;

procedure TWCargaCobrosPagos.eSubcuentaCBSUBCUENTACloseUp(Sender: TObject);
begin
   if not (QCobrosPagos.State in dsEditModes) then begin
      QCobrosPagos.Edit;
   end;

   if (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'P') or
      (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'A') or
      (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'B') or
      (DMContaRef.ObtenerTipoSubcuenta(QCobrosPagosSUBCUENTA.AsString) = 'N') then begin
      QCobrosPagosDEBEHABER.AsString := 'D';
   end
   else begin
      QCobrosPagosDEBEHABER.AsString := 'H';
   end;
end;

end.
