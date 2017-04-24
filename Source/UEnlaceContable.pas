unit UEnlaceContable;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils, variants,
     WinProcs, WinTypes;

type
  TWEnlaceContable = class(TForm)
    Datos: TGroupBox;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnAccept: TButton;
    Label1: TLabel;
    Memo: TMemo;
    QFichero: TClientDataSet;
    SFichero: TDataSource;
    QFicheroASIENTO: TIntegerField;
    QFicheroMONEDA: TStringField;
    QFicheroAPUNTE: TIntegerField;
    QFicheroSUBCUENTA: TStringField;
    QFicheroFECHA: TDateTimeField;
    QFicheroIMPORTE: TFloatField;
    QFicheroDEBEHABER: TStringField;
    QFicheroCONTRAPARTIDA: TStringField;
    QFicheroNUMEROFACTURA: TStringField;
    QFicheroCOMENTARIO: TStringField;
    QFicheroNIF: TStringField;
    QFicheroRECARGO: TFloatField;
    QFicheroIVA: TFloatField;
    QFicheroBASEIMPONIBLE: TFloatField;
    QFicheroCUOTAIVA: TFloatField;
    QFicheroCUOTARECARGO: TFloatField;
    QFicheroCUENTA_ANALITICA: TStringField;
    BtnImprimir: TButton;
    gOrden: TRadioGroup;
    QFicheroFECHAINICIAL: TDateTimeField;
    QFicheroFECHAFINAL: TDateTimeField;
    QFicheroDESCSUBCUENTA: TStringField;
    QFicheroDESCAPUNTE: TStringField;
    QFicheroID_CONCEPTOS: TStringField;
    QFicheroDEBE: TFloatField;
    QFicheroHABER: TFloatField;
    QFicheroFECHAIMPRESION: TDateTimeField;
    QBuscaSubcuenta: TIBSQL;
    QInsertaSubcuenta: TIBSQL;
    QCarteraEfectos: TIBSQL;
    QSubcuentas: TIBSQL;
    QBorraDiario: TIBSQL;
    QBorraCartera: TIBSQL;
    QBuscaDiario: TIBSQL;
    QInfSubcta: TIBQuery;
    QBuscaProvincia: TIBQuery;
    QInsProvincia: TIBSQL;
    QModificaSubcuenta: TIBSQL;
    QDiario: TIBQuery;
    QFicheroSERIE: TStringField;
    QFicheroEJERCICIO: TIntegerField;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnImprimirClick(Sender: TObject);
    procedure QFicheroCalcFields(DataSet: TDataSet);
  private
    procedure CrearFichero;
  public
    procedure EnlaceReciboVentas;
    procedure EnlaceSubcuentas;
    procedure EnlaceCheques;
    procedure EnlaceFacturas;
  end;

var WEnlaceContable: TWEnlaceContable;

implementation

uses DM, DMConta, Globales, UEspere, Math, UDiarioModel;

{$R *.DFM}

procedure TWEnlaceContable.CrearFichero;
begin
   QFichero.Active := False;
   QFichero.FieldDefs.Clear;
   QFichero.FieldDefs.Add('FECHAINICIAL', ftDateTime, 0, False);
   QFichero.FieldDefs.Add('FECHAFINAL', ftDateTime, 0, False);
   QFichero.FieldDefs.Add('FECHAIMPRESION', ftDateTime, 0, False);
   QFichero.FieldDefs.Add('ASIENTO', ftInteger, 0, False);
   QFichero.FieldDefs.Add('MONEDA', ftString, 1, False);
   QFichero.FieldDefs.Add('APUNTE', ftInteger, 0, False);
   QFichero.FieldDefs.Add('SUBCUENTA', ftString, 10, False);
   QFichero.FieldDefs.Add('FECHA', ftDateTime, 0, False);
   QFichero.FieldDefs.Add('IMPORTE', ftFloat, 0, False);
   QFichero.FieldDefs.Add('DEBE', ftFloat, 0, False);
   QFichero.FieldDefs.Add('HABER', ftFloat, 0, False);
   QFichero.FieldDefs.Add('ID_CONCEPTOS', ftString, 3, False);
   QFichero.FieldDefs.Add('DEBEHABER', ftString, 1, False);
   QFichero.FieldDefs.Add('CONTRAPARTIDA', ftString, 10, False);
   QFichero.FieldDefs.Add('NUMEROFACTURA', ftString, 10, False);
   QFichero.FieldDefs.Add('COMENTARIO', ftString, 40, False);
   QFichero.FieldDefs.Add('NIF', ftString, 15, False);
   QFichero.FieldDefs.Add('RECARGO', ftFloat, 0, False);
   QFichero.FieldDefs.Add('IVA', ftFloat, 0, False);
   QFichero.FieldDefs.Add('BASEIMPONIBLE', ftFloat, 0, False);
   QFichero.FieldDefs.Add('CUOTAIVA', ftFloat, 0, False);
   QFichero.FieldDefs.Add('CUOTARECARGO', ftFloat, 0, False);
   QFichero.FieldDefs.Add('CUENTA_ANALITICA', ftString, 10, False);
   QFichero.FieldDefs.Add('DESCSUBCUENTA', ftString, 100, False);
   QFichero.FieldDefs.Add('DESCAPUNTE', ftString, 100, False);
   QFichero.FieldDefs.Add('EJERCICIO', ftInteger, 0, False);
   QFichero.FieldDefs.Add('SERIE', ftString, 5, False);

   QFichero.FieldByName('DESCSUBCUENTA').FieldKind := fkCalculated;
   QFichero.FieldByName('DESCAPUNTE').FieldKind    := fkCalculated;
   QFichero.FieldByName('DEBE').FieldKind          := fkCalculated;
   QFichero.FieldByName('HABER').FieldKind         := fkCalculated;

   QFichero.CreateDataSet;
   QFichero.Active := True;

   QFichero.IndexDefs.Add('FECHA', 'FECHA;ASIENTO;APUNTE', []);
   QFichero.IndexDefs.Add('ASIENTO', 'ASIENTO;APUNTE', []);
end;

procedure TWEnlaceContable.BtnAcceptClick(Sender: TObject);
var InProgress :TEspere;
begin
   QFichero.EmptyDataSet;
   Memo.Lines.Clear;

   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   // Verificar que existe el fichero de enlace
   if not FileExists(Config.AppFolder + 'enlace.db') then begin
      DatabaseError('No existe el fichero de enlace de contabilidad.');
   end;

   InProgress := InProgressView('Generando asientos ...');
   try
      try
         (*TEnlace.DatabaseName := Config.AppFolder;
         TEnlace.Tablename    := 'enlace.db';
         TEnlace.Exclusive    := True;
         TEnlace.Open;
         TEnlace.First;
         while not TEnlace.EOF do begin
            // Chequeo del campo "pasado" a la contabilidad
            if (Empty(TEnlace.FieldByName('PASADO').AsString)) or (TEnlace.FieldByName('PASADO').AsString = 'N') then begin
               if TEnlace.FieldByName('TIPO_FV').AsString = 'R' then EnlaceReciboVentas else
               if TEnlace.FieldByName('TIPO_FV').AsString = 'C' then EnlaceCheques      else
               if TEnlace.FieldByName('TIPO_FV').AsString = 'S' then EnlaceSubcuentas   else {¿Será para Clientes/Proveedores?}
               if TEnlace.FieldByName('TIPO_FV').AsString = 'F' then EnlaceFacturas;
            end;
            TEnlace.Next;
         end;
         TEnlace.Close;*)
      except
         on e: Exception do begin
            DatabaseError(e.Message);
         end;
      end;
   finally 
      InProgress.Free;
   end;
   MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
end;

procedure TWEnlaceContable.FormShow(Sender: TObject);
begin
   QInfSubcta.Close;
   QInfSubcta.SQL.Clear;
   QInfSubcta.SQL.Add('SELECT DESCRIPCION FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA');
   CrearFichero;
end;

procedure TWEnlaceContable.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWEnlaceContable.EnlaceReciboVentas;
var
   nAsiento, nApunte: Integer;
   dFechaRecibos: TDatetime;
   cContrapartida, cComentario: String;
   lSerie, lCondicion: Boolean;
   Marca: TBookMark;
begin

   lSerie := (Dmref.QParametrosTRATASERIE.AsString = 'S');
   QBuscaSubcuenta.Close;
   QBuscaSubcuenta.SQL.Clear;
   QBuscaSubcuenta.SQL.Add('select count(*) as cuantos from subctas');
   QBuscaSubcuenta.SQL.Add(' where subcuenta=:subcuenta');
   QBuscaSubcuenta.Prepare;

   QCarteraEfectos.Close;
   QCarteraEfectos.SQL.Clear;
   QCarteraEfectos.SQL.Add('update CarteraEfectos set situacion="B",FAsiento=:Fecha,SubctaBanco=:Banco');
   QCarteraEfectos.SQL.Add(' where subcuenta=:subcuenta and factclient=:factura and importe=:importe');
   if lSerie then begin
      QCarteraEfectos.SQL.Add(' and serie=:serie and ejercicio=:ejercicio');
   end;
   QCarteraEfectos.Prepare;

   QInsertaSubcuenta.Close;
   QInsertaSubcuenta.SQL.Clear;
   QInsertaSubcuenta.SQL.Add('insert into subctas(subcuenta,descripcion,obsoleto)');
   QInsertaSubcuenta.SQL.Add(' values (:subcuenta,:descripcion, "N")');
   QInsertaSubcuenta.Prepare;

   //lCondicion := (TEnlace.FindField('centrocoste') <> nil) and (not Empty(TEnlace.FieldByName('centrocoste').AsString));
   nAsiento   := DMContaRef.ObtenerNumeroAsiento;
   nApunte    := 1;
   // Recibo de Ventas - automatizacion de remesas bancarias
   (*Marca := TEnlace.GetBookMark;
   // Vamos al final para tomar del banco la fecha de todo el asiento
   TEnlace.Last;
   dFechaRecibos  := TEnlace.FieldByName('Fecha').AsDateTime;
   cContrapartida := TEnlace.FieldByName('subcta').AsString;

   // Buscar si existe la subcuenta del banco
   QBuscaSubcuenta.Close;
   QBuscaSubcuenta.parambyname('subcuenta').AsString := Trim(TEnlace.FieldByName('subcta').AsString);
   QBuscaSubcuenta.ExecQuery;
   if not (QBuscaSubcuenta.FieldByName('cuantos').AsInteger > 0) then  begin
      // Error : Subcuenta de banco no encontrada
      // Se da de alta
      QInsertaSubcuenta.Close;
      QInsertaSubcuenta.ParamByName('subcuenta').AsString   := Trim(TEnlace.FieldByName('subcta').AsString);
      QInsertaSubcuenta.ParamByName('descripcion').AsString := 'CREADA EN ENLACE CONTABLE';
      QInsertaSubcuenta.ExecQuery;
      QInsertaSubcuenta.Transaction.CommitRetaining;
   end;

   // Debe permanecer en el ultimo registro para poner como primer apunte
   // del asiento, el banco al debe.
   QDiario.Close;
   QDiario.SQL.Clear;
   QDiario.SQL.Add('INSERT INTO DIARIO(ASIENTO,MONEDA,APUNTE,SUBCUENTA,ID_CONCEPTOS,');
   if lSerie then begin
      QDiario.SQL.Add(' SERIE,EJERCICIO,');
   end;
   QDiario.SQL.Add(' DEBEHABER,IMPORTE,FECHA');
   if not lCondicion then begin
      QDiario.SQL.Add(')');
   end
   else begin
      QDiario.SQL.Add(',CUENTA_ANALITICA)');
   end;
   QDiario.SQL.Add('VALUES (:ASIENTO,:MONEDA,:APUNTE,:SUBCUENTA,:ID_CONCEPTOS,');
   if lSerie then begin
      QDiario.SQL.Add(' :SERIE,:EJERCICIO,');
   end;
   QDiario.SQL.Add(' "D",:IMPORTE,:FECHA');
   if not lCondicion then begin
      QDiario.SQL.Add(')');
   end
   else begin
      QDiario.SQL.Add(',:CUENTA_ANALITICA)');
   end;
   QDiario.ParamByName('asiento').AsInteger     := nAsiento;
   QDiario.ParamByName('moneda').AsString       := 'E';
   QDiario.ParamByName('apunte').AsInteger      := nApunte;
   QDiario.ParamByName('subcuenta').AsString    := TEnlace.FieldByName('subcta').AsString;
   QDiario.ParamByName('fecha').AsDateTime      := dFechaRecibos;
   QDiario.ParamByName('importe').AsFloat       := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
   QDiario.ParamByName('id_conceptos').AsString := '07'; // cobro facturas
   if lSerie then begin
      QDiario.ParamByName('serie').AsString      := TEnlace.FieldByName('serie').AsString;
      QDiario.ParamByName('ejercicio').AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
   end;
   if lCondicion then begin
      QDiario.ParamByName('cuenta_analitica').AsString := Copy(TEnlace.FieldByName('centrocoste').AsString, 1, 10);
   end;
   QDiario.ExecSQL;
   QDiario.Transaction.Commitretaining;

   Memo.Lines.Add(DateTimeToStr(dFechaRecibos) + ' - Cobro Factura: ' +
      TEnlace.FieldByName('FACTURA').AsString + ' - Subcuenta: ' + TEnlace.FieldByName('subcta').AsString +
      ' - Importe: ' + FormatFloat('###,###,##0.00', TEnlace.FieldByName('IMPORTE').AsFloat));

   // Guardar en tabla en memoria
   QFichero.Insert;
   QFicheroASIENTO.AsInteger         := nAsiento;
   QFicheroMONEDA.AsString           := 'E';
   QFicheroAPUNTE.AsInteger          := nApunte;
   QFicheroSUBCUENTA.AsString        := TEnlace.FieldByName('subcta').AsString;
   QFicheroID_CONCEPTOS.AsString     := '07'; // cobro facturas
   QFicheroDEBEHABER.AsString        := 'D';
   QFicheroIMPORTE.AsFloat           := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
   QFicheroFECHA.AsDateTime          := dFechaRecibos;
   QFicheroFECHAIMPRESION.AsDateTime := Date;
   if lSerie then begin
      QFicheroSerie.AsString      := TEnlace.FieldByName('serie').AsString;
      QFicheroEjercicio.AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
   end;
   QFichero.Post;

   Inc(nApunte);

   // Actualizar pasado
   TEnlace.Edit;
   TEnlace.FieldByName('pasado').AsString := 'S';
   TEnlace.Post;

   TEnlace.GotoBookMark(Marca);
   TEnlace.FreeBookMark(Marca);
   TEnlace.Prior;
   while not TEnlace.EOF do begin
      if TEnlace.FieldByName('pasado').AsString <> 'S' then begin
         QBuscaSubcuenta.Close;
         QBuscaSubcuenta.ParamByName('subcuenta').AsString := Trim(TEnlace.FieldByName('subcta').AsString);
         QBuscaSubcuenta.ExecQuery;

         // Buscar si la subcuenta Existe
         if not (QBuscaSubcuenta.FieldByName('cuantos').AsInteger > 0) then begin
            // Error : Subcuenta no encontrada
            // Se da de alta
            QInsertaSubcuenta.Close;
            QInsertaSubcuenta.ParamByName('subcuenta').AsString   := Trim(TEnlace.FieldByName('subcta').AsString);
            QInsertaSubcuenta.ParamByName('descripcion').AsString := 'CREADA EN ENLACE CONTABLE';
            QInsertaSubcuenta.ExecQuery;
            QInsertaSubcuenta.Transaction.CommitRetaining;
         end;

         QCarteraEfectos.Close;
         QCarteraEfectos.ParamByName('subcuenta').AsString := Trim(TEnlace.FieldByName('subcta').AsString);
         QCarteraEfectos.ParamByName('Banco').AsString     := cContrapartida;
         QCarteraEfectos.ParamByName('Factura').AsString   := TEnlace.FieldByName('Factura').AsString;
         QCarteraEfectos.ParamByName('Importe').AsFloat    := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
         QCarteraEfectos.ParamByName('Fecha').AsDateTime   := dFechaRecibos;
         if lSerie then begin
            QCarteraEfectos.ParamByName('serie').AsString      := TEnlace.FieldByName('serie').AsString;
            QCarteraEfectos.ParamByName('ejercicio').AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
         end;
         QCarteraEfectos.ExecQuery;
         QCarteraEfectos.Transaction.CommitRetaining;

         QDiario.Close;
         QDiario.SQL.Clear;
         QDiario.SQL.Add('INSERT INTO DIARIO(ASIENTO,MONEDA,APUNTE,SUBCUENTA,ID_CONCEPTOS,');
         QDiario.SQL.Add(' DEBEHABER,IMPORTE,NUMEROFACTURA,FECHA,COMENTARIO,');
         if lSerie then begin
            QDiario.SQL.Add(' SERIE,EJERCICIO,');
         end;
         QDiario.SQL.Add('CONTRAPARTIDA');
         if not lCondicion then begin
            QDiario.SQL.Add(')');
         end
         else begin
            QDiario.SQL.Add(',CUENTA_ANALITICA)');
         end;
         QDiario.SQL.Add('VALUES (:ASIENTO,:MONEDA,:APUNTE,:SUBCUENTA,:ID_CONCEPTOS,');
         QDiario.SQL.Add(' :DEBEHABER,:IMPORTE,:NUMEROFACTURA,:FECHA,:COMENTARIO,');
         if lSerie then begin
            QDiario.SQL.Add(' :SERIE,:EJERCICIO,');
         end;
         QDiario.SQL.Add(':CONTRAPARTIDA');
         if not lCondicion then begin
            QDiario.SQL.Add(')');
         end
         else begin
            QDiario.SQL.Add(',:CUENTA_ANALITICA)');
         end;
         QDiario.ParamByName('asiento').AsInteger       := nAsiento;
         QDiario.ParamByName('moneda').AsString         := 'E';
         QDiario.ParamByName('apunte').AsInteger        := nApunte;
         QDiario.ParamByName('subcuenta').AsString      := TEnlace.FieldByName('subcta').AsString;
         QDiario.ParamByName('debehaber').AsString      := 'H';
         QDiario.ParamByName('contrapartida').AsString  := cContrapartida;
         QDiario.ParamByName('NumeroFactura').AsInteger := TEnlace.FieldByName('factura').AsInteger;
         QDiario.ParamByName('fecha').AsDateTime        := dFechaRecibos;
         QDiario.ParamByName('importe').AsFloat         := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
         QDiario.ParamByName('id_conceptos').AsString   := '07'; // cobro facturas

         cComentario := '';
         if (TEnlace.FindField('fechavenc') <> nil) and (Copy(Trim(TEnlace.FieldByName('subcta').AsString), 1, 3) <> '572') then begin
            cComentario := 'VTO. ' + TEnlace.FieldByName('fechavenc').AsString;
         end;
         QDiario.ParamByName('comentario').AsString := cComentario;
         if lSerie then begin
            QDiario.ParamByName('serie').AsString      := TEnlace.FieldByName('serie').AsString;
            QDiario.ParamByName('ejercicio').AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
         end;
         if lCondicion then begin
            QDiario.ParamByName('cuenta_analitica').AsString := Copy(TEnlace.FieldByName('centrocoste').AsString, 1, 10);
         end;
         QDiario.ExecSQL;
         QDiario.Transaction.Commitretaining;

         // Guardar en tabla en memoria
         QFichero.Insert;
         QFicheroASIENTO.AsInteger         := nAsiento;
         QFicheroMONEDA.AsString           := 'E';
         QFicheroAPUNTE.AsInteger          := nApunte;
         QFicheroSUBCUENTA.AsString        := TEnlace.FieldByName('subcta').AsString;
         QFicheroID_CONCEPTOS.AsString     := '07'; // cobro facturas
         QFicheroDEBEHABER.AsString        := 'H';
         QFicheroIMPORTE.AsFloat           := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
         QFicheroNUMEROFACTURA.AsString    := TEnlace.FieldByName('FACTURA').AsString;
         QFicheroFECHA.AsDateTime          := dFechaRecibos;
         QFicheroCOMENTARIO.AsString       := cComentario;
         QFicheroCONTRAPARTIDA.AsString    := cContrapartida;
         QFicheroFECHAIMPRESION.AsDateTime := Date;
         if lSerie then begin
            QFicheroSerie.AsString      := TEnlace.FieldByName('serie').AsString;
            QFicheroEjercicio.AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
         end;
         QFichero.Post;

         Inc(nApunte);

         // Actualizar pasado
         TEnlace.Edit;
         TEnlace.FieldByName('pasado').AsString := 'S';
         TEnlace.Post;
      end;
      TEnlace.Next;
   end;*)
end;

procedure TWEnlaceContable.EnlaceCheques;
var nAsiento, nAsientoBorra: Integer;
    lCondicion: Boolean;
begin
   (*while not TEnlace.EOF do begin
      if TEnlace.FieldByName('pasado').AsString <> 'S' then begin
         // centro coste liq. agudo
         lCondicion := (TEnlace.FindField('ccoste') <> nil) and (not Empty(TEnlace.FieldByName('ccoste').AsString));
         QDiario.Close;
         QDiario.Sql.Clear;
         QDiario.Sql.Add('INSERT INTO DIARIO(ASIENTO,MONEDA,APUNTE,SUBCUENTA,ID_CONCEPTOS,');
         QDiario.Sql.Add(' DEBEHABER,IMPORTE,CONTRAPARTIDA,NUMEROFACTURA,FECHA,COMENTARIO');
         if not lCondicion then begin
            QDiario.Sql.Add(')');
         end
         else begin
            QDiario.Sql.Add(',CUENTA_ANALITICA)');
         end;
         QDiario.Sql.Add('VALUES (:ASIENTO,:MONEDA,:APUNTE,:SUBCUENTA,:ID_CONCEPTOS,');
         QDiario.Sql.Add(' :DEBEHABER,:IMPORTE,:CONTRAPARTIDA,:NUMEROFACTURA,:FECHA,:COMENTARIO');
         if not lCondicion then begin
            QDiario.Sql.Add(')');
         end
         else begin
            QDiario.Sql.Add(',:CUENTA_ANALITICA)');
         end;

         nAsiento := DMContaRef.ObtenerNumeroAsiento;

         Memo.Lines.Add(DateTimeToStr(TEnlace.FieldByName('fecha').AsDateTime) +
            ' - Pago Hoja Liquidación: ' + TEnlace.FieldByName('FACTURA').AsString +
            ' - Importe: ' + FormatFloat('###,###,##0.00', TEnlace.FieldByName('IMPORTE').AsFloat));

         // Antes de insertar el asiento hay q borrar si existia antes
         if TEnlace.FieldByName('subcta').AsString <> '' then begin
            QBuscaDiario.Close;
            QBuscaDiario.SQL.Clear;
            QBuscaDiario.SQL.Add('select asiento from diario ');
            QBuscaDiario.SQL.Add(' where numerofactura=:numerofactura and ');
            QBuscaDiario.SQL.Add('  subcuenta=:subcuenta and id_conceptos="41"');
            QBuscaDiario.ParamByName('NUMEROFACTURA').AsString := TEnlace.FieldByName('FACTURA').AsString;
            QBuscaDiario.ParamByName('SUBCUENTA').AsString     := TEnlace.FieldByName('SUBCTA').AsString;
            QBuscaDiario.ExecQuery;

            if QBuscaDiario.FieldByName('asiento').AsInteger > 0 then begin
               nAsientoBorra := QBuscaDiario.FieldByName('asiento').AsInteger;
               QBuscaDiario.Close;
               QBuscaDiario.SQL.Clear;
               QBuscaDiario.SQL.Add('delete from diario where asiento=:asiento');
               QBuscaDiario.ParamByName('asiento').AsInteger := nAsientoBorra;
               QBuscaDiario.ExecQuery;
               QBuscaDiario.Transaction.CommitRetaining;
            end;
         end;

         // Apunte 1
         QDiario.parambyname('asiento').AsInteger      := nAsiento;
         QDiario.parambyname('moneda').AsString        := 'E';
         QDiario.parambyname('apunte').AsInteger       := 1;
         QDiario.parambyname('subcuenta').AsString     := TEnlace.FieldByName('subcta').AsString;
         QDiario.parambyname('id_conceptos').AsString  := '41'; // PAGO HOJA LIQUIDACION
         QDiario.parambyname('debehaber').AsString     := 'D';
         QDiario.parambyname('importe').AsFloat        := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
         QDiario.parambyname('contrapartida').AsString := Trim(TEnlace.FieldByName('subbanco').AsString);  // Banco
         QDiario.parambyname('numerofactura').AsString := TEnlace.FieldByName('factura').AsString;
         QDiario.parambyname('fecha').AsDateTime       := TEnlace.FieldByName('fecha').AsDateTime;
         QDiario.parambyname('comentario').AsString    := TEnlace.FieldByName('factura').AsString;
         if lCondicion then begin
            QDiario.parambyname('cuenta_analitica').AsString := Copy(TEnlace.FieldByName('ccoste').AsString, 1, 10);
         end;
         QDiario.ExecSql;
         QDiario.Transaction.Commitretaining;

         // Guardar en tabla en memoria
         QFichero.Insert;
         QFicheroASIENTO.AsInteger      := nAsiento;
         QFicheroMONEDA.AsString        := 'E';
         QFicheroAPUNTE.AsInteger       := 1;
         QFicheroSUBCUENTA.AsString     := TEnlace.FieldByName('subcta').AsString;
         QFicheroID_CONCEPTOS.AsString  := '41'; // PAGO HOJA LIQUIDACION
         QFicheroDEBEHABER.AsString     := 'D';
         QFicheroIMPORTE.AsFloat        := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
         QFicheroNUMEROFACTURA.AsString := TEnlace.FieldByName('FACTURA').AsString;
         QFicheroFECHA.AsDateTime       := TEnlace.FieldByName('FECHA').AsDateTime;
         QFicheroCOMENTARIO.AsString    := TEnlace.FieldByName('FACTURA').AsString;
         QFicheroCONTRAPARTIDA.AsString := Trim(TEnlace.FieldByName('SUBBANCO').AsString);
         if lCondicion then begin
            QFicheroCUENTA_ANALITICA.AsString := Copy(TEnlace.FieldByName('CCOSTE').AsString, 1, 10);
         end;
         QFicheroFECHAIMPRESION.AsDateTime := Date;
         QFichero.Post;

         // Apunte 2
         QDiario.Close;
         QDiario.parambyname('asiento').AsInteger      := nAsiento;
         QDiario.parambyname('apunte').AsInteger       := 2;
         QDiario.parambyname('moneda').AsString        := 'E';
         QDiario.parambyname('subcuenta').AsString     := Trim(TEnlace.FieldByName('subbanco').AsString);
         QDiario.parambyname('debehaber').AsString     := 'H';
         QDiario.parambyname('fecha').AsDateTime       := TEnlace.FieldByName('fecha').AsDateTime;
         QDiario.parambyname('importe').AsFloat        := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
         QDiario.parambyname('id_conceptos').AsString  := '41'; // PAGO HOJA LIQUIDACION
         QDiario.parambyname('contrapartida').AsString := Trim(TEnlace.FieldByName('subcta').AsString);  // Banco
         QDiario.parambyname('numerofactura').AsString := TEnlace.FieldByName('factura').AsString;
         QDiario.parambyname('comentario').AsString    := TEnlace.FieldByName('factura').AsString;
         if lCondicion then begin
            QDiario.parambyname('cuenta_analitica').AsString := Copy(TEnlace.FieldByName('ccoste').AsString, 1, 10);
         end;
         QDiario.ExecSql;
         QDiario.Transaction.Commitretaining;

         // Guardar en tabla en memoria
         QFichero.Insert;
         QFicheroASIENTO.AsInteger      := nAsiento;
         QFicheroMONEDA.AsString        := 'E';
         QFicheroAPUNTE.AsInteger       := 2;
         QFicheroSUBCUENTA.AsString     := Trim(TEnlace.FieldByName('SUBBANCO').AsString);
         QFicheroID_CONCEPTOS.AsString  := '41'; // PAGO HOJA LIQUIDACION
         QFicheroDEBEHABER.AsString     := 'H';
         QFicheroIMPORTE.AsFloat        := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
         QFicheroNUMEROFACTURA.AsString := TEnlace.FieldByName('FACTURA').AsString;
         QFicheroFECHA.AsDateTime       := TEnlace.FieldByName('FECHA').AsDateTime;
         QFicheroCOMENTARIO.AsString    := TEnlace.FieldByName('FACTURA').AsString;
         QFicheroCONTRAPARTIDA.AsString := Trim(TEnlace.FieldByName('SUBCTA').AsString);
         if lCondicion then begin
            QFicheroCUENTA_ANALITICA.AsString := Copy(TEnlace.FieldByName('CCOSTE').AsString, 1, 10);
         end;
         QFicheroFECHAIMPRESION.AsDateTime := Date;
         QFichero.Post;

         // Actualizar pasado
         TEnlace.Edit;
         TEnlace.FieldByName('pasado').AsString := 'S';
         TEnlace.Post;
      end;
      TEnlace.Next;
   end;*)
end;

procedure TWEnlaceContable.EnlaceFacturas;
var lCondCoste     :Boolean;
    lCondComercial :Boolean;
    lSerie         :Boolean;  {Indica si se tratan las series de documentos o no}
    lIgest         :Boolean;  {Si es una aplicación concreta de gestión}
    nTipo4         :Double;
    nTipo16        :Double;
    nTipo7         :Double;
    nTipoRec4      :Double;
    nTipoRec1      :Double;
    nTipoRec05     :Double;
    cPasado        :string;
    cComentario    :string;
    cNif           :string;
    cContrapartida :string;
    cConcepto      :string;
    cFactura       :string;
    TipoAsiento    :Integer;
    nAsiento       :Integer;
    nApunte        :Integer;
begin

   lSerie := (DMRef.QParametrosTRATASERIE.AsString = 'S');
   //lIgest := (TEnlace.FindField('APLICACION') <> nil) and (TEnlace.FieldByName('APLICACION').AsString = 'I');

   QSubcuentas.Close;
   QSubcuentas.SQL.Clear;
   QSubcuentas.SQL.Add('SELECT SUBCUENTA    ,       ');
   QSubcuentas.SQL.Add('       IVA          ,       ');
   QSubcuentas.SQL.Add('       RECARGO      ,       ');
   QSubcuentas.SQL.Add('       DESCRIPCION  ,       ');
   QSubcuentas.SQL.Add('       CONTRAPARTIDA        ');
   QSubcuentas.SQL.Add('FROM SUBCTAS                ');
   QSubcuentas.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA');
   QSubcuentas.Prepare;

   QBuscaSubcuenta.Close;
   QBuscaSubcuenta.SQL.Clear;
   QBuscaSubcuenta.SQL.Add('SELECT COUNT(*) AS CUANTOS    ');
   QBuscaSubCuenta.SQL.Add('FROM   SUBCTAS                ');
   QBuscaSubcuenta.SQL.Add('WHERE  SUBCUENTA = :SUBCUENTA ');
   QBuscaSubcuenta.Prepare;

   QBorraDiario.Close;
   QBorraDiario.SQL.Clear;
   QBorraDiario.SQL.Add('delete from diario');
   QBorraDiario.SQL.Add(' where asiento = :asiento');
   QBorraDiario.Prepare;

   QInsertaSubcuenta.Close;
   QInsertaSubcuenta.SQL.Clear;
   QInsertaSubcuenta.SQL.Add('insert into subctas (subcuenta, descripcion, pais, direccion, nif, codpostal,');
   QInsertaSubcuenta.SQL.Add(' poblacion, provincia,');
   QInsertaSubcuenta.SQL.Add('telefono, fax, obsoleto)');
   QInsertaSubcuenta.SQL.Add('values(:subcuenta, :descripcion, :pais, :direccion, :nif, :codpostal,');
   QInsertaSubcuenta.SQL.Add(' :poblacion, :provincia,');
   QInsertaSubcuenta.SQL.Add(' :telefono, :fax, "N") ');
   QInsertaSubcuenta.Prepare;

   QModificaSubcuenta.Close;
   QModificaSubcuenta.SQL.Clear;
   QModificaSubcuenta.SQL.Add('update subctas set descripcion=:descripcion,direccion=:direccion,nif=:nif,codpostal=:codpostal,');
   QModificaSubcuenta.SQL.Add(' poblacion=:poblacion,telefono=:telefono,fax=:fax ');
   if not lIGest then begin
      QModificaSubcuenta.SQL.Add(' ,provincia = :provincia ');
   end;
   QModificaSubcuenta.SQL.Add('where subcuenta = :subcuenta');
   QModificaSubcuenta.Prepare;

   QBorraCartera.Close;
   QBorraCartera.SQL.Clear;
   QBorraCartera.SQL.Add('delete from carteraefectos');
   QBorraCartera.SQL.Add(' where factclient=:factclient and subcuenta=:subcuenta ');
   if lSerie then begin
      QBorraCartera.SQL.Add(' and ejercicio=:ejercicio and serie=:serie ');
   end;
   QBorraCartera.Prepare;

   QBuscaProvincia.Close;
   QBuscaProvincia.SQL.Clear;
   QBuscaProvincia.SQL.Add('SELECT * FROM PROVINCIAS WHERE PROVINCIA = :PROVINCIA');

   QInsProvincia.Close;
   QInsProvincia.SQL.Clear;
   QInsProvincia.SQL.Add('INSERT INTO PROVINCIAS (PROVINCIA, NOMBRE, CODIGO)');
   QInsProvincia.SQL.Add('VALUES (:PROVINCIA, :NOMBRE, :CODIGO)');

   // Inicializacion de tipos
   //nTipo4     :=99;
   //nTipo7     :=99;
   //nTipo16    :=99;
   //nTipoRec4  :=99;
   //nTipoRec1  :=99;
   //nTipoRec05 :=99;

   // Poner valores reales a los tipos
   // I.V.A. Normal
   QSubcuentas.Close;
   QSubcuentas.parambyname('subcuenta').AsString := DmRef.QParametrosSCTAIVANORMAL.AsString;
   QSubcuentas.ExecQuery;
   nTipo16 := QSubcuentas.FieldByName('iva').AsFloat;

   // I.V.A. Reducido
   QSubcuentas.Close;
   QSubcuentas.parambyname('subcuenta').AsString := DmRef.QParametrosSCTAIVAREDUCIDO.AsString;
   QSubcuentas.ExecQuery;
   nTipo7 := QSubcuentas.FieldByName('iva').AsFloat;

   // I.V.A. Su perReducido
   QSubcuentas.Close;
   QSubcuentas.parambyname('subcuenta').AsString := DmRef.QParametrosSCTAIVASUPER.AsString;
   QSubcuentas.ExecQuery;
   nTipo4 := QSubcuentas.FieldByName('iva').AsFloat;

   // Rec. Equiv. Normal
   QSubcuentas.Close;
   QSubcuentas.parambyname('subcuenta').AsString := DmRef.QParametrosSCTARECNORMAL.AsString;
   QSubcuentas.ExecQuery;
   nTipoRec4 := QSubcuentas.FieldByName('recargo').AsFloat;

   // Rec. Equi. Reducido
   QSubcuentas.Close;
   QSubcuentas.parambyname('subcuenta').AsString := DmRef.QParametrosSCTARECREDUCIDO.AsString;
   QSubcuentas.ExecQuery;
   nTipoRec1 := QSubcuentas.FieldByName('recargo').AsFloat;

   // Rec. Equi. SuperReducido
   QSubcuentas.Close;
   QSubcuentas.parambyname('subcuenta').AsString := DmRef.QParametrosSCTARECSUPER.AsString;
   QSubcuentas.ExecQuery;
   nTipoRec05 := QSubcuentas.FieldByName('recargo').AsFloat;

   (*while not TEnlace.EOF do begin
      // Salir para hacer los cobros en metalico
      if TEnlace.FieldByName('TIPO_FV').AsString = 'R' then Exit;

      if TEnlace.FieldByName('PASADO').AsString <> 'S' then begin
         cPasado := 'S';

         if TEnlace.FieldByName('TIPO_FV').AsString = 'V' then begin // Recibos de las facturas
            // Solo se crean registros si se gestiona en la empresa actual la cartera de efectos
            if DmRef.QParametrosGESTIONA_CARTERA_EFECTOS.AsString = 'S' then begin
               // Seleccion de campo de facturas
               if (TEnlace.FindField('NUMFACTU') <> nil) and (TEnlace.FieldByName('NUMFACTU').AsString <> '') then begin
                  cFactura := TEnlace.FieldByName('NUMFACTU').AsString;
               end
               else begin
                  cFactura := TEnlace.FieldByName('FACTURA').AsString;
               end;

               lCondComercial := (TEnlace.FindField('COMERCIAL') <> nil) and (not Empty(TEnlace.FieldByName('COMERCIAL').AsString));
               QCarteraEfectos.Close;
               QCarteraEfectos.SQL.Clear;
               QCarteraEfectos.SQL.Add('INSERT INTO CARTERAEFECTOS (SUBCUENTA, SITUACION, CONCEPTO,');
               QCarteraEfectos.SQL.Add(' FEMISION,IMPORTE,');
               if lSerie then begin
                  QCarteraEfectos.Sql.Add('SERIE,EJERCICIO,');
               end;

               if TEnlace.FieldByName('debehaber').AsString = 'D' then begin
                  QCarteraEfectos.SQL.Add('FACTCLIENT,');
               end
               else begin
                  QCarteraEfectos.Sql.Add('FACTPROVEEDOR,');
               end;
               QCarteraEfectos.Sql.Add(' FVENCIMIENTO');
               if lCondComercial then begin
                  QCarteraEfectos.Sql.Add(',COMERCIAL,IMPCOMISION)');
               end
               else begin
                  QCarteraEfectos.Sql.Add(')');
               end;
               QCarteraEfectos.Sql.Add('values (:SUBCUENTA, :SITUACION, :CONCEPTO, :FEMISION,');
               QCarteraEfectos.Sql.Add(' :IMPORTE,');
               if lSerie then begin
                  QCarteraEfectos.Sql.Add(':SERIE,:EJERCICIO,');
               end;
               if TEnlace.FieldByName('debehaber').AsString = 'D' then begin
                  QCarteraEfectos.Sql.Add(':FACTCLIENT,');
               end
               else begin
                  QCarteraEfectos.Sql.Add(':FACTPROVEEDOR,');
               end;
               QCarteraEfectos.Sql.Add(':FVENCIMIENTO');
               if lCondComercial then begin
                  QCarteraEfectos.Sql.Add(',:COMERCIAL,:IMPCOMISION)');
               end
               else begin
                  QCarteraEfectos.Sql.Add(')');
               end;

               QCarteraEfectos.parambyname('subcuenta').AsString := TEnlace.FieldByName('subcta').AsString;
               if Trim(TEnlace.FieldByName('subcta').AsString) =
                  Trim(DmRef.QParametrosVGENERICA.AsString) then begin
                  QCarteraEfectos.parambyname('situacion').AsString := 'A';
               end // aceptado si generica ventas
               else begin
                  QCarteraEfectos.parambyname('situacion').AsString := 'N';
               end;

               QCarteraEfectos.parambyname('femision').AsDateTime     := TEnlace.FieldByName('fecha').AsDateTime;
               QCarteraEfectos.parambyname('importe').AsFloat         := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
               QCarteraEfectos.parambyname('fvencimiento').AsDateTime := TEnlace.FieldByName('fvencim').AsDateTime;

               if lSerie then begin
                  QCarteraEfectos.parambyname('serie').AsString      := TEnlace.FieldByName('serie').AsString;
                  QCarteraEfectos.parambyname('ejercicio').AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
               end;

               if lCondComercial then begin
                  QCarteraEfectos.parambyname('comercial').AsString  := Copy(TEnlace.FieldByName('comercial').AsString, 1, 10);
                  QCarteraEfectos.parambyname('impcomision').AsFloat := RoundTo(TEnlace.FieldByName('impcomision').AsFloat, -2);
               end;
               if TEnlace.FieldByName('debehaber').AsString = 'D' then begin
                  if not empty(cFactura) then begin
                     QCarteraEfectos.parambyname('factclient').AsString := cFactura;
                  end
                  else begin
                     QCarteraEfectos.parambyname('factclient').AsString := IntToStr((TEnlace.FieldByName('anualfactu').AsInteger * 10000) +
                                                                                     TEnlace.FieldByName('numfactu').AsInteger);
                  end;

                  if DMRef.QParametrosDESCCLI_CARTERAEFECTOS.AsString = 'S' then begin
                     QSubcuentas.Close;
                     QSubcuentas.ParamByName('SUBCUENTA').AsString := TEnlace.FieldByName('subcta').AsString;
                     QSubcuentas.ExecQuery;
                     if not QSubcuentas.EOF then begin
                        QCarteraEfectos.parambyname('concepto').AsString := QSubcuentas.FieldByName('DESCRIPCION').AsString;
                     end
                     else begin
                        if lSerie then begin
                           QCarteraEfectos.parambyname('concepto').AsString :=
                              'COBRO VTO. ' + TEnlace.FieldByName('fvencim').AsString + ' FACT. ' +
                              Trim(QCarteraEfectos.parambyname('ejercicio').AsString) + '/' +
                              Trim(QCarteraEfectos.parambyname('serie').AsString) + '-' +
                              Trim(QCarteraEfectos.parambyname('factclient').AsString);
                        end
                        else begin
                           QCarteraEfectos.parambyname('concepto').AsString :=
                              'COBRO VTO. ' + TEnlace.FieldByName('fvencim').AsString + ' FACT. ' +
                              Trim(QCarteraEfectos.parambyname('factclient').AsString);
                        end;
                     end;
                  end
                  else begin
                     if lSerie then begin
                        QCarteraEfectos.parambyname('concepto').AsString :=
                           'COBRO VTO. ' + TEnlace.FieldByName('fvencim').AsString + ' FACT. ' +
                           Trim(QCarteraEfectos.parambyname('ejercicio').AsString) + '/' +
                           Trim(QCarteraEfectos.parambyname('serie').AsString) + '-' +
                           Trim(QCarteraEfectos.parambyname('factclient').AsString);
                     end
                     else begin
                        QCarteraEfectos.parambyname('concepto').AsString :=
                           'COBRO VTO. ' + TEnlace.FieldByName('fvencim').AsString + ' FACT. ' +
                           Trim(QCarteraEfectos.parambyname('factclient').AsString);
                     end;
                  end;
               end
               else begin
                  QCarteraEfectos.parambyname('situacion').AsString := 'A';
                  if not empty(cFactura) then begin
                     QCarteraEfectos.parambyname('factproveedor').AsString := cFactura;
                  end
                  else begin
                     QCarteraEfectos.parambyname('factproveedor').AsString :=
                        TEnlace.FieldByName('anualfactu').AsString + '/' + TEnlace.FieldByName('factprove').AsString;
                  end;

                  if DMRef.QParametrosDESCPROV_CARTERAEFECTOS.AsString = 'S' then begin
                     QSubcuentas.Close;
                     QSubcuentas.ParamByName('SUBCUENTA').AsString := TEnlace.FieldByName('subcta').AsString;
                     QSubcuentas.ExecQuery;
                     if not QSubcuentas.EOF then begin
                        QCarteraEfectos.parambyname('concepto').AsString := QSubcuentas.FieldByName('DESCRIPCION').AsString;
                     end
                     else begin
                        if lSerie then begin
                           QCarteraEfectos.parambyname('concepto').AsString :=
                              'PAGO VTO. ' + TEnlace.FieldByName('fvencim').AsString + ' FACT. ' +
                              Trim(QCarteraEfectos.parambyname('ejercicio').AsString) + '/' +
                              Trim(QCarteraEfectos.parambyname('serie').AsString) + '-' +
                              Trim(QCarteraEfectos.parambyname('factproveedor').AsString);
                        end
                        else begin
                           QCarteraEfectos.parambyname('concepto').AsString :=
                              'PAGO VTO. ' + TEnlace.FieldByName('fvencim').AsString + ' FACT. ' +
                              Trim(QCarteraEfectos.parambyname('factproveedor').AsString);
                        end;
                     end;
                  end
                  else begin
                     if lSerie then begin
                        QCarteraEfectos.parambyname('concepto').AsString :=
                           'PAGO VTO. ' + TEnlace.FieldByName('fvencim').AsString + ' FACT. ' +
                           Trim(QCarteraEfectos.parambyname('ejercicio').AsString) + '/' +
                           Trim(QCarteraEfectos.parambyname('serie').AsString) + '-' +
                           Trim(QCarteraEfectos.parambyname('factproveedor').AsString);
                     end
                     else begin
                        QCarteraEfectos.parambyname('concepto').AsString :=
                           'PAGO VTO. ' + TEnlace.FieldByName('fvencim').AsString + ' FACT. ' +
                           Trim(QCarteraEfectos.parambyname('factproveedor').AsString);
                     end;
                  end;
               end;
               QCarteraEfectos.ExecQuery;
               QCarteraEfectos.Transaction.CommitRetaining;
            end;
         end
         else begin
         {---- aquí comienza la gestión de las facturas ---}
{------------------------------------------------------------------------------------------------------------------------------------------}
            // Seleccion de campo de facturas
            if (TEnlace.FindField('numfactu') <> nil) and (TEnlace.FieldByName('numfactu').AsString <> '') then
            begin
               cFactura := TEnlace.FieldByName('NumFactu').AsString;
            end
            else begin
               cFactura := TEnlace.FieldByName('Factura').AsString;
            end;

            // Facturas de Ventas o Compras


            // Buscar si ya se ha enlazado anteriormente
            // 'DEBEHABER; NUMEROFACTURA; SUBCUENTA'

            // DebeHaber = D -> Fact. Venta
            // Busqueda por DEBEHABER; NUMEROFACTURA
            if TEnlace.FieldByName('DEBEHABER').AsString = 'D' then begin
               // El tipo de cuenta debe ser de cliente, por problemas en el enlace de Facturas de sanca
               QBuscaDiario.Close;
               QBuscaDiario.SQL.Clear;
               QBuscaDiario.SQL.Add('select d.asiento from diario d, cuentas c');
               QBuscaDiario.SQL.Add(' where d.numerofactura=:numerofactura and d.debehaber=:debehaber');
               if lSerie then begin
                  QBuscaDiario.SQL.Add(' and d.serie=:serie and d.ejercicio=:ejercicio');
               end;
               QBuscaDiario.SQL.Add(' and substr(d.subcuenta,1,3)=c.cuenta and c.tipocuenta="C" ');
               QBuscaDiario.ParamByName('NUMEROFACTURA').AsString := cFactura;
               if lSerie then begin
                  QBuscaDiario.ParamByName('SERIE').AsString      := TEnlace.FieldByName('SERIE').AsString;
                  QBuscaDiario.ParamByName('EJERCICIO').AsInteger := TEnlace.FieldByName('EJERCICIO').AsInteger;
               end;
               QBuscaDiario.ParamByName('DEBEHABER').AsString := TEnlace.FieldByName('DEBEHABER').AsString;
               QBuscaDiario.prepare;
               QBuscaDiario.ExecQuery;
            end

            // DebeHaber = H -> Fact. Compra
            // Busqueda por DEBEHABER; NUMEROFACTURA; SUBCUENTA
            else begin
               QBuscaDiario.Close;
               QBuscaDiario.SQL.Clear;
               QBuscaDiario.SQL.Add('select asiento from diario');
               QBuscaDiario.SQL.Add(' where subcuenta=:subcuenta and numerofactura=:numerofactura');
               if lSerie then begin
                  QBuscaDiario.SQL.Add(' and d.serie=:serie and d.ejercicio=:ejercicio');
               end;
               QBuscaDiario.SQL.Add(' and debehaber=:debehaber');
               QBuscaDiario.ParamByName('SUBCUENTA').AsString     := TEnlace.FieldByName('SUBCTA').AsString;
               QBuscaDiario.ParamByName('NUMEROFACTURA').AsString := cFactura;
               QBuscaDiario.ParamByName('DEBEHABER').AsString     := TEnlace.FieldByName('DEBEHABER').AsString;
               if lSerie then begin
                  QBuscaDiario.ParamByName('SERIE').AsString      := TEnlace.FieldByName('SERIE').AsString;
                  QBuscaDiario.ParamByName('EJERCICIO').AsInteger := TEnlace.FieldByName('EJERCICIO').AsInteger;
               end;
               QBuscaDiario.prepare;
               QBuscaDiario.ExecQuery;
            end;

            if QBuscaDiario.FieldByName('ASIENTO').AsInteger > 0 then begin
               // Error : Factura encontrada , se borra asiento
               QBorraDiario.Close;
               QBorraDiario.parambyname('asiento').AsInteger := QBuscaDiario.FieldByName('asiento').AsInteger;
               QBorraDiario.ExecQuery;
               QBorraDiario.transaction.commitretaining;
               if DmRef.QParametrosGESTIONA_CARTERA_EFECTOS.AsString = 'S' then begin
                  // Borrado de vencimientos
                  QBorraCartera.Close;
                  QBorraCartera.parambyname('factclient').AsString := cFactura;
                  QBorraCartera.parambyname('subcuenta').AsString  := TEnlace.FieldByName('subcta').AsString;
                  if lSerie then begin
                     QBorraCartera.ParamByName('SERIE').AsString      := TEnlace.FieldByName('SERIE').AsString;
                     QBorraCartera.ParamByName('EJERCICIO').AsInteger := TEnlace.FieldByName('EJERCICIO').AsInteger;
                  end;
                  QBorraCartera.ExecQuery;
                  QBorraCartera.transaction.commitretaining;
               end;
               cPasado := 'B';
            end;
            // Final :Buscar si ya se ha enlazado anteriormente


            if (TEnlace.findfield('contrapartida') <> nil) and (not empty(TEnlace.FieldByName('contrapartida').AsString)) then begin
               QBuscaSubcuenta.Close;
               QBuscaSubcuenta.parambyname('subcuenta').AsString :=
                  Trim(TEnlace.FieldByName('contrapartida').AsString);
               QBuscaSubcuenta.ExecQuery;

               // Buscar si la contrapartida Existe
               if not (QBuscaSubcuenta.FieldByName('cuantos').AsInteger > 0) then begin
                  // Error : Contrapartida no encontrada Se da de alta
                  cPasado := 'G';

                  QInsertaSubcuenta.Close;
                  QInsertaSubcuenta.parambyname('subcuenta').AsString   := Trim(TEnlace.FieldByName('contrapartida').AsString);
                  QInsertaSubcuenta.parambyname('descripcion').AsString := 'Creada en enlace contable';
                  QInsertaSubcuenta.parambyname('pais').AsString        := 'ES';
                  QInsertaSubcuenta.parambyname('direccion').AsString   := '';
                  QInsertaSubcuenta.parambyname('nif').AsString         := '';
                  QInsertaSubcuenta.parambyname('codpostal').AsString   := '';
                  QInsertaSubcuenta.parambyname('poblacion').AsString   := '';
                  QInsertaSubcuenta.parambyname('provincia').AsVariant  := null;
                  QInsertaSubcuenta.parambyname('telefono').AsString    := '';
                  QInsertaSubcuenta.parambyname('fax').AsString         := '';
                  QInsertaSubcuenta.ExecQuery;
                  QInsertaSubcuenta.Transaction.CommitRetaining;
               end;
            end; // Final Error : Contrapartida no encontrada

            QBuscaSubcuenta.Close;
            QBuscaSubcuenta.ParamByName('subcuenta').AsString := Trim(TEnlace.FieldByName('subcta').AsString);
            QBuscaSubcuenta.ExecQuery;

            // Buscar si la subcuenta Existe
            if not (QBuscaSubcuenta.FieldByName('cuantos').AsInteger > 0) then begin
               // Error : Subcuenta no encontrada
               // Se da de alta
               cPasado := 'G';

               // Buscar provincia
               if (not lIGest) and (not TEnlace.FieldByName('PROVINCIA').IsNull) then begin
                  QBuscaProvincia.Close;
                  QBuscaProvincia.ParamByName('PROVINCIA').AsString := TEnlace.FieldByName('PROVINCIA').AsString;
                  QBuscaProvincia.Open;
                  if QBuscaProvincia.EOF then begin
                     QInsProvincia.Close;
                     QInsProvincia.ParamByName('PROVINCIA').AsString := TEnlace.FieldByName('PROVINCIA').AsString;
                     QInsProvincia.ParamByName('NOMBRE').AsString    := 'CREADO EN ENLACE CONTABLE';
                     QInsProvincia.ParamByName('CODIGO').AsString    := '';
                     QInsProvincia.ExecQuery;
                     QInsProvincia.Transaction.CommitRetaining;
                  end;
                  QBuscaProvincia.Close;
               end;

               QInsertaSubcuenta.Close;
               QInsertaSubcuenta.parambyname('subcuenta').AsString   := Trim(TEnlace.FieldByName('subcta').AsString);
               QInsertaSubcuenta.parambyname('descripcion').AsString := Copy(TEnlace.FieldByName('nombre').AsString, 1, 80);
               QInsertaSubcuenta.parambyname('pais').AsString        := 'ES';
               QInsertaSubcuenta.parambyname('direccion').AsString   := Copy(TEnlace.FieldByName('direccion').AsString, 1, 35);
               QInsertaSubcuenta.parambyname('nif').AsString         := Copy(TEnlace.FieldByName('nif').AsString, 1, 20);
               QInsertaSubcuenta.parambyname('codpostal').AsString   := Copy(TEnlace.FieldByName('codpostal').AsString, 1, 10);
               QInsertaSubcuenta.parambyname('poblacion').AsString   := Copy(TEnlace.FieldByName('poblacion').AsString, 1, 60);

               // Defecto para I-Gest q no tiene campo de provincia en el enlace
               QInsertaSubcuenta.parambyname('provincia').AsVariant := null;
               if not lIgest then begin
                  if TEnlace.FieldByName('provincia').IsNull then begin
                     QInsertaSubcuenta.parambyname('provincia').AsVariant := null;
                  end
                  else begin
                     QInsertaSubcuenta.parambyname('provincia').AsString := Copy(TEnlace.FieldByName('provincia').AsString, 1, 2);
                  end;
               end;

               QInsertaSubcuenta.parambyname('telefono').AsString := Copy(TEnlace.FieldByName('telefono').AsString, 1, 16);
               QInsertaSubcuenta.parambyname('fax').AsString      := Copy(TEnlace.FieldByName('fax').AsString, 1, 16);
               QInsertaSubcuenta.ExecQuery;
               QInsertaSubcuenta.Transaction.CommitRetaining;
               cComentario := Trim(TEnlace.FieldByName('nombre').AsString);

               DMContaRef.RefrescarSubcuentas(TEnlace.FieldByName('SUBCTA').AsString);
            end; // Final Error : Subcuenta no encontrada

            QSubcuentas.Close;
            QSubcuentas.parambyname('subcuenta').AsString := Trim(TEnlace.FieldByName('subcta').AsString);
            QSubcuentas.ExecQuery;
            cComentario := Trim(QSubcuentas.FieldByName('Descripcion').AsString);

            // Si la subcuenta de enlace es la genérica de ventas / compras
            // se pone en comentario el nombre que viene del enlace.
            // Igual para el NIF .
            // Todo esto es para que salga en los listados.
            cNif := '';
            if (Trim(TEnlace.FieldByName('subcta').AsString) = Trim(DmRef.QParametrosVGENERICA.AsString)) or
               (Trim(TEnlace.FieldByName('subcta').AsString) = Trim(DmRef.QParametrosVGENERICAC.AsString)) then begin
               cComentario := Trim(TEnlace.FieldByName('nombre').AsString);
               cNif        := TEnlace.FieldByName('Nif').AsString;
            end;
            nAsiento := DMContaRef.ObtenerNumeroAsiento;

            Memo.Lines.Add(DateTimeToStr(TEnlace.FieldByName('fecha').AsDateTime) + ' - Factura: ' +
               cFactura + ' - Subcuenta: ' + TEnlace.FieldByName('Subcta').AsString +
               ' - Importe: ' + FormatFloat('###,###,##0.00', TEnlace.FieldByName('IMPORTE').AsFloat));

            // Apunte 1
            lCondCoste := ((TEnlace.FindField('centrocoste') <> nil) and (not
               empty(TEnlace.FieldByName('centrocoste').AsString))) or ((TEnlace.FindField('ccoste') <> nil) and
               (not empty(TEnlace.FieldByName('ccoste').AsString)));

            QDiario.Close;
            QDiario.Sql.Clear;
            QDiario.Sql.Add('INSERT INTO DIARIO(TIPOASIENTO, ASIENTO, APUNTE,MONEDA, SUBCUENTA, ID_CONCEPTOS,');
            QDiario.Sql.Add(' DEBEHABER, IMPORTE, CONTRAPARTIDA, FECHA, NUMEROFACTURA, COMENTARIO,');
            QDiario.Sql.Add(' NIF');
            if lSerie then begin
               QDiario.Sql.Add(',SERIE, EJERCICIO');
            end;
            if not lCondCoste then begin
               QDiario.Sql.Add(')');
            end
            else begin
               QDiario.Sql.Add(',CUENTA_ANALITICA)');
            end;

            QDiario.Sql.Add('VALUES (:TIPOASIENTO, :ASIENTO, :APUNTE, :MONEDA, :SUBCUENTA, :ID_CONCEPTOS,');
            QDiario.Sql.Add(' :DEBEHABER, :IMPORTE, :CONTRAPARTIDA, :FECHA, :NUMEROFACTURA,');
            QDiario.Sql.Add(' :COMENTARIO, :NIF');
            if lSerie then begin
               QDiario.Sql.Add(',:SERIE, :EJERCICIO');
            end;
            if not lCondCoste then begin
               QDiario.Sql.Add(')');
            end
            else begin
               QDiario.Sql.Add(',:CUENTA_ANALITICA)');
            end;

            cContrapartida := QSubcuentas.FieldByName('contrapartida').AsString;
            if Trim(cContrapartida) = '0' then begin
               cContrapartida := '';
            end;

            // Enlace de marcas de una empresa específica
            if (TEnlace.findfield('contrapartida') <> nil) and (not empty(TEnlace.FieldByName('contrapartida').AsString)) then begin
               cContrapartida := TEnlace.FieldByName('contrapartida').AsString;
            end;

            if TEnlace.FieldByName('Debehaber').AsString = 'D' then begin
               TipoAsiento := ASIENTO_FACTURA_VENTA;
               if (TEnlace.findfield('concepto') <> nil) and (TEnlace.FieldByName('concepto').AsString <> '') then begin
                  cConcepto := TEnlace.FieldByName('Concepto').AsString;
               end
               else begin
                  cConcepto := DmRef.QParametrosCTOCLIENTES.AsString;
               end;

               if empty(cContrapartida) then begin
                  cContrapartida := DmRef.QParametrosSCTAVENTAS.AsString;
               end;

            end
            else begin
               TipoAsiento := ASIENTO_FACTURA_COMPRA;
               cConcepto   := DmRef.QParametrosCTOPROVEEDORES.AsString;
               if Empty(cContrapartida) then begin
                  cContrapartida := DmRef.QParametrosSCTACOMPRAS.AsString;
               end;
            end;


            if lCondCoste and (TEnlace.FindField('centrocoste') <> nil) and (TEnlace.FieldByName('centrocoste').AsString <> '') then begin
               QDiario.parambyname('cuenta_analitica').AsString := TEnlace.FieldByName('centrocoste').AsString;
            end;

            if lCondCoste and (TEnlace.FindField('ccoste') <> nil) and
               (TEnlace.FieldByName('ccoste').AsString <> '') then begin // centro coste enlace Fact.agudo
               QDiario.parambyname('cuenta_analitica').AsString := TEnlace.FieldByName('ccoste').AsString;
            end;

            if lSerie then begin
               QDiario.parambyname('ejercicio').AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
               QDiario.parambyname('serie').AsString      := TEnlace.FieldByName('serie').AsString;
            end;

            QDiario.parambyname('asiento').AsInteger      := nAsiento;
            QDiario.parambyname('apunte').AsInteger       := 1;
            QDiario.ParamByName('TIPOASIENTO').AsInteger  := TipoAsiento;
            QDiario.parambyname('moneda').AsString        := 'E';
            QDiario.parambyname('subcuenta').AsString     := Trim(TEnlace.FieldByName('subcta').AsString);
            QDiario.parambyname('id_conceptos').AsString  := cConcepto;
            QDiario.parambyname('debehaber').AsString     := TEnlace.FieldByName('Debehaber').AsString;
            QDiario.parambyname('importe').AsFloat        := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
            QDiario.parambyname('contrapartida').AsString := cContrapartida;
            QDiario.parambyname('fecha').AsDateTime       := TEnlace.FieldByName('fecha').AsDateTime;
            QDiario.parambyname('numerofactura').AsString := cFactura;
            QDiario.parambyname('comentario').AsString    := Copy(cComentario, 1, 40);
            QDiario.parambyname('nif').AsString           := Copy(cNif, 1, 15);

            QDiario.ExecSql;
            QDiario.Transaction.CommitRetaining;
            // Final Apunte 1

            // Guardar en tabla en memoria
            QFichero.Insert;
            QFicheroASIENTO.AsInteger      := nAsiento;
            QFicheroMONEDA.AsString        := 'E';
            QFicheroAPUNTE.AsInteger       := 1;
            QFicheroSUBCUENTA.AsString     := TEnlace.FieldByName('subcta').AsString;
            QFicheroID_CONCEPTOS.AsString  := cConcepto;
            QFicheroDEBEHABER.AsString     := TEnlace.FieldByName('DEBEHABER').AsString;
            QFicheroIMPORTE.AsFloat        := RoundTo(TEnlace.FieldByName('importe').AsFloat, -2);
            QFicheroNUMEROFACTURA.AsString := cFactura;
            QFicheroFECHA.AsDateTime       := TEnlace.FieldByName('FECHA').AsDateTime;
            QFicheroCOMENTARIO.AsString    := Copy(cComentario, 1, 40);
            QFicheroCONTRAPARTIDA.AsString := cContrapartida;
            QFicheroNIF.AsString           := Copy(cNif, 1, 15);
            if lSerie then begin
               QFicheroEjercicio.AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
               QFicheroSerie.AsString      := TEnlace.FieldByName('serie').AsString;
            end;
            if lCondCoste then begin
               QFicheroCUENTA_ANALITICA.AsString := Copy(TEnlace.FieldByName('centrocoste').AsString, 1, 10);
            end;
            QFicheroFECHAIMPRESION.AsDateTime := Date;
            QFichero.Post;


            // Apunte 2 - Subcuenta de IVA
            QDiario.Close;
            QDiario.Sql.Clear;
            QDiario.Sql.Add('INSERT INTO DIARIO(TIPOASIENTO, ASIENTO,APUNTE,MONEDA,SUBCUENTA,ID_CONCEPTOS,');
            QDiario.Sql.Add(' DEBEHABER,IMPORTE,CONTRAPARTIDA,FECHA,NUMEROFACTURA,COMENTARIO,NIF,');
            if lSerie then begin
               QDiario.Sql.Add('SERIE,EJERCICIO,');
            end;
            QDiario.Sql.Add(' RECARGO,IVA,BASEIMPONIBLE,CUOTAIVA,CUOTARECARGO');
            if not lCondCoste then begin
               QDiario.Sql.Add(')');
            end
            else begin
               QDiario.Sql.Add(',CUENTA_ANALITICA)');
            end;
            QDiario.Sql.Add('VALUES (:TIPOASIENTO, :ASIENTO,:APUNTE,:MONEDA,:SUBCUENTA,:ID_CONCEPTOS,');
            QDiario.Sql.Add(' :DEBEHABER,:IMPORTE,:CONTRAPARTIDA,:FECHA,:NUMEROFACTURA,:COMENTARIO,:NIF,');
            if lSerie then begin
               QDiario.Sql.Add(':SERIE,:EJERCICIO,');
            end;
            QDiario.Sql.Add(':RECARGO,:IVA,:BASEIMPONIBLE,:CUOTAIVA,:CUOTARECARGO');
            if not lCondCoste then begin
               QDiario.Sql.Add(')');
            end
            else begin
               QDiario.Sql.Add(',:CUENTA_ANALITICA)');
            end;

            QDiario.parambyname('asiento').AsInteger     := nAsiento;
            QDiario.parambyname('apunte').AsInteger      := 2;
            QDiario.ParamByName('TIPOASIENTO').AsInteger := TipoAsiento;
            QDiario.parambyname('moneda').AsString       := 'E';
            if lSerie then begin
               QDiario.parambyname('ejercicio').AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
               QDiario.parambyname('serie').AsString      := TEnlace.FieldByName('serie').AsString;
            end;
            if TEnlace.FieldByName('DebeHaber').AsString = 'D' then begin
               QDiario.parambyname('debehaber').AsString := 'H';
            end
            else begin
               QDiario.parambyname('debehaber').AsString := 'D';
            end;
            QDiario.parambyname('fecha').AsDateTime := TEnlace.FieldByName('fecha').AsDateTime;

            if RoundTo(TEnlace.FieldByName('iva').AsFloat, -2) = 0 then begin
               QDiario.parambyname('subcuenta').AsString :=
                  DmRef.QParametrosSCTAIVAEXENTO.AsString;
               // Tipos de "una empresa específica", se deberian parametrizar???
               if TEnlace.findfield('TipoSinIva') <> nil then begin
                  if TEnlace.FieldByName('TipoSinIva').AsString = 'C' then // Iva exento C.E.E.
                  begin
                     QDiario.parambyname('subcuenta').AsString := DmRef.QParametrosSCTAIVAEXENTOCEE.AsString;
                  end
                  else
                  if TEnlace.FieldByName('TipoSinIva').AsString = 'I' then // Intereses
                  begin
                     QDiario.parambyname('subcuenta').AsString := DmRef.QParametrosSCTAINTERESES.AsString;
                  end
                  else
                  if TEnlace.FieldByName('TipoSinIva').AsString = 'E' then // Exportaciones
                  begin
                     QDiario.parambyname('subcuenta').AsString := DmRef.QParametrosSCTAEXPORTACIONES.AsString;
                  end;
               end;
               QDiario.parambyname('id_conceptos').AsString :=
                  DmRef.QParametrosCTOIVAEXENTO.AsString;
            end
            else begin
               // Factura IVA Normal
               if (TEnlace.findfield('cuotaRe') <> nil) and
                  (RoundTo(TEnlace.findfield('cuotaRe').AsFloat, -2) <> 0) then        // Una empresa específica
               begin
                  // Se pone primero la cuenta de iva normal y el tercer apunte sera el
                  // de la 700 y hare un apunte 4 con la subcuenta de Iva Repercutido
                  QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTAIVANORMAL.AsString;
                  QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOIVANORMAL.AsString;
               end
               else begin
                  if TEnlace.FieldByName('iva').AsFloat = nTipo16 then begin
                     // Factura IVA y Recargo Normal
                     if (TEnlace.FieldByName('recargo').AsFloat = nTipoRec4) then begin
                        // Si hay recargo, solo puede ser una factura de ventas
                        QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTARECNORMAL.AsString;
                        QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTORECNORMAL.AsString;
                     end
                     else begin
                        if TEnlace.FieldByName('Debehaber').AsString = 'D' then begin
                           // Ventas
                           QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTAIVANORMAL.AsString;
                           QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOIVANORMAL.AsString;
                        end
                        else begin
                           // Compras
                           QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTAIVACNORMAL.AsString;
                           QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOIVACNORMAL.AsString;
                        end;
                     end;
                  end;
               end;  // If  nTipo16

               // Factura IVA Reducido
               if TEnlace.FieldByName('iva').AsFloat = nTipo7 then begin
                  if TEnlace.FieldByName('Debehaber').AsString = 'D' then begin
                     QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTAIVAREDUCIDO.AsString;
                     QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOIVAREDUCIDO.AsString;
                  end
                  else begin
                     QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTAIVACREDUCIDO.AsString;
                     QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOIVACREDUCIDO.AsString;
                  end;
               end;  // If nTipo7

               // Factura IVA y Recargo Reducido
               if (TEnlace.FieldByName('iva').AsFloat = nTipo7) and
                  (TEnlace.FieldByName('recargo').AsFloat = nTipoRec1) then begin
                  QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTARECREDUCIDO.AsString;
                  QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTORECREDUCIDO.AsString;
               end;

               // Factura IVA Super Reducido
               if TEnlace.FieldByName('iva').AsFloat = nTipo4 then begin
                  if TEnlace.FieldByName('debehaber').AsString = 'D' then begin
                     QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTAIVASUPER.AsString;
                     QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOIVASUPER.AsString;
                  end
                  else begin
                     QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTAIVACSUPER.AsString;
                     QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOIVACSUPER.AsString;
                  end;
               end;

               // Factura IVA y Recargo SuperReducido
               if (TEnlace.FieldByName('iva').AsFloat = nTipo4) and
                  (TEnlace.FieldByName('recargo').AsFloat = nTipoRec05) then begin
                  QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTARECSUPER.AsString;
                  QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTORECSUPER.AsString;
               end;
            end; // iva 0

            // Idea del Enlace si el recargo se incluye junto con el IVA.
            // Base Imponible
            // CuotaIva
            // CuotaRecargo
            // Importe = CuotaIva+CuotaRecargo
            // Iva = el % de iva, cuando lo hay, si no cero
            // Recargo = el % de recargo, cuando lo hay, si no cero
            // Total Factura=BaseImponible+Importe(=CuotaRecargo+CuotaIva)

            // Idea del Enlace si el recargo se pone como un apunte individualizado
            // que es el caso de una empresa específica.
            // Base Imponible (solo la propia del recargo)
            // Cuota de Iva e IVA su valor
            // CuotaRecargo, su valor
            // Importe = CuotaRecargo
            // Total Factura, aparte del otro apunte con el IVA, en el caso de este
            // es BaseImponible+Importe(=CuotaRecargo)


            QDiario.parambyname('numerofactura').AsString := cFactura;
            QDiario.parambyname('baseimponible').AsFloat  :=
               RoundTo(TEnlace.FieldByName('baseimpo').AsFloat, -2);

            QDiario.parambyname('iva').AsFloat      := TEnlace.FieldByName('iva').AsFloat;
            // Cuota de IVA
            QDiario.parambyname('cuotaiva').AsFloat := RoundTo(TEnlace.FieldByName('cuotaiva').AsFloat, -2);
            QDiario.parambyname('importe').AsFloat  := RoundTo(TEnlace.FieldByName('cuotaiva').AsFloat, -2);

            // Hacer : Usar en los enlaces del gestión.
            // Solo si no es "una empresa específica" o parametro recargo independiente
            if (DmRef.QParametrosRECARGO.AsString <> 'S') then begin
               QDiario.parambyname('cuotaRecargo').AsFloat := RoundTo(TEnlace.FieldByName('cuotarecargo').AsFloat, -2);
               QDiario.parambyname('recargo').AsFloat      := TEnlace.FieldByName('recargo').AsFloat;
               if (RoundTo(TEnlace.FieldByName('cuotarecargo').AsFloat, -2) = 0) then begin
                  QDiario.parambyname('recargo').AsFloat := 0;
               end;
               QDiario.ParamByName('IMPORTE').AsFloat :=
                  RoundTo(TEnlace.FieldByName('CUOTAIVA').AsFloat, -2) +
                  RoundTo(TEnlace.FieldByName('CUOTARECARGO').AsFloat, -2);
            end;
          {    else
               QDiario.parambyname('cuotaRecargo').asfloat:=
                   RoundTo((TEnlace.fieldbyname('BaseImpo').asfloat*
                   TEnlace.fieldbyname('Recargo').asfloat) / 100, -2);
            }
            QDiario.parambyname('contrapartida').AsString :=
               Trim(TEnlace.FieldByName('subcta').AsString);
            QDiario.parambyname('comentario').AsString    := Copy(cComentario, 1, 40);
            QDiario.parambyname('nif').AsString           := Copy(cNif, 1, 15);

            if lCondCoste and (TEnlace.FindField('centrocoste') <> nil) and
               (TEnlace.FieldByName('centrocoste').AsString <> '') then begin
               QDiario.parambyname('cuenta_analitica').AsString :=
                  TEnlace.FieldByName('centrocoste').AsString;
            end;
            if lCondCoste and (TEnlace.FindField('ccoste') <> nil) and
               (TEnlace.FieldByName('ccoste').AsString <> '') then  // centro coste enlace Fact.agudo
            begin
               QDiario.parambyname('cuenta_analitica').AsString :=
                  TEnlace.FieldByName('ccoste').AsString;
            end;


            // Guardar en tabla en memoria
            QFichero.Insert;
            QFicheroASIENTO.AsInteger      := nAsiento;
            QFicheroMONEDA.AsString        := 'E';
            QFicheroAPUNTE.AsInteger       := 2;
            QFicheroSUBCUENTA.AsString     := QDiario.ParamByName('SUBCUENTA').AsString;
            QFicheroID_CONCEPTOS.AsString  := QDiario.ParamByName('ID_CONCEPTOS').AsString;
            QFicheroDEBEHABER.AsString     := QDiario.ParamByName('DEBEHABER').AsString;
            QFicheroIMPORTE.AsFloat        := QDiario.ParamByName('IMPORTE').AsFloat;
            QFicheroNUMEROFACTURA.AsString := QDiario.ParamByName('NUMEROFACTURA').AsString;
            QFicheroFECHA.AsDateTime       := QDiario.ParamByName('FECHA').AsDateTime;
            QFicheroCOMENTARIO.AsString    := QDiario.ParamByName('COMENTARIO').AsString;
            QFicheroCONTRAPARTIDA.AsString := QDiario.ParamByName('CONTRAPARTIDA').AsString;
            QFicheroNIF.AsString           := QDiario.ParamByName('NIF').AsString;
            QFicheroRECARGO.AsFloat        := QDiario.ParamByName('RECARGO').AsFloat;
            QFicheroIVA.AsFloat            := QDiario.ParamByName('IVA').AsFloat;
            QFicheroBASEIMPONIBLE.AsFloat  := QDiario.ParamByName('BASEIMPONIBLE').AsFloat;
            QFicheroCUOTAIVA.AsFloat       := QDiario.ParamByName('CUOTAIVA').AsFloat;
            QFicheroCUOTARECARGO.AsFloat   := QDiario.ParamByName('CUOTARECARGO').AsFloat;
            if lSerie then begin
               QFicheroEjercicio.AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
               QFicheroSerie.AsString      := TEnlace.FieldByName('serie').AsString;
            end;
            if lCondCoste then begin
               QFicheroCUENTA_ANALITICA.AsString := QDiario.ParamByName('CUENTA_ANALITICA').AsString;
            end;
            QFicheroFECHAIMPRESION.AsDateTime := Date;
            QFichero.Post;

            QDiario.ExecSql;
            QDiario.Transaction.CommitRetaining;
            // Final Apunte 2

            nApunte := 3;

            if (DmRef.QParametrosRECARGO.AsString = 'S') and
               (TEnlace.findfield('cuotaRe') <> nil) and
               (RoundTo(TEnlace.findfield('cuotaRe').AsFloat, -2) <> 0) then begin
               // Apunte 3
               // Apunte Recargo Equivalencia, independiente, "una empresa específica"
               QDiario.Close;
               QDiario.Sql.Clear;
               QDiario.Sql.Add('INSERT INTO DIARIO(TIPOASIENTO, ASIENTO,APUNTE,MONEDA,SUBCUENTA,ID_CONCEPTOS,');
               QDiario.Sql.Add(' DEBEHABER,IMPORTE,CONTRAPARTIDA,FECHA,NUMEROFACTURA,COMENTARIO,');
               QDiario.Sql.Add(' NIF,RECARGO,BASEIMPONIBLE,CUOTARECARGO');
               if lSerie then begin
                  QDiario.Sql.Add(',SERIE,EJERCICIO');
               end;
               if not lCondCoste then begin
                  QDiario.Sql.Add(')');
               end
               else begin
                  QDiario.Sql.Add(',CUENTA_ANALITICA)');
               end;
               QDiario.Sql.Add('VALUES (:TIPOASIENTO, :ASIENTO,:APUNTE,:MONEDA,:SUBCUENTA,:ID_CONCEPTOS,');
               QDiario.Sql.Add(' :DEBEHABER,:IMPORTE,:CONTRAPARTIDA,:FECHA,:NUMEROFACTURA,');
               QDiario.Sql.Add(' :COMENTARIO,:NIF,:RECARGO,:BASEIMPONIBLE,:CUOTARECARGO');
               if lSerie then begin
                  QDiario.Sql.Add(',:SERIE,:EJERCICIO');
               end;
               if not lCondCoste then begin
                  QDiario.Sql.Add(')');
               end
               else begin
                  QDiario.Sql.Add(',:CUENTA_ANALITICA)');
               end;

               QDiario.parambyname('asiento').AsInteger     := nAsiento;
               QDiario.parambyname('apunte').AsInteger      := nApunte;
               QDiario.ParamByName('TIPOASIENTO').AsInteger := TipoAsiento;
               Inc(nApunte);
               QDiario.parambyname('moneda').AsString       := 'E';
               QDiario.parambyname('subcuenta').AsString    := DmRef.QParametrosSCTARECNORMAL.AsString;
               QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTORECNORMAL.AsString;
               QDiario.parambyname('debehaber').AsString    := 'H';
               QDiario.parambyname('fecha').AsDateTime      := TEnlace.FieldByName('fecha').AsDateTime;

               QDiario.parambyname('cuotarecargo').AsFloat :=  RoundTo(TEnlace.FieldByName('cuotare').AsFloat, -2);
               QDiario.parambyname('importe').AsFloat      :=  RoundTo(TEnlace.FieldByName('cuotare').AsFloat, -2);

               QDiario.parambyname('baseimponible').AsFloat  := RoundTo(TEnlace.FieldByName('basere').AsFloat, -2);
               QDiario.parambyname('recargo').AsFloat        := TEnlace.FieldByName('recargo').AsFloat;
               QDiario.parambyname('numerofactura').AsString := cFactura;
               if lSerie then begin
                  QDiario.parambyname('ejercicio').AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
                  QDiario.parambyname('serie').AsString      := TEnlace.FieldByName('serie').AsString;
               end;
               QDiario.parambyname('contrapartida').AsString := Trim(TEnlace.FieldByName('subcta').AsString);
               QDiario.parambyname('comentario').AsString    := Copy(cComentario, 1, 40);
               QDiario.parambyname('nif').AsString           := Copy(cNif, 1, 15);

               if lCondCoste and (TEnlace.FindField('centrocoste') <> nil) and
                  (TEnlace.FieldByName('centrocoste').AsString <> '') then begin
                  QDiario.parambyname('cuenta_analitica').AsString :=
                     Copy(TEnlace.FieldByName('centrocoste').AsString, 1, 10);
               end;

               QDiario.ExecSql;
               QDiario.Transaction.CommitRetaining;

               // Guardar en tabla en memoria
               QFichero.Insert;
               QFicheroASIENTO.AsInteger      := nAsiento;
               QFicheroMONEDA.AsString        := 'E';
               QFicheroAPUNTE.AsInteger       := 3;
               QFicheroSUBCUENTA.AsString     := DmRef.QParametrosSCTARECNORMAL.AsString;
               QFicheroID_CONCEPTOS.AsString  := DmRef.QParametrosCTORECNORMAL.AsString;
               QFicheroDEBEHABER.AsString     := 'H';
               QFicheroIMPORTE.AsFloat        := RoundTo(TEnlace.FieldByName('cuotare').AsFloat, -2);
               QFicheroNUMEROFACTURA.AsString := cFactura;
               QFicheroFECHA.AsDateTime       := TEnlace.FieldByName('fecha').AsDateTime;
               QFicheroCOMENTARIO.AsString    := Copy(cComentario, 1, 40);
               QFicheroCONTRAPARTIDA.AsString := Trim(TEnlace.FieldByName('subcta').AsString);
               QFicheroNIF.AsString           := cNif;
               QFicheroRECARGO.AsFloat        := TEnlace.FieldByName('recargo').AsFloat;
               QFicheroBASEIMPONIBLE.AsFloat  := RoundTo(TEnlace.FieldByName('basere').AsFloat, -2);
               QFicheroCUOTARECARGO.AsFloat   :=
                  RoundTo(TEnlace.FieldByName('cuotare').AsFloat, -2);
               if lSerie then begin
                  QFicheroEjercicio.AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
                  QFicheroSerie.AsString      := TEnlace.FieldByName('serie').AsString;
               end;
               if lCondCoste and (TEnlace.FindField('centrocoste') <> nil) and
                  (TEnlace.FieldByName('centrocoste').AsString <> '') then begin
                  QFicheroCUENTA_ANALITICA.AsString := Copy(TEnlace.FieldByName('centrocoste').AsString, 1, 10);
               end;
               QFicheroFECHAIMPRESION.AsDateTime := Date;
               QFichero.Post;
            end;

            // Apunte 3 o 4
            QDiario.Close;
            QDiario.Sql.Clear;
            QDiario.Sql.Add('INSERT INTO DIARIO(TIPOASIENTO, ASIENTO,APUNTE,MONEDA,SUBCUENTA,ID_CONCEPTOS,');
            QDiario.Sql.Add(' DEBEHABER,IMPORTE,CONTRAPARTIDA,FECHA,NUMEROFACTURA,COMENTARIO,');
            QDiario.Sql.Add(' NIF,BASEIMPONIBLE');
            if lSerie then begin
               QDiario.Sql.Add(',SERIE,EJERCICIO');
            end;
            if not lCondCoste then begin
               QDiario.Sql.Add(')');
            end
            else begin
               QDiario.Sql.Add(',CUENTA_ANALITICA)');
            end;
            QDiario.Sql.Add('VALUES (:TIPOASIENTO, :ASIENTO,:APUNTE,:MONEDA,:SUBCUENTA,:ID_CONCEPTOS,');
            QDiario.Sql.Add(' :DEBEHABER,:IMPORTE,:CONTRAPARTIDA,:FECHA,:NUMEROFACTURA,');
            QDiario.Sql.Add(' :COMENTARIO,:NIF,:BASEIMPONIBLE');
            if lSerie then begin
               QDiario.Sql.Add(',:SERIE,:EJERCICIO');
            end;
            if not lCondCoste then begin
               QDiario.Sql.Add(')');
            end
            else begin
               QDiario.Sql.Add(',:CUENTA_ANALITICA)');
            end;

            QDiario.parambyname('asiento').AsInteger     := nAsiento;
            QDiario.parambyname('apunte').AsInteger      := nApunte;
            QDiario.ParamByName('TIPOASIENTO').AsInteger := TipoAsiento;
            Inc(nApunte);
            QDiario.parambyname('moneda').AsString    := 'E';
            QDiario.parambyname('subcuenta').AsString := cContrapartida;
            if TEnlace.FieldByName('DebeHaber').AsString = 'D' then begin
               QDiario.parambyname('debehaber').AsString := 'H';
            end
            else begin
               QDiario.parambyname('debehaber').AsString := 'D';
            end;
            QDiario.parambyname('fecha').AsDateTime := TEnlace.FieldByName('fecha').AsDateTime;
            // Descuento de "una empresa específica"
            if (TEnlace.FindField('impdescu') <> nil) then begin
               QDiario.parambyname('importe').AsFloat :=
                  RoundTo(TEnlace.FieldByName('baseimpo').AsFloat + TEnlace.FieldByName('impdescu').AsFloat, -2);
            end
            else begin
               QDiario.parambyname('importe').AsFloat :=
                  RoundTo(TEnlace.FieldByName('baseimpo').AsFloat, -2);
            end;

            QDiario.parambyname('numerofactura').AsString := cFactura;
            if lSerie then begin
               QDiario.parambyname('ejercicio').AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
               QDiario.parambyname('serie').AsString      := TEnlace.FieldByName('serie').AsString;
            end;

            if TEnlace.FieldByName('DebeHaber').AsString = 'D' then begin
               if (TEnlace.findfield('concepto') <> nil) and (TEnlace.FieldByName('concepto').AsString <> '') then
               begin
                  QDiario.parambyname('id_conceptos').AsString := TEnlace.FieldByName('Concepto').AsString;
               end
               else begin
                  QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOVENTAS.AsString;
               end;
            end
            else begin
               QDiario.parambyname('id_conceptos').AsString := DmRef.QParametrosCTOCOMPRAS.AsString;
            end;

            QDiario.parambyname('contrapartida').AsString :=
               Trim(TEnlace.FieldByName('subcta').AsString);
            QDiario.parambyname('comentario').AsString    := Copy(cComentario, 1, 40);
            QDiario.parambyname('nif').AsString           := Copy(cNif, 1, 15);

            if lCondCoste and (TEnlace.FindField('centrocoste') <> nil) and
               (TEnlace.FieldByName('centrocoste').AsString <> '') then begin
               QDiario.parambyname('cuenta_analitica').AsString :=
                  Copy(TEnlace.FieldByName('centrocoste').AsString, 1, 10);
            end;
            if lCondCoste and (TEnlace.FindField('ccoste') <> nil) and
               (TEnlace.FieldByName('ccoste').AsString <> '') then  // centro coste enlace Fact.agudo
            begin
               QDiario.parambyname('cuenta_analitica').AsString := Copy(TEnlace.FieldByName('ccoste').AsString, 1, 10);
            end;

            // Guardar en tabla en memoria
            QFichero.Insert;
            QFicheroASIENTO.AsInteger      := nAsiento;
            QFicheroMONEDA.AsString        := 'E';
            QFicheroAPUNTE.AsInteger       := QDiario.ParamByName('APUNTE').AsInteger;
            QFicheroSUBCUENTA.AsString     := QDiario.ParamByName('SUBCUENTA').AsString;
            QFicheroID_CONCEPTOS.AsString  := QDiario.ParamByName('ID_CONCEPTOS').AsString;
            QFicheroDEBEHABER.AsString     := QDiario.ParamByName('DEBEHABER').AsString;
            QFicheroIMPORTE.AsFloat        := QDiario.ParamByName('IMPORTE').AsFloat;
            QFicheroNUMEROFACTURA.AsString := QDiario.ParamByName('NUMEROFACTURA').AsString;
            QFicheroFECHA.AsDateTime       := QDiario.ParamByName('FECHA').AsDateTime;
            QFicheroCOMENTARIO.AsString    := QDiario.ParamByName('COMENTARIO').AsString;
            QFicheroCONTRAPARTIDA.AsString := QDiario.ParamByName('CONTRAPARTIDA').AsString;
            QFicheroNIF.AsString           := QDiario.ParamByName('NIF').AsString;
            QFicheroBASEIMPONIBLE.AsFloat  := QDiario.ParamByName('BASEIMPONIBLE').AsFloat;
            if lSerie then begin
               QFicheroEjercicio.AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
               QFicheroSerie.AsString      := TEnlace.FieldByName('serie').AsString;
            end;
            if lCondCoste then begin
               QFicheroCUENTA_ANALITICA.AsString := QDiario.ParamByName('CUENTA_ANALITICA').AsString;
            end;
            QFicheroFECHAIMPRESION.AsDateTime := Date;
            QFichero.Post;

            QDiario.ExecSql;
            QDiario.Transaction.CommitRetaining;


            if (TEnlace.FindField('impdescu') <> nil) and (TEnlace.FieldByName('impdescu').AsFloat <> 0) then begin
               // Apunte de descuento
               QDiario.Close;
               QDiario.Sql.Clear;
               QDiario.Sql.Add('INSERT INTO DIARIO(TIPOASIENTO, ASIENTO,APUNTE,MONEDA,SUBCUENTA,ID_CONCEPTOS,');
               QDiario.Sql.Add(' DEBEHABER,IMPORTE,CONTRAPARTIDA,FECHA,NUMEROFACTURA,COMENTARIO,');
               QDiario.Sql.Add(' NIF,BASEIMPONIBLE');
               if lSerie then begin
                  QDiario.Sql.Add(',SERIE,EJERCICIO');
               end;
               if not lCondCoste then begin
                  QDiario.Sql.Add(')');
               end
               else begin
                  QDiario.Sql.Add(',CUENTA_ANALITICA)');
               end;
               QDiario.Sql.Add('VALUES (:TIPOASIENTO, :ASIENTO,:APUNTE,:MONEDA,:SUBCUENTA,:ID_CONCEPTOS,');
               QDiario.Sql.Add(' :DEBEHABER,:IMPORTE,:CONTRAPARTIDA,:FECHA,:NUMEROFACTURA,');
               QDiario.Sql.Add(' :COMENTARIO,:NIF,:BASEIMPONIBLE');
               if lSerie then begin
                  QDiario.Sql.Add(',:SERIE,:EJERCICIO');
               end;
               if not lCondCoste then begin
                  QDiario.Sql.Add(')');
               end
               else begin
                  QDiario.Sql.Add(',:CUENTA_ANALITICA)');
               end;

               QDiario.parambyname('asiento').AsInteger      := nAsiento;
               QDiario.parambyname('apunte').AsInteger       := nApunte;
               QDiario.ParamByName('TIPOASIENTO').AsInteger  := TipoAsiento;
               //Inc(nApunte);
               QDiario.parambyname('moneda').AsString        := 'E';
               // Hacer: Poner en parametros un campo para la subcuenta de descuentos
               QDiario.parambyname('subcuenta').AsString     := '7090000';
               QDiario.parambyname('debehaber').AsString     := 'D';
               QDiario.parambyname('fecha').AsDateTime       := TEnlace.FieldByName('fecha').AsDateTime;
               QDiario.parambyname('importe').AsFloat        := RoundTo(TEnlace.FieldByName('impdescu').AsFloat, -2);
               QDiario.parambyname('numerofactura').AsString := cFactura;
               if lSerie then begin
                  QDiario.parambyname('ejercicio').AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
                  QDiario.parambyname('serie').AsString      := TEnlace.FieldByName('serie').AsString;
               end;
               QDiario.parambyname('id_conceptos').AsString  := DmRef.QParametrosCTOVENTAS.AsString;
               QDiario.parambyname('comentario').AsString    := Copy(cComentario, 1, 40);
               QDiario.parambyname('nif').AsString           := cNif;
               QDiario.parambyname('contrapartida').AsString := Trim(TEnlaceSubcta.AsString);

               // Guardar en tabla en memoria
               QFichero.Insert;
               QFicheroASIENTO.AsInteger      := nAsiento;
               QFicheroMONEDA.AsString        := 'E';
               QFicheroAPUNTE.AsInteger       := QDiario.ParamByName('APUNTE').AsInteger;
               QFicheroSUBCUENTA.AsString     := QDiario.ParamByName('SUBCUENTA').AsString;
               QFicheroID_CONCEPTOS.AsString  := QDiario.ParamByName('ID_CONCEPTOS').AsString;
               QFicheroDEBEHABER.AsString     := QDiario.ParamByName('DEBEHABER').AsString;
               QFicheroIMPORTE.AsFloat        := QDiario.ParamByName('IMPORTE').AsFloat;
               QFicheroNUMEROFACTURA.AsString := QDiario.ParamByName('NUMEROFACTURA').AsString;
               QFicheroFECHA.AsDateTime       := QDiario.ParamByName('FECHA').AsDateTime;
               QFicheroCOMENTARIO.AsString    := QDiario.ParamByName('COMENTARIO').AsString;
               QFicheroCONTRAPARTIDA.AsString := QDiario.ParamByName('CONTRAPARTIDA').AsString;
               QFicheroNIF.AsString           := QDiario.ParamByName('NIF').AsString;
               QFicheroBASEIMPONIBLE.AsFloat  := QDiario.ParamByName('BASEIMPONIBLE').AsFloat;
               if lSerie then begin
                  QFicheroEjercicio.AsInteger := TEnlace.FieldByName('ejercicio').AsInteger;
                  QFicheroSerie.AsString      := TEnlace.FieldByName('serie').AsString;
               end;
               if lCondCoste then begin
                  QFicheroCUENTA_ANALITICA.AsString := QDiario.ParamByName('CUENTA_ANALITICA').AsString;
               end;
               QFicheroFECHAIMPRESION.AsDateTime := Date;
               QFichero.Post;

               QDiario.ExecSql;
               QDiario.Transaction.CommitRetaining;
            end;
         end;
{------------------------------------------------------------------------------------------------------------------------------------------}         
         // Actualizar pasado
         TEnlace.Edit;
         TEnlace.FieldByName('PASADO').AsString := cPasado;
         TEnlace.Post;
      end;
      TEnlace.Next;
   end;*)
end;

procedure TWEnlaceContable.BtnImprimirClick(Sender: TObject);
var FechaInicial :TDateTime;
    FechaFinal   :TDateTime;
    Model        :TDiarioModel;
begin
   // Necessary for the report
   Config.SetAccountingType('T');
   Config.ReportCurrency := 'E';
   Config.FormatoOficial := False;

   if not QFichero.IsEmpty then  begin
      QFichero.IndexName := 'FECHA';
      QFichero.First;
      FechaInicial := QFicheroFECHA.AsDateTime;
      QFichero.Last;
      FechaFinal := QFicheroFECHA.AsDateTime;
      QFichero.First;
      while not QFichero.EOF do begin
         QFichero.Edit;
         QFicheroFECHAINICIAL.AsDateTime := FechaInicial;
         QFicheroFECHAFINAL.AsDateTime   := FechaFinal;
         QFichero.Post;
         QFichero.Next;
      end;
      if gOrden.ItemIndex = 0 then begin
         QFichero.IndexName := 'ASIENTO';
      end
      else begin
         QFichero.IndexName := 'FECHA';
      end;
      QFichero.First;
   end;
   Model := TDiarioModel.Create(DMRef.BDContab);
   try
      Model.ReportAsientos(QFichero);
   finally
      Model.Free;
   end;
end;

procedure TWEnlaceContable.QFicheroCalcFields(DataSet: TDataSet);
begin
   QInfSubcta.Close;
   QInfSubcta.ParamByName('SUBCUENTA').AsString := QFicheroSUBCUENTA.AsString;
   QInfSubcta.Open;
   if not QInfSubcta.EOF then begin
      QFicheroDESCSUBCUENTA.AsString := QInfSubcta.FieldByName('DESCRIPCION').AsString;
   end;

   QFicheroDESCAPUNTE.AsString := QFicheroCOMENTARIO.AsString;

   if QFicheroDEBEHABER.AsString = 'D' then begin
      QFicheroDEBE.AsFloat := QFicheroIMPORTE.AsFloat;
   end
   else begin
      QFicheroHABER.AsFloat := QFicheroIMPORTE.AsFloat;
   end;
end;

procedure TWEnlaceContable.EnlaceSubcuentas;
var lIGest: Boolean;
begin
   //lIgest := (TEnlace.findfield('Aplicacion') <> nil) and (TEnlace.FieldByName('Aplicacion').AsString = 'I');
   QBuscaProvincia.Close;
   QBuscaProvincia.SQL.Clear;
   QBuscaProvincia.SQL.Add('SELECT * FROM PROVINCIAS WHERE PROVINCIA = :PROVINCIA');

   QInsProvincia.Close;
   QInsProvincia.SQL.Clear;
   QInsProvincia.SQL.Add('INSERT INTO PROVINCIAS (PROVINCIA, NOMBRE, CODIGO)');
   QInsProvincia.SQL.Add('VALUES (:PROVINCIA, :NOMBRE, :CODIGO)');

   QBuscaSubcuenta.Close;
   QBuscaSubcuenta.SQL.Clear;
   QBuscaSubcuenta.SQL.Add('select count(*) as cuantos from subctas');
   QBuscaSubcuenta.SQL.Add(' where subcuenta=:subcuenta');
   QBuscaSubcuenta.Prepare;

   QInsertaSubcuenta.Close;
   QInsertaSubcuenta.SQL.Clear;
   QInsertaSubcuenta.SQL.Add('insert into subctas (subcuenta,descripcion,pais,direccion,nif,codpostal,');
   QInsertaSubcuenta.SQL.Add(' poblacion,');
   if not lIGest then begin
      QInsertaSubcuenta.SQL.Add(' provincia,');
   end;
   QInsertaSubcuenta.SQL.Add('telefono,fax,obsoleto)');
   QInsertaSubcuenta.SQL.Add('values(:subcuenta,:descripcion,"ES",:direccion,:nif,:codpostal,');
   QInsertaSubcuenta.SQL.Add(' :poblacion,');
   if not lIgest then begin
      QInsertaSubcuenta.SQL.Add(' :provincia,');
   end;
   QInsertaSubcuenta.SQL.Add(' :telefono,:fax, "N") ');
   QInsertaSubcuenta.Prepare;

   QModificaSubcuenta.Close;
   QModificaSubcuenta.SQL.Clear;
   QModificaSubcuenta.SQL.Add('update subctas set descripcion=:descripcion,direccion=:direccion,nif=:nif,codpostal=:codpostal,');
   QModificaSubcuenta.SQL.Add(' poblacion=:poblacion,telefono=:telefono,fax=:fax, pais="ES" ');
   if not lIgest then begin
      QModificaSubcuenta.SQL.Add(' ,provincia=:provincia');
   end;
   QModificaSubcuenta.SQL.Add('where subcuenta=:subcuenta');
   QModificaSubcuenta.Prepare;

   // Buscar provincia
   (*if (not lIGest) and (not TEnlace.FieldByName('PROVINCIA').IsNull) then begin
      QBuscaProvincia.Close;
      QBuscaProvincia.ParamByName('PROVINCIA').AsString := TEnlace.FieldByName('PROVINCIA').AsString;
      QBuscaProvincia.Open;
      if QBuscaProvincia.EOF then begin
         QInsProvincia.Close;
         QInsProvincia.ParamByName('PROVINCIA').AsString := TEnlace.FieldByName('PROVINCIA').AsString;
         QInsProvincia.ParamByName('NOMBRE').AsString    := 'CREADO EN ENLACE CONTABLE';
         QInsProvincia.ParamByName('CODIGO').AsString    := '';
         QInsProvincia.ExecQuery;
         QInsProvincia.Transaction.CommitRetaining;
      end;
      QBuscaProvincia.Close;
   end;*)

   // Buscar subcuenta
   QBuscaSubcuenta.Close;
   (*QBuscaSubcuenta.ParamByName('subcuenta').AsString := TEnlace.FieldByName('subcta').AsString;
   QBuscaSubcuenta.ExecQuery;
   if QBuscaSubcuenta.FieldByName('cuantos').AsInteger > 0 then begin
      // Modificar
      QModificaSubcuenta.parambyname('subcuenta').AsString   := Trim(TEnlace.FieldByName('subcta').AsString);
      QModificaSubcuenta.parambyname('descripcion').AsString := Copy(TEnlace.FieldByName('nombre').AsString, 1, 80);
      QModificaSubcuenta.parambyname('direccion').AsString   := Copy(TEnlace.FieldByName('direccion').AsString, 1, 35);
      QModificaSubcuenta.parambyname('nif').AsString         := Copy(TEnlace.FieldByName('nif').AsString, 1, 20);
      QModificaSubcuenta.parambyname('codpostal').AsString   := Copy(TEnlace.FieldByName('codpostal').AsString, 1, 10);
      QModificaSubcuenta.parambyname('poblacion').AsString   := Copy(TEnlace.FieldByName('poblacion').AsString, 1, 60);

      if not lIgest then begin
         if TEnlace.FieldByName('provincia').IsNull then begin
            QModificaSubcuenta.parambyname('provincia').AsVariant := null;
         end
         else begin
            QModificaSubcuenta.parambyname('provincia').AsString := Copy(TEnlace.FieldByName('provincia').AsString, 1, 2);
         end;
      end;

      QModificaSubcuenta.parambyname('telefono').AsString := Copy(TEnlace.FieldByName('telefono').AsString, 1, 16);
      QModificaSubcuenta.parambyname('fax').AsString      := Copy(TEnlace.FieldByName('fax').AsString, 1, 16);
      QModificaSubcuenta.ExecQuery;
      QModificaSubcuenta.Transaction.CommitRetaining;
   end
   else begin
      // Crear
      QInsertaSubcuenta.Close;
      QInsertaSubcuenta.parambyname('subcuenta').AsString   := Trim(TEnlace.FieldByName('subcta').AsString);
      QInsertaSubcuenta.parambyname('descripcion').AsString := Copy(TEnlace.FieldByName('nombre').AsString, 1, 80);
      QInsertaSubcuenta.parambyname('direccion').AsString   := Copy(TEnlace.FieldByName('direccion').AsString, 1, 35);
      QInsertaSubcuenta.parambyname('nif').AsString         := Copy(TEnlace.FieldByName('nif').AsString, 1, 20);
      QInsertaSubcuenta.parambyname('codpostal').AsString   := Copy(TEnlace.FieldByName('codpostal').AsString, 1, 10);
      QInsertaSubcuenta.parambyname('poblacion').AsString   := Copy(TEnlace.FieldByName('poblacion').AsString, 1, 60);

      if not lIgest then begin
         if TEnlace.FieldByName('provincia').IsNull then begin
            QInsertaSubcuenta.parambyname('provincia').AsVariant := null;
         end
         else begin
            QInsertaSubcuenta.parambyname('provincia').AsString :=
               Copy(TEnlace.FieldByName('provincia').AsString, 1, 2);
         end;
      end;

      QInsertaSubcuenta.parambyname('telefono').AsString := Copy(TEnlace.FieldByName('telefono').AsString, 1, 16);
      QInsertaSubcuenta.parambyname('fax').AsString      := Copy(TEnlace.FieldByName('fax').AsString, 1, 16);
      QInsertaSubcuenta.ExecQuery;
      QInsertaSubcuenta.Transaction.CommitRetaining;
   end;*)
   // Actualizar pasado
end;

end.
