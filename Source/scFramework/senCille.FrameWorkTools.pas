unit senCille.FrameWorkTools;

interface

uses System.Classes;

type
  TfwTools = class
     class function Split(Delimiter :Char; Text :string):TStringList;
     class function GetNewDocID: string;
     class function GetUIDReportFilename(prmRoot :string):string;
     class function ValidEmail(email: string):Boolean;

     class procedure Open(const FilePath: string);
     class function IsControlKeyPressed:Boolean;
     class function IsShiftKeyPressed:Boolean;
     class function IsAltKeyPressed:Boolean;
     class function ProperPathDelim(FilePath :string):string;
  end;

implementation

uses System.SysUtils, System.StrUtils,
     {---------------------------------------------------------}
     {$IF DEFINED(MSWINDOWS)}
        Winapi.ShellAPI, Winapi.Windows,
     {$ELSEIF DEFINED(MACOS)}
        Posix.Stdlib, Macapi.AppKit,
     {$ENDIF}
     FireDAC.Comp.DataSet;

{ TfwTools }
class procedure TfwTools.Open(const FilePath: string);
begin
   {$IF DEFINED(MSWINDOWS)}
      ShellExecute(0, 'OPEN', PChar(FilePath), '', '', SW_SHOWNORMAL);
   {$ELSEIF DEFINED(MACOS)}
      _system(PAnsiChar('open ' + '"' + AnsiString(FilePath) + '"'));
   {$ENDIF}
end;

class function TfwTools.IsControlKeyPressed:Boolean;
begin
   {$IFDEF MSWINDOWS}
      Result := GetKeyState(VK_CONTROL) < 0;
   {$ELSE}
      Result := NSControlKeyMask and TNSEvent.OCClass.modifierFlags = NSControlKeyMask;
   {$ENDIF}
end;

class function TfwTools.IsShiftKeyPressed:Boolean;
begin
   {$IFDEF MSWINDOWS}
      Result := GetKeyState(VK_SHIFT) < 0;
   {$ELSE}
      Result := NSShiftKeyMask and TNSEvent.OCClass.modifierFlags = NSShiftKeyMask;
   {$ENDIF}
end;

class function TfwTools.IsAltKeyPressed:Boolean;
begin
   {$IFDEF MSWINDOWS}
      Result := GetKeyState(VK_MENU) < 0;
   {$ELSE}
      Result := NSShiftKeyMask and TNSEvent.OCClass.modifierFlags = NSMenuKeyMask; {????¿¿¿¿}
   {$ENDIF}
end;

class function TfwTools.ProperPathDelim(FilePath :string):string;
var i :Integer;
begin
   for i := 1 to FilePath.Length do begin
       if CharInSet(FilePath[i], ['\', '/']) then FilePath[i] := PathDelim;
   end;
   Result := FilePath;
end;

class function TfwTools.Split(Delimiter :Char; Text :string):TStringList;
begin
   Result := TStringList.Create;
   Result.Delimiter       := Delimiter;
   Result.StrictDelimiter := True;
   Result.DelimitedText   := Text;
end;

class function TfwTools.GetNewDocID: string;
var Guid :TGUID;
    StrG :string;
begin
   CreateGuid(Guid);
   StrG := GUIDToString(Guid);
   StrG := ReplaceText(StrG, '{', '');
   StrG := ReplaceText(StrG, '}', '');
   StrG := ReplaceText(StrG, '-', '');

   Result := UpperCase(Trim(StrG));
end;

class function TfwTools.GetUIDReportFilename(prmRoot: string): string;
var Guid :TGUID;
    StrG :string;
begin
   CreateGuid(Guid);
   StrG := GUIDToString(Guid);
   StrG := ReplaceText(StrG, '{', '');
   StrG := ReplaceText(StrG, '}', '');
   StrG := ReplaceText(StrG, '-', '');

   Result := Trim(prmRoot) + StrG;// + FormatDateTime('yyyyddmmmm:ss', Date);
end;

class function TfwTools.ValidEmail(Email :string):Boolean;
{Returns True if the email address is valid}
{Author: Ernesto D'Spirito}
const
  {Valid characters in an "atom"}
  Atom_Chars = [#33..#255] - ['(', ')', '<', '>', '@', ',', ';', ':', '\', '/', '"', '.', '[', ']', #127];
  {Valid characters in a "quoted-string"}
  Quoted_String_Chars = [#0..#255] - ['"', #13, '\'];
  {Valid characters in a subdomain}
  Letters         = ['A'..'Z', 'a'..'z'];
  Letters_Digits  = ['0'..'9', 'A'..'Z', 'a'..'z'];
  SubDomain_Chars = ['-', '0'..'9', 'A'..'Z', 'a'..'z'];
type
  States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT, STATE_QCHAR,
            STATE_QUOTE, STATE_LOCAL_PERIOD, STATE_EXPECTING_SUBDOMAIN,
            STATE_SUBDOMAIN, STATE_HYPHEN);

var State      :States;
    i          :Integer;
    n          :Integer;
    SubDomains :Integer;
    c          :Char;
begin
   State      := STATE_BEGIN;
   n          := Length(email);
   i          := 1;
   SubDomains := 1;
   while (i <= n) do begin
      c := email[i];
      case State of
         STATE_BEGIN:      if CharInSet(c, atom_chars) then State := STATE_ATOM
                      else if c = '"'                  then State := STATE_QTEXT
                      else Break;
         STATE_ATOM:       if c = '@' then State := STATE_EXPECTING_SUBDOMAIN
                      else if c = '.' then State := STATE_LOCAL_PERIOD
                      else if not CharInSet(c, atom_chars) then Break;
         STATE_QTEXT:      if c = '\' then State := STATE_QCHAR
                      else if c = '"' then State := STATE_QUOTE
                      else if not CharInSet(c, quoted_string_chars) then Break;
         STATE_QCHAR: State := STATE_QTEXT;
         STATE_QUOTE:      if c = '@' then State := STATE_EXPECTING_SUBDOMAIN
                      else if c = '.' then State := STATE_LOCAL_PERIOD
                      else Break;
         STATE_LOCAL_PERIOD:      if CharInSet(c, atom_chars) then State := STATE_ATOM
                             else if c = '"'                  then State := STATE_QTEXT
                             else Break;
         STATE_EXPECTING_SUBDOMAIN: if CharInSet(c, letters) then State := STATE_SUBDOMAIN
                                    else Break;
         STATE_SUBDOMAIN: if c = '.' then begin
                             Inc(subdomains);
                             State := STATE_EXPECTING_SUBDOMAIN
                          end
                          else if c = '-' then State := STATE_HYPHEN
                          else if not CharInSet(c, letters_digits) then Break;
         STATE_HYPHEN:      if CharInSet(c, letters_digits) then State := STATE_SUBDOMAIN
                       else if c <> '-' then Break;
       end; {case}
       Inc(i);
   end;

   if i <= n then Result := False
   else Result := (State = STATE_SUBDOMAIN) and (subdomains >= 2);
end;

end.







