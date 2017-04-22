unit UCargaApuntes;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Globales, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL,
     jpeg, Mask, Messages, StdCtrls, SysUtils, WinProcs, WinTypes,
     UCargaApuntesModel, DBGrids, ComCtrls;
type
  TWCargaApuntes = class(TForm)
    QSubcuentas: TIBSQL;
    SFichero: TDataSource;
    QFichero: TClientDataSet;
    Transaccion: TIBTransaction;
    SMovimientos: TDataSource;
    QMovimientos: TIBDataSet;
    QMovimientosASIENTO: TIntegerField;
    QMovimientosAPUNTE: TSmallintField;
    QMovimientosFECHA: TDateTimeField;
    QMovimientosSUBCUENTA: TIBStringField;
    QMovimientosID_CONCEPTOS: TIBStringField;
    QMovimientosDescComentario: TStringField;
    QMovimientosDEBEHABER: TIBStringField;
    QMovimientosIMPORTE: TFloatField;
    QMovimientosCONTRAPARTIDA: TIBStringField;
    QMovimientosCOMENTARIO: TIBStringField;
    QMovimientosNUMEROFACTURA: TIBStringField;
    QMovimientosCUENTA_ANALITICA: TIBStringField;
    QMovimientosDESCCONCEPTO: TIBStringField;
    QMovimientosDESCSUBCUENTA: TIBStringField;
    QMovimientosABREVIATURA: TIBStringField;
    QMovimientosTIPOASIENTO: TIntegerField;
    QMovimientosASIENTONOMINA: TIntegerField;
    QMovimientosEJERCICIO: TIntegerField;
    QMovimientosSERIE: TIBStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnNewSubcuenta: TButton;
    BtnReset: TButton;
    BtnAccept: TButton;
    PageControl1: TPageControl;
    TabSheetAsientos: TTabSheet;
    TabSheetLastMoves: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    BtnDelete: TButton;
    BtnModify: TButton;
    BtnLibroMayor: TButton;
    Datos: TGroupBox;
    Label17: TLabel;
    Label2: TLabel;
    lSubcuenta: TLabel;
    lContrapartida: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    ComboBoxDS_ANALITICA: TDBLookupComboBox;
    ComboBoxCD_ANALITICA: TDBLookupComboBox;
    ComboBoxCD_CONCEPTO: TDBLookupComboBox;
    ComboBoxDS_CONTRAPARTIDA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA: TDBLookupComboBox;
    EditCOMENTARIO: TDBEdit;
    ComboBoxCD_SUBCUENTA: TDBLookupComboBox;
    ComboBoxCD_CONTRAPARTIDA: TDBLookupComboBox;
    EditIMPORTE: TDBEdit;
    EditFECHA: TDBEdit;
    EditNUMERO_FACTURA: TDBEdit;
    ComboBoxDS_CONCEPTO: TDBLookupComboBox;
    DBGridMoves: TDBGrid;
    QFicheroFECHA: TDateField;
    QFicheroIMPORTE: TFloatField;
    QFicheroSUBCUENTA: TStringField;
    QFicheroCONTRAPARTIDA: TStringField;
    QFicheroCOMENTARIO: TStringField;
    QFicheroNUMERO_FACTURA: TStringField;
    QFicheroCUENTA_ANALITICA: TStringField;
    QFicheroID_CONCEPTOS: TStringField;
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnResetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QMovimientosCalcFields(DataSet: TDataSet);
    procedure BtnDeleteClick(Sender: TObject);
    procedure PonerDecimal(Sender: TObject; var Key: Char);
    procedure ComboBoxCD_SUBCUENTACloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure BtnNewSubcuentaClick(Sender: TObject);
    procedure BtnModifyClick(Sender: TObject);
    procedure BtnLibroMayorClick(Sender: TObject);
    procedure ComboBoxCD_SUBCUENTANotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure ComboBoxCD_CONTRAPARTIDANotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure ComboBoxCD_CONCEPTOCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridMovesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridMovesDblClick(Sender: TObject);
    procedure DBGridMovesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FModel           :TCargaApuntesModel;
    FColorActual     :TColor;
    FAsientoAnterior :Integer;
    procedure PrepararQuery;
  public
  end;

var WCargaApuntes: TWCargaApuntes;

implementation

uses DM, DMConta, General, UFiltroListadosMayorModel, UCargaAsiento, UCargaRapidaNominas, Math,
     UFiltroMayorSubcuenta, UNuevaSubcuenta;

{$R *.DFM}

procedure TWCargaApuntes.FormCreate(Sender: TObject);
var PosLeft :Integer;
begin
   FModel := TCargaApuntesModel.Create(DMRef.BDContab);
   Self.Caption := '';

   ActivarTransacciones(Self);

   QFichero.CreateDataSet;
   QFichero.Active := True;
   QFichero.Append;
   QFicheroFECHA.AsDateTime := Date;
   QFichero.Post;

   // Búsqueda subcuenta
   if DMRef.QParametrosBUSQUEDA_SUBCTAS.AsString = 'D' then begin
      PosLeft := ComboBoxCD_SUBCUENTA.Left;
      ComboBoxDS_SUBCUENTA.Left        := PosLeft;
      ComboBoxDS_CONTRAPARTIDA.Left    := PosLeft;
      ComboBoxCD_SUBCUENTA.Left        := ComboBoxCD_SUBCUENTA.Left     + ComboBoxDS_SUBCUENTA.Width;
      ComboBoxCD_CONTRAPARTIDA.Left    := ComboBoxCD_CONTRAPARTIDA.Left + ComboBoxDS_CONTRAPARTIDA.Width;
      ComboBoxCD_SUBCUENTA.TabStop     := False;
      ComboBoxCD_CONTRAPARTIDA.TabStop := False;
   end;

   QSubcuentas.Close;
   QSubcuentas.SQL.Clear;
   QSubcuentas.SQL.Add(' Select contrapartida from subctas');
   QSubcuentas.SQL.Add(' Where Subcuenta=:subcuenta');
   QSubcuentas.Prepare;

   PrepararQuery;
end;

procedure TWCargaApuntes.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWCargaApuntes.PrepararQuery;
var
   Asiento: Integer;
begin
   Asiento := DMRef.ObtenerValor('GEN_ID(ASIENTO, 0)', 'RDB$DATABASE', '');

   QMovimientos.DisableControls;
   QMovimientos.Close;
   QMovimientos.SelectSQL.Clear;
   QMovimientos.Transaction.active := True;
   QMovimientos.SelectSQL.Add('SELECT');
   QMovimientos.SelectSQL.Add('   D.ASIENTO,D.APUNTE,D.FECHA,D.SUBCUENTA,D.ID_CONCEPTOS, D.DEBEHABER,');
   QMovimientos.SelectSQL.Add('   D.CONTRAPARTIDA,D.COMENTARIO,D.NUMEROFACTURA,D.CUENTA_ANALITICA,D.SERIE, D.EJERCICIO,');
   QMovimientos.SelectSQL.Add('   C.DESCRIPCION DESCCONCEPTO, S.DESCRIPCION DESCSUBCUENTA,D.IMPORTE,S.ABREVIATURA,');
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

procedure TWCargaApuntes.BtnAcceptClick(Sender: TObject);
var Msg      :string;
    nAsiento :Integer;
    Q        :TIBSQL;
begin
   TabSheetAsientos.Show;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   // Msg contendrá la información a presentar al usuario sobre los datos
   // que ha de introducir antes de guardar el registro.
   Msg := '';

   if QFicheroFECHA.IsNull then begin
      Msg := Msg + 'No se puede dejar la fecha en blanco.' + #13;
   end
   else
   if not DMContaRef.FechaAsientoPerteneceEjercicio(QFicheroFECHA.AsDateTime) then begin
      if MessageDlg('La fecha de asiento no pertenece al ejercicio actual.' + #13 +
         '¿Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
   end;

   if Empty(QFicheroSUBCUENTA.AsString) then begin
      Msg := Msg + 'No se puede dejar la subcuenta en blanco.' + #13;
   end;

   if RoundTo(QFicheroIMPORTE.AsFloat, -2) = 0 then begin
      Msg := Msg + 'No se puede dejar el importe a cero.' + #13;
   end;

   if Empty(QFicheroCONTRAPARTIDA.AsString) then begin
      Msg := Msg + 'No se puede dejar la contrapartida en blanco.' + #13;
   end;

   if Empty(QFicheroID_CONCEPTOS.AsString) then begin
      Msg := Msg + 'No se puede dejar el concepto en blanco.' + #13;
   end;

   // Si los datos especificados no son válidos, presentar mensaje de error.
   if Trim(Msg) <> '' then begin
      Msg := Msg + 'Por favor, revise los datos de entrada.';
      TabSheetAsientos.Show;
      EditFECHA.SetFocus;
      DatabaseError(Msg);
   end;

   nAsiento := DMContaRef.ObtenerNumeroAsiento;

   Q := TIBSQL.Create(nil);
   try
      Q.Database := DmRef.BDContab;
      Q.SQL.Add('insert into diario(asiento, apunte, id_conceptos,');
      if not empty(QFicheroCOMENTARIO.AsString) then begin
         Q.SQL.Add('comentario,');
      end;
      if not empty(QFicheroCUENTA_ANALITICA.AsString) then begin
         Q.SQL.Add('cuenta_analitica,');
      end;
      if not Empty(QFicheroNUMERO_FACTURA.AsString) then begin
         Q.SQL.Add('numerofactura,');
      end;
      Q.SQL.Add(' subcuenta,contrapartida,debehaber,fecha,importe,moneda)');
      Q.SQL.Add(' values (:asiento,:apunte,:id_conceptos,');
      if not empty(QFicheroCOMENTARIO.AsString) then begin
         Q.SQL.Add(':comentario,');
      end;
      if not empty(QFicheroCUENTA_ANALITICA.AsString) then begin
         Q.SQL.Add(':CUENTA_ANALITICA,');
      end;
      if not Empty(QFicheroNUMERO_FACTURA.AsString) then begin
         Q.SQL.Add(':numerofactura,');
      end;
      Q.SQL.Add(' :subcuenta,:contrapartida,:debehaber,:fecha,:importe,:moneda)');

      // Apunte 1
      Q.parambyname('asiento').AsInteger := nAsiento;
      Q.parambyname('apunte').AsInteger  := 1;
      if not empty(QFicheroCOMENTARIO.AsString) then begin
         Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
      end;
      Q.parambyname('debehaber').AsString     := 'D';
      Q.parambyname('subcuenta').AsString     := QFicheroSUBCUENTA.AsString;
      Q.parambyname('contrapartida').AsString := QFicheroCONTRAPARTIDA.AsString;
      Q.parambyname('fecha').AsDateTime       := QFicheroFECHA.AsDateTime;
      Q.parambyname('importe').AsFloat        := QFicheroIMPORTE.AsFloat;
      Q.parambyname('moneda').AsString        := 'E';
      Q.parambyname('id_conceptos').AsString  := QFicheroID_CONCEPTOS.AsString;
      if not empty(QFicheroCUENTA_ANALITICA.AsString) then begin
         Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
      end;
      if not Empty(QFicheroNUMERO_FACTURA.AsString) then begin
         Q.ParamByName('NUMEROFACTURA').AsString := Trim(QFicheroNUMERO_FACTURA.AsString);
      end;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
      // Final Apunte 1

      // Apunte 2
      Q.parambyname('asiento').AsInteger := nAsiento;
      Q.parambyname('apunte').AsInteger  := 2;
      if not empty(QFicheroCOMENTARIO.AsString) then begin
         Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
      end;
      Q.parambyname('debehaber').AsString     := 'H';
      Q.parambyname('subcuenta').AsString     := QFicheroCONTRAPARTIDA.AsString;
      Q.parambyname('contrapartida').AsString := QFicheroSUBCUENTA.AsString;
      Q.parambyname('fecha').AsDateTime       := QFicheroFECHA.AsDateTime;
      Q.parambyname('importe').AsFloat        := QFicheroIMPORTE.AsFloat;
      Q.parambyname('moneda').AsString        := 'E';
      Q.parambyname('id_conceptos').AsString  := QFicheroID_CONCEPTOS.AsString;
      if not empty(QFicheroCUENTA_ANALITICA.AsString) then begin
         Q.parambyname('CUENTA_ANALITICA').AsString :=
            Trim(QFicheroCUENTA_ANALITICA.AsString);
      end;
      if not Empty(QFicheroNUMERO_FACTURA.AsString) then begin
         Q.ParamByName('NUMEROFACTURA').AsString := Trim(QFicheroNUMERO_FACTURA.AsString);
      end;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
      // Final Apunte 2

   finally
      Q.Free;
   end;

   MessageDlg('Se ha generado el asiento ' + FormatFloat('###,###,###', nAsiento), mtInformation, [mbOK], 0);

   //Modo(Self, Edita);

   QFichero.Edit;
   // Se deja la misma fecha que tiene el asiento anterior
   // ya que el usuario puede introducir asientos ordenados
   // por fecha.
   // QFicheroFECHA.AsDateTime := Date;
   QFicheroIMPORTE.AsFloat         := 0;
   QFicheroNUMERO_FACTURA.AsString := '';
   QFichero.Post;

   PrepararQuery;

   EditFECHA.SetFocus;
end;

procedure TWCargaApuntes.BtnResetClick(Sender: TObject);
begin
   // Pasamos al siguiente campo antes de comprobar si se ha modificado el registro.
   Perform(wm_NextDlgCtl, 0, 0);

   QFichero.Edit;
   QFicheroFECHA.AsDateTime          := Date;
   QFicheroIMPORTE.AsFloat           := 0;
   QFicheroCOMENTARIO.AsString       := '';
   QFicheroCONTRAPARTIDA.AsString    := '';
   QFicheroSUBCUENTA.AsString        := '';
   QFicheroID_CONCEPTOS.AsString     := '';
   QFicheroNUMERO_FACTURA.AsString   := '';
   QFicheroCUENTA_ANALITICA.AsString := '';
   QFichero.Post;

   TabSheetAsientos.Show;
   EditFECHA.SetFocus;
end;

procedure TWCargaApuntes.BtnDeleteClick(Sender: TObject);
var Q :TIBSQL;
begin
   if not QMovimientos.IsEmpty then begin
      if DMContaRef.AsientoBloqueado(QMovimientosFECHA.AsDateTime) then begin
         DatabaseError('No se puede borrar un asiento bloqueado.');
      end;
      if MessageDlg('¿Desea borrar el asiento ' +
                    FormatFloat('###,###,###', QMovimientos.FieldByName('ASIENTO').AsInteger) +
                    ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Q := TIBSQL.Create(nil);
         try
            Q.Database := DMRef.BDContab;
            Q.SQL.Add('delete from diario where asiento=:asiento');
            Q.ParamByName('asiento').AsInteger := QMovimientos.FieldByName('asiento').AsInteger;
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;
            Q.Close;
         finally
            Q.Free;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWCargaApuntes.FormShow(Sender: TObject);
begin
   TabSheetAsientos.Show;
   EditFECHA.SetFocus;
end;

procedure TWCargaApuntes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWCargaApuntes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (QFichero.Modified) and (MessageDlg('Ha hecho modificaciones ¿Quiere salir?',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo) then Abort;
end;

procedure TWCargaApuntes.QMovimientosCalcFields(DataSet: TDataSet);
begin
   QMovimientosDESCCOMENTARIO.AsString :=
         DMContaRef.GetDescripcionApunte(QMovimientosDESCCONCEPTO.AsString,
                                         QMovimientosNUMEROFACTURA.AsString,
                                         QMovimientosSERIE.AsString,
                                         QMovimientosEJERCICIO.AsInteger,
                                         QMovimientosCOMENTARIO.AsString,
                                         QMovimientosABREVIATURA.AsString);
end;

procedure TWCargaApuntes.PonerDecimal(Sender: TObject; var Key: Char);
begin
   if (key = '.') then begin
      key := ',';
   end;
end;

procedure TWCargaApuntes.ComboBoxCD_SUBCUENTACloseUp(Sender: TObject;
   LookupTable, FillTable: TDataSet; modified: Boolean);
begin
   if Modified and (not empty(QFicheroSUBCUENTA.AsString)) then begin
      QSubcuentas.Close;
      QSubcuentas.ParamByName('subcuenta').AsString := QFicheroSUBCUENTA.AsString;
      QSubcuentas.ExecQuery;
      if not Empty(QSubcuentas.FieldByName('contrapartida').AsString) then begin
         QFicheroCONTRAPARTIDA.AsString := QSubcuentas.FieldByName('contrapartida').AsString;
      end;
   end;
end;

procedure TWCargaApuntes.BtnNewSubcuentaClick(Sender: TObject);
begin
   WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
   try
      WNuevaSubcuenta.ShowModal;
      if WNuevaSubcuenta.FNuevaSubcuenta <> '' then  begin
         if not (QFichero.State in dsEditModes) then begin
            QFichero.Edit;
         end;
         QFicheroSUBCUENTA.AsString := WNuevaSubcuenta.FNuevaSubcuenta;
         if WNuevaSubcuenta.FContrapartidaSubcta <> '' then begin
            QFicheroCONTRAPARTIDA.AsString := WNuevaSubcuenta.FContrapartidaSubcta;
         end;
      end;

      if DMRef.QParametrosBUSQUEDA_SUBCTAS.AsString = 'D' then begin
         ComboBoxDS_SUBCUENTA.SetFocus;
      end
      else begin
         ComboBoxCD_SUBCUENTA.SetFocus;
      end;
   finally
      FreeAndNil(WNuevaSubcuenta);
   end;
end;

procedure TWCargaApuntes.BtnModifyClick(Sender: TObject);
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
         Asiento := QMovimientos.FieldByName('ASIENTO').AsInteger;

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
            Asiento := QMovimientos.FieldByName('ASIENTO').AsInteger;
            WCargaAsiento.FAsiento := Asiento;
            WCargaAsiento.ShowModal;
         finally
            FreeAndNil(WCargaAsiento);
         end;
      end;

      PrepararQuery;

      QMovimientos.DisableControls;
      QMovimientos.First;
      while not QMovimientos.EOF do begin
         if QMovimientos.FieldByName('ASIENTO').AsInteger = Asiento then begin
            Break;
         end;
         QMovimientos.Next;
      end;
      QMovimientos.EnableControls;
   end;
end;

procedure TWCargaApuntes.BtnLibroMayorClick(Sender: TObject);
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

      PonerTipoConta('T');
      LMayorModel := TFiltroListadosMayorModel.Create(DMRef.BDContab);
      try
         lMayorModel.LanzarInfMayor(True,
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

procedure TWCargaApuntes.ComboBoxCD_SUBCUENTANotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Accept := False;

   if (Trim(NewValue) <> '') then  begin
      if Length(NewValue) < DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger then begin
         MessageDlg('La longitud de subcuenta es menor de ' + DMRef.QParametrosLONGITUD_SUBCUENTAS.AsString +
                    ' caracteres.', mtInformation, [mbOK], 0);
         ComboBoxCD_SUBCUENTA.SetFocus;
         Exit;
      end;

      if (MessageDlg('Subcuenta inexistente ¿Desea añadirla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then begin
         WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
         WNuevaSubcuenta.FNuevaSubcuenta := NewValue;
         try
            WNuevaSubcuenta.ShowModal;
            if WNuevaSubcuenta.FNuevaSubcuenta <> '' then begin
               if not (QFichero.State in dsEditModes) then begin
                  QFichero.Edit;
               end;
               QFicheroSUBCUENTA.AsString := WNuevaSubcuenta.FNuevaSubcuenta;
               if WNuevaSubcuenta.FContrapartidaSubcta <> '' then begin
                  QFicheroCONTRAPARTIDA.AsString := WNuevaSubcuenta.FContrapartidaSubcta;
               end;
               Accept := True;
            end;
         finally
            FreeAndNil(WNuevaSubcuenta);
         end;
      end;
      ComboBoxCD_SUBCUENTA.SetFocus;
   end;
end;

procedure TWCargaApuntes.ComboBoxCD_CONTRAPARTIDANotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Accept := False;

   if (Trim(NewValue) <> '') then  begin
      if Length(NewValue) < DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger then begin
         MessageDlg('La longitud de subcuenta es menor de ' + DMRef.QParametrosLONGITUD_SUBCUENTAS.AsString +
                    ' caracteres.', mtInformation, [mbOK], 0);
         ComboBoxCD_CONTRAPARTIDA.SetFocus;
         Exit;
      end;

      if (MessageDlg('Subcuenta inexistente ¿Desea añadirla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then begin
         WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
         try
            WNuevaSubcuenta.FNuevaSubcuenta := NewValue;
            WNuevaSubcuenta.ShowModal;
            if WNuevaSubcuenta.FNuevaSubcuenta <> '' then begin
               if not (QFichero.State in dsEditModes) then begin
                  QFichero.Edit;
               end;
               QFicheroCONTRAPARTIDA.AsString := WNuevaSubcuenta.FNuevaSubcuenta;
               Accept := True;
            end;
         finally
            FreeAndNil(WNuevaSubcuenta);
         end;
      end;
      ComboBoxCD_CONTRAPARTIDA.SetFocus;
   end;
end;

procedure TWCargaApuntes.ComboBoxCD_CONCEPTOCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; Modified: Boolean);
var Q :TIBQuery;
begin
   if modified and (QFicheroID_CONCEPTOS.AsString <> '') and
                   (QFicheroSUBCUENTA.AsString     = '') and
                   (QFicheroCONTRAPARTIDA.AsString = '') then  begin

      Q := TIBQuery.Create(nil);
      try
         Q.Database := DMRef.BDContab;
         Q.SQL.Clear;
         Q.SQL.Add('SELECT SUBCUENTA, CONTRAPARTIDA FROM CONCEPTOS');
         Q.SQL.Add('WHERE ID_CONCEPTOS = :ID_CONCEPTOS');
         Q.ParamByName('ID_CONCEPTOS').AsString := QFicheroID_CONCEPTOS.AsString;
         Q.Open;
         if not Q.EOF then begin
            if not (QFichero.State in dsEditModes) then begin
               QFichero.Edit;
            end;
            if Q.FieldByName('SUBCUENTA').AsString <> '' then begin
               QFicheroSUBCUENTA.AsString := Q.FieldByName('SUBCUENTA').AsString;
            end;
            if Q.FieldByName('CONTRAPARTIDA').AsString <> '' then begin
               QFicheroCONTRAPARTIDA.AsString := Q.FieldByName('CONTRAPARTIDA').AsString;
            end;
         end;
      finally
         Q.Free;
      end;
   end;
end;

procedure TWCargaApuntes.DBGridMovesDrawColumnCell(Sender: TObject;
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

procedure TWCargaApuntes.DBGridMovesDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWCargaApuntes.DBGridMovesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   FAsientoAnterior := QMovimientosASIENTO.AsInteger;
   DBGridMoves.Refresh;
end;

end.
