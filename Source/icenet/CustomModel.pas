unit CustomModel;

interface

uses SysUtils, Classes, DB, IBX.IBDatabase, IBX.IBSQL, IBX.IBQuery;

type
  TShowMessageEvent = procedure(Value :string) of object;

  TccIBDatabase = class helper for TIBDatabase
  private
  protected
  public
    function CreateQuery(const prmSQL :array of string):TIBQuery;
  published
  end;

  {--------------------------------------------------------------------------------------------------------------------}

  TCustomModel = class(TPersistent)
  private
    FDB                  :TIBDatabase;
    FShowMessageDelegate :TShowMessageEvent;
    procedure SetShowMessage(Value :TShowMessageEvent);
  protected
    procedure ShowMessage(Value :string);
  protected
    function CreateQuery(const ASQL :array of string):TIBQuery;
    property DB :TIBDatabase read FDB;
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); virtual;
    destructor  Destroy;      override;
    procedure DoInitialize; virtual; abstract;
  public
    property OnShowMessage :TShowMessageEvent read FShowMessageDelegate write SetShowMessage;
  end;

implementation

uses TypInfo;

{ Helper TccIBDatabase }
function TccIBDatabase.CreateQuery(const prmSQL :array of string):TIBQuery;
var Query :TIBQuery;
    i     :Integer;
begin
   Query := TIBQuery.Create(nil);
   Query.Database := Self;
   for i := Low(prmSQL) to High(prmSQL) do begin
      Query.SQL.Add(prmSQL[i]);
   end;
   Result := Query;
end;

{ TCustomDocumentModel }
constructor TCustomModel.Create(ADB :TIBDatabase; Initialize :Boolean = True); 
begin
   inherited Create;
   FDB := ADB;
end;

destructor TCustomModel.Destroy;
begin
   inherited;
end;

(*procedure TCustomModel.DoInitialize;
begin
end;*)

procedure TCustomModel.ShowMessage(Value: string);
begin
   if Assigned(FShowMessageDelegate) then
      FShowMessageDelegate(Value);
end;

procedure TCustomModel.SetShowMessage(Value :TShowMessageEvent);
begin
   FShowMessageDelegate := Value;
end;

function TCustomModel.CreateQuery(const ASQL: array of string): TIBQuery;
var Query :TIBQuery;
    i     :Integer;
begin
   Query := TIBQuery.Create(nil);
   Query.Database := FDB;
   for i := Low(ASQL) to High(ASQL) do begin
      Query.SQL.Add(ASQL[i]);
   end;
   Result := Query;
end;

end.

