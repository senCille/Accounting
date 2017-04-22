unit UIVA300Model;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  frxClass, frxDBSet, frxExportPDF, DBClient;

type
  TDataModuleIVA300 = class(TDataModule)
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
    DBEmpresa: TIBDatabase;
    Transaccion: TIBTransaction;
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
    FastReportModelo300: TfrxReport;
    PDFExport: TfrxPDFExport;
    Enlace1: TfrxDBDataset;
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TIVA300Model = class(TCustomModel)
  private
    DM :TDataModuleIVA300;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure PrintDashModel300(ADataSet :TDataSet);
  end;

var
  DataModuleIVA300: TDataModuleIVA300;

implementation

uses Forms,
     Globales, DMControl, DM;

{$R *.dfm}

{ TIVA300Model }

constructor TIVA300Model.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleIVA300.Create(Application);
   if Initialize then DoInitialize;
end;

function TIVA300Model.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TIVA300Model.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TIVA300Model.DoInitialize;
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
end;

procedure TIVA300Model.PrintDashModel300(ADataSet: TDataSet);
begin
   DM.Enlace1.DataSet := ADataSet;
   DM.PDFExport.Author          := 'senCille Accounting';
   DM.PDFExport.ShowDialog      := False;
   DM.PDFExport.OpenAfterExport := True;

   DM.PDFExport.FileName := 'Modelo300.pdf';
   DM.FastReportModelo300.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
   DM.FastReportModelo300.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
   //DM.FastReportModelo300.Variables['DESCRIPTION'    ] := ''''+'Desde la fecha ' + FormatDateTime('dd/mm/yyyy', AFECHA_DESDE) +
   //                                                            ' hasta '         + FormatDateTime('dd/mm/yyyy', AFECHA_HASTA) +'''';
   //DM.FastReportModelo300.Variables['ENTERPRISE_NAME'] := ''''+FormatDateTime('dd/mm/yyyy', AFechaImpresion)+'''';

   DM.FastReportModelo300.PrepareReport(True);
   DM.FastReportModelo300.Export(DM.PDFExport);
end;

procedure TIVA300Model.Refresh;
begin

end;

end.
