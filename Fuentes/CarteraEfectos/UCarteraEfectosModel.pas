unit UCarteraEfectosModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, frxExportPDF, DBClient;

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
    FastReportCarteraBanco: TfrxReport;
    PDFExport: TfrxPDFExport;
    Enlace1: TfrxDBDataset;
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
    FastReportCarteraSubcta: TfrxReport;
    FastReportCarteraFVenc: TfrxReport;
    FastReportCarteraSituacion: TfrxReport;
    FastReportCarteraComercial: TfrxReport;
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
    procedure ReportCarteraFVenc;
    procedure ReportCarteraSubcta;
    procedure ReportCarteraBanco;
    procedure ReportCarteraSituacion;
    procedure ReportCarteraComercial;
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

procedure TCarteraEfectosModel.ReportCarteraBanco;
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;
   DM.Enlace1.DataSet := DM.QFichero;
   DM.QFichero.DisableControls;
   try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      DM.PDFExport.FileName := 'CarteraBanco.pdf';
      DM.FastReportCarteraBanco.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportCarteraBanco.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      {$Message Warn 'Pendant: complete the header with the dates and the user'}
      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.FastReportCarteraBanco.PrepareReport(True);
      DM.FastReportCarteraBanco.Export(DM.PDFExport);

      if not DM.QFichero.EOF then begin
         DM.QFichero.GotoBookMark(Marca);
         DM.QFichero.FreeBookMark(Marca);
      end;
   finally
      DM.QFichero.EnableControls;
   end;
end;

procedure TCarteraEfectosModel.ReportCarteraComercial;
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;
   DM.Enlace1.DataSet := DM.QFichero;

   DM.QFichero.DisableControls;
   try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      DM.PDFExport.FileName := 'CarteraComercial.pdf';
      DM.FastReportCarteraComercial.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportCarteraComercial.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      {$Message Warn 'Pendant: complete the header with the dates and the user'}
      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.FastReportCarteraComercial.PrepareReport(True);
      DM.FastReportCarteraComercial.Export(DM.PDFExport);

      if not DM.QFichero.EOF then begin
         DM.QFichero.GotoBookMark(Marca);
         DM.QFichero.FreeBookMark(Marca);
      end;
   finally
      DM.QFichero.EnableControls;
   end;
end;

procedure TCarteraEfectosModel.ReportCarteraFVenc;
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;
   DM.Enlace1.DataSet := DM.QFichero;

   DM.QFichero.DisableControls;
   try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.PDFExport.FileName := 'CarteraFVenc.pdf';
      DM.FastReportCarteraFVenc.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportCarteraFVenc.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      DM.FastReportCarteraFVenc.PrepareReport(True);
      DM.FastReportCarteraFVenc.Export(DM.PDFExport);

      if not DM.QFichero.EOF then begin
         DM.QFichero.GotoBookMark(Marca);
         DM.QFichero.FreeBookMark(Marca);
      end;
   finally
      DM.QFichero.EnableControls;
   end;
end;

procedure TCarteraEfectosModel.ReportCarteraSituacion;
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;
   DM.Enlace1.DataSet := DM.QFichero;

   DM.QFichero.DisableControls;
   try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      DM.PDFExport.FileName := 'CarteraSituacion.pdf';
      DM.FastReportCarteraSituacion.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportCarteraSituacion.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      {$Message Warn 'Pendant: complete the header with the dates and the user'}
      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.FastReportCarteraSituacion.PrepareReport(True);
      DM.FastReportCarteraSituacion.Export(DM.PDFExport);

      if not DM.QFichero.EOF then begin
         DM.QFichero.GotoBookMark(Marca);
         DM.QFichero.FreeBookMark(Marca);
      end;
   finally
      DM.QFichero.EnableControls;
   end;
end;

procedure TCarteraEfectosModel.ReportCarteraSubcta;
var Marca :TBookMark;
begin
   Marca := DM.QFichero.GetBookMark;
   DM.Enlace1.DataSet := DM.QFichero;

   DM.QFichero.DisableControls;
   try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      DM.PDFExport.FileName := 'CarteraSubcta.pdf';
      DM.FastReportCarteraSubcta.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportCarteraSubcta.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      {$Message Warn 'Pendant: complete the header with the dates and the user'}
      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.FastReportCarteraSubcta.PrepareReport(True);
      DM.FastReportCarteraSubcta.Export(DM.PDFExport);

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


