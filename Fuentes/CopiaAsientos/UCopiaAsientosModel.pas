unit UCopiaAsientosModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet;

type
  TDataModuleCopiaAsientos = class(TDataModule)
    QLSubCuentas: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    SLSubcuentas: TDataSource;
    QEmpresas: TIBDataSet;
    QEmpresasNOMBRE: TIBStringField;
    QEmpresasCERRADA: TIBStringField;
    QEmpresasUBICACION: TIBStringField;
    QEmpresasID_EMPRESA: TIntegerField;
    QEmpresasULTIMA: TIBStringField;
    SEmpresas: TDataSource;
    DBEmpresa: TIBDatabase;
    Transaccion: TIBTransaction;
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TCopiaAsientosModel = class(TCustomModel)
  private
    DM   :TDataModuleCopiaAsientos;
    //FEOF :Boolean;
    function  ExistsSubAccount(ASubaccount :string):Boolean;
    procedure InsertSubAccount(ASubAccount :string);
    function  ExistsConcept(AConcept :string):Boolean;
    procedure InsertConcept(AConcept :string);
    function  ExistsAnalytic(AAnalytic :string):Boolean;
    procedure InsertAnalytic(AAnalytic :string);
    function  ObtenerNumeroAsientoOtraBD:Integer;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure CopyEntries(ASubAccountSince, ASubAccountUntil :string;
                          AEntrySince     , AEntryUntil      :Integer;
                          ADateSince      , ADateUntil       :TDateTime);
  end;

var
  DataModuleCopiaAsientos: TDataModuleCopiaAsientos;

implementation

uses Forms,
     Globales, DMControl;

{$R *.dfm}

{ TCopiaAsientosModel }

constructor TCopiaAsientosModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleCopiaAsientos.Create(Application);
   if Initialize then DoInitialize;
end;

function TCopiaAsientosModel.DataModule: TDataModule;
begin

end;

destructor TCopiaAsientosModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TCopiaAsientosModel.DoInitialize;
begin
   inherited;
   DM.QEmpresas.Database := DMControlRef.BDControl;
   //DM.QEmpresas.Transaction.Active := True;
   DM.QEmpresas.Open;

   DM.QLSubCuentas.Database := DB;
   DM.QLSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QLSubCuentas.Open;
end;

procedure TCopiaAsientosModel.Refresh;
begin

end;

function TCopiaAsientosModel.ExistsSubAccount(ASubaccount :string):Boolean;
var Q :TIBSQL;
begin
   Q := TIBSql.Create(nil);
   try
      Q.Database := DM.DBEmpresa;
      Q.SQL.Add('SELECT COUNT(*) HOW_MANY         ');
      Q.SQL.Add('FROM   SUBCTAS                   ');
      Q.SQL.Add('WHERE  SUBCUENTA = :prmSUBCUENTA ');
      Q.ParamByName('prmSUBCUENTA').AsString := ASubAccount;
      Q.ExecQuery;
      Result := Q.FieldByName('HOW_MANY').AsInteger > 0;
   finally
      Q.Free;
   end;
end;

procedure TCopiaAsientosModel.InsertSubAccount(ASubAccount :string);
var Q       :TIBSQL;
    QLocate :TIBSQL;
begin
   QLocate := TIBSql.Create(nil);
   try 
      QLocate.Database := DB;
      QLocate.SQL.Add('SELECT DESCRIPCION,             ');
      QLocate.SQL.Add('       NIF                      ');
      QLocate.SQL.Add('FROM SUBCTAS                    ');
      QLocate.SQL.Add('WHERE SUBCUENTA = :prmSUBCUENTA ');
      QLocate.ParamByName('prmSUBCUENTA').AsString := ASubAccount;
      QLocate.ExecQuery;

      Q := TIBSql.Create(nil);
      try
         Q.Database := DM.DBEmpresa;
         Q.SQL.Add('INSERT INTO SUBCTAS(SUBCUENTA  ,   ');
         Q.SQL.Add('                    DESCRIPCION,   ');
         Q.SQL.Add('                    ARRENDADOR ,   ');
         Q.SQL.Add('                    PROFESIONAL,   ');
         Q.SQL.Add('                    OBSOLETO   ,   ');
         Q.SQL.Add('                    NIF        )   ');
         Q.SQL.Add('        VALUES (:prmSUBCUENTA  ,   ');
         Q.SQL.Add('                :prmDESCRIPCION,   ');
         Q.SQL.Add('                ''N''          ,   ');
         Q.SQL.Add('                ''N''          ,   ');
         Q.SQL.Add('                ''N''          ,   ');
         Q.SQL.Add('                :prmNIF        )   ');
         Q.ParamByName('prmSUBCUENTA'  ).AsString := ASubAccount;
         Q.ParamByName('prmDESCRIPCION').AsString := QLocate.FieldByName('DESCRIPCION').AsString;
         Q.ParamByName('prmNIF'        ).AsString := QLocate.FieldByName('NIF'        ).AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      finally
         Q.Free;
      end;
   finally
      QLocate.Free;
   end;
end;

function TCopiaAsientosModel.ExistsConcept(AConcept: string): Boolean;
var Q :TIBSQL;
begin
   Q := TIBSql.Create(nil);
   try
      Q.Database := DM.DBEmpresa;
      Q.SQL.Add('SELECT COUNT(*) HOW_MANY              ');
      Q.SQL.Add('FROM CONCEPTOS                        ');
      Q.SQL.Add('WHERE ID_CONCEPTOS = :prmID_CONCEPTOS ');
      Q.ParamByName('prmID_CONCEPTOS').AsString := AConcept;
      Q.ExecQuery;
      Result := Q.FieldByName('HOW_MANY').AsInteger > 0;
   finally
      Q.Free;
   end;
end;

procedure TCopiaAsientosModel.InsertConcept(AConcept: string);
var Q       :TIBSQL;
    QLocate :TIBSQL;
begin
   QLocate := TIBSQL.Create(nil);
   try
      QLocate.Database := DB;
      QLocate.SQL.Add('SELECT ID_CONCEPTOS    ,              ');
      QLocate.SQL.Add('       DESCRIPCION     ,              ');
      QLocate.SQL.Add('       TIPOCONTABILIDAD,              ');
      QLocate.SQL.Add('       TIPOCONCEPTO                   ');
      QLocate.SQL.Add('FROM CONCEPTOS                        ');
      QLocate.SQL.Add('WHERE ID_CONCEPTOS = :prmID_CONCEPTOS ');
      QLocate.ParamByName('prmID_CONCEPTOS').AsString := AConcept;
      QLocate.ExecQuery;

      Q := TIBSQL.Create(nil);
      try
         Q.Database := DM.DBEmpresa;
         Q.SQL.Add('INSERT INTO CONCEPTOS(ID_CONCEPTOS    ,   ');
         Q.SQL.Add('                      DESCRIPCION     ,   ');
         Q.SQL.Add('                      TIPOCONTABILIDAD,   ');
         Q.SQL.Add('                      TIPOCONCEPTO    ,   ');
         Q.SQL.Add('                      OBSOLETO        )   ');
         Q.SQL.Add('          VALUES (:prmID_CONCEPTOS    ,   ');
         Q.SQL.Add('                  :prmDESCRIPCION     ,   ');
         Q.SQL.Add('                  :prmTIPOCONTABILIDAD,   ');
         Q.SQL.Add('                  :prmTIPOCONCEPTO    ,   ');
         Q.SQL.Add('                  ''N''               )   ');
         Q.ParamByName('prmID_CONCEPTOS'    ).AsString := AConcept;
         Q.ParamByName('prmDESCRIPCION'     ).AsString := QLocate.FieldByName('DESCRIPCION'     ).AsString;
         Q.ParamByName('prmTIPOCONTABILIDAD').AsString := QLocate.FieldByName('TIPOCONTABILIDAD').AsString;
         Q.ParamByName('prmTIPOCONCEPTO'    ).AsString := QLocate.FieldByName('TIPOCONCEPTO'    ).AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      finally
         Q.Free;
      end;
   finally
      QLocate.Free;
   end;
end;

function TCopiaAsientosModel.ExistsAnalytic(AAnalytic: string):Boolean;
var Q :TIBSQL;
begin
   Q := TIBSql.Create(nil);
   try
      Q.Database := DM.DBEmpresa;
      Q.SQL.Add('SELECT COUNT(*) HOW_MANY  ');
      Q.SQL.Add('FROM  ANALITICAS          ');
      Q.SQL.Add('WHERE CUENTA = :prmCUENTA ');
      Q.ParamByName('prmCUENTA').AsString := AAnalytic;
      Q.ExecQuery;
      Result := Q.FieldByName('HOW_MANY').AsInteger > 0;
   finally
      Q.Free;
   end;
end;

procedure TCopiaAsientosModel.InsertAnalytic(AAnalytic: string);
var Q       :TIBSQL;
    QLocate :TIBSQL;
begin
   QLocate := TIBSQL.Create(nil);
   try
      QLocate.Database := DB;
      QLocate.SQL.Add('SELECT NOMBRE,            ');
      QLocate.SQL.Add('       CUENTA             ');
      QLocate.SQL.Add('FROM ANALITICAS           ');
      QLocate.SQL.Add('WHERE CUENTA = :prmCUENTA ');
      QLocate.ParamByName('prmCUENTA').AsString := AAnalytic;
      QLocate.ExecQuery;

      Q := TIBSQL.Create(nil);
      try
         Q.Database := DM.DBEmpresa;
         Q.SQL.Add('INSERT INTO ANALITICAS(CUENTA, ');
         Q.SQL.Add('                       NOMBRE) ');
         Q.SQL.Add('           VALUES (:prmCUENTA, ');
         Q.SQL.Add('                   :prmNOMBRE) ');
         Q.ParamByName('prmCUENTA').AsString := AAnalytic;
         Q.ParamByName('prmNOMBRE').AsString := QLocate.FieldByName('NOMBRE').AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      finally
         Q.Free;
      end;
   finally
      QLocate.Free;
   end;
end;

function TCopiaAsientosModel.ObtenerNumeroAsientoOtraBD:Integer;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DM.DBEmpresa;
      Q.SQL.Add('EXECUTE PROCEDURE Dame_NumeroAsiento');
      Q.ExecQuery;
      Result := Q.FieldByName('asiento').AsInteger;
   finally
      Q.Free;
   end;
end;

procedure TCopiaAsientosModel.CopyEntries(ASubAccountSince, ASubAccountUntil :string;
                                          AEntrySince     , AEntryUntil      :Integer;
                                          ADateSince      , ADateUntil       :TDateTime);
var QInsertaDiario  :TIBSQL;
    nAsientoEmpresa :Integer;
    nAsiento        :Integer;
    Q               :TIBSQL;
begin
   {Connect with the Target Database}
   DM.DBEmpresa.Params.Clear;
   DM.DBEmpresa.Params.Add('user_name=SYSDBA');
   DM.DBEmpresa.Params.Add('password=masterkey');
   DM.DBEmpresa.DatabaseName := Config.ActiveServerRoot + DM.QEmpresasUBICACION.AsString;
   DM.DBEmpresa.Connected := True;
   DM.Transaccion.Active  := True;

   QInsertaDiario := TIBSql.Create(nil);
   QInsertaDiario.Database := DM.DBEmpresa;

   nAsientoEmpresa := -99;

   Q := TIBSQL.Create(nil);
   try
      Q.Database := DB;{DMRef.BDContab;}
      Q.SQL.Add('SELECT *                                            ');
      Q.SQL.Add('FROM DIARIO                                         ');
      Q.SQL.Add('WHERE ASIENTO >= :ASIENTO1 AND ASIENTO <= :ASIENTO2 ');
      Q.SQL.Add('AND   FECHA   >= :FECHA1   AND FECHA   <= :FECHA2   ');
      if not (ASubAccountSince = '') then begin
         Q.SQL.Add(' AND SUBCUENTA >= :Subcuenta1 and subcuenta <= :Subcuenta2 ');
         Q.Params.ByName('SUBCUENTA1').AsString := ASubAccountSince;
         Q.Params.ByName('SUBCUENTA2').AsString := ASubAccountUntil;
      end;
      Q.Params.ByName('ASIENTO1').AsInteger  := AEntrySince;
      Q.Params.ByName('ASIENTO2').AsInteger  := AEntryUntil;
      Q.Params.ByName('FECHA1'  ).AsDateTime := ADateSince;
      Q.Params.ByName('FECHA2'  ).AsDateTime := ADateUntil;
      Q.ExecQuery;
      while not Q.EOF do begin

         if not ExistsSubAccount(Q.FieldByName('SUBCUENTA').AsString) then begin
            InsertSubAccount(Q.FieldByName('SUBCUENTA').AsString);
         end;

         if not ExistsConcept(Q.FieldByName('ID_CONCEPTOS').AsString) then begin
            InsertConcept(Q.FieldByName('ID_CONCEPTOS').AsString);
         end;

         if not ExistsSubAccount(Q.FieldByName('CONTRAPARTIDA').AsString) then begin
            InsertSubAccount(Q.FieldByName('CONTRAPARTIDA').AsString);
         end;

         if not ExistsAnalytic(Q.FieldByName('CUENTA_ANALITICA').AsString) then begin
            InsertAnalytic(Q.FieldByName('CUENTA_ANALITICA').AsString);
         end;

         // Insertar diario
         QInsertaDiario.Close;
         QInsertaDiario.SQL.Clear;
         QInsertaDiario.SQL.Add('INSERT INTO DIARIO(APUNTE       ,   ');
         QInsertaDiario.SQL.Add('                   ASIENTO      ,   ');
         QInsertaDiario.SQL.Add('                   BASEIMPONIBLE,   ');
         QInsertaDiario.SQL.Add('                   COMENTARIO   ,   ');
         QInsertaDiario.SQL.Add('                   DEBEHABER    ,   ');
         QInsertaDiario.SQL.Add('                   FECHA        ,   ');
         QInsertaDiario.SQL.Add('                   IMPORTE      ,   ');
         QInsertaDiario.SQL.Add('                   IVA          ,   ');
         QInsertaDiario.SQL.Add('                   NIF          ,   ');
         QInsertaDiario.SQL.Add('                   MONEDA       ,   ');
         QInsertaDiario.SQL.Add('                   NUMEROFACTURA,   ');
         QInsertaDiario.SQL.Add('                   RECARGO      ,   ');
         QInsertaDiario.SQL.Add('                   SUBCUENTA    ,   ');
         QInsertaDiario.SQL.Add('                   ID_CONCEPTOS ,   ');
         QInsertaDiario.SQL.Add('                   TIPOASIENTO  ,   ');
         QInsertaDiario.SQL.Add('                   EJERCICIO    ,   ');
         QInsertaDiario.SQL.Add('                   SERIE            ');
         if not (Q.FieldByName('CONTRAPARTIDA').AsString = '') then begin
            QInsertaDiario.SQL.Add(' , CONTRAPARTIDA ');
         end;
         if not (Q.FieldByName('TIPODIARIO').AsString = '') then begin
            QInsertaDiario.SQL.Add(' , TIPODIARIO ');
         end;
         if not (Q.FieldByName('CUENTA_ANALITICA').AsString = '') then begin
            QInsertaDiario.SQL.Add(' , CUENTA_ANALITICA ');
         end;
         QInsertaDiario.SQL.Add(' , CUOTAIVA             ');
         QInsertaDiario.SQL.Add(' , CUOTARECARGO)        ');
         QInsertaDiario.SQL.Add('VALUES(:prmAPUNTE       ,  ');
         QInsertaDiario.SQL.Add('       :prmASIENTO      ,  ');
         QInsertaDiario.SQL.Add('       :prmBASEIMPONIBLE,  ');
         QInsertaDiario.SQL.Add('       :prmCOMENTARIO   ,  ');
         QInsertaDiario.SQL.Add('       :prmDEBEHABER    ,  ');
         QInsertaDiario.SQL.Add('       :prmFECHA        ,  ');
         QInsertaDiario.SQL.Add('       :prmIMPORTE      ,  ');
         QInsertaDiario.SQL.Add('       :prmIVA          ,  ');
         QInsertaDiario.SQL.Add('       :prmNIF          ,  ');
         QInsertaDiario.SQL.Add('       :prmMONEDA       ,  ');
         QInsertaDiario.SQL.Add('       :prmNUMEROFACTURA,  ');
         QInsertaDiario.SQL.Add('       :prmRECARGO      ,  ');
         QInsertaDiario.SQL.Add('       :prmSUBCUENTA    ,  ');
         QInsertaDiario.SQL.Add('       :prmID_CONCEPTOS ,  ');
         QInsertaDiario.SQL.Add('       :prmTIPOASIENTO  ,  ');
         QInsertaDiario.SQL.Add('       :prmEJERCICIO    ,  ');
         QInsertaDiario.SQL.Add('       :prmSERIE           ');
         if not (Q.FieldByName('CONTRAPARTIDA').AsString = '') then begin
            QInsertaDiario.SQL.Add(' , :prmCONTRAPARTIDA ');
         end;
         if not (Q.FieldByName('TIPODIARIO').AsString = '') then begin
            QInsertaDiario.SQL.Add(' , :prmTIPODIARIO ');
         end;
         if not (Q.FieldByName('CUENTA_ANALITICA').AsString = '') then begin
            QInsertaDiario.SQL.Add(' , :prmCUENTA_ANALITICA ');
         end;
         QInsertaDiario.SQL.Add(' , :prmCUOTAIVA         ');
         QInsertaDiario.SQL.Add(' , :prmCUOTARECARGO   ) ');
         if Q.FieldByName('ASIENTO').AsInteger <> nAsientoEmpresa then begin
            nAsientoEmpresa := Q.FieldByName('ASIENTO').AsInteger;
            nAsiento        := ObtenerNumeroAsientoOtraBD;
         end;

         QInsertaDiario.ParamByName('prmASIENTO'      ).AsInteger  := nAsiento;
         QInsertaDiario.ParamByName('prmAPUNTE'       ).AsInteger  := Q.FieldByName('APUNTE'       ).AsInteger;
         QInsertaDiario.ParamByName('prmBASEIMPONIBLE').AsFloat    := Q.FieldByName('BASEIMPONIBLE').AsFloat;
         QInsertaDiario.ParamByName('prmTIPOASIENTO'  ).AsInteger  := Q.FieldByName('TIPOASIENTO'  ).AsInteger;
         QInsertaDiario.ParamByName('prmEJERCICIO'    ).AsInteger  := Q.FieldByName('EJERCICIO'    ).AsInteger;
         QInsertaDiario.ParamByName('prmSERIE'        ).AsString   := Q.FieldByName('SERIE'        ).AsString;
         QInsertaDiario.ParamByName('prmCOMENTARIO'   ).AsString   := Q.FieldByName('COMENTARIO'   ).AsString;
         QInsertaDiario.ParamByName('prmDEBEHABER'    ).AsString   := Q.FieldByName('DEBEHABER'    ).AsString;
         QInsertaDiario.ParamByName('prmFECHA'        ).AsDateTime := Q.FieldByName('FECHA'        ).AsDateTime;
         QInsertaDiario.ParamByName('prmIMPORTE'      ).AsFloat    := Q.FieldByName('IMPORTE'      ).AsFloat;
         QInsertaDiario.ParamByName('prmIVA'          ).AsFloat    := Q.FieldByName('IVA'          ).AsFloat;
         QInsertaDiario.ParamByName('prmNIF'          ).AsString   := Q.FieldByName('NIF'          ).AsString;
         QInsertaDiario.ParamByName('prmMONEDA'       ).AsString   := Q.FieldByName('MONEDA'       ).AsString;
         QInsertaDiario.ParamByName('prmNUMEROFACTURA').AsString   := Q.FieldByName('NUMEROFACTURA').AsString;
         QInsertaDiario.ParamByName('prmRECARGO'      ).AsFloat    := Q.FieldByName('RECARGO'      ).AsFloat;
         QInsertaDiario.ParamByName('prmSUBCUENTA'    ).AsString   := Q.FieldByName('SUBCUENTA'    ).AsString;
         QInsertaDiario.ParamByName('prmID_CONCEPTOS' ).AsString   := Q.FieldByName('ID_CONCEPTOS' ).AsString;
         QInsertaDiario.ParamByName('prmCUOTAIVA'     ).AsFloat    := Q.FieldByName('CUOTAIVA'     ).AsFloat;
         QInsertaDiario.ParamByName('prmCUOTARECARGO' ).AsFloat    := Q.FieldByName('CUOTARECARGO' ).AsFloat;
         if not (Q.FieldByName('CONTRAPARTIDA').AsString = '') then begin
            QInsertaDiario.ParamByName('prmCONTRAPARTIDA').AsString := Q.FieldByName('CONTRAPARTIDA').AsString;
         end;
         if not (Q.FieldByName('TIPODIARIO').AsString = '') then begin
            QInsertaDiario.ParamByName('prmTIPODIARIO').AsString := Q.FieldByName('TIPODIARIO').AsString;
         end;
         if not (Q.FieldByName('CUENTA_ANALITICA').AsString = '') then begin
            QInsertaDiario.ParamByName('prmCUENTA_ANALITICA').AsString := Q.FieldByName('CUENTA_ANALITICA').AsString;
         end;
         QInsertaDiario.ExecQuery;
         QInsertaDiario.Transaction.CommitRetaining;
         Q.Next;
      end;
   finally
      Q.Free;
   end;
end;

end.
