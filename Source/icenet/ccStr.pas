unit ccStr;
{
// Commonly used string manipulation functions
// Copyright (c) 1999 juan.carlos@cilleruelo.es
}

interface
uses Classes, Dialogs;

type
   TStrTools = class
     class procedure BreakApart         (    s :string; Delimeter :string; Parts :TStrings);
     class function  GetToken           (    s :string; Delimeter :string; var APos :Integer):string;
     class function  Count              (    s :string; Delimeter :Char      ):Integer;
     class function  ReplaceCharWithStr (prmStr :string; RemoveChar: Char; ReplaceStr :string):string;
     class function  Equal              (S1, S2 :string):Boolean;
     class function  RemoveChar         (prmStr: string; RemoveChar: char):string;
     class function  IsEmpty(prmCadena :string):Boolean;
           { return a string containing nLen times the character c }
     class function  ReplicateChar(prmChar :Char; prmLength :Integer): string;
           { return the number of spaces asked for }
     class function Spaces(prmLength :Integer): string;
           { make certain the string is exactly nLen character }
     class function PadR(prmString :string; prmLength :Integer):string;
           { returns the month as a three letters character string }
     class function Month(prmDate :TDateTime): string;
     class function BackChar(Str :string; Letter :Char; Long :Integer):string;
     class function LeadChar(Str :string; Letter :Char; Long :Integer):string;
           { trim off any spaces and return the string }
     class function AllTrim(Str :string):string;

  end;

{$ObjExportAll On}

implementation

uses SysUtils;

{ TStrTools }

class procedure TStrTools.BreakApart(s, Delimeter: string; Parts: TStrings);
var CurrentPos :Integer;
    CurrentStr :string;
begin
   Parts.Clear;
   CurrentStr := s;
   repeat CurrentPos := AnsiPos(Delimeter, CurrentStr);
      if (CurrentPos > 0) then begin
         Parts.Add(Copy(CurrentStr, 1, CurrentPos -1));
         CurrentStr := Copy(CurrentStr, CurrentPos +1, Length(CurrentStr)-(CurrentPos));
      end
      else Parts.Add(CurrentStr);
   until CurrentPos = 0;
end;

class function TStrTools.GetToken(s: string; delimeter: string; var APos: integer): string;
var TempStr      :string;
    EndStringPos :Integer;
begin
   Result := '';
   if APos <= 0         then Exit;
   if APos >  Length(s) then Exit;

   TempStr := Copy(S, APos, Length(s)+1 - APos);
     {Converts to Uppercase for check if delimeter more than one character}
   if (Length(Delimeter) = 1) then begin
      EndStringPos := AnsiPos(Delimeter, TempStr);
   end
   else begin
      Delimeter    := ' ' + Delimeter + ' ';
      endStringPos := AnsiPos(UpperCase(Delimeter), UpperCase(TempStr));
   end;

   if EndStringPos <= 0 then begin
      Result := TempStr;
      APos   := -1;
   end
   else begin
      Result := Copy(TempStr, 1, EndStringPos -1);
      APos   := APos + EndStringPos + Length(Delimeter) - 1;
   end
end;

class function TStrTools.Count(S :string; Delimeter :Char):Integer;
var i     :Integer;
    Count :Integer;
begin
   Count:= 0;
   for i := 1 to Length(S) do
      if S[i] = Delimeter then Inc(Count);
   Result := Count;
end;

class function TStrTools.ReplaceCharWithStr(prmStr: string; RemoveChar: char; ReplaceStr: string): string;
var i :Integer;
begin
   Result := '';
   for i:= 1 to Length(prmStr) do begin
      if (prmStr[i] <> removeChar) then
         Result := Result + prmStr[i]
      else Result:= Result + ReplaceStr;
   end;
end;

class function TStrTools.Equal(s1, s2: string): boolean;
begin
   Result := UpperCase(s1) = UpperCase(s2);
end;

class function TStrTools.RemoveChar(prmStr :string; RemoveChar :Char):string;
var i :Integer;
begin
   Result := '';
   for i := 1 to Length(prmStr) do begin
      if (prmStr[i] <> RemoveChar) then
         Result := Result + prmStr[i];
   end;
end;

class function TStrTools.IsEmpty(prmCadena :string):Boolean;
begin
   Result := Trim(prmCadena) = '';
end;

class function TStrTools.ReplicateChar(prmChar :Char; prmLength :Integer): string;
{return a string containing nLen times the character c}
var i :Integer;
begin
  Result := '';
  for i := 1 to prmLength do begin
      Result := Result + prmChar;
  end;
end;

class function TStrTools.Spaces(prmLength :Integer): string;
{return the number of spaces asked for}
begin
   Result := ReplicateChar(' ', prmLength);
end;

class function TStrTools.PadR(prmString :string; prmLength :Integer): string;
{make certain the string is exactly nLen character}
begin
  if (Length(prmString) <> prmLength) then begin
     if Length(prmString) > prmLength then begin
        {length is smaller than string, so cut string to fit}
        Result := Copy(prmString, 1, prmLength);
     end
     else begin
       {length is bigger than string, so add spaces}
       Result := prmString + Spaces(prmLength - Length(prmString));
     end;
  end
  else Result := prmString;
end;

class function TStrTools.Month(prmDate :TDateTime): string;
{returns the month as a character string}
begin
  Result := FormatDateTime('mmmm', prmDate);
end;

class function TStrTools.BackChar(Str :string; Letter :Char; Long :Integer):string;
begin
   Result := AllTrim(Str) + ReplicateChar(Letter, Long - Length(AllTrim(Str)));
end;

class function TStrTools.LeadChar(Str :string; Letter :Char; Long :Integer):string;
begin
   Result := ReplicateChar(Letter, Long - Length(AllTrim(Str))) + AllTrim(Str);
end;

class function TStrTools.AllTrim(Str :string):string;
{trim off any spaces and return the string}
var StartPos :Integer;
    EndPos   :Integer;
begin
  StartPos := 1;
  EndPos   := Length(Str);
  while (StartPos < Length(Str)) and (Str[StartPos] = ' ') do
    Inc(startPos);

  while (EndPos > startPos) and (Str[EndPos] = ' ') do
    Dec(EndPos);

  if (EndPos = StartPos) and (Str[EndPos] = ' ') then
    Result := ''
  else
    Result := Copy(Str, StartPos, EndPos - StartPos +1);
end;



end.
