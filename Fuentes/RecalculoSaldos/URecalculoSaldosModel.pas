unit URecalculoSaldosModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet, SQLTimSt;

type
  TLapMonth = class
     Begins :TDateTime;
     Ends   :TDateTime;
  end;

  TMonthsOfAExercise = array[1..12] of TLapMonth;

  TDataModuleRecalculoSaldos = class(TDataModule)
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TRecalculoSaldosModel = class(TCustomModel)
  private
    DM :TDataModuleRecalculoSaldos;
    FMonths :TMonthsOfAExercise;
    function FillRightStr(StrData:string; Character :Char; Long:Integer):string;
    function MaskAccnt(AAccount :string):string; {GetMaskAccount}
    function GetMonths(ABegins, AEnds :TDateTime):TMonthsOfAExercise;
    procedure InitializeSaldosCuentas;
    procedure InitializeSaldosSubcuentas;
    function  UpdateSaldosCuentas(YearMonths :TMonthsOfAExercise):Boolean;
    function  UpdateSaldosSubcuentas(YearMonths :TMonthsOfAExercise):Boolean;
    procedure UpdateSaldoCuenta(ACuenta :string; YearMonths :TMonthsOfAExercise);
    procedure UpdateSaldoCuentaMensual(ACuenta, AMonth :string; ABegin, AEnd :TDateTime);
    procedure UpdateSaldoSubcuenta(ASubcuenta :string; YearMonths :TMonthsOfAExercise);
    procedure UpdateSaldoSubcuentaMensual(ASubcuenta, AMonth :string; ABegin, AEnd :TDateTime);
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure RecalculaSaldos(AExercise :Integer);
  end;

implementation

uses Dialogs, Forms, DateUtils, IBX.IBQuery, Tools, Globales, DM;

{$R *.dfm}

{ TRecalculoSaldosModel }

constructor TRecalculoSaldosModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleRecalculoSaldos.Create(Application);
   if Initialize then DoInitialize;
end;

function TRecalculoSaldosModel.DataModule: TDataModule;
begin

end;

destructor TRecalculoSaldosModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TRecalculoSaldosModel.DoInitialize;
begin
   inherited;
   (*DM.QLSubCuentas.Database := DB;
   DM.QLSubCuentas.Open;

   DM.QLConceptos.Database := DB;
   DM.QLConceptos.Open;*)
end;

procedure TRecalculoSaldosModel.RecalculaSaldos(AExercise :Integer);
var Year, Month, Day :Word;
begin
   Year  := AExercise;
   Month := 1;
   Day   := 1;
   // Cálculo de los saldos de todas las cuentas.
   FMonths := GetMonths(StartOfTheYear(EncodeDate(Year, Month, Day)),
                        EndOfTheYear  (EncodeDate(Year, Month, Day)));
   InitializeSaldosCuentas;
   InitializeSaldosSubcuentas;
   UpdateSaldosCuentas(FMonths);
   UpdateSaldosSubCuentas(FMonths);
                      
   //Dialogs.ShowMessage(FormatDateTime('dd/mmm/yyyy', FMonths[12].Begins) + '      '+ FormatDateTime('dd/mmm/yyyy', FMonths[12].Ends));
end;

function TRecalculoSaldosModel.GetMonths(ABegins, AEnds :TDateTime):TMonthsOfAExercise;
var InitialDate :TDateTime;
    FinalDate   :TDateTime;
    FirstYear   :Integer;        {Year of initial date}
    LastYear    :Integer;        {Year of final date  }
    NextMonth   :Integer;
    LapMonth    :TLapMonth;
    NewDate     :TDateTime;
var IniYear, IniMonth, IniDay :Word;
    EndYear, EndMonth, EndDay :Word;
    NewYear, NewMonth, NewDay :Word;
begin
   { Error if the Dates are inversed }
   if ABegins > AEnds then begin
      raise Exception.Create('La fecha final debe ser posterior a la fecha inicial');
   end;

   {Get Initial Date}
   InitialDate := ABegins;
   {Get Final Date}
   FinalDate := AEnds;

   DecodeDate(InitialDate, IniYear, IniMonth, IniDay);
   DecodeDate(FinalDate  , EndYear, EndMonth, EndDay);

   { The same year }
   if IniYear = EndYear then begin
      { Value actually not used FirstYear := InitialDate.Year; }
      if IniMonth = EndMonth then begin
         { One month only or some days period }
         LapMonth := TLapMonth.Create;
         LapMonth.Begins := StartOfTheDay(InitialDate);
         LapMonth.Ends   := EndOfTheDay  (FinalDate  );
         Result[1] := LapMonth;
         Exit; {Shall exit now!!}
      end
      else begin
         LapMonth := TLapMonth.Create;
         LapMonth.Begins := StartOfTheDay(InitialDate);
         LapMonth.Ends   := EndOfTheMonth(InitialDate);
         Result[1] := LapMonth;
         { Add to list the months before December }
         NewYear := IniYear;
         NewDay  := 1; {All the months have first day }
         NextMonth := IniMonth +1;
         while NextMonth < EndMonth do begin
            NewMonth := NextMonth;
            NewDate := EncodeDate(NewYear, NextMonth, NewDay);
            LapMonth := TLapMonth.Create;
            LapMonth.Begins := StartOfTheDay(NewDate);
            LapMonth.Ends   := EndOfTheMonth(NewDate);
            Result[NextMonth - (IniMonth-1)] := LapMonth;
            Inc(NextMonth);
         end;
         NewMonth := NextMonth;
         NewDate := EncodeDate(NewYear, NextMonth, NewDay);
         LapMonth := TLapMonth.Create;
         LapMonth.Begins := StartOfTheDay(NewDate  );
         LapMonth.Ends   := EndOfTheDay  (FinalDate);
         Result[EndMonth] := LapMonth;
      end;
   end else { if can't be minnor and is not equal... }
   if EndYear > IniYear then begin
      {This second part of the method shall be repased.
      I'm sure that is not working well, but at this moment is not necessary,
      because of this I not invest time in test it}
      if EndYear <> IniYear +1 then begin
         raise Exception.Create('El año final sólo puede ser uno mayor que el inicial');
      end
      else begin
         { Two consecutive years }
         FirstYear := IniYear; {Year of initial date}
         LastYear  := EndYear; {Year of final date  }

         LapMonth := TLapMonth.Create;
         LapMonth.Begins := StartOfTheDay(InitialDate);
         LapMonth.Ends   := EndOfTheMonth(InitialDate);
         Result[1] := LapMonth;

         { Add to list the months before December, include }
         NewDate := InitialDate;
         NewDay := 1; {All the months have first day }
         NextMonth := IniMonth +1;
         NewYear  := FirstYear;
         NewMonth := NextMonth;
         while NextMonth <= 12 do begin
            NewMonth := NextMonth;
            LapMonth := TLapMonth.Create;
            LapMonth.Begins := StartOfTheDay(NewDate);
            LapMonth.Ends   := EndOfTheMonth(NewDate);
            Result[NextMonth - (IniMonth-1)] := LapMonth;
            Inc(NextMonth);
         end;

         { Add to list the months of january and son on }
         NextMonth       := 1; {January}
         NewYear  := LastYear;
         NewMonth := NextMonth;
         while NextMonth <= EndMonth -1 do begin
            NewMonth := NextMonth;
            LapMonth := TLapMonth.Create;
            LapMonth.Begins := StartOfTheDay(NewDate);
            LapMonth.Ends   := EndOfTheMonth(NewDate);
            Result[NextMonth - (IniMonth-1)] := LapMonth;
            Inc(NextMonth);
         end;

         NewMonth := NextMonth;
         LapMonth := TLapMonth.Create;
         LapMonth.Begins := StartOfTheDay(NewDate  );
         LapMonth.Ends   := EndOfTheDay  (FinalDate);
         Result[NextMonth - (IniMonth-1)] := LapMonth;
      end;
   end;
end;

procedure TRecalculoSaldosModel.InitializeSaldosCuentas;
var QInitCuentas :TIBQuery;
begin
   QInitCuentas := CreateQuery([
      ' UPDATE CUENTAS SET SUMADB  = 0,  ',
      '                    SUMAHB  = 0,  ',
      '                    ACUDB01 = 0,  ',
      '                    ACUDB02 = 0,  ',
      '                    ACUDB03 = 0,  ',
      '                    ACUDB04 = 0,  ',
      '                    ACUDB05 = 0,  ',
      '                    ACUDB06 = 0,  ',
      '                    ACUDB07 = 0,  ',
      '                    ACUDB08 = 0,  ',
      '                    ACUDB09 = 0,  ',
      '                    ACUDB10 = 0,  ',
      '                    ACUDB11 = 0,  ',
      '                    ACUDB12 = 0,  ',
      '                    ACUHB01 = 0,  ',
      '                    ACUHB02 = 0,  ',
      '                    ACUHB03 = 0,  ',
      '                    ACUHB04 = 0,  ',
      '                    ACUHB05 = 0,  ',
      '                    ACUHB06 = 0,  ',
      '                    ACUHB07 = 0,  ',
      '                    ACUHB08 = 0,  ',
      '                    ACUHB09 = 0,  ',
      '                    ACUHB10 = 0,  ',
      '                    ACUHB11 = 0,  ',
      '                    ACUHB12 = 0;  ']);
   QInitCuentas.Transaction := DMRef.BDContab.DefaultTransaction;
   try
      QInitCuentas.ExecSQL;
      QInitCuentas.Transaction.CommitRetaining;
   finally
      QInitCuentas.Free;
   end;
end;

procedure TRecalculoSaldosModel.InitializeSaldosSubcuentas;
var QInitSubcuentas :TIBQuery;
begin
   QInitSubcuentas := CreateQuery([
      ' UPDATE SUBCTAS SET SUMADB  = 0,  ',
      '                    SUMAHB  = 0,  ',
      '                    ACUDB01 = 0,  ',
      '                    ACUDB02 = 0,  ',
      '                    ACUDB03 = 0,  ',
      '                    ACUDB04 = 0,  ',
      '                    ACUDB05 = 0,  ',
      '                    ACUDB06 = 0,  ',
      '                    ACUDB07 = 0,  ',
      '                    ACUDB08 = 0,  ',
      '                    ACUDB09 = 0,  ',
      '                    ACUDB10 = 0,  ',
      '                    ACUDB11 = 0,  ',
      '                    ACUDB12 = 0,  ',
      '                    ACUHB01 = 0,  ',
      '                    ACUHB02 = 0,  ',
      '                    ACUHB03 = 0,  ',
      '                    ACUHB04 = 0,  ',
      '                    ACUHB05 = 0,  ',
      '                    ACUHB06 = 0,  ',
      '                    ACUHB07 = 0,  ',
      '                    ACUHB08 = 0,  ',
      '                    ACUHB09 = 0,  ',
      '                    ACUHB10 = 0,  ',
      '                    ACUHB11 = 0,  ',
      '                    ACUHB12 = 0;  ']);
   QInitSubcuentas.Transaction := DMRef.BDContab.DefaultTransaction;
   try
      QInitSubcuentas.ExecSQL;
      QInitSubcuentas.Transaction.CommitRetaining;
   finally
      QInitSubcuentas.Free;
   end;
end;

function TRecalculoSaldosModel.UpdateSaldosCuentas(YearMonths :TMonthsOfAExercise):Boolean;
var QCountCuentas   :TIBQuery;
    QCuentas        :TIBQuery;
begin
   QCountCuentas := CreateQuery(
      ['SELECT COUNT(*) QUANTITY ',
       'FROM   CUENTAS           ']);
   try
      QCountCuentas.Open;
      //SetMax(QCountCuentas.FieldByName('QUANTITY').AsInteger);
   finally
      QCountCuentas.Free;
   end;

   QCuentas := CreateQuery(['SELECT CUENTA     , ',
                            '       DESCRIPCION  ',
                            'FROM   CUENTAS      ',
                            'ORDER BY CUENTA     ']);
   QCuentas.Open;
   try
      while not QCuentas.EOF do begin
         //ShowProgress('Updating '+QCuentas.FieldByName('CD_CUENTA').AsString+
         //             '   =>    '+QCuentas.FieldByName('DS_CUENTA').AsString);
         UpdateSaldoCuenta(QCuentas.FieldByName('CUENTA').AsString, YearMonths);
         QCuentas.Next;
      end;
   finally
      QCuentas.Free;
   end;
end;

function TRecalculoSaldosModel.UpdateSaldosSubcuentas(YearMonths :TMonthsOfAExercise):Boolean;
var QCountSubCuentas:TIBQuery;
    QSubcuentas     :TIBQuery;
begin
   QCountSubcuentas := CreateQuery(
      ['SELECT COUNT(*) QUANTITY ',
       'FROM   SUBCTAS           ']);
   try
      QCountSubcuentas.Open;
      //SetMax(QCountSubcuentas.FieldByName('QUANTITY').AsInteger);
   finally
      QCountSubcuentas.Free;
   end;

   QSubcuentas := CreateQuery(['SELECT SUBCUENTA,  ',
                               '       DESCRIPCION ',
                               'FROM   SUBCTAS     ',
                               'ORDER BY SUBCUENTA ']);
   QSubcuentas.Open;
   try
      while not QSubcuentas.EOF do begin
         //ShowProgress('Updating '+QSubcuentas.FieldByName('CD_SUBCUENTA').AsString+
         //             '   =>    '+QSubcuentas.FieldByName('DS_SUBCUENTA').AsString);
         UpdateSaldoSubcuenta(QSubcuentas.FieldByName('SUBCUENTA').AsString, YearMonths);
         QSubcuentas.Next;
      end;
   finally
      QSubCuentas.Free;
   end;
end;

function TRecalculoSaldosModel.FillRightStr(StrData:string; Character :Char; Long:Integer):string;
var Mascara :string;
    i       :Integer;
begin
   Mascara := '';
   for i := 1 to Long do Mascara := Mascara + Character;
   //if Length(Trim(Campo.Value)) <> 0 then begin
      if Length(Trim(StrData)) < Long then begin
         Result := StrData + Copy(Mascara, 1, Long-Length(StrData));
      end
      else begin
         Result := Copy(StrData, 1, Long);
      end;
   //end;
end;

function TRecalculoSaldosModel.MaskAccnt(AAccount :string):string;
begin
   Result := FillRightStr(Trim(AAccount), '_', Config.MaxLengthAccounts);
end;

procedure TRecalculoSaldosModel.UpdateSaldoCuenta(ACuenta :string; YearMonths :TMonthsOfAExercise);
var Q     :TIBQuery;
    Month :TLapMonth;
    i     :Integer;
    Num   :Integer;
    OO    :string;
{if the account is of a length less than 3, we shall sum the accounts of 3 to}    
begin
   Q := CreateQuery(['UPDATE CUENTAS                                                     ',
                     '   SET SUMADB = (SELECT SUM(IMPORTE) FROM DIARIO                   ',
                     '                 WHERE SUBCUENTA LIKE '''+MaskAccnt(ACuenta)+'''   ',
                     '                 AND   DEBEHABER = ''D''),                         ',
                     '       SUMAHB = (SELECT SUM(IMPORTE) FROM DIARIO                   ',
                     '                 WHERE SUBCUENTA LIKE '''+MaskAccnt(ACuenta)+'''   ',
                     '                 AND   DEBEHABER = ''H'')                          ',
                     ' WHERE CUENTA = '''+Trim(ACuenta)+'''                              ']);
   Q.Transaction := DMRef.BDContab.DefaultTransaction;
   try
      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;

   Num := 1;
   for i := 1 to 12{Month in YearMonths} do begin
       Month := YearMonths[i];
       OO := TTools.FillStr(IntToStr(Num), '0', 2);
       UpdateSaldoCuentaMensual(ACuenta, OO, Month.Begins, Month.Ends);
       Inc(Num);
   end;
end;

procedure TRecalculoSaldosModel.UpdateSaldoCuentaMensual(ACuenta, AMonth :string; ABegin, AEnd :TDateTime);
var Q :TIBQuery;
begin
   Q := CreateQuery(['UPDATE CUENTAS                                                           ',
                     ' SET ACUDB'+AMonth+' = (SELECT SUM(IMPORTE) FROM DIARIO                  ',
                     '                        WHERE SUBCUENTA LIKE '''+MaskAccnt(ACuenta)+'''  ',
                     '                        AND   DEBEHABER = ''D''                          ',
                     '                        AND   (FECHA >= :prmDTE_D_SINCE)                 ',
                     '                        AND   (FECHA <= :prmDTE_D_UNTIL)),               ',
                     {---------------------------------------------------------------}
                     '     ACUHB'+AMonth+' = (SELECT SUM(IMPORTE) FROM DIARIO                  ',
                     '                        WHERE SUBCUENTA LIKE '''+MaskAccnt(ACuenta)+'''  ',
                     '                        AND   DEBEHABER = ''H''                          ',
                     '                        AND   (FECHA >= :prmDTE_H_SINCE)                 ',
                     '                        AND   (FECHA <= :prmDTE_H_UNTIL))                ',
                     'WHERE CUENTA = '''+Trim(ACuenta)+'''                                     ']);
   Q.Transaction := DMRef.BDContab.DefaultTransaction;
   //Dialogs.ShowMessage(Q.SQL.Text);

   Q.ParamByName('prmDTE_D_SINCE').AsDateTime := ABegin;
   Q.ParamByName('prmDTE_D_UNTIL').AsDateTime := AEnd;
   Q.ParamByName('prmDTE_H_SINCE').AsDateTime := ABegin;
   Q.ParamByName('prmDTE_H_UNTIL').AsDateTime := AEnd;
   try
      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
end;

procedure TRecalculoSaldosModel.UpdateSaldoSubcuenta(ASubcuenta :string; YearMonths :TMonthsOfAExercise);
var Q     :TIBQuery;
    Month :TLapMonth;
    i     :Integer;
    Num   :Integer;
    OO    :string;
begin
   Q := CreateQuery(['UPDATE SUBCTAS                                                       ',
                     '   SET SUMADB = (SELECT SUM(IMPORTE) FROM DIARIO                     ',
                     '                 WHERE SUBCUENTA LIKE '''+MaskAccnt(ASubCuenta)+'''  ',
                     '                 AND   DEBEHABER = ''D''),                           ',
                     '       SUMAHB = (SELECT SUM(IMPORTE) FROM DIARIO                     ',
                     '                 WHERE SUBCUENTA LIKE '''+MaskAccnt(ASubCuenta)+'''  ',
                     '                 AND   DEBEHABER = ''H'')                            ',
                     ' WHERE SUBCUENTA = '''+Trim(ASubCuenta)+'''                          ']);
   Q.Transaction := DMRef.BDContab.DefaultTransaction;
   try
      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;

   Num := 1;
   for i := 1 to 12{Month in YearMonths} do begin
       Month := YearMonths[i];
       OO := TTools.FillStr(IntToStr(Num), '0', 2);
       UpdateSaldoSubCuentaMensual(ASubcuenta, OO, Month.Begins, Month.Ends);
       Inc(Num);
   end;
end;

procedure TRecalculoSaldosModel.UpdateSaldoSubcuentaMensual(ASubcuenta, AMonth :string; ABegin, AEnd :TDateTime);
var Q :TIBQuery;
begin
   Q := CreateQuery(['UPDATE SUBCTAS                                                              ',
                     ' SET ACUDB'+AMonth+' = (SELECT SUM(IMPORTE) FROM DIARIO                     ',
                     '                        WHERE SUBCUENTA LIKE '''+MaskAccnt(ASubcuenta)+'''  ',
                     '                        AND   DEBEHABER = ''D''                             ',
                     '                        AND   (FECHA >= :prmDTE_D_SINCE)                    ',
                     '                        AND   (FECHA <= :prmDTE_D_UNTIL)),                  ',
                     {---------------------------------------------------------------}
                     '     ACUHB'+AMonth+' = (SELECT SUM(IMPORTE) FROM DIARIO                     ',
                     '                        WHERE SUBCUENTA LIKE '''+MaskAccnt(ASubcuenta)+'''  ',
                     '                        AND   DEBEHABER = ''H''                             ',
                     '                        AND   (FECHA >= :prmDTE_H_SINCE)                    ',
                     '                        AND   (FECHA <= :prmDTE_H_UNTIL))                   ',
                     'WHERE SUBCUENTA = '''+Trim(ASubcuenta)+'''                                  ']);
   Q.Transaction := DMRef.BDContab.DefaultTransaction;
   //Dialogs.ShowMessage(Q.SQL.Text);

   Q.ParamByName('prmDTE_D_SINCE').AsDateTime := ABegin;
   Q.ParamByName('prmDTE_D_UNTIL').AsDateTime := AEnd;
   Q.ParamByName('prmDTE_H_SINCE').AsDateTime := ABegin;
   Q.ParamByName('prmDTE_H_UNTIL').AsDateTime := AEnd;
   try
      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
end;

end.

end.
