unit UCarteraEfectosModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, frxExportPDF, DBClient,
  senCille.CommonTypes;

type
  TDataModuleCarteraEfectos = class(TDataModule)
    QSubCuentas: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    SSubcuentas: TDataSource;
    SSubCtaCarteraEfectos: TDataSource;
    QConceptos: TIBDataSet;
    SConceptos: TDataSource;
    QConceptosID_CONCEPTOS: TIBStringField;
    QConceptosDESCRIPCION: TIBStringField;
    QSubCtaCarteraEfectos: TIBDataSet;
    QSubCtaCarteraEfectosDESCRIPCION: TIBStringField;
    QSubCtaCarteraEfectosSUBCUENTA: TIBStringField;
    QComercial: TIBDataSet;
    QComercialNOMBRE: TIBStringField;
    QComercialCOMERCIAL: TIBStringField;
    SComercial: TDataSource;
    QSubCTABanco: TIBDataSet;
    IBStringField6: TIBStringField;
    IBStringField9: TIBStringField;
    SSubCTABanco: TDataSource;
    QSubCTAClientesProv: TIBDataSet;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    QSubCtaClientes: TIBDataSet;
    IBStringField37: TIBStringField;
    IBStringField38: TIBStringField;
    SSubCTAClientesProv: TDataSource;
    SSubCtaClientes: TDataSource;
    QFichero: TIBDataSet;
    QFicheroID_CARTERAEFECTOS: TIntegerField;
    QFicheroFVENCIMIENTO: TDateTimeField;
    QFicheroFEMISION: TDateTimeField;
    QFicheroSUBCUENTA: TIBStringField;
    QFicheroCONCEPTO: TIBStringField;
    QFicheroCalcImporte: TFloatField;
    QFicheroDescSituacion: TStringField;
    QFicheroASIENTORIESGO: TIntegerField;
    QFicheroSUBCTABANCO: TIBStringField;
    QFicheroCOMERCIAL: TIBStringField;
    QFicheroCalcComision: TFloatField;
    QFicheroFACTCLIENT: TIBStringField;
    QFicheroFACTPROVEEDOR: TIBStringField;
    QFicheroEJERCICIO: TIntegerField;
    QFicheroSERIE: TIBStringField;
    QFicheroIMPCOMISION: TFloatField;
    QFicheroIMPORTE: TFloatField;
    QFicheroSITUACION: TIBStringField;
    QFicheroFASIENTO: TDateTimeField;
    QFicheroNumeroFactura: TStringField;
    QFicheroDescSubcuenta: TStringField;
    QFicheroDescSubcuentaBanco: TStringField;
    QFicheroNomComercial: TStringField;
    DSFichero: TDataSource;
    Transaccion: TIBTransaction;
    CDSFiltro: TClientDataSet;
    CDSFiltroBFACTCLIENTE: TStringField;
    CDSFiltroBFACTPROVEEDOR: TStringField;
    CDSFiltroBNUMERO: TIntegerField;
    CDSFiltroBIMPORTE: TFloatField;
    CDSFiltroFECHAEMISIONDESDE: TDateTimeField;
    CDSFiltroFECHAEMISIONHASTA: TDateTimeField;
    CDSFiltroFECHAVENCIMDESDE: TDateTimeField;
    CDSFiltroFECHAVENCIMHASTA: TDateTimeField;
    CDSFiltroFECHAASIENTODESDE: TDateTimeField;
    CDSFiltroFECHAASIENTOHASTA: TDateTimeField;
    CDSFiltroIMPORTEDESDE: TFloatField;
    CDSFiltroIMPORTEHASTA: TFloatField;
    CDSFiltroFACTCLIENTEDESDE: TStringField;
    CDSFiltroFACTCLIENTEHASTA: TStringField;
    CDSFiltroFACTPROVEEDORDESDE: TStringField;
    CDSFiltroFACTPROVEEDORHASTA: TStringField;
    CDSFiltroSUBCUENTADESDE: TStringField;
    CDSFiltroSUBCUENTAHASTA: TStringField;
    CDSFiltroSUBCUENTABANCO: TStringField;
    CDSFiltroCOMERCIAL: TStringField;
    CDSFiltroSITUACION: TStringField;
    CDSFiltroMONEDA: TStringField;
    DSFiltro: TDataSource;
    procedure QFicheroBeforeOpen(DataSet: TDataSet);
    procedure QFicheroCalcFields(DataSet: TDataSet);
    procedure QFicheroNewRecord(DataSet: TDataSet);
  protected
    FNuevoVto          :Boolean;
    FSubcuentaNuevoVto :string;
    FConceptoNuevoVto  :string;
    FImporteNuevoVto   :Double;
  private
  public
    procedure ActivarTransacciones;
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TCarteraEfectosModel = class(TCustomModel)
  private
    DM        :TDataModuleCarteraEfectos;
    procedure SetNuevoVto(const Value: boolean);
    function  GetNuevoVto: Boolean;
    procedure SetSubcuentaNuevoVto(const Value: string);
    function  GetSubcuentaNuevoVto: string;
    procedure SetConceptoNuevoVto(const Value: string);
    function  GetConceptoNuevoVto: string;
    procedure SetImporteNuevoVto(const Value: Double);
    function  GetImporteNuevoVto: Double;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModuleCarteraEfectos;
    procedure Refresh;
    procedure ReportCarteraFVenc    (ACallBack :TSimplyCallBack);
    procedure ReportCarteraSubcta   (ACallBack :TSimplyCallBack);
    procedure ReportCarteraBanco    (ACallBack :TSimplyCallBack);
    procedure ReportCarteraSituacion(ACallBack :TSimplyCallBack);
    procedure ReportCarteraComercial(ACallBack :TSimplyCallBack);
    property NuevoVto          :Boolean read GetNuevoVto          write SetNuevoVto;
    property SubcuentaNuevoVto :string  read GetSubcuentaNuevoVto write SetSubcuentaNuevoVto;
    property ConceptoNuevoVto  :string  read GetConceptoNuevoVto  write SetConceptoNuevoVto;
    property ImporteNuevoVto   :Double  read GetImporteNuevoVto   write SetImporteNuevoVto;
  end;

//var
//  DataModuleCarteraEfectos: TDataModuleCarteraEfectos;

implementation

uses Forms,
     Globales, DMControl, DM;

{$R *.dfm}

{ TCarteraEfectosModel }

constructor TCarteraEfectosModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleCarteraEfectos.Create(Application);
   if Initialize then DoInitialize;
end;

function TCarteraEfectosModel.DataModule: TDataModuleCarteraEfectos;
begin
   Result := DM;
end;

destructor TCarteraEfectosModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TCarteraEfectosModel.DoInitialize;
begin
   inherited;

   DM.ActivarTransacciones;
   
   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;

   DM.QSubCtaCarteraEfectos.Database := DB;
   DM.QSubCtaCarteraEfectos.Open;

   DM.QComercial.Database := DB;
   DM.QComercial.Open;

   DM.QSubCTABanco.Database := DB;
   DM.QSubCTABanco.Open;

   DM.QSubCtaClientes.Database := DB;
   DM.QSubCtaClientes.Open;

   DM.QSubCTAClientesProv.Database := DB;
   DM.QSubCTAClientesProv.Open;

   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;

   DM.QFichero.Database := DB;
   DM.QFichero.Open;

   DM.CDSFiltro.CreateDataSet;
   DM.CDSFiltro.Active := True;
   DM.CDSFiltro.Append;
end;

procedure TCarteraEfectosModel.Refresh;
begin

end;

procedure TCarteraEfectosModel.ReportCarteraBanco(ACallBack :TSimplyCallBack);
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;
   DM.QFichero.DisableControls;
   try
      if Assigned(ACallBack) then ACallBack;

      if not DM.QFichero.EOF then begin
         DM.QFichero.GotoBookMark(Marca);
         DM.QFichero.FreeBookMark(Marca);
      end;
   finally
      DM.QFichero.EnableControls;
   end;
end;

procedure TCarteraEfectosModel.ReportCarteraComercial(ACallBack :TSimplyCallBack);
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;

   DM.QFichero.DisableControls;
   try
      if Assigned(ACallBack) then ACallBack;

      if not DM.QFichero.EOF then begin
         DM.QFichero.GotoBookMark(Marca);
         DM.QFichero.FreeBookMark(Marca);
      end;
   finally
      DM.QFichero.EnableControls;
   end;
end;

procedure TCarteraEfectosModel.ReportCarteraFVenc(ACallBack :TSimplyCallBack);
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;

   DM.QFichero.DisableControls;
   try
      if Assigned(ACallBack) then ACallBack;

      if not DM.QFichero.EOF then begin
         DM.QFichero.GotoBookMark(Marca);
         DM.QFichero.FreeBookMark(Marca);
      end;
   finally
      DM.QFichero.EnableControls;
   end;
end;

procedure TCarteraEfectosModel.ReportCarteraSituacion(ACallBack :TSimplyCallBack);
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;

   DM.QFichero.DisableControls;
   try
      if Assigned(ACallBack) then ACallBack;

      if not DM.QFichero.EOF then begin
         DM.QFichero.GotoBookMark(Marca);
         DM.QFichero.FreeBookMark(Marca);
      end;
   finally
      DM.QFichero.EnableControls;
   end;
end;

procedure TCarteraEfectosModel.ReportCarteraSubcta(ACallBack :TSimplyCallBack);
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;

   DM.QFichero.DisableControls;
   try
      if Assigned(ACallBack) then ACallBack;

      if not DM.QFichero.EOF then begin
         DM.QFichero.GotoBookMark(Marca);
         DM.QFichero.FreeBookMark(Marca);
      end;
   finally
      DM.QFichero.EnableControls;
   end;
end;

procedure TDataModuleCarteraEfectos.ActivarTransacciones;
var i :Word;
begin
   for i := 0 to (ComponentCount - 1) do begin
      if (Components[i] is TIBTransaction) then begin
         TIBTransaction(Components[i]).Active := False;
         TIBTransaction(Components[i]).Params.Clear;
         TIBTransaction(Components[i]).Params.add('Read_committed');
         TIBTransaction(Components[i]).Params.add('Rec_version');
         TIBTransaction(Components[i]).Params.add('Write');
         {Next block was be added after change the name of the Database Component}
         if (TIBTransaction(Components[i]).DefaultDatabase = nil) then begin
           TIBTransaction(Components[i]).DefaultDatabase := DMRef.BDContab;
         end;
         TIBTransaction(Components[i]).Active := True;
      end;
   end;
end;

procedure TDataModuleCarteraEfectos.QFicheroBeforeOpen(DataSet: TDataSet);
begin
   QFichero.EnableControls;
end;

procedure TDataModuleCarteraEfectos.QFicheroCalcFields(DataSet: TDataSet);
begin
   if not QFicheroSITUACION.IsNull then begin
      case QFicheroSITUACION.AsString[1] of
         'N': QFicheroDescSituacion.AsString := 'PENDIENTE';
         'B': QFicheroDescSituacion.AsString := 'REMESADO';
         'C': QFicheroDescSituacion.AsString := 'COBRADO';
         'D': QFicheroDescSituacion.AsString := 'DEVUELTO';
         'P': QFicheroDescSituacion.AsString := 'PAGADO';
         'A': QFicheroDescSituacion.AsString := 'ACEPTADO';
         'V': QFicheroDescSituacion.AsString := 'VENCIDO';
      end;
   end;

   if Trim(QFicheroFACTCLIENT.AsString) = '' then QFicheroNumeroFactura.AsString := QFicheroFACTPROVEEDOR.AsString
                                             else QFicheroNumeroFactura.AsString := QFicheroFACTCLIENT.AsString;

   QFicheroCalcImporte.AsFloat  := QFicheroIMPORTE.AsFloat;
   QFicheroCalcComision.AsFloat := QFicheroIMPCOMISION.AsFloat;
   QFicheroCalcImporte.DisplayFormat  := '###,###,##0.00';
   QFicheroCalcComision.DisplayFormat := '###,###,##0.00';
end;

procedure TDataModuleCarteraEfectos.QFicheroNewRecord(DataSet: TDataSet);
begin
   QFicheroFEMISION.AsDateTime := Date;

   if FNuevoVto then begin
      QFicheroSUBCUENTA.AsString := FSubcuentaNuevoVto;
      QFicheroCONCEPTO.AsString  := Copy(FConceptoNuevoVto, 1, 50);
      QFicheroIMPORTE.AsFloat    := FImporteNuevoVto;
   end;
end;

procedure TCarteraEfectosModel.SetNuevoVto(const Value: boolean);
begin
   DM.FNuevoVto := Value;
end;

function TCarteraEfectosModel.GetNuevoVto: Boolean;
begin
   Result := DM.FNuevoVto;
end;

procedure TCarteraEfectosModel.SetSubcuentaNuevoVto(const Value: string);
begin
   DM.FSubcuentaNuevoVto := Value;
end;

function TCarteraEfectosModel.GetSubcuentaNuevoVto: string;
begin
   Result := DM.FSubcuentaNuevoVto;
end;

procedure TCarteraEfectosModel.SetConceptoNuevoVto(const Value: string);
begin
   DM.FConceptoNuevoVto := Value;
end;

function TCarteraEfectosModel.GetConceptoNuevoVto: string;
begin
   Result := DM.FConceptoNuevoVto;
end;

procedure TCarteraEfectosModel.SetImporteNuevoVto(const Value: Double);
begin
   DM.FImporteNuevoVto := Value;
end;

function TCarteraEfectosModel.GetImporteNuevoVto: Double;
begin
   Result := DM.FImporteNuevoVto;
end;


end.


