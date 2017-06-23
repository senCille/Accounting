unit ModelImportData;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  DBClient, frxClass, frxDBSet, frxExportPDF,
  senCille.DBController,
  senCille.Tools;

type
  TWhatConnection = (wcEjAnterior, wcContab, wcConsolida);

  TDataModuleImportData = class(TDataModule)
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  const COUNT     =  0;
        ID_FISCAL =  1;
        NAME      =  2;
        ADDRESS_1 =  3;
        CITY      =  4;
        PROVINCE  =  5;
        PHONE_1   =  6;
        PHONE_2   =  7;
        EMAIL     =  8;
        CONTACT   =  9;
        NOTHING_1 = 10;
        NUMBER    = 11;
        NOTHING_2 = 12;
        NOTHING_3 = 13;
        ACCOUNT   = 14;
type
  TImportDataModel = class(TCustomModel)
  private
    DM :TDataModuleImportData;
    function Empty(prmCadena :string):Boolean;
    function GetProvince(ACode :string):string;
    function ExistsAccount(ASubaccount :string):Boolean;
    procedure UpdateAccount(ATokens :TStringList);
    procedure InsertAccount(ATokens :TStringList);
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure ProcessSupplier(ATokens :TStringList);
  end;

var
  DataModuleImportData: TDataModuleImportData;

implementation

uses System.Math, System.DateUtils,
     IBX.IBQuery,
     VCL.Forms,
     DMControl, DM, Processing, Globales;

{$R *.dfm}

{ TImportDataModel }

constructor TImportDataModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleImportData.Create(Application);
   if Initialize then DoInitialize;
end;

function TImportDataModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TImportDataModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TImportDataModel.DoInitialize;
begin
   inherited;

end;

procedure TImportDataModel.Refresh;
begin

end;

function TImportDataModel.Empty(prmCadena :string):Boolean;
begin
   Result := Trim(prmCadena) = '';
end;

function TImportDataModel.ExistsAccount(ASubaccount :string):Boolean;
var Q :TIBQuery;
begin
   Q := DB.CreateQuery(['SELECT SUBCUENTA                ',
                        'FROM   SUBCTAS                  ',
                        'WHERE SUBCUENTA = :prmSUBCUENTA ']);
   Q.ParamByName('prmSUBCUENTA').AsString := ASubaccount;
   try
      Q.Open;
      Result := not (Q.FieldByName('SUBCUENTA').IsNull);
   finally
      Q.Free;
   end;
end;

function TImportDataModel.GetProvince(ACode :string):string;
var Q :TIBQuery;
begin
   Q := DB.CreateQuery(['SELECT PROVINCIA           ',
                        'FROM   PROVINCIAS          ',
                        'WHERE  CODIGO = :prmCODIGO ']);
   Q.ParamByName('prmCODIGO').AsString := Copy(ACode, 1, 2);
   try
      try
         Q.Open;
         Result := Q.FieldByName('PROVINCIA').AsString;
      except
         Result := 'SG';
      end;
   finally
      Q.Free;
   end;

   if Trim(Result) = '' then Result := 'SG';
end;

procedure TImportDataModel.UpdateAccount(ATokens :TStringList);
var Q :TIBQuery;
begin
   Q := DB.CreateQuery([
      'UPDATE SUBCTAS                        ',
      ' SET DESCRIPCION   = :prmNAME     ,   ',
      '     DIRECCION     = :prmADDRESS_1,   ',
      '     FAX           = :prmPHONE_2  ,   ',
      '     TELEFONO      = :prmPHONE_1  ,   ',
      '     DIRECCION1    = :prmEMAIL    ,   ',
      '     NIF           = :prmID_FISCAL,   ',
      '     POBLACION     = :prmCITY     ,   ',
      '     PROVINCIA     = :prmPROVINCE ,   ',
      '     PAIS          = ''ES''       ,   ',
      '     NUMERO        = :prmNUMBER   ,   ',
      '     OBSOLETO      = ''N''            ',
      'WHERE SUBCUENTA = :prmACCOUNT         ']);
   try
      Q.ParamByName('prmACCOUNT'  ).AsString := ATokens[ACCOUNT  ];
      Q.ParamByName('prmNAME'     ).AsString := ATokens[NAME     ];
      Q.ParamByName('prmADDRESS_1').AsString := ATokens[ADDRESS_1];
      Q.ParamByName('prmPHONE_2'  ).AsString := ATokens[PHONE_2  ];
      Q.ParamByName('prmPHONE_1'  ).AsString := ATokens[PHONE_1  ];
      Q.ParamByName('prmEMAIL'    ).AsString := ATokens[EMAIL    ];
      Q.ParamByName('prmID_FISCAL').AsString := ATokens[ID_FISCAL];
      Q.ParamByName('prmCITY'     ).AsString := ATokens[CITY     ];
      Q.ParamByName('prmPROVINCE' ).AsString := GetProvince(ATokens[PROVINCE]);
      Q.ParamByName('prmNUMBER'   ).AsString := ATokens[NUMBER   ];
      Q.ExecSQL;
      //Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
end;

procedure TImportDataModel.InsertAccount(ATokens :TStringList);
var Q :TIBQuery;
begin
    Q := DB.CreateQuery([
       'INSERT INTO SUBCTAS(SUBCUENTA  ,   ',
       '                    DESCRIPCION,   ',
       '                    DIRECCION  ,   ',
       '                    FAX        ,   ',
       '                    TELEFONO   ,   ',
       '                    DIRECCION1 ,   ',
       '                    NIF        ,   ',
       '                    POBLACION  ,   ',
       '                    PROVINCIA  ,   ',
       '                    PAIS       ,   ',
       '                    NUMERO     ,   ',
       '                    OBSOLETO   )   ',
       '        VALUES (:prmSUBCUENTA  ,   ',
       '                :prmDESCRIPCION,   ',
       '                :prmDIRECCION  ,   ',
       '                :prmFAX        ,   ',
       '                :prmTELEFONO   ,   ',
       '                :prmDIRECCION1 ,   ',
       '                :prmNIF        ,   ',
       '                :prmPOBLACION  ,   ',
       '                :prmPROVINCIA  ,   ',
       '                ''ES''         ,   ',
       '                :prmNUMERO     ,   ',
       '                ''N''          )   ']);
    try
       Q.ParamByName('prmSUBCUENTA'  ).AsString := ATokens[ACCOUNT  ];
       Q.ParamByName('prmDESCRIPCION').AsString := ATokens[NAME     ];
       Q.ParamByName('prmDIRECCION'  ).AsString := ATokens[ADDRESS_1];
       Q.ParamByName('prmFAX'        ).AsString := ATokens[PHONE_2  ];
       Q.ParamByName('prmTELEFONO'   ).AsString := ATokens[PHONE_1  ];
       Q.ParamByName('prmDIRECCION1' ).AsString := ATokens[EMAIL    ];
       Q.ParamByName('prmNIF'        ).AsString := ATokens[ID_FISCAL];
       Q.ParamByName('prmPOBLACION'  ).AsString := ATokens[CITY     ];
       Q.ParamByName('prmPROVINCIA'  ).AsString := GetProvince(ATokens[PROVINCE]);
       Q.ParamByName('prmNUMERO'     ).AsString := ATokens[NUMBER   ];
       Q.ExecSQL;
       //Q.Transaction.CommitRetaining;
    finally
       Q.Free;
    end;
end;

procedure TImportDataModel.ProcessSupplier(ATokens: TStringList);
begin
   if ExistsAccount(ATokens[ACCOUNT]) then
      UpdateAccount(ATokens)
   else InsertAccount(ATokens);
end;

end.
