unit SQLConnect;
interface

uses
  Windows, Messages, SysUtils, Classes, DB, SqlExpr;

type
  TccSQLConnection = class(TSQLConnection)
  private
  protected
  public
    function CreateQuery(const prmSQL :array of string):TSQLQuery;
  published
  end;

implementation

function TccSQLConnection.CreateQuery(const prmSQL :array of string):TSQLQuery;
var Query :TSQLQuery;
    i     :Integer;
begin
   Query := TSQLQuery.Create(nil);
   Query.SQLConnection := Self;
   for i := Low(prmSQL) to High(prmSQL) do begin
      Query.SQL.Add(prmSQL[i]);
   end;
   Result := Query;
end;

end.
