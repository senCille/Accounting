unit Tools;

interface

uses Windows, Forms, db, Controls, Graphics, Classes, Menus, ComCtrls, CommCtrl;

type TTypeOfField = (tcString, tcInteger, tcBoolean, tcFloat, tcDate);

     TDelegate = class(TComponent)
     private
        FOnClick :TNotifyEvent;
     public
        property OnClick :TNotifyEvent read FOnClick write FOnClick stored False;
        function Execute :Boolean;
     end;

     TTools = class
        class procedure BoldTreeNode(TreeNode :TTreeNode; Value :Boolean);
        class procedure PlayKeystroke(Handle: HWND; VKChar: word; VKShift: Word);
        class function  CheckSQLSentence   (aStr :string; TypeOfField :TTypeOfField; Containing :Boolean):string;
        class function  CheckFilterSentence(aStr :string; TypeOfField :TTypeOfField; Containing :Boolean):string;
        class function  ANSIDateStr(Cadena:string):string;
        class function  FillStr(StrData:string; Character :Char; Long:Integer):string;
        class function  FillSpaces(StrData:string; Long:Integer; Align: TAlign):string;
        class function  Spaces(Long:Integer):string;
        class function  FillField(Field :TStringField; Character :Char):string;
        class function  FormatStrToInt(StrData :string):Int64;
        class function  FormatInt(IntData :Int64):string;
        class function  FormatFloat(Data :Real):string;
        class procedure WriteText(      ACanvas :TCanvas; ARect     :TRect;  DX, DY: Integer;
                                  const Text    :string;  Alignment :TAlignment; ARightToLeft: Boolean);
        class function  GetUIDReportFilename(prmRoot :string):string;
        class function  DateBeginOFYear(D: TDateTime): TDateTime;
        class function  DateEndOfYear(D: TDateTime): TDateTime;
        class function  DateYear(D: TDateTime): Integer;
        class function  DateEndOfMonth(D: TDateTime): TDateTime;
        class function  StrStPosS(const P, S : ShortString; var Pos : Cardinal) : Boolean;
        class function  Euros(nEuros :Double; cGenero :string):string;
        class function  SpanishNIFLetter(DNI :string):Char;
        //class procedure SetTypeOfAccounting(TypeOfConcept :string);
        {-Rounds a real value to the specified number of decimal places}
        //class function  RoundToDecimal(Value :Extended; Places :Integer; Bankers :Boolean):Extended;
        //class function  AmountConversion(Amount :Double; CurrentCurrency, FinalCurrency :string):Double;
        class function  Year (prmDate :TDateTime):Integer;
        class function  Month(prmDate :TDateTime):Integer;
        class function  Day  (prmDate :TDateTime):Integer;
        class procedure Currency(F :TForm; prmCurrency :string);
        class procedure ToggleNumLock;
     end;


implementation
uses SysUtils, Messages, Math, Globales{, ppCtrls};

{ TDelegate }

function TDelegate.Execute:Boolean;
begin
   Result := Assigned(FOnClick);
   
   if Assigned(FOnClick) then begin
      FOnClick(Self);
   end;
end;

{ TTools }

class procedure TTools.BoldTreeNode(TreeNode :TTreeNode; Value :Boolean);
var
   TreeItem :TTVItem;
begin
   if not Assigned(treeNode) then Exit;

   with TreeItem do begin
      hItem := TreeNode.ItemId;
      StateMask := TVIS_BOLD;
      Mask := TVIF_HANDLE or TVIF_STATE;
      if Value then
         State := TVIS_BOLD
      else
         State := 0;
   end;

   TreeView_SetItem(TreeNode.Handle, TreeItem) ;
end;

class procedure TTools.PlayKeystroke(Handle: HWND; VKChar: word; VKShift: Word);
var KeyState: TKeyboardState;
    NewKeyState: TKeyboardState;
begin
   GetKeyboardState(KeyState);
   NewKeyState           := KeyState;
   NewKeyState [VKShift] := $81;
   NewKeyState [VKChar]  := $81;
   SetKeyboardState(NewKeyState);
   PostMessage(Handle, WM_KEYDOWN, VKChar, 1);
   PostMessage(Handle, WM_KEYUP, VKChar, 1);
   SetKeyboardState(KeyState);
end;

class function TTools.CheckSQLSentence(aStr :string; TypeOfField :TTypeOfField; Containing :Boolean):string;
var  i:Integer;
begin
   if Length(Trim(aStr)) <> 0 then begin
      case TypeOfField of
         tcString: begin
            //Change '*' by '%', and '?' by '_'
            for i := 1 to Length(aStr) do begin
               if aStr[i] = '*' then aStr[i] := '%';
               if aStr[i] = '?' then aStr[i] := '_';
            end;
            //if there aren't % returns '%aStr%'
            if Pos('%', aStr) = 0 then begin
               if Containing then aStr := '%' + aStr + '%'
                             else aStr := aStr + '%';
            end;
         end;
         tcInteger: begin
            //There is not necessary modify aStr because the event OnKeyPress
            // control that only can input numeric values.
            //if the field is numeric they eliminate all the '*' and all the '?'
            //for i := 1 to Length(aStr) do begin
            //    if aStr[i] = '*' then Cadena[i] := ' ';
            //    if aStr[i] = '?' then Cadena[i] := ' ';
            //end;
            //Trim(aStr);
            Result := aStr;
         end;
         tcBoolean: begin
         end;

         tcFloat: begin
         end;

         tcDate: begin
         end;
      end;
   end;
   Result := aStr;
end;

class function TTools.CheckFilterSentence(aStr :string; TypeOfField :TTypeOfField; Containing :Boolean):string;
var  NumberOfJockes :Integer;
begin
   if Length(Trim(aStr)) <> 0 then begin
      case TypeOfField of
         tcString: begin
            NumberOfJockes := Pos('*', aStr);
            if  NumberOfJockes > 1 then begin //Hay más de un '*'
            end else
            if NumberOfJockes = 0 then begin // No hay ningún '*'
               if Containing then aStr := '*' + aStr + '*'
                             else aStr := aStr + '*';
            end
            else begin // There are exactly one '*'
            end;
            // The space between the first quotes is specific for the ODBC of CCS
            aStr := ''' '+aStr+'''';
         end;
         tcInteger: begin
            //They eliminate all the '*' and all the '?'
            //for i := 1 to Length(aStr) do begin
            //    if aStr[i] = '*' then aStr[i] := ' ';
            //    if aStr[i] = '?' then aStr[i] := ' ';
            //end;
            //Trim(aStr);
            Result := aStr;
         end;
         tcBoolean: begin

         end;

         tcFloat: begin

         end;

         tcDate: begin
         
         end;
      end;
   end;
   Result := aStr;
end;

class function TTools.ANSIDateStr(Cadena :string):string;
begin
   Result := Copy(Cadena, 7, 2) + '/' + Copy(Cadena, 5, 2) + '/'+Copy(Cadena, 1, 4);
end;

class function TTools.FillStr(StrData:string; Character :Char; Long:Integer):string;
var Mascara :string;
    i       :Integer;
begin
   Mascara := '';
   for i := 1 to Long do Mascara := Mascara + Character;
   //if Length(Trim(Campo.Value)) <> 0 then begin
      if Length(Trim(StrData)) < Long then begin
         Result := Copy(Mascara,1,Long-Length(StrData)) + StrData;
      end
      else begin
         Result := Copy(StrData,1,Long);
      end;
   //end;
end;

class function TTools.FillSpaces(StrData:string; Long:Integer; Align: TAlign):string;
var Mascara :string;
    i       :Integer;
begin
   Mascara := '';
   for i := 1 to Long do Mascara := Mascara + ' ';

   if Length(StrData) > 0 then begin
      if Length(StrData) <= Long then begin
         if Align = alRight then Result := Copy(Mascara,1,Long-Length(StrData))+ StrData
                            else Result := StrData + Copy(Mascara,1,Long-Length(StrData));
      end
      else Result := Copy(StrData,1,Long); // Si la cadena es mayor que long, la devuelve cortada.
   end
   else Result := Mascara; // Si la cadena := '' devuelve la máscara;
end;

class function TTools.Spaces(Long:Integer):string;
var Mascara :string;
    i       :Integer;
begin
   Mascara := '';
   for i := 1 to Long do Mascara := Mascara + ' ';
   Result := Mascara;
end;

class function TTools.FillField(Field :TStringField; Character :Char):string;
var Mascara :string;
    i       :Integer;
begin
   for i := 1 to Field.Size  do Mascara := Mascara + Character;
   //if Length(Trim(Campo.Value)) <> 0 then begin
      if Length(Trim(Field.Value)) < Field.Size then begin
         Field.Value := Copy(Mascara,1,Field.Size-Length(Trim(Field.Value))) + Trim(Field.Value);
      end;
   //end;
end;

class function TTools.FormatStrToInt(StrData :string):Int64;
var i :Integer;
    FS :TFormatSettings;
begin
   i := 1;
   while not(i >= Length(StrData)) do begin
      FS := TFormatSettings.Create;
      if (StrData[i] = FS.ThousandSeparator) then Delete(StrData,i,1);
      //if (StrData[i] = ThousandSeparator) then Delete(StrData,i,1);
      inc(i);
   end;
   Result := StrToInt(StrData);
end;

class function TTools.FormatInt(IntData :Int64):string;
begin
   Result := SysUtils.FormatFloat('###,##0', IntData);
end;

class function TTools.FormatFloat(Data :Real):string;
begin
   Result := SysUtils.FormatFloat('0.00',Data);
end;

class procedure TTools.WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
  const Text: string; Alignment: TAlignment; ARightToLeft: Boolean);
// Copiada de la Unidad DBGrids de Borland.
// Es necesaria para dibujar de otro color el texto de los grids en unas determinadas circunstancias.
const
  AlignFlags :array [TAlignment] of Integer =
    ( DT_LEFT   or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_RIGHT  or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX,
      DT_CENTER or DT_WORDBREAK or DT_EXPANDTABS or DT_NOPREFIX );

  RTL :array [Boolean] of Integer = (0, DT_RTLREADING);

var B          :TRect;
    R          :TRect;
    Hold       :Integer;
    Left       :Integer;
    I          :TColorRef;
    DrawBitmap :TBitmap;
begin
  DrawBitmap := TBitmap.Create;
  I := ColorToRGB(ACanvas.Brush.Color);
  if GetNearestColor(ACanvas.Handle, I) = I then begin { Use ExtTextOut for solid colors }
    { In BiDi, because we changed the window origin, the text that does not
      change alignment, actually gets its alignment changed. }
    if (ACanvas.CanvasOrientation = coRightToLeft) and (not ARightToLeft) then ChangeBiDiModeAlignment(Alignment);
    case Alignment of
         taLeftJustify  :Left := ARect.Left  + DX;
         taRightJustify :Left := ARect.Right - ACanvas.TextWidth(Text) - 3;
    else { taCenter }    Left := ARect.Left  + (ARect.Right - ARect.Left) shr 1 - (ACanvas.TextWidth(Text) shr 1);
    end;
    ACanvas.TextRect(ARect, Left, ARect.Top + DY, Text);
  end
  else begin                  { Use FillRect and Drawtext for dithered colors }
    DrawBitmap.Canvas.Lock;
    try
        with DrawBitmap, ARect do begin { Use offscreen bitmap to eliminate flicker and }
                                        { brush origin tics in painting / scrolling.    }
             Width  := Max (Width , Right  - Left);
             Height := Max (Height, Bottom - Top);
             R      := Rect(DX    , DY          , Right - Left - 1, Bottom - Top - 1);
             B      := Rect(0     , 0           , Right - Left    , Bottom - Top    );
        end;
        with DrawBitmap.Canvas do  begin
             Font        := ACanvas.Font;
             Font.Color  := ACanvas.Font.Color;
             Brush       := ACanvas.Brush;
             Brush.Style := bsSolid;
             FillRect(B);
             SetBkMode(Handle, TRANSPARENT);
             if (ACanvas.CanvasOrientation = coRightToLeft) then ChangeBiDiModeAlignment(Alignment);
             DrawText(Handle, PChar(Text), Length(Text), R, AlignFlags[Alignment] or RTL[ARightToLeft]);
        end;
        if (ACanvas.CanvasOrientation = coRightToLeft) then begin
           Hold        := ARect.Left;
           ARect.Left  := ARect.Right;
           ARect.Right := Hold;
        end;
        ACanvas.CopyRect(ARect, DrawBitmap.Canvas, B);
    finally DrawBitmap.Canvas.Unlock;
    end;
  end;
  DrawBitmap.Free;
end;

class function TTools.GetUIDReportFilename(prmRoot: string): string;
begin
   Result := Trim(prmRoot) + FormatDateTime('yyyyddmmmm:ss', Date);
end;

class function TTools.DateBeginOFYear(D: TDateTime): TDateTime;
var
  Year,Month,Day : Word;
begin
  DecodeDate(D,Year,Month,Day);
  Result:=EncodeDate(Year,1,1);
end;

class function TTools.DateEndOfYear(D: TDateTime): TDateTime;
var
  Year, Month, Day :Word;
begin
  DecodeDate(D, Year, Month, Day);
  Result := EncodeDate(Year, 12, 31);
end;

class function TTools.DateYear(D: TDateTime): Integer;
var
  Year, Month, Day :Word;
begin
  DecodeDate(D, Year, Month, Day);
  Result := Year;
end;

class function TTools.DateEndOfMonth(D: TDateTime): TDateTime;
var
  Year,Month,Day : Word;
begin
  DecodeDate(D,Year,Month,Day);
  if Month=12 then
  begin
    Inc(Year);
    Month:=1;
  end else
    Inc(Month);
  Result:=EncodeDate(Year,Month,1)-1;
end;

class function TTools.StrStPosS(const P, S : ShortString; var Pos : Cardinal) : Boolean;
  {-Return the position of a specified substring within a string.}
begin
  Pos := System.Pos(S, P);
  Result := Pos <> 0;
end;

class function TTools.Euros(nEuros: Double; cGenero: string): string;

    function ALLTRIM(cString: string): string;
    {trim off any spaces and return the string}
    var
      startPos, endPos: integer;
    begin
      startPos := 1;
      endPos   := Length(cString);
      while (startPos < Length(cString)) and (cString[startPos] = ' ') do
        Inc(startPos);
      while (endPos > startPos) and (cString[endPos] = ' ') do
        Dec(endPos);
      if (endPos = startPos) and (cString[endPos] = ' ') then
        Result := ''
      else
        Result := Copy(cString, startPos, endPos-startPos+1);
    end;

    function REPLICATE(c: char; nLen: integer): string;
    {return a string containing nLen times the character c}
    var i :integer;
    begin
       Result := '';
       for i := 1 to nLen do
          Result := Result + c;
    end;
    
const Y        = 'y ';
      F        = 'as ';
      M        = 'os ';
      MIL      = 'mil ';
      MILLON   = 'millón ';
      MILLONES = 'millones ';
      BILLON   = 'billón ';
      BILLONES = 'billones ';

var cNumero  :string;
    cTexto   :string;
    nGrupo   :Integer;
    aGrupos  :array[0..5] of string;
    aDecena  :array[1..10] of string;
    cUnidad  :string;
    cDecena  :string;
    cCentena :string;

begin
   { Carga de datos en aDecena }
   aDecena[1]:='diez ';
   aDecena[2]:='once ';
   aDecena[3]:='doce ';
   aDecena[4]:='trece ';
   aDecena[5]:='catorce ';
   aDecena[6]:='quince ';
   aDecena[7]:='dieciseis ';
   aDecena[8]:='diecisiete ';
   aDecena[9]:='dieciocho ';
   aDecena[10]:='diecinueve ';


   { Conversion a caracter del numero Justificando con 0 a la izquierda }
   cNumero := AllTrim(FloatToStrF(nEuros, ffFixed, 10, 2));
   cNumero := Replicate('0', 18 - Length(cNumero)) + cNumero;

   { Confección de los grupos }
   for nGrupo := 1 to 5 do begin
       aGrupos[5 - nGrupo + 1] := Copy(cNumero, (nGrupo - 1) * 3 + 1, 3);
   end;

   aGrupos[0] := '0' + Copy(cNumero,17,2);

   { Proceso }
   cTexto := '';

   for nGrupo:=5 downto 0 do begin
      { Extraer cada una de las 3 cifras del grupo en curso }
      cCentena := Copy(aGrupos[nGrupo], 1, 1);
      cDecena  := Copy(aGrupos[nGrupo], 2, 1);
      cUnidad  := Copy(aGrupos[nGrupo], 3, 1);

      { Componer la cifra en letra del grupo en curso }

      { Centenas }
      case Strtoint(cCentena)+1 of
         1: cTexto := cTexto + '';
         2: if cDecena + cUnidad = '00' then cTexto := cTexto + 'cien '
                                        else cTexto := cTexto + 'ciento ';
         3: begin
            cTexto := cTexto + 'doscient';
            if (nGrupo < 3) and (cGenero = 'F') then cTexto := cTexto + F
                                                else cTexto := cTexto + M;
         end;

         4: begin
            cTexto := cTexto + 'trescient';
            if (nGrupo < 3) and (cGenero = 'F') then cTexto := cTexto+F
                                                else cTexto := cTexto+M;
         end;

         5: begin
            cTexto:=cTexto+'cuatrocient';
            if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                              else cTexto:=cTexto+M;
         end;

         6: begin
            cTexto:=cTexto+'quinient';
            if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                              else cTexto:=cTexto+M;
         end;

         7: begin
            cTexto:=cTexto+'seiscient';
            if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                              else cTexto:=cTexto+M;
         end;

         8: begin
            cTexto:=cTexto+'setecient';
            if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                              else cTexto:=cTexto+M;
         end;

         9: begin
            cTexto:=cTexto+'ochocient';
            if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                              else cTexto:=cTexto+M;
         end;

         10: begin
            cTexto:=cTexto+'novecient';
            if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                              else cTexto:=cTexto+M;
         end;
      end;

      { Decenas }
      case Strtoint(cDecena)+1 of
         1: cTexto:=cTexto+'';
         2: if cUnidad = '0' then cTexto:=cTexto+'diez ';
         3: if cUnidad = '0' then cTexto:=cTexto+'veinte '
                             else cTexto:=cTexto+'veinti';
         4: begin
            cTexto:=cTexto+'treinta ';
            if cUnidad <> '0' then cTexto:=cTexto+Y;
         end;
         5: begin
            cTexto:=cTexto+'cuarenta ';
            if cUnidad <> '0' then cTexto:=cTexto+Y;
         end;
         6: begin
            cTexto:=cTexto+'cincuenta ';
            if cUnidad <> '0' then cTexto:=cTexto+Y;
         end;
         7: begin
            cTexto:=cTexto+'sesenta ';
            if cUnidad <> '0' then cTexto:=cTexto+Y;
         end;
         8: begin
            cTexto:=cTexto+'setenta ';
            if cUnidad <> '0' then cTexto:=cTexto+Y;
         end;
         9: begin
            cTexto:=cTexto+'ochenta ';
            if cUnidad <> '0' then cTexto:=cTexto+Y;
         end;
         10: begin
            cTexto:=cTexto+'noventa ';
            if cUnidad <> '0' then cTexto:=cTexto+Y;
         end;
      end;

      { Unidades }

      case Strtoint(cUnidad)+1 of
         1:begin
            if ((Trunc(nEuros)=0) and (nGrupo=1)) or
               ((nGrupo=0) and (aGrupos[0]='000')) then cTexto:=cTexto+'cero ';
         end;
         2: begin
             if cDecena='1' then cTexto := cTexto + aDecena[StrToInt(cUnidad) + 1]
             else begin
                if not ((aGrupos[nGrupo]='001') and ((nGrupo=2) or (nGrupo=4))) then begin
                   if nGrupo > 2 then cTexto := cTexto + 'un '
                   else begin
                      if cGenero = 'F' then cTexto := cTexto + 'una '
                                       else cTexto := cTexto + 'un ';
                   end;
                end;
             end;
         end;

         3: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                           else cTexto:=cTexto+'dos ';

         4: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                           else cTexto:=cTexto+'tres ';

         5: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                           else cTexto:=cTexto+'cuatro ';

         6: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                           else cTexto:=cTexto+'cinco ';

         7: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                           else cTexto:=cTexto+'seis ';

         8: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                           else cTexto:=cTexto+'siete ';

         9: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                           else cTexto:=cTexto+'ocho ';

         10: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                            else cTexto:=cTexto+'nueve ';
      end;

      { Conectores }
      case nGrupo of
         1: begin
              if Trunc(nEuros) = 1 then cTexto:=cTexto+'euro con '
                                   else cTexto:=cTexto+'euros con ';
         end;
         2: if strtoint(aGrupos[2])>0 then cTexto:=cTexto+MIL;
         3: begin
            if (strtoint(aGrupos[3])>0) or (strtoint(aGrupos[4]) >0 ) then begin
               if strtoint(aGrupos[3])=1 then cTexto:=cTexto+MILLON
                                         else cTexto:=cTexto+MILLONES;
            end;
         end;
         4: if strtoint(aGrupos[4])>0 then cTexto:=cTexto+MIL;
         5: begin
            if strtoint(aGrupos[5])>0 then
               if strtoint(aGrupos[5])=1 then cTexto:=cTexto+BILLON
                                         else cTexto:=cTexto+BILLONES;
         end;
      end;
   end;

   if aGrupos[0] = '001' then cTexto := cTexto + 'céntimo'
                         else cTexto := cTexto + 'céntimos';

   Result := cTexto;
end;

class function TTools.SpanishNIFLetter(DNI: string): Char;
const Claves :array[0..22] of Char = 'TRWAGMYFPDXBNJZSQVHLCKE';
begin
  Result := Claves[strtoint(DNI) mod 23];
end;

(*class procedure TTools.SetTypeOfAccounting(TypeOfConcept: string);
begin
   if TypeOfConcept = 'N' then begin
      Globales.gvTipoConta := '';
   end
   else
   if TypeOfConcept = 'E' then begin
      Globales.gvTipoConta := '-';
   end
   else begin
      Globales.gvTipoConta := '+';
   end;
end;*)

(*class function TTools.RoundToDecimal(Value: Extended; Places: Integer; Bankers: Boolean): Extended;

     function Exp10(Exponent : Extended) : Extended;
       {-Returns 10^Exponent}
     begin
       Result := Power(10.0, Exponent);
     end;

var
  Val, IV, N, F :Extended;
  T             :Integer;
begin
   IV := 0;
   N := Exp10(Places);
   if (Places > 0) then IV := Int(Value);
   Val := (Value - IV) * N;
   T := Trunc(Val);
   F := (Val - T);
   if Bankers then Val := Round(Val) / N        {Delphi's Round does Bankers}
   else begin
      if Abs(Round(10.0 * F)) >= 5 then begin
        if (F > 0) then Val := (T + 1.0) / N
                   else Val := (T - 1.0) / N;
      end
      else Val := T / N;
   end;
   Result := Val + IV;
end;*)

(*class function TTools.AmountConversion(Amount: Double; CurrentCurrency, FinalCurrency: string): Double;
begin
   if UpperCase(CurrentCurrency) = UpperCase(FinalCurrency) then   begin
      Result := Amount;
   end
   else
   if (UpperCase(CurrentCurrency) = 'P') and (UpperCase(FinalCurrency) = 'E') then   begin
      Result := TTools.RoundToDecimal((Amount / gcValorEuro), 3, True);
   end
   else
   if (UpperCase(CurrentCurrency) = 'E') and (UpperCase(FinalCurrency) = 'P') then   begin
      Result := RoundToDecimal((Amount * gcValorEuro), 0, True);
   end
   else begin
      Result := Amount;
   end;
end;*)

class function TTools.Day(prmDate: TDateTime): Integer;
{returns the day of the month}
var Year, Month, Day :Word;
begin
   DecodeDate(prmDate, Year, Month, Day);
   Result := Day;
end;

class function TTools.Month(prmDate: TDateTime): Integer;
{returns the month of the year}
var Year, Month, Day: Word;
begin
  DecodeDate(prmDate, Year, Month, Day);
  Result := Month;
end;

class function TTools.Year(prmDate: TDateTime): Integer;
{returns the year}
var Year, Month, Day: Word;
begin
  DecodeDate(prmDate, Year, Month, Day);
  Result := Year;
end;

class procedure TTools.Currency(F: TForm; prmCurrency: string);
var
   i: Integer;
begin
   if F <> nil then begin
      if prmCurrency = 'P' then   begin
         for i := 0 to (F.ComponentCount - 1) do begin
            //if (F.Components[i] is TppDBText) then   begin
            //   if (UpperCase(Copy(TppDBText(F.Components[i]).Name, 3, 7)) = 'IMPORTE') or
            //      (UpperCase(Copy(TppDBText(F.Components[i]).UserName, 1, 7)) = 'IMPORTE') then   begin
            //      TppDBText(F.Components[i]).DisplayFormat := '###,###,###';
            //   end
            //   else
            //   if (UpperCase(Copy(TppDBText(F.Components[i]).Name, 3, 4)) = 'SUMA') or
            //      (UpperCase(Copy(TppDBText(F.Components[i]).UserName, 1, 4)) = 'SUMA') then   begin
            //      TppDBText(F.Components[i]).DisplayFormat := '###,###,###,###';
            //   end;
            //end;
         end;
         //if F.FindComponent('ppSuma1') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma1')).DisplayFormat := '###,###,###,###';
         //end;
         //if F.FindComponent('ppSuma2') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma2')).DisplayFormat := '###,###,###,###';
         //end;
         //if F.FindComponent('ppSuma3') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma3')).DisplayFormat := '###,###,###,###';
         //end;
         //if F.FindComponent('ppSuma4') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma4')).DisplayFormat := '###,###,###,###';
         //end;
         //if F.FindComponent('ppSuma5') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma5')).DisplayFormat := '###,###,###,###';
         //end;
         //if F.FindComponent('ppSuma6') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma6')).DisplayFormat := '###,###,###,###';
         //end;
         //if F.FindComponent('ppSuma7') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma7')).DisplayFormat := '###,###,###,###';
         //end;
         //if F.FindComponent('ppSuma8') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma8')).DisplayFormat := '###,###,###,###';
         //end;
      end
      else begin
         for i := 0 to (F.ComponentCount - 1) do begin
            //if (F.Components[i] is TppDBText) then   begin
            //   if (UpperCase(Copy(TppDBText(F.Components[i]).Name, 3, 7)) = 'IMPORTE') or
            //      (UpperCase(Copy(TppDBText(F.Components[i]).UserName, 1, 7)) = 'IMPORTE') then   begin
            //      TppDBText(F.Components[i]).DisplayFormat := '###,###,##0.#0';
            //   end
            //   else
            //   if (UpperCase(Copy(TppDBText(F.Components[i]).Name, 3, 4)) = 'SUMA') or
            //      (UpperCase(Copy(TppDBText(F.Components[i]).UserName, 1, 4)) = 'SUMA') then   begin
            //      TppDBText(F.Components[i]).DisplayFormat := '###,###,###,##0.#0';
            //   end;
            //end;
         end;
         //if F.FindComponent('ppSuma1') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma1')).DisplayFormat := '###,###,###,##0.#0';
         //end;
         //if F.FindComponent('ppSuma2') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma2')).DisplayFormat := '###,###,###,##0.#0';
         //end;
         //if F.FindComponent('ppSuma3') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma3')).DisplayFormat := '###,###,###,##0.#0';
         //end;
         //if F.FindComponent('ppSuma4') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma4')).DisplayFormat := '###,###,###,##0.#0';
         //end;
         //if F.FindComponent('ppSuma5') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma5')).DisplayFormat := '###,###,###,##0.#0';
         //end;
         //if F.FindComponent('ppSuma6') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma6')).DisplayFormat := '###,###,###,##0.#0';
         //end;
         //if F.FindComponent('ppSuma7') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma7')).DisplayFormat := '###,###,###,##0.#0';
         //end;
         //if F.FindComponent('ppSuma8') <> nil then   begin
         //   TppDbCalc(F.FindComponent('ppSuma8')).DisplayFormat := '###,###,###,##0.#0';
         //end;
      end;
   end;
end;

class procedure TTools.ToggleNumLock;
var KeyState :TKeyboardState;
begin
   {$Message Warn 'TTools.ToggleNumLock is not working'}
   {First the Num Lock key.}
   GetKeyboardState(KeyState);

   //simulate key events (down + up)
   if KeyState[VK_NUMLOCK] = 0 then begin
      Keybd_Event(VK_NUMLOCK, 1, KEYEVENTF_EXTENDEDKEY or 0, 0) ;
      Keybd_Event(VK_NUMLOCK, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0) ;
   end;

   //else begin
   //   Keybd_Event(VK_NUMLOCK, 0, KEYEVENTF_EXTENDEDKEY or 0, 0) ;
   //   Keybd_Event(VK_NUMLOCK, 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0) ;
   //end;

   {Second the Caps Lock key }
   GetKeyboardState(KeyState);

   //simulate key events (down + up)
   if KeyState[VK_CAPITAL] = 0 then begin
      Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0) ;
      Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0) ;
   end;

   //else begin
   //   Keybd_Event(VK_CAPITAL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0) ;
   //   Keybd_Event(VK_CAPITAL, 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0) ;
   //end;
end;

end.




