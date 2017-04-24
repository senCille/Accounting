unit General;

interface

uses Buttons, Classes, ComCtrls, Controls, db, dbCtrls, Forms,
     IBX.IBCustomDataSet, StdCtrls, SysUtils;

type TModo        = (Naveg, Edita);
     TTipoMensaje = (UnBoton, DosBotones);

var MascaraImportes, MascaraImportesORPHEUS :string;

procedure PonerTipoConta(TipoConcepto: String);
procedure ActivarTransacciones(Ventana: TForm);

//procedure Modo(F :TForm; Modo :TModo);

procedure QueryRefresh(Query: TIBDataSet );
procedure QueryOpen(Query: TIBDataSet ; Select: string); 

  {-Rounds a real value to the specified number of decimal places}
{--- Funciones de clipper ---}
function Empty(prmCadena :string):Boolean;
function Year (prmDate :TDateTime):Integer;
function Month(prmDate :TDateTime):Integer;
function Day  (prmDate :TDateTime):Integer;
function Replicate(prmChar :Char; prmLength :Integer):string;
function PadR(prmString :string; prmLength :Integer):string;
function Space(prmLength :Integer):string;

function CMonth(prmDate :TDateTime):string;

implementation

uses Globales, IBX.IBDataBase, IBX.IBQuery, Math, Graphics, TypInfo, DM;


const gcClNaveg   = $00FFFCEA;
      gcclRejilla = $00EDFBFC;
      gcClRejillaDesplegable = $00D9D1C0;
      gcClFuente  = $00A93F3F;

procedure ActivarTransacciones(Ventana :TForm);
var i :Word;
begin
   for i := 0 to (Ventana.ComponentCount - 1) do begin
      if (Ventana.Components[i] is TibTransaction) then begin
         TibTransaction(Ventana.Components[i]).Active := False;
         TibTransaction(Ventana.Components[i]).Params.Clear;
         TibTransaction(Ventana.Components[i]).Params.Add('Read_committed');
         TibTransaction(Ventana.Components[i]).Params.Add('Rec_version');
         TibTransaction(Ventana.Components[i]).Params.Add('Write');
         {Next block was be added after change the name of the Database Component}
         if (TibTransaction(Ventana.Components[i]).DefaultDatabase = nil) then begin
           TibTransaction(Ventana.Components[i]).DefaultDatabase := DMRef.BDContab;
         end;
         TibTransaction(Ventana.Components[i]).Active := True;
      end;
   end;
end;

procedure QueryRefresh(Query: TIBDataSet);
begin
   Query.Close;
   Query.Open;
end;

procedure PonerTipoConta(TipoConcepto: String);
begin
   if TipoConcepto = 'N' then begin
      Config.TipoConta := '';
   end else
   if TipoConcepto = 'E' then begin
      Config.TipoConta := '-';
   end
   else begin
      Config.TipoConta := '+';
   end;
end;

procedure QueryOpen(Query: TIBDataSet; Select: String);
begin
   Query.Close;
   Query.SelectSql.Clear;
   Query.SelectSql.Add(Select);
   Query.Open;
end;

function Exp10(Exponent : Extended) : Extended;
  {-Returns 10^Exponent}
begin
  Result := Power(10.0, Exponent);
end;

function Empty(prmCadena :string):Boolean;
begin
   Result := Trim(prmCadena) = '';
end;

function Year(prmDate :TDateTime):Integer;
{returns the year}
var Year, Month, Day: Word;
begin
  DecodeDate(prmDate, Year, Month, Day);
  Result := Year;
end;

function Month(prmDate :TDateTime):Integer;
{returns the month of the year}
var Year, Month, Day: Word;
begin
  DecodeDate(prmDate, Year, Month, Day);
  Result := Month;
end;

function Day(prmDate :TDateTime):Integer;
{returns the day of the month}
var Year, Month, Day :Word;
begin
   DecodeDate(prmDate, Year, Month, Day);
   Result := Day;
end;

function Replicate(prmChar :Char; prmLength :Integer): string;
{return a string containing nLen times the character c}
var i :Integer;
begin
  Result := '';
  for i := 1 to prmLength do begin
      Result := Result + prmChar;
  end;
end;

function Space(prmLength :Integer): string;
{return the number of spaces asked for}
begin
   Result := Replicate(' ', prmLength);
end;

function PadR(prmString :string; prmLength :Integer): string;
{make certain the string is exactly nLen character}
begin
  if (Length(prmString) <> prmLength) then begin
     if Length(prmString) > prmLength then begin
        {length is smaller than string, so cut string to fit}
        Result := Copy(prmString, 1, prmLength);
     end
     else begin
       {length is bigger than string, so add spaces}
       Result := prmString + Space(prmLength - Length(prmString));
     end;
  end
  else Result := prmString;
end;

function CMonth(prmDate :TDateTime): string;
{returns the month as a character string}
begin
  Result := FormatDateTime('mmmm', prmDate);
end;

end.
