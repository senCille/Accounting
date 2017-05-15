unit UDiarioModel;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, frxExportPDF, Datasnap.DBClient;

type
  TDataModuleDiario = class(TDataModule)
    QSubCuentas: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    SSubcuentas: TDataSource;
    QEmpresas: TIBDataSet;
    QEmpresasNOMBRE: TIBStringField;
    QEmpresasCERRADA: TIBStringField;
    QEmpresasUBICACION: TIBStringField;
    QEmpresasID_EMPRESA: TIntegerField;
    QEmpresasULTIMA: TIBStringField;
    SEmpresas: TDataSource;
    QAnaliticas: TIBDataSet;
    SAnaliticas: TDataSource;
    QDelegaciones: TIBDataSet;
    SDelegaciones: TDataSource;
    QDepartamentos: TIBDataSet;
    SDepartamentos: TDataSource;
    QSecciones: TIBDataSet;
    SSecciones: TDataSource;
    QProyectos: TIBDataSet;
    SProyectos: TDataSource;
    QAnaliticasID_PROYECTO: TIBStringField;
    QAnaliticasID_SECCION: TIBStringField;
    QAnaliticasID_DEPARTAMENTO: TIBStringField;
    QAnaliticasID_DELEGACION: TIBStringField;
    QAnaliticasNOMBRE: TIBStringField;
    QAnaliticasCUENTA: TIBStringField;
    QDelegacionesID_DELEGACION: TIBStringField;
    QDelegacionesNOMBRE: TIBStringField;
    QDepartamentosID_DEPARTAMENTO: TIBStringField;
    QDepartamentosNOMBRE: TIBStringField;
    QSeccionesID_SECCION: TIBStringField;
    QSeccionesNOMBRE: TIBStringField;
    QProyectosID_PROYECTO: TIBStringField;
    QProyectosNOMBRE: TIBStringField;
    QConceptos: TIBDataSet;
    SConceptos: TDataSource;
    QConceptosID_CONCEPTOS: TIBStringField;
    QConceptosDESCRIPCION: TIBStringField;
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TDiarioModel = class(TCustomModel)
  private
    DM :TDataModuleDiario;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure ReportAsientos(ADataSet :TDataSet);
  end;

var
  DataModuleDiario: TDataModuleDiario;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Forms,
     Globales, DMControl, DM;

{$R *.dfm}

{ TDiarioModel }

constructor TDiarioModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleDiario.Create(Application);
   if Initialize then DoInitialize;
end;

function TDiarioModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TDiarioModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TDiarioModel.DoInitialize;
begin
   inherited;
   DM.QEmpresas.Database := DMControlRef.BDControl;
   //DM.QEmpresas.Transaction.Active := True;
   DM.QEmpresas.Open;

   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;

   DM.QAnaliticas.Database := DB;
   DM.QAnaliticas.Open;

   DM.QDelegaciones.Database := DB;
   DM.QDelegaciones.Open;

   DM.QDepartamentos.Database := DB;
   DM.QDepartamentos.Open;

   DM.QSecciones.Database := DB;
   DM.QSecciones.Open;

   DM.QProyectos.Database := DB;
   DM.QProyectos.Open;

   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;
end;

procedure TDiarioModel.Refresh;
begin

end;

procedure TDiarioModel.ReportAsientos(ADataSet: TDataSet);
begin
   (*DM.Enlace1.DataSet := ADataSet;
   DM.PDFExport.Author          := 'senCille Accounting';
   DM.PDFExport.ShowDialog      := False;
   DM.PDFExport.OpenAfterExport := True;

   DM.PDFExport.FileName := 'AsientosDesdeElDiario.pdf';
   DM.FastReportAsientos.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
   DM.FastReportAsientos.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
   //DM.FastReportAsientos.Variables['DESCRIPTION'    ] := ''''+'Desde la fecha ' + FormatDateTime('dd/mm/yyyy', AFECHA_DESDE) +
   //                                                           ' hasta '         + FormatDateTime('dd/mm/yyyy', AFECHA_HASTA) +'''';
   //DM.FastReportAsientos.Variables['ENTERPRISE_NAME'] := ''''+FormatDateTime('dd/mm/yyyy', AFechaImpresion)+'''';

   DM.FastReportAsientos.PrepareReport(True);
   DM.FastReportAsientos.Export(DM.PDFExport);*)
end;

end.
