unit CommonUnit;

interface

type
   TSetMaxEvent       = procedure(Value :Integer) of object;
   TShowProgressEvent = procedure(Value :string ) of object;
   TShowErrorEvent    = procedure(Value :string ) of object;

   function Collate(IsTheLast :Boolean = False):string;

implementation

function Collate(IsTheLast :Boolean = False):string;
begin
   {Firebird}
   if not IsTheLast then Result := 'COLLATE UNICODE_CI_AI, '
                    else Result := 'COLLATE UNICODE_CI_AI  ';
   {----}
end;

end.
