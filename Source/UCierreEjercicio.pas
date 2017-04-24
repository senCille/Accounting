unit UCierreEjercicio;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSql, jpeg,
     Mask, Messages, StdCtrls, SysUtils, WinProcs, WinTypes;
     
type
  TWCierreEjercicio = class(TForm)
    Datos: TGroupBox;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnEdtProcesar: TButton;
    GroupBox1: TGroupBox;
    oURecalculo: TCheckBox;
    oUImpresion: TCheckBox;
    oAAcumSaldosEjerAnt: TCheckBox;
    oAAcumSaldosAmortiz: TCheckBox;
    oARegularizacion: TCheckBox;
    oACierreApertura: TCheckBox;
    oABorrarAsientos: TCheckBox;
    Label2: TLabel;
    oACambioFechas: TCheckBox;
    oARenumerado: TCheckBox;
    procedure BtnEdtProcesarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FFechaInicio           :TDateTime;
    FFechaFin              :TDateTime;
    FAsientoNormalReg      :Integer;
    FAsientoEspecialReg    :Integer;
    FAsientoNormalCierre   :Integer;
    FAsientoEspecialCierre :Integer;
    FAsientoNormalApert    :Integer;
    FAsientoEspecialApert  :Integer;
    procedure ActualizarAcumulados_Cuentas_Subctas;
    procedure ActualizarAcumuladosAmortizaciones;
    procedure GenerarAsientoRegularizacion;
    procedure GenerarAsientos_Cierre_Apertura;
    procedure BorrarAsientos;
    procedure CambiarFechasNuevoEjercicio;
    procedure RenumerarAsientos;
  public
  end;

var WCierreEjercicio: TWCierreEjercicio;

implementation
uses System.Math, System.DateUtils,
     DM, DMConta, Globales, UEspere;
{$R *.DFM}

procedure TWCierreEjercicio.ActualizarAcumulados_Cuentas_Subctas;
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try 
      Q.Database    := DMRef.BDContab;
      Q.Transaction := DmRef.BDContab.DefaultTransaction;
      Q.SQL.Clear;

      // Actualizar acumulados de CUENTAS
      Q.SQL.Add('UPDATE CUENTAS SET   ');

      Q.SQL.Add('   ANTDB01 = ACUDB01,');
      Q.SQL.Add('   ANTDB02 = ACUDB02,');
      Q.SQL.Add('   ANTDB03 = ACUDB03,');
      Q.SQL.Add('   ANTDB04 = ACUDB04,');
      Q.SQL.Add('   ANTDB05 = ACUDB05,');
      Q.SQL.Add('   ANTDB06 = ACUDB06,');
      Q.SQL.Add('   ANTDB07 = ACUDB07,');
      Q.SQL.Add('   ANTDB08 = ACUDB08,');
      Q.SQL.Add('   ANTDB09 = ACUDB09,');
      Q.SQL.Add('   ANTDB10 = ACUDB10,');
      Q.SQL.Add('   ANTDB11 = ACUDB11,');
      Q.SQL.Add('   ANTDB12 = ACUDB12,');

      Q.SQL.Add('   ANTHB01 = ACUHB01,');
      Q.SQL.Add('   ANTHB02 = ACUHB02,');
      Q.SQL.Add('   ANTHB03 = ACUHB03,');
      Q.SQL.Add('   ANTHB04 = ACUHB04,');
      Q.SQL.Add('   ANTHB05 = ACUHB05,');
      Q.SQL.Add('   ANTHB06 = ACUHB06,');
      Q.SQL.Add('   ANTHB07 = ACUHB07,');
      Q.SQL.Add('   ANTHB08 = ACUHB08,');
      Q.SQL.Add('   ANTHB09 = ACUHB09,');
      Q.SQL.Add('   ANTHB10 = ACUHB10,');
      Q.SQL.Add('   ANTHB11 = ACUHB11,');
      Q.SQL.Add('   ANTHB12 = ACUHB12,');

      Q.SQL.Add('   ANTDB = ACUDB01 + ACUDB02 + ACUDB03 + ACUDB04 + ACUDB05 + ACUDB06 +');
      Q.SQL.Add('           ACUDB07 + ACUDB08 + ACUDB09 + ACUDB10 + ACUDB11 + ACUDB12,');
      Q.SQL.Add('   ANTHB = ACUHB01 + ACUHB02 + ACUHB03 + ACUHB04 + ACUHB05 + ACUHB06 +');
      Q.SQL.Add('           ACUHB07 + ACUHB08 + ACUHB09 + ACUHB10 + ACUHB11 + ACUHB12');

      Q.ExecSql;
      Q.Transaction.CommitRetaining;

      Q.Close;
      Q.SQL.Clear;

      // Actualizar acumulados de SUBCUENTAS
      Q.SQL.Add('UPDATE SUBCTAS SET   ');

      Q.SQL.Add('   ANTDB01 = ACUDB01,');
      Q.SQL.Add('   ANTDB02 = ACUDB02,');
      Q.SQL.Add('   ANTDB03 = ACUDB03,');
      Q.SQL.Add('   ANTDB04 = ACUDB04,');
      Q.SQL.Add('   ANTDB05 = ACUDB05,');
      Q.SQL.Add('   ANTDB06 = ACUDB06,');
      Q.SQL.Add('   ANTDB07 = ACUDB07,');
      Q.SQL.Add('   ANTDB08 = ACUDB08,');
      Q.SQL.Add('   ANTDB09 = ACUDB09,');
      Q.SQL.Add('   ANTDB10 = ACUDB10,');
      Q.SQL.Add('   ANTDB11 = ACUDB11,');
      Q.SQL.Add('   ANTDB12 = ACUDB12,');

      Q.SQL.Add('   ANTHB01 = ACUHB01,');
      Q.SQL.Add('   ANTHB02 = ACUHB02,');
      Q.SQL.Add('   ANTHB03 = ACUHB03,');
      Q.SQL.Add('   ANTHB04 = ACUHB04,');
      Q.SQL.Add('   ANTHB05 = ACUHB05,');
      Q.SQL.Add('   ANTHB06 = ACUHB06,');
      Q.SQL.Add('   ANTHB07 = ACUHB07,');
      Q.SQL.Add('   ANTHB08 = ACUHB08,');
      Q.SQL.Add('   ANTHB09 = ACUHB09,');
      Q.SQL.Add('   ANTHB10 = ACUHB10,');
      Q.SQL.Add('   ANTHB11 = ACUHB11,');
      Q.SQL.Add('   ANTHB12 = ACUHB12,');

      Q.SQL.Add('   ANTDB = ACUDB01 + ACUDB02 + ACUDB03 + ACUDB04 + ACUDB05 + ACUDB06 +');
      Q.SQL.Add('           ACUDB07 + ACUDB08 + ACUDB09 + ACUDB10 + ACUDB11 + ACUDB12,');
      Q.SQL.Add('   ANTHB = ACUHB01 + ACUHB02 + ACUHB03 + ACUHB04 + ACUHB05 + ACUHB06 +');
      Q.SQL.Add('           ACUHB07 + ACUHB08 + ACUHB09 + ACUHB10 + ACUHB11 + ACUHB12');

      Q.ExecSql;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;

   oAAcumSaldosEjerAnt.Caption := 'Acumular saldos del ejercicio anterior     [OK]';
end;

procedure TWCierreEjercicio.ActualizarAcumuladosAmortizaciones;
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try
      Q.Close;
      Q.Database := DMRef.BDContab;
      Q.SQL.Clear;
      Q.SQL.Add('UPDATE AMORTIZA SET                     ');
      Q.SQL.Add('   VEJPINICIO = VEJPINICIO + VEJAINICIO,');
      Q.SQL.Add('   VEJPAMOR = VEJAAMOR,                 ');
      Q.SQL.Add('   VEJAINICIO = 0                       ');
      Q.ExecSql;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
   oAAcumSaldosAmortiz.Caption := 'Acumular saldos de amortizaciones     [OK]';
end;

procedure TWCierreEjercicio.GenerarAsientoRegularizacion;
var
   QInsApunte:   TIBQuery;
   QSubcuentas, QAsientos: TIBQuery;
   nIDNormal, nIHNormal, nIDEspecial, nIHEspecial, nITDNormal, nITHNormal, nITDEspecial,
   nITHEspecial: Double;
   AsientoNormal, AsientoEspecial, ApunteNormal, ApunteEspecial: Integer;
begin
   // Inserción de apuntes
   QInsApunte := TIBQuery.Create(nil);
   QInsApunte.Database := DMRef.BDContab;
   QInsApunte.SQL.Clear;
   QInsApunte.SQL.Add('INSERT INTO DIARIO                                           ');
   QInsApunte.SQL.Add('(APUNTE, ASIENTO, COMENTARIO, CONTRAPARTIDA, DEBEHABER,      ');
   QInsApunte.SQL.Add(' FECHA, IMPORTE, MONEDA, SUBCUENTA, ID_CONCEPTOS)            ');
   QInsApunte.SQL.Add('VALUES                                                       ');
   QInsApunte.SQL.Add('(:APUNTE, :ASIENTO, :COMENTARIO, :CONTRAPARTIDA, :DEBEHABER, ');
   QInsApunte.SQL.Add(' :FECHA, :IMPORTE, :MONEDA, :SUBCUENTA, :ID_CONCEPTOS)       ');

   // Selección de subcuentas
   QSubcuentas := TIBQuery.Create(nil);
   QSubcuentas.Close;
   QSubcuentas.Database := DMRef.BDContab;
   QSubcuentas.SQL.Clear;
   QSubcuentas.SQL.Add('SELECT S.SUBCUENTA FROM SUBCTAS S                     ');
   QSubcuentas.SQL.Add('WHERE (S.SUBCUENTA LIKE "6%") OR (SUBCUENTA LIKE "7%")');
   QSubcuentas.SQL.Add('ORDER BY S.SUBCUENTA                                  ');
   QSubcuentas.Open;

   // Selección de apuntes
   QAsientos := TIBQuery.Create(nil);
   QAsientos.Close;
   QAsientos.Database := DMRef.BDContab;
   QAsientos.SQL.Clear;
   QAsientos.SQL.Add('SELECT D.IMPORTE, D.DEBEHABER ');
   QAsientos.SQL.Add('FROM DIARIO D, CONCEPTOS C                           ');
   QAsientos.SQL.Add('WHERE                                                ');
   QAsientos.SQL.Add('   D.SUBCUENTA = :SUBCUENTA AND                      ');
   QAsientos.SQL.Add('   D.FECHA >= :FECHAINI AND D.FECHA <= :FECHAFIN AND ');
   QAsientos.SQL.Add('   C.TIPOCONTABILIDAD = :TIPOCONTABILIDAD AND        ');
   QAsientos.SQL.Add('   D.ID_CONCEPTOS = C.ID_CONCEPTOS                   ');

   AsientoNormal   := 0;
   AsientoEspecial := 0;

   ApunteNormal   := 0;
   ApunteEspecial := 0;

   nITDNormal   := 0;
   nITHNormal   := 0;
   nITDEspecial := 0;
   nITHEspecial := 0;

   while not QSubcuentas.EOF do begin
      nIDNormal   := 0;
      nIHNormal   := 0;
      nIDEspecial := 0;
      nIHEspecial := 0;

      // Saldo Normal
      QAsientos.Close;
      QAsientos.ParamByName('SUBCUENTA').AsString        := QSubcuentas.FieldByName('SUBCUENTA').AsString;
      QAsientos.ParamByName('FECHAINI').AsDateTime       := FFechaInicio;
      QAsientos.ParamByName('FECHAFIN').AsDateTime       := FFechaFin;
      QAsientos.ParamByName('TIPOCONTABILIDAD').AsString := 'N';
      QAsientos.Open;
      while not QAsientos.EOF do begin
         if QAsientos.FieldByName('DEBEHABER').AsString = 'D' then begin
            nIDNormal  := nIDNormal  + QAsientos.FieldByName('IMPORTE').AsFloat;
            nITDNormal := nITDNormal + QAsientos.FieldByName('IMPORTE').AsFloat;
         end
         else begin
            nIHNormal  := nIHNormal  + QAsientos.FieldByName('IMPORTE').AsFloat;
            nITHNormal := nITHNormal + QAsientos.FieldByName('IMPORTE').AsFloat;
         end;
         QAsientos.Next;
      end;    // while not QAsientos.Eof do

      // Saldo Especial
      QAsientos.Close;
      QAsientos.ParamByName('SUBCUENTA').AsString        := QSubcuentas.FieldByName('SUBCUENTA').AsString;
      QAsientos.ParamByName('FECHAINI').AsDateTime       := FFechaInicio;
      QAsientos.ParamByName('FECHAFIN').AsDateTime       := FFechaFin;
      QAsientos.ParamByName('TIPOCONTABILIDAD').AsString := 'E';
      QAsientos.Open;
      while not QAsientos.EOF do begin
         if QAsientos.FieldByName('DEBEHABER').AsString = 'D' then begin
            nIDEspecial  := nIDEspecial + QAsientos.FieldByName('IMPORTE').AsFloat;
            nITDEspecial := nITDEspecial + QAsientos.FieldByName('IMPORTE').AsFloat;
         end
         else begin
            nIHEspecial  := nIHEspecial + QAsientos.FieldByName('IMPORTE').AsFloat;
            nITHEspecial := nITHEspecial + QAsientos.FieldByName('IMPORTE').AsFloat;
         end;
         QAsientos.Next;
      end;    // while not QAsientos.Eof do

      // Apunte Saldo Normal
      if RoundTo(nIDNormal - nIHNormal, -2) <> 0 then begin
         if AsientoNormal = 0 then begin
            AsientoNormal := DMContaRef.ObtenerNumeroAsiento;
         end;

         Inc(ApunteNormal);
         QInsApunte.Close;
         QInsApunte.ParamByName('APUNTE'       ).AsInteger := ApunteNormal;
         QInsApunte.ParamByName('ASIENTO'      ).AsInteger := AsientoNormal;
         QInsApunte.ParamByName('COMENTARIO'   ).AsString  := 'ASTO. REGULARIZACION';
         QInsApunte.ParamByName('CONTRAPARTIDA').AsString  := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
         if RoundTo(nIDNormal - nIHNormal, -2) > 0 then begin
            QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
         end
         else begin
            QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
         end;
         QInsApunte.ParamByName('FECHA'       ).AsDateTime := FFechaFin;
         QInsApunte.ParamByName('IMPORTE'     ).AsFloat    := Abs(RoundTo(nIDNormal - nIHNormal, -2));
         QInsApunte.ParamByName('MONEDA'      ).AsString   := 'E';
         QInsApunte.ParamByName('SUBCUENTA'   ).AsString   := QSubcuentas.FieldByName('SUBCUENTA').AsString;
         QInsApunte.ParamByName('ID_CONCEPTOS').AsString   := DMRef.QParametrosCTO_REGULARIZACION.AsString;
         QInsApunte.ExecSql;
         QInsApunte.Transaction.CommitRetaining;
      end;

      // Apunte Saldo Especial
      if RoundTo(nIDEspecial - nIHEspecial, -2) <> 0 then begin
         if AsientoEspecial = 0 then begin
            AsientoEspecial := DMContaRef.ObtenerNumeroAsiento;
         end;

         Inc(ApunteEspecial);
         QInsApunte.Close;
         QInsApunte.ParamByName('APUNTE'       ).AsInteger := ApunteEspecial;
         QInsApunte.ParamByName('ASIENTO'      ).AsInteger := AsientoEspecial;
         QInsApunte.ParamByName('COMENTARIO'   ).AsString  := 'ASTO. REGULARIZACION';
         QInsApunte.ParamByName('CONTRAPARTIDA').AsString  := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
         if RoundTo(nIDEspecial - nIHEspecial, -2) > 0 then begin
            QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
         end
         else begin
            QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
         end;
         QInsApunte.ParamByName('FECHA'       ).AsDateTime := FFechaFin;
         QInsApunte.ParamByName('IMPORTE'     ).AsFloat    := Abs(RoundTo(nIDEspecial - nIHEspecial, -2));
         QInsApunte.ParamByName('MONEDA'      ).AsString   := 'E';
         QInsApunte.ParamByName('SUBCUENTA'   ).AsString   := QSubcuentas.FieldByName('SUBCUENTA').AsString;
         QInsApunte.ParamByName('ID_CONCEPTOS').AsString   := DMRef.QParametrosCTO_REGULARIZACION_ESP.AsString;
         QInsApunte.ExecSQL;
         QInsApunte.Transaction.CommitRetaining;
      end;

      QSubcuentas.Next;
   end;    // while not QSubcuentas.Eof do

   // Subcuenta 1290000    (Saldo Normal)
   if RoundTo(nITDNormal - nITHNormal, -2) <> 0 then begin
      if AsientoNormal = 0 then begin
         AsientoNormal := DMContaRef.ObtenerNumeroAsiento;
      end;

      Inc(ApunteNormal);
      QInsApunte.Close;
      QInsApunte.ParamByName('APUNTE'       ).AsInteger := ApunteNormal;
      QInsApunte.ParamByName('ASIENTO'      ).AsInteger := AsientoNormal;
      QInsApunte.ParamByName('COMENTARIO'   ).AsString  := 'ASTO. REGULARIZACION';
      QInsApunte.ParamByName('CONTRAPARTIDA').AsString  := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      if RoundTo(nITDNormal - nITHNormal, -2) > 0 then begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
      end
      else begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
      end;
      QInsApunte.ParamByName('FECHA'       ).AsDateTime := FFechaFin;
      QInsApunte.ParamByName('IMPORTE'     ).AsFloat    := Abs(RoundTo(nITDNormal - nITHNormal, -2));
      QInsApunte.ParamByName('MONEDA'      ).AsString   := 'E';
      QInsApunte.ParamByName('SUBCUENTA'   ).AsString   := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      QInsApunte.ParamByName('ID_CONCEPTOS').AsString   := DMRef.QParametrosCTO_REGULARIZACION.AsString;
      QInsApunte.ExecSQL;
      QInsApunte.Transaction.CommitRetaining;
   end;

   // Subcuenta 1290000    (Saldo Especial)
   if RoundTo(nITDEspecial - nITHEspecial, -2) <> 0 then begin
      if AsientoEspecial = 0 then begin
         AsientoEspecial := DMContaRef.ObtenerNumeroAsiento;
      end;

      Inc(ApunteEspecial);
      QInsApunte.Close;
      QInsApunte.ParamByName('APUNTE').AsInteger       := ApunteEspecial;
      QInsApunte.ParamByName('ASIENTO').AsInteger      := AsientoEspecial;
      QInsApunte.ParamByName('COMENTARIO').AsString    := 'ASTO. REGULARIZACION';
      QInsApunte.ParamByName('CONTRAPARTIDA').AsString := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      if RoundTo(nITDEspecial - nITHEspecial, -2) > 0 then begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
      end
      else begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
      end;
      QInsApunte.ParamByName('FECHA').AsDateTime      := FFechaFin;
      QInsApunte.ParamByName('IMPORTE').AsFloat       := Abs(RoundTo(nITDEspecial - nITHEspecial, -2));
      QInsApunte.ParamByName('MONEDA').AsString       := 'E';
      QInsApunte.ParamByName('SUBCUENTA').AsString    := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      QInsApunte.ParamByName('ID_CONCEPTOS').AsString := DMRef.QParametrosCTO_REGULARIZACION_ESP.AsString;
      QInsApunte.ExecSQL;
      QInsApunte.Transaction.CommitRetaining;
   end;

   QInsApunte.Close;
   QInsApunte.Free;
   QSubcuentas.Close;
   QSubcuentas.Free;
   QAsientos.Close;
   QAsientos.Free;

   oARegularizacion.Caption := 'Asiento de regularización     [OK]';

   // Almacenar el número de los asientos de regulación generados
   FAsientoNormalReg   := AsientoNormal;
   FAsientoEspecialReg := AsientoEspecial;
end;

procedure TWCierreEjercicio.GenerarAsientos_Cierre_Apertura;
var
   QInsApunte:   TIBQuery;
   QSubcuentas, QAsientos: TIBQuery;
   nIDNormal, nIHNormal, nIDEspecial, nIHEspecial, nITDNormal, nITHNormal, nITDEspecial,
   nITHEspecial: Double;
   AsientoNormalCierre, AsientoEspecialCierre, AsientoNormalApertura, AsientoEspecialApertura,
   ApunteNormal, ApunteEspecial: Integer;
   cEj:          String;
begin
   cEj        := IntToStr(YearOf(FFechaFin) + 1);
   // Inserción de apuntes
   QInsApunte := TIBQuery.Create(nil);
   QInsApunte.Database := DMRef.BDContab;
   QInsApunte.SQL.Clear;
   QInsApunte.SQL.Add('INSERT INTO DIARIO                                           ');
   QInsApunte.SQL.Add('(APUNTE, ASIENTO, COMENTARIO, CONTRAPARTIDA, DEBEHABER,      ');
   QInsApunte.SQL.Add(' FECHA, IMPORTE, MONEDA, SUBCUENTA, ID_CONCEPTOS)            ');
   QInsApunte.SQL.Add('VALUES                                                       ');
   QInsApunte.SQL.Add('(:APUNTE, :ASIENTO, :COMENTARIO, :CONTRAPARTIDA, :DEBEHABER, ');
   QInsApunte.SQL.Add(' :FECHA, :IMPORTE, :MONEDA, :SUBCUENTA, :ID_CONCEPTOS)       ');

   // Selección de subcuentas
   QSubcuentas := TIBQuery.Create(nil);
   QSubcuentas.Close;
   QSubcuentas.Database := DMRef.BDContab;
   QSubcuentas.SQL.Clear;
   QSubcuentas.SQL.Add('SELECT S.SUBCUENTA FROM SUBCTAS S                           ');
   QSubcuentas.SQL.Add('WHERE NOT ((S.SUBCUENTA LIKE "6%") OR (SUBCUENTA LIKE "7%"))');
   QSubcuentas.SQL.Add('ORDER BY S.SUBCUENTA                                        ');
   QSubcuentas.Open;

   // Selección de apuntes
   QAsientos := TIBQuery.Create(nil);
   QAsientos.Close;
   QAsientos.Database := DMRef.BDContab;
   QAsientos.SQL.Clear;
   QAsientos.SQL.Add('SELECT D.IMPORTE, D.DEBEHABER ');
   QAsientos.SQL.Add('FROM DIARIO D, CONCEPTOS C                            ');
   QAsientos.SQL.Add('WHERE                                                 ');
   QAsientos.SQL.Add('   D.SUBCUENTA = :SUBCUENTA AND                       ');
   QAsientos.SQL.Add('   D.FECHA >= :FECHAINI AND D.FECHA <= :FECHAFIN AND  ');
   QAsientos.SQL.Add('   C.TIPOCONTABILIDAD = :TIPOCONTABILIDAD AND         ');
   QAsientos.SQL.Add('   D.ID_CONCEPTOS = C.ID_CONCEPTOS                    ');

   // Generación de asiento de cierre
   AsientoNormalCierre   := 0;
   AsientoEspecialCierre := 0;

   ApunteNormal   := 0;
   ApunteEspecial := 0;

   nITDNormal   := 0;
   nITHNormal   := 0;
   nITDEspecial := 0;
   nITHEspecial := 0;

   while not QSubcuentas.EOF do begin
      nIDNormal   := 0;
      nIHNormal   := 0;
      nIDEspecial := 0;
      nIHEspecial := 0;

      // Saldo Normal
      QAsientos.Close;
      QAsientos.ParamByName('SUBCUENTA').AsString        := QSubcuentas.FieldByName('SUBCUENTA').AsString;
      QAsientos.ParamByName('FECHAINI').AsDateTime       := FFechaInicio;
      QAsientos.ParamByName('FECHAFIN').AsDateTime       := FFechaFin;
      QAsientos.ParamByName('TIPOCONTABILIDAD').AsString := 'N';
      QAsientos.Open;
      while not QAsientos.EOF do begin
         if QAsientos.FieldByName('DEBEHABER').AsString = 'D' then begin
            nIDNormal  := nIDNormal  + QAsientos.FieldByName('IMPORTE').AsFloat;
            nITDNormal := nITDNormal + QAsientos.FieldByName('IMPORTE').AsFloat;
         end
         else begin
            nIHNormal  := nIHNormal  + QAsientos.FieldByName('IMPORTE').AsFloat;
            nITHNormal := nITHNormal + QAsientos.FieldByName('IMPORTE').AsFloat;
         end;
         QAsientos.Next;
      end;    // while not QAsientos.Eof do

      // Saldo Especial
      QAsientos.Close;
      QAsientos.ParamByName('SUBCUENTA').AsString        := QSubcuentas.FieldByName('SUBCUENTA').AsString;
      QAsientos.ParamByName('FECHAINI').AsDateTime       := FFechaInicio;
      QAsientos.ParamByName('FECHAFIN').AsDateTime       := FFechaFin;
      QAsientos.ParamByName('TIPOCONTABILIDAD').AsString := 'E';
      QAsientos.Open;
      while not QAsientos.EOF do begin
         if QAsientos.FieldByName('DEBEHABER').AsString = 'D' then begin
            nIDEspecial  := nIDEspecial  + QAsientos.FieldByName('IMPORTE').AsFloat;
            nITDEspecial := nITDEspecial + QAsientos.FieldByName('IMPORTE').AsFloat;
         end
         else begin
            nIHEspecial  := nIHEspecial  + QAsientos.FieldByName('IMPORTE').AsFloat;
            nITHEspecial := nITHEspecial + QAsientos.FieldByName('IMPORTE').AsFloat;
         end;
         QAsientos.Next;
      end;    // while not QAsientos.Eof do

      // Apunte Saldo Normal
      if RoundTo(nIDNormal - nIHNormal, -2) <> 0 then begin
         if AsientoNormalCierre = 0 then begin
            AsientoNormalCierre := DMContaRef.ObtenerNumeroAsiento;
         end;

         Inc(ApunteNormal);
         QInsApunte.Close;
         QInsApunte.ParamByName('APUNTE').AsInteger       := ApunteNormal;
         QInsApunte.ParamByName('ASIENTO').AsInteger      := AsientoNormalCierre;
         QInsApunte.ParamByName('COMENTARIO').AsString    := 'ASTO. CIERRE';
         QInsApunte.ParamByName('CONTRAPARTIDA').AsString := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
         if RoundTo(nIDNormal - nIHNormal, -2) > 0 then begin
            QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
         end
         else begin
            QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
         end;
         QInsApunte.ParamByName('FECHA').AsDateTime      := FFechaFin;
         QInsApunte.ParamByName('IMPORTE').AsFloat       := Abs(RoundTo(nIDNormal - nIHNormal, -2));
         QInsApunte.ParamByName('MONEDA').AsString       := 'E';
         QInsApunte.ParamByName('SUBCUENTA').AsString    := QSubcuentas.FieldByName('SUBCUENTA').AsString;
         QInsApunte.ParamByName('ID_CONCEPTOS').AsString := DMRef.QParametrosCTO_REGULARIZACION.AsString;
         QInsApunte.ExecSQL;
         QInsApunte.Transaction.CommitRetaining;
      end;

      // Apunte Saldo Especial
      if RoundTo(nIDEspecial - nIHEspecial, -2) <> 0 then begin
         if AsientoEspecialCierre = 0 then begin
            AsientoEspecialCierre := DMContaRef.ObtenerNumeroAsiento;
         end;

         Inc(ApunteEspecial);
         QInsApunte.Close;
         QInsApunte.ParamByName('APUNTE').AsInteger       := ApunteEspecial;
         QInsApunte.ParamByName('ASIENTO').AsInteger      := AsientoEspecialCierre;
         QInsApunte.ParamByName('COMENTARIO').AsString    := 'ASTO. CIERRE';
         QInsApunte.ParamByName('CONTRAPARTIDA').AsString := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
         if RoundTo(nIDEspecial - nIHEspecial, -2) > 0 then begin
            QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
         end
         else begin
            QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
         end;
         QInsApunte.ParamByName('FECHA').AsDateTime      := FFechaFin;
         QInsApunte.ParamByName('IMPORTE').AsFloat       := Abs(RoundTo(nIDEspecial - nIHEspecial, -2));
         QInsApunte.ParamByName('MONEDA').AsString       := 'E';
         QInsApunte.ParamByName('SUBCUENTA').AsString    := QSubcuentas.FieldByName('SUBCUENTA').AsString;
         QInsApunte.ParamByName('ID_CONCEPTOS').AsString := DMRef.QParametrosCTO_REGULARIZACION_ESP.AsString;
         QInsApunte.ExecSQL;
         QInsApunte.Transaction.CommitRetaining;
      end;

      QSubcuentas.Next;
   end;    // while not QSubcuentas.Eof do

   // Subcuenta 1290000    (Saldo Normal)
   if RoundTo(nITDNormal - nITHNormal, -2) <> 0 then begin
      if AsientoNormalCierre = 0 then begin
         AsientoNormalCierre := DMContaRef.ObtenerNumeroAsiento;
      end;

      Inc(ApunteNormal);
      QInsApunte.Close;
      QInsApunte.ParamByName('APUNTE').AsInteger       := ApunteNormal;
      QInsApunte.ParamByName('ASIENTO').AsInteger      := AsientoNormalCierre;
      QInsApunte.ParamByName('COMENTARIO').AsString    := 'ASTO. CIERRE';
      QInsApunte.ParamByName('CONTRAPARTIDA').AsString := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      if RoundTo(nITDNormal - nITHNormal, -2) > 0 then begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
      end
      else begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
      end;
      QInsApunte.ParamByName('FECHA').AsDateTime      := FFechaFin;
      QInsApunte.ParamByName('IMPORTE').AsFloat       := Abs(RoundTo(nITDNormal - nITHNormal, -2));
      QInsApunte.ParamByName('MONEDA').AsString       := 'E';
      QInsApunte.ParamByName('SUBCUENTA').AsString    := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      QInsApunte.ParamByName('ID_CONCEPTOS').AsString := DMRef.QParametrosCTO_REGULARIZACION.AsString;
      QInsApunte.ExecSQL;
      QInsApunte.Transaction.CommitRetaining;
   end;

   // Subcuenta 1290000    (Saldo Especial)
   if RoundTo(nITDEspecial - nITHEspecial, -2) <> 0 then begin
      if AsientoEspecialCierre = 0 then begin
         AsientoEspecialCierre := DMContaRef.ObtenerNumeroAsiento;
      end;

      Inc(ApunteEspecial);
      QInsApunte.Close;
      QInsApunte.ParamByName('APUNTE').AsInteger       := ApunteEspecial;
      QInsApunte.ParamByName('ASIENTO').AsInteger      := AsientoEspecialCierre;
      QInsApunte.ParamByName('COMENTARIO').AsString    := 'ASTO. CIERRE';
      QInsApunte.ParamByName('CONTRAPARTIDA').AsString := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      if RoundTo(nITDEspecial - nITHEspecial, -2) > 0 then begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
      end
      else begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
      end;
      QInsApunte.ParamByName('FECHA').AsDateTime      := FFechaFin;
      QInsApunte.ParamByName('IMPORTE').AsFloat       := Abs(RoundTo(nITDEspecial - nITHEspecial, -2));
      QInsApunte.ParamByName('MONEDA').AsString       := 'E';
      QInsApunte.ParamByName('SUBCUENTA').AsString    := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      QInsApunte.ParamByName('ID_CONCEPTOS').AsString := DMRef.QParametrosCTO_REGULARIZACION_ESP.AsString;
      QInsApunte.ExecSQL;
      QInsApunte.Transaction.CommitRetaining;
   end;

   // Generación de asiento de apertura
   QAsientos.Close;
   QAsientos.SQL.Clear;
   QAsientos.SQL.Add('SELECT * FROM DIARIO WHERE ASIENTO = :ASIENTO ORDER BY APUNTE');

   AsientoNormalApertura   := 0;
   AsientoEspecialApertura := 0;

   // Asiento de apertura Normal
   QAsientos.Close;
   QAsientos.ParamByName('ASIENTO').AsInteger := AsientoNormalCierre;
   QAsientos.Open;
   ApunteNormal := 0;

   if not QAsientos.EOF and (AsientoNormalApertura = 0) then begin
      AsientoNormalApertura := DMContaRef.ObtenerNumeroAsiento;
   end;

   while not QAsientos.EOF do begin
      Inc(ApunteNormal);
      Close;
      QInsApunte.ParamByName('APUNTE').AsInteger       := ApunteNormal;
      QInsApunte.ParamByName('ASIENTO').AsInteger      := AsientoNormalApertura;
      QInsApunte.ParamByName('COMENTARIO').AsString    := 'ASTO. APERTURA';
      QInsApunte.ParamByName('CONTRAPARTIDA').AsString := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      if QAsientos.FieldByName('DEBEHABER').AsString = 'D' then begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
      end
      else begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
      end;
      QInsApunte.ParamByName('FECHA').AsDateTime      := StrToDateTime('01/01/' + cEj);
      QInsApunte.ParamByName('IMPORTE').AsFloat       := RoundTo(QAsientos.FieldByName('IMPORTE').AsFloat, -2);
      QInsApunte.ParamByName('MONEDA').AsString       := 'E';
      QInsApunte.ParamByName('SUBCUENTA').AsString    := QAsientos.FieldByName('SUBCUENTA').AsString;
      QInsApunte.ParamByName('ID_CONCEPTOS').AsString := DMRef.QParametrosCTO_APERTURA.AsString;
      QInsApunte.ExecSql;
      QInsApunte.Transaction.CommitRetaining;

      QAsientos.Next;
   end;    // while not QAsientos.Eof do

   // Asiento de apertura Especial
   QAsientos.Close;
   QAsientos.ParamByName('ASIENTO').AsInteger := AsientoEspecialCierre;
   QAsientos.Open;
   ApunteEspecial := 0;

   if not QAsientos.EOF and (AsientoEspecialApertura = 0) then begin
      AsientoEspecialApertura := DMContaRef.ObtenerNumeroAsiento;
   end;

   while not QAsientos.EOF do begin
      Inc(ApunteEspecial);
      Close;
      QInsApunte.ParamByName('APUNTE').AsInteger       := ApunteEspecial;
      QInsApunte.ParamByName('ASIENTO').AsInteger      := AsientoEspecialApertura;
      QInsApunte.ParamByName('COMENTARIO').AsString    := 'ASTO. APERTURA';
      QInsApunte.ParamByName('CONTRAPARTIDA').AsString := DMRef.QParametrosSUBCUENTA_CIERRE.AsString;
      if QAsientos.FieldByName('DEBEHABER').AsString = 'D' then begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'H';
      end
      else begin
         QInsApunte.ParamByName('DEBEHABER').AsString := 'D';
      end;
      QInsApunte.ParamByName('FECHA').AsDateTime      := StrToDateTime('01/01/' + cEj);
      QInsApunte.ParamByName('IMPORTE').AsFloat       := RoundTo(QAsientos.FieldByName('IMPORTE').AsFloat, -2);
      QInsApunte.ParamByName('MONEDA').AsString       := 'E';
      QInsApunte.ParamByName('SUBCUENTA').AsString    := QAsientos.FieldByName('SUBCUENTA').AsString;
      QInsApunte.ParamByName('ID_CONCEPTOS').AsString := DMRef.QParametrosCTO_APERTURA_ESP.AsString;
      QInsApunte.ExecSql;
      QInsApunte.Transaction.CommitRetaining;

      QAsientos.Next;
   end;

   QInsApunte.Close;
   QInsApunte.Free;
   QSubcuentas.Close;
   QSubcuentas.Free;
   QAsientos.Close;
   QAsientos.Free;

   oACierreApertura.Caption := 'Asientos de cierre y apertura     [OK]';

   // Almacenar el número de los asientos de cierre generados
   FAsientoNormalCierre   := AsientoNormalCierre;
   FAsientoEspecialCierre := AsientoEspecialCierre;

   // Almacenar el número de los asientos de apertura generados
   FAsientoNormalApert   := AsientoNormalApertura;
   FAsientoEspecialApert := AsientoEspecialApertura;
end;

procedure TWCierreEjercicio.BorrarAsientos;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   try 
      Q.Database    := DMRef.BDContab;
      Q.Transaction := DmRef.BDContab.DefaultTransaction;

      // Desactivar triggers
      Q.SQL.Add('UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE = 1');
      Q.SQL.Add('WHERE UPPER(RDB$RELATION_NAME) = "DIARIO"       ');
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;

      // Borrado de asientos del ejercicio actual
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('DELETE FROM DIARIO WHERE FECHA >= :FECHAINI AND FECHA <= :FECHAFIN');
      Q.ParamByName('FECHAINI').AsDateTime := FFechaInicio;
      Q.ParamByName('FECHAFIN').AsDateTime := FFechaFin;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;

      // Recalcular saldos ejercicio actual
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('EXECUTE PROCEDURE RECALCULOSALDOS (:EJERCICIO)');
      Q.Params.ByName('EJERCICIO').AsInteger := YearOf(Date);
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;

      // Activar triggers
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE = 0');
      Q.SQL.Add('WHERE UPPER(RDB$RELATION_NAME) = "DIARIO"       ');
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;

   oABorrarAsientos.Caption := 'Borrar asientos entre las fechas ' +
      DateToStr(FFechaInicio) + ' a ' + DateToStr(FFechaFin) +
      '  [OK]';
end;

procedure TWCierreEjercicio.CambiarFechasNuevoEjercicio;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   try
      Q.Database    := DMRef.BDContab;
      Q.Transaction := DmRef.BDContab.DefaultTransaction;

      // Actualizar fechas ejercicio
      Q.SQL.Add('UPDATE PARAMETROS SET                    ');
      Q.SQL.Add('   FECHA_INICIO_EJERCICIO = :FECHAINICIO,');
      Q.SQL.Add('   FECHA_FIN_EJERCICIO = :FECHAFIN       ');
      Q.SQL.Add('WHERE ID_PARAMETROS = :ID_PARAMETROS     ');
      Q.ParamByName('FECHAINICIO').AsDateTime  := StrToDateTime('01/01/' + IntToStr(YearOf(Date)));
      Q.ParamByName('FECHAFIN').AsDateTime     := StrToDateTime('31/12/' + IntToStr(YearOf(Date)));
      Q.ParamByName('ID_PARAMETROS').AsInteger := DMRef.QParametrosID_PARAMETROS.AsInteger;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
      DMRef.QParametros.Close;
      DMRef.QParametros.Open;
   finally
      Q.Free;
   end;

   oACambioFechas.Caption := 'Cambiar fechas del nuevo ejercicio     [OK]';
end;

procedure TWCierreEjercicio.RenumerarAsientos;
var QAsientos    :TIBQuery;
    AsientoAnt   :Integer;
    NuevoAsiento :Integer;
    Q            :TIBSQL;
begin
   QAsientos := TIBQuery.Create(nil);
   QAsientos.Database    := DMRef.BDContab;
   QAsientos.Transaction := DmRef.BDContab.DefaultTransaction;
   QAsientos.Close;
   QAsientos.SQL.Clear;
   QAsientos.SQL.Add('SELECT * FROM DIARIO                           ');
   QAsientos.SQL.Add('WHERE FECHA >= :FECHAINI AND FECHA <= :FECHAFIN');
   QAsientos.SQL.Add('ORDER BY FECHA, ASIENTO                        ');

   Q := TIBSQL.Create(nil);
   try
      Q.Database    := DMRef.BDContab;
      Q.Transaction := DmRef.BDContab.DefaultTransaction;

      // Desactivar triggers
      Q.Close;
      Q.SQL.Add('UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE = 1');
      Q.SQL.Add('WHERE UPPER(RDB$RELATION_NAME) = "DIARIO"       ');
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;

      // Renumerar asientos
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('UPDATE DIARIO SET ASIENTO = :ASIENTO');
      Q.SQL.Add('WHERE ID_DIARIO = :ID_DIARIO        ');

      QAsientos.Close;
      QAsientos.ParamByName('FECHAINI').AsDateTime := DMRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime;
      QAsientos.ParamByName('FECHAFIN').AsDateTime := DMRef.QParametrosFECHA_FIN_EJERCICIO.AsDateTime;
      QAsientos.Open;

      AsientoAnt   := 0;
      NuevoAsiento := 0;
      while not QAsientos.EOF do begin
         if AsientoAnt <> QAsientos.FieldByName('ASIENTO').AsInteger then begin
            AsientoAnt := QAsientos.FieldByName('ASIENTO').AsInteger;
            Inc(NuevoAsiento);
         end;
         Q.Close;
         Q.ParamByName('ASIENTO').AsInteger   := NuevoAsiento;
         Q.ParamByName('ID_DIARIO').AsInteger := QAsientos.FieldByName('ID_DIARIO').AsInteger;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;

         QAsientos.Next;
      end;

      { Actualizar contadores de asientos }
      DmContaRef.Actualizar_contador('ASIENTO', NuevoAsiento);

      { Activar triggers }
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('UPDATE RDB$TRIGGERS SET RDB$TRIGGER_INACTIVE = 0');
      Q.SQL.Add('WHERE UPPER(RDB$RELATION_NAME) = "DIARIO"       ');
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;

   oARenumerado.Caption := 'Renumerar asientos     [OK]';
end;

procedure TWCierreEjercicio.BtnEdtProcesarClick(Sender: TObject);
var InProgress :TEspere;
    Msg        :string;
begin
   // Comprobar opciones de usuario
   if not oURecalculo.Checked then begin
      DatabaseError('Debe realizar previamente el recálculo de saldos.');
   end;
   if not oUImpresion.Checked then begin
      DatabaseError('Debe realizar previamente la impresión de los listados y balances.');
   end;

   InProgress := InProgressView('Cierre de Ejercicio ...');
   try
      // Comprobar opciones automatizadas   (PASO 1)
      if oAAcumSaldosAmortiz.Checked then  begin
         InProgress.Text := 'Acumular saldos amortizaciones ...';
         ActualizarAcumuladosAmortizaciones;
      end;

      if oARegularizacion.Checked then  begin
         InProgress.Text := 'Asiento regularización ...';
         GenerarAsientoRegularizacion;
      end;

      if oACierreApertura.Checked then  begin
         InProgress.Text := 'Asientos cierre y apertura ...';
         GenerarAsientos_Cierre_Apertura;
      end;
   finally
      InProgress.Free;
   end;

   // Comprobar opciones automatizadas   (PASO 2)
   if oAAcumSaldosEjerAnt.Checked or oABorrarAsientos.Checked or oACambioFechas.Checked or
      oARenumerado.Checked then  begin
      if MessageDlg('¿Confirma que ha realizado correctamente el duplicado de la empresa?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         InProgress := InProgressView('');
         try
            if oAAcumSaldosEjerAnt.Checked then begin
               InProgress.Text := 'Acumular saldos ejer. anterior ...';
               ActualizarAcumulados_Cuentas_Subctas;
            end;

            if oABorrarAsientos.Checked then begin
               InProgress.Text := 'Borrar asientos ejer. actual ...';
               BorrarAsientos;
            end;

            if oACambioFechas.Checked then begin
               InProgress.Text := 'Cambiar fechas nuevo ejercicio ...';
               CambiarFechasNuevoEjercicio;
            end;

            if oARenumerado.Checked then begin
               InProgress.Text := 'Renumerar asientos ...';
               RenumerarAsientos;
            end;
         finally
            InProgress.Free;
         end;
      end
      else begin
         Exit;
      end;
   end;

   Msg := 'Proceso finalizado correctamente.';
   if oARegularizacion.Checked then  begin
      Msg := Msg + #13 + 'Asiento Regularización ' +
         IntToStr(FAsientoNormalReg);
      if FAsientoEspecialReg <> 0 then begin
         Msg := Msg + ' y ' + IntToStr(FAsientoEspecialReg);
      end;
   end;
   if oACierreApertura.Checked then  begin
      Msg := Msg + #13 + 'Asiento Cierre ' +
         IntToStr(FAsientoNormalCierre);
      if FAsientoEspecialCierre <> 0 then begin
         Msg := Msg + ' y ' + IntToStr(FAsientoEspecialCierre);
      end;
      Msg := Msg + #13 + 'Asiento Apertura ' +
         IntToStr(FAsientoNormalApert);
      if FAsientoEspecialApert <> 0 then begin
         Msg := Msg + ' y ' + IntToStr(FAsientoEspecialApert);
      end;
   end;
   MessageDlg(Msg, mtInformation, [mbOK], 0);
end;

procedure TWCierreEjercicio.FormShow(Sender: TObject);
begin
   FFechaInicio := DMRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime;
   FFechaFin    := DMRef.QParametrosFECHA_FIN_EJERCICIO.AsDateTime;
   oABorrarAsientos.Caption := 'Borrar asientos entre las fechas ' +
      DateToStr(FFechaInicio) + ' a ' + DateToStr(FFechaFin);
end;

procedure TWCierreEjercicio.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnEdtProcesar.Click;
      end;
   end;
end;

end.
