unit UFiltroLibroFacturasEmitidas;

interface

uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Mask, Messages, StdCtrls, SysUtils, Windows,
     UFiltroLibroFacturasEmitidasModel, frxClass, frxExportPDF, frxDBSet;
     
type
  TWFiltroLibroFactEmitidas = class(TForm)
    GroupBox1: TGroupBox;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    GroupBox2: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    EditBASE_DESDE: TDBEdit;
    Label2: TLabel;
    EditBASE_HASTA: TDBEdit;
    GroupBoxORDEN: TDBRadioGroup;
    EditIMP_IVA_DESDE: TDBEdit;
    Label5: TLabel;
    EditIMP_IVA_HASTA: TDBEdit;
    EditPRC_IVA_DESDE: TDBEdit;
    Label6: TLabel;
    EditPRC_IVA_HASTA: TDBEdit;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    lbSubcuenta: TLabel;
    ComboBoxCD_SUBCUENTA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA: TDBLookupComboBox;
    Label7: TLabel;
    CheckBoxFormatoOficial: TCheckBox;
    GroupBoxINFORME: TDBRadioGroup;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ComboBoxCD_ANALITICA: TDBLookupComboBox;
    ComboBoxDELEGACION: TDBLookupComboBox;
    ComboBoxDEPARTAMENTO: TDBLookupComboBox;
    ComboBoxSECCION: TDBLookupComboBox;
    ComboBoxPROYECTO: TDBLookupComboBox;
    ComboBoxDS_ANALITICA: TDBLookupComboBox;
    GroupBoxINTRACOMUN: TDBRadioGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    lTitulo: TLabel;
    Shape1: TShape;
    BtnProcess: TButton;
    CDSFiltroFECHA_DESDE: TDateField;
    CDSFiltroFECHA_HASTA: TDateField;
    CDSFiltroBASE_DESDE: TFloatField;
    CDSFiltroBASE_HASTA: TFloatField;
    CDSFiltroIMP_IVA_DESDE: TFloatField;
    CDSFiltroIMP_IVA_HASTA: TFloatField;
    CDSFiltroPRC_IVA_DESDE: TFloatField;
    CDSFiltroPRC_IVA_HASTA: TFloatField;
    CDSFiltroORDEN: TStringField;
    CDSFiltroSUBCUENTA: TStringField;
    CDSFiltroFECHA_IMPRIMIR: TDateField;
    CDSFiltroINFORME: TStringField;
    CDSFiltroINTRACOMUN: TStringField;
    CDSFiltroCUENTA: TStringField;
    CDSFiltroID_DELEGACION: TStringField;
    CDSFiltroID_DEPARTAMENTO: TStringField;
    CDSFiltroID_SECCION: TStringField;
    CDSFiltroID_PROYECTO: TStringField;
    FastReportFacturasEmitidasSubcta: TfrxReport;
    FastReportFacturasEmitidasTipoIVA: TfrxReport;
    FastReportFacturasEmitidas: TfrxReport;
    Enlace1: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    procedure FormShow(Sender: TObject);
    procedure BtnProcessClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TFiltroLibroFacturasEmitidasModel;
    procedure CallBackReportFacturasEmitidasSubcta;
    procedure CallBackReportFacturasEmitidasIVA;
    procedure CallBackReportFacturasEmitidas;
  public
    TipoListado: Integer;
  end;

var WFiltroLibroFactEmitidas: TWFiltroLibroFactEmitidas;

implementation
uses DM, DMConta, Globales, UIVA300;
{$R *.DFM}

procedure TWFiltroLibroFactEmitidas.FormCreate(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   FModel := TFiltroLibroFacturasEmitidasModel.Create(DMRef.BDContab);
   Self.Caption := '';

   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;

   DMContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   CDSFiltroFECHA_DESDE.AsDateTime := dPrimeraFecha;
   CDSFiltroFECHA_HASTA.AsDateTime := dUltimaFecha;
   CDSFiltroBASE_DESDE.AsFloat     := -999999999;
   CDSFiltroBASE_HASTA.AsFloat     :=  999999999;
   CDSFiltroIMP_IVA_DESDE.AsFloat  := -999999999;
   CDSFiltroIMP_IVA_HASTA.AsFloat  :=  999999999;
   CDSFiltroPRC_IVA_HASTA.AsFloat  :=         21;
   CDSFiltroORDEN.AsString         := 'F';
   CDSFiltroFECHA_IMPRIMIR.Value   := Date;
   CDSFiltroINFORME.AsString       := 'N';
   CDSFiltroINTRACOMUN.AsString    := 'E';
end;

procedure TWFiltroLibroFactEmitidas.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWFiltroLibroFactEmitidas.FormShow(Sender: TObject);
begin
   case TipoListado of
      INF_MOD_300: begin
         lTitulo.Caption := 'Modelo I.V.A. 300';
      end;
      INF_FACTURAS_EMITIDAS: begin
         lTitulo.Caption := 'Libro de Facturas Emitidas';
      end;
      INF_FACTURAS_RECIBIDAS: begin
         lTitulo.Caption := 'Libro de Facturas Recibidas';
      end;
      INF_FACTURAS_BIENES: begin
         lTitulo.Caption := 'Libro de Facturas Bienes de Inversión';
      end;
   end;

   GroupBoxORDEN.Visible          := TipoListado <> INF_MOD_300;
   GroupBoxINFORME.Visible        := GroupBoxORDEN.Visible;
   CheckBoxFormatoOficial.Visible := TipoListado <> INF_MOD_300;
   lbSubcuenta.Visible            := TipoListado <> INF_MOD_300;
   ComboBoxCD_SUBCUENTA.Visible   := TipoListado <> INF_MOD_300;
   ComboBoxDS_SUBCUENTA.Visible   := TipoListado <> INF_MOD_300;
   GroupBoxINTRACOMUN.Visible     := TipoListado = INF_FACTURAS_EMITIDAS;
end;

procedure TWFiltroLibroFactEmitidas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

procedure TWFiltroLibroFactEmitidas.CallBackReportFacturasEmitidasSubcta;
begin
   PDFExport.Author          := 'senCille Accounting';
   PDFExport.ShowDialog      := False;
   PDFExport.OpenAfterExport := True;

   PDFExport.FileName := 'FacturasEmitidasSubcta.pdf';
   FastReportFacturasEmitidasSubcta.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
   FastReportFacturasEmitidasSubcta.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

   {$Message Warn 'Pendant: complete the header with the dates and the user'}
   {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                  DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                  FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

   FastReportFacturasEmitidasSubcta.PrepareReport(True);
   FastReportFacturasEmitidasSubcta.Export(PDFExport);
end;

procedure TWFiltroLibroFactEmitidas.CallBackReportFacturasEmitidasIVA;
begin
   PDFExport.Author          := 'senCille Accounting';
   PDFExport.ShowDialog      := False;
   PDFExport.OpenAfterExport := True;

   PDFExport.FileName := 'FacturasTipoIVA.pdf';
   FastReportFacturasEmitidasTipoIVA.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
   FastReportFacturasEmitidasTipoIVA.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

   {$Message Warn 'Pendant: complete the header with the dates and the user'}
   {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                  DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                  FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

   FastReportFacturasEmitidasTipoIVA.PrepareReport(True);
   FastReportFacturasEmitidasTipoIVA.Export(PDFExport);
end;

procedure TWFiltroLibroFactEmitidas.CallBackReportFacturasEmitidas;
begin
   PDFExport.Author          := 'senCille Accounting';
   PDFExport.ShowDialog      := False;
   PDFExport.OpenAfterExport := True;

   PDFExport.FileName := 'FacturasEmitidas.pdf';
   FastReportFacturasEmitidas.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
   FastReportFacturasEmitidas.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

   {$Message Warn 'Pendant: complete the header with the dates and the user'}
   {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                  DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                  FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

   FastReportFacturasEmitidas.PrepareReport;
   FastReportFacturasEmitidas.Export(PDFExport);
end;

procedure TWFiltroLibroFactEmitidas.BtnProcessClick(Sender: TObject);
begin
   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   case TipoListado of
      INF_MOD_300: begin
         // Abrir Formulario para crear fichero QIVA300
         WIVA300 := TWIVA300.Create(nil);
         try
            if CDSFiltroInforme.AsString = 'S' then begin  {ReportFacturasEmitidasSubcta(ACallBack);}
               FModel.ReportLibroIVA(CallBackReportFacturasEmitidasSubcta,
                                     CDSFiltroFECHA_DESDE.AsDateTime,             //AFechaInicial   ,
                                     CDSFiltroFECHA_HASTA.AsDateTime,             //AFechaFinal     ,
                                     CDSFiltroBASE_DESDE.AsFloat,                 //ABaseImpInicial ,
                                     CDSFiltroBASE_HASTA.AsFloat,                 //ABaseImpFinal   ,
                                     CDSFiltroIMP_IVA_DESDE.AsFloat,              //ACuotaIVAInicial,
                                     CDSFiltroIMP_IVA_HASTA.AsFloat,              //ACuotaIVAFinal  ,
                                     CDSFiltroPRC_IVA_DESDE.AsFloat,              //AIVAInicial     ,
                                     CDSFiltroPRC_IVA_HASTA.AsFloat,              //AIVAFinal       :Double;
                                     CDSFiltroFECHA_IMPRIMIR.AsDateTime,          //AFechaImpresion :TDateTime;
                                     CheckBoxFormatoOficial.Checked,              //AFormatoOficial :Boolean;
                                     'F',                                         //AOrden          ,
                                     '3',// Orden por fecha                       //ATipoInforme    ,
                                     CDSFiltroSUBCUENTA.AsString,                 //ASubcuenta      ,
                                     CDSFiltroINFORME.AsString,                   //AAgrupacion     ,
                                     CDSFiltroCUENTA.AsString,                    //ACuenta         ,
                                     CDSFiltroID_DELEGACION.AsString,             //ADelegacion     ,
                                     CDSFiltroID_DEPARTAMENTO.AsString,           //ADepartamento   ,
                                     CDSFiltroID_SECCION.AsString,                //ASeccion        ,
                                     CDSFiltroID_PROYECTO.AsString,               //AProyecto       ,
                                     CDSFiltroINTRACOMUN.AsString);               //AIntracomun     :string);
            end else
            if CDSFiltroInforme.AsString = 'I' then begin {ReportFacturasTipoIVA(ACallBack)}
               FModel.ReportLibroIVA(CallBackReportFacturasEmitidasIVA,
                                     CDSFiltroFECHA_DESDE.AsDateTime,             //AFechaInicial   ,
                                     CDSFiltroFECHA_HASTA.AsDateTime,             //AFechaFinal     ,
                                     CDSFiltroBASE_DESDE.AsFloat,                 //ABaseImpInicial ,
                                     CDSFiltroBASE_HASTA.AsFloat,                 //ABaseImpFinal   ,
                                     CDSFiltroIMP_IVA_DESDE.AsFloat,              //ACuotaIVAInicial,
                                     CDSFiltroIMP_IVA_HASTA.AsFloat,              //ACuotaIVAFinal  ,
                                     CDSFiltroPRC_IVA_DESDE.AsFloat,              //AIVAInicial     ,
                                     CDSFiltroPRC_IVA_HASTA.AsFloat,              //AIVAFinal       :Double;
                                     CDSFiltroFECHA_IMPRIMIR.AsDateTime,          //AFechaImpresion :TDateTime;
                                     CheckBoxFormatoOficial.Checked,              //AFormatoOficial :Boolean;
                                     'F',                                         //AOrden          ,
                                     '3',// Orden por fecha                       //ATipoInforme    ,
                                     CDSFiltroSUBCUENTA.AsString,                 //ASubcuenta      ,
                                     CDSFiltroINFORME.AsString,                   //AAgrupacion     ,
                                     CDSFiltroCUENTA.AsString,                    //ACuenta         ,
                                     CDSFiltroID_DELEGACION.AsString,             //ADelegacion     ,
                                     CDSFiltroID_DEPARTAMENTO.AsString,           //ADepartamento   ,
                                     CDSFiltroID_SECCION.AsString,                //ASeccion        ,
                                     CDSFiltroID_PROYECTO.AsString,               //AProyecto       ,
                                     CDSFiltroINTRACOMUN.AsString);               //AIntracomun     :string);
            end
            else begin {ReportFacturasEmitidas(ACallBack);}
               FModel.ReportLibroIVA(CallBackReportFacturasEmitidas,
                                     CDSFiltroFECHA_DESDE.AsDateTime,             //AFechaInicial   ,
                                     CDSFiltroFECHA_HASTA.AsDateTime,             //AFechaFinal     ,
                                     CDSFiltroBASE_DESDE.AsFloat,                 //ABaseImpInicial ,
                                     CDSFiltroBASE_HASTA.AsFloat,                 //ABaseImpFinal   ,
                                     CDSFiltroIMP_IVA_DESDE.AsFloat,              //ACuotaIVAInicial,
                                     CDSFiltroIMP_IVA_HASTA.AsFloat,              //ACuotaIVAFinal  ,
                                     CDSFiltroPRC_IVA_DESDE.AsFloat,              //AIVAInicial     ,
                                     CDSFiltroPRC_IVA_HASTA.AsFloat,              //AIVAFinal       :Double;
                                     CDSFiltroFECHA_IMPRIMIR.AsDateTime,          //AFechaImpresion :TDateTime;
                                     CheckBoxFormatoOficial.Checked,              //AFormatoOficial :Boolean;
                                     'F',                                         //AOrden          ,
                                     '3',// Orden por fecha                       //ATipoInforme    ,
                                     CDSFiltroSUBCUENTA.AsString,                 //ASubcuenta      ,
                                     CDSFiltroINFORME.AsString,                   //AAgrupacion     ,
                                     CDSFiltroCUENTA.AsString,                    //ACuenta         ,
                                     CDSFiltroID_DELEGACION.AsString,             //ADelegacion     ,
                                     CDSFiltroID_DEPARTAMENTO.AsString,           //ADepartamento   ,
                                     CDSFiltroID_SECCION.AsString,                //ASeccion        ,
                                     CDSFiltroID_PROYECTO.AsString,               //AProyecto       ,
                                     CDSFiltroINTRACOMUN.AsString);               //AIntracomun     :string);
            end;
            // Mostrar la ventana antes de imprimir el fichero
            WIVA300.ShowModal;
         finally
            FreeAndNil(WIVA300);
         end;
      end;
      INF_FACTURAS_EMITIDAS: begin
         if CDSFiltroInforme.AsString = 'S' then begin  {ReportFacturasEmitidasSubcta(ACallBack);}
            FModel.ReportLibroIVA(CallBackReportFacturasEmitidasSubcta,
                                  CDSFiltroFECHA_DESDE.AsDateTime,
                                  CDSFiltroFECHA_HASTA.AsDateTime,
                                  CDSFiltroBASE_DESDE.AsFloat,
                                  CDSFiltroBASE_HASTA.AsFloat,
                                  CDSFiltroIMP_IVA_DESDE.AsFloat,
                                  CDSFiltroIMP_IVA_HASTA.AsFloat,
                                  CDSFiltroPRC_IVA_DESDE.AsFloat,
                                  CDSFiltroPRC_IVA_HASTA.AsFloat,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CheckBoxFormatoOficial.Checked,
                                  CDSFiltroORDEN.AsString,
                                  'E',
                                  CDSFiltroSUBCUENTA.AsString,
                                  CDSFiltroINFORME.AsString,
                                  CDSFiltroCUENTA.AsString,
                                  CDSFiltroID_DELEGACION.AsString,
                                  CDSFiltroID_DEPARTAMENTO.AsString,
                                  CDSFiltroID_SECCION.AsString,
                                  CDSFiltroID_PROYECTO.AsString,
                                  CDSFiltroINTRACOMUN.AsString);
         end else
         if CDSFiltroInforme.AsString = 'I' then begin {ReportFacturasTipoIVA(ACallBack)}
            FModel.ReportLibroIVA(CallBackReportFacturasEmitidasIVA,
                                  CDSFiltroFECHA_DESDE.AsDateTime,
                                  CDSFiltroFECHA_HASTA.AsDateTime,
                                  CDSFiltroBASE_DESDE.AsFloat,
                                  CDSFiltroBASE_HASTA.AsFloat,
                                  CDSFiltroIMP_IVA_DESDE.AsFloat,
                                  CDSFiltroIMP_IVA_HASTA.AsFloat,
                                  CDSFiltroPRC_IVA_DESDE.AsFloat,
                                  CDSFiltroPRC_IVA_HASTA.AsFloat,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CheckBoxFormatoOficial.Checked,
                                  CDSFiltroORDEN.AsString,
                                  'E',
                                  CDSFiltroSUBCUENTA.AsString,
                                  CDSFiltroINFORME.AsString,
                                  CDSFiltroCUENTA.AsString,
                                  CDSFiltroID_DELEGACION.AsString,
                                  CDSFiltroID_DEPARTAMENTO.AsString,
                                  CDSFiltroID_SECCION.AsString,
                                  CDSFiltroID_PROYECTO.AsString,
                                  CDSFiltroINTRACOMUN.AsString);
         end
         else begin {ReportFacturasEmitidas(ACallBack);}
            FModel.ReportLibroIVA(CallBackReportFacturasEmitidas,
                                  CDSFiltroFECHA_DESDE.AsDateTime,
                                  CDSFiltroFECHA_HASTA.AsDateTime,
                                  CDSFiltroBASE_DESDE.AsFloat,
                                  CDSFiltroBASE_HASTA.AsFloat,
                                  CDSFiltroIMP_IVA_DESDE.AsFloat,
                                  CDSFiltroIMP_IVA_HASTA.AsFloat,
                                  CDSFiltroPRC_IVA_DESDE.AsFloat,
                                  CDSFiltroPRC_IVA_HASTA.AsFloat,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CheckBoxFormatoOficial.Checked,
                                  CDSFiltroORDEN.AsString,
                                  'E',
                                  CDSFiltroSUBCUENTA.AsString,
                                  CDSFiltroINFORME.AsString,
                                  CDSFiltroCUENTA.AsString,
                                  CDSFiltroID_DELEGACION.AsString,
                                  CDSFiltroID_DEPARTAMENTO.AsString,
                                  CDSFiltroID_SECCION.AsString,
                                  CDSFiltroID_PROYECTO.AsString,
                                  CDSFiltroINTRACOMUN.AsString);
         end;
      end;
      INF_FACTURAS_RECIBIDAS: begin
         if CDSFiltroInforme.AsString = 'S' then begin  {ReportFacturasEmitidasSubcta(ACallBack);}
            FModel.ReportLibroIVA(CallBackReportFacturasEmitidasSubcta,
                                  CDSFiltroFECHA_DESDE.AsDateTime,
                                  CDSFiltroFECHA_HASTA.AsDateTime,
                                  CDSFiltroBASE_DESDE.AsFloat,
                                  CDSFiltroBASE_HASTA.AsFloat,
                                  CDSFiltroIMP_IVA_DESDE.AsFloat,
                                  CDSFiltroIMP_IVA_HASTA.AsFloat,
                                  CDSFiltroPRC_IVA_DESDE.AsFloat,
                                  CDSFiltroPRC_IVA_HASTA.AsFloat,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CheckBoxFormatoOficial.Checked,
                                  CDSFiltroORDEN.AsString,
                                  'R',
                                  CDSFiltroSUBCUENTA.AsString,
                                  CDSFiltroINFORME.AsString,
                                  CDSFiltroCUENTA.AsString,
                                  CDSFiltroID_DELEGACION.AsString,
                                  CDSFiltroID_DEPARTAMENTO.AsString,
                                  CDSFiltroID_SECCION.AsString,
                                  CDSFiltroID_PROYECTO.AsString,
                                  CDSFiltroINTRACOMUN.AsString);
         end else
         if CDSFiltroInforme.AsString = 'I' then begin {ReportFacturasTipoIVA(ACallBack)}
            FModel.ReportLibroIVA(CallBackReportFacturasEmitidasIVA,
                                  CDSFiltroFECHA_DESDE.AsDateTime,
                                  CDSFiltroFECHA_HASTA.AsDateTime,
                                  CDSFiltroBASE_DESDE.AsFloat,
                                  CDSFiltroBASE_HASTA.AsFloat,
                                  CDSFiltroIMP_IVA_DESDE.AsFloat,
                                  CDSFiltroIMP_IVA_HASTA.AsFloat,
                                  CDSFiltroPRC_IVA_DESDE.AsFloat,
                                  CDSFiltroPRC_IVA_HASTA.AsFloat,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CheckBoxFormatoOficial.Checked,
                                  CDSFiltroORDEN.AsString,
                                  'R',
                                  CDSFiltroSUBCUENTA.AsString,
                                  CDSFiltroINFORME.AsString,
                                  CDSFiltroCUENTA.AsString,
                                  CDSFiltroID_DELEGACION.AsString,
                                  CDSFiltroID_DEPARTAMENTO.AsString,
                                  CDSFiltroID_SECCION.AsString,
                                  CDSFiltroID_PROYECTO.AsString,
                                  CDSFiltroINTRACOMUN.AsString);
         end
         else begin {ReportFacturasEmitidas(ACallBack);}
            FModel.ReportLibroIVA(CallBackReportFacturasEmitidas,
                                  CDSFiltroFECHA_DESDE.AsDateTime,
                                  CDSFiltroFECHA_HASTA.AsDateTime,
                                  CDSFiltroBASE_DESDE.AsFloat,
                                  CDSFiltroBASE_HASTA.AsFloat,
                                  CDSFiltroIMP_IVA_DESDE.AsFloat,
                                  CDSFiltroIMP_IVA_HASTA.AsFloat,
                                  CDSFiltroPRC_IVA_DESDE.AsFloat,
                                  CDSFiltroPRC_IVA_HASTA.AsFloat,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CheckBoxFormatoOficial.Checked,
                                  CDSFiltroORDEN.AsString,
                                  'R',
                                  CDSFiltroSUBCUENTA.AsString,
                                  CDSFiltroINFORME.AsString,
                                  CDSFiltroCUENTA.AsString,
                                  CDSFiltroID_DELEGACION.AsString,
                                  CDSFiltroID_DEPARTAMENTO.AsString,
                                  CDSFiltroID_SECCION.AsString,
                                  CDSFiltroID_PROYECTO.AsString,
                                  CDSFiltroINTRACOMUN.AsString);
         end;
      end;
      INF_FACTURAS_BIENES: begin
         if CDSFiltroInforme.AsString = 'S' then begin  {ReportFacturasEmitidasSubcta(ACallBack);}
            FModel.ReportLibroIVA(CallBackReportFacturasEmitidasSubcta,
                                  CDSFiltroFECHA_DESDE.AsDateTime,
                                  CDSFiltroFECHA_HASTA.AsDateTime,
                                  CDSFiltroBASE_DESDE.AsFloat,
                                  CDSFiltroBASE_HASTA.AsFloat,
                                  CDSFiltroIMP_IVA_DESDE.AsFloat,
                                  CDSFiltroIMP_IVA_HASTA.AsFloat,
                                  CDSFiltroPRC_IVA_DESDE.AsFloat,
                                  CDSFiltroPRC_IVA_HASTA.AsFloat,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CheckBoxFormatoOficial.Checked,
                                  CDSFiltroORDEN.AsString,
                                  'B',
                                  CDSFiltroSUBCUENTA.AsString,
                                  CDSFiltroINFORME.AsString,
                                  CDSFiltroCUENTA.AsString,
                                  CDSFiltroID_DELEGACION.AsString,
                                  CDSFiltroID_DEPARTAMENTO.AsString,
                                  CDSFiltroID_SECCION.AsString,
                                  CDSFiltroID_PROYECTO.AsString,
                                  CDSFiltroINTRACOMUN.AsString);
         end else
         if CDSFiltroInforme.AsString = 'I' then begin {ReportFacturasTipoIVA(ACallBack)}
            FModel.ReportLibroIVA(CallBackReportFacturasEmitidasIVA,
                                  CDSFiltroFECHA_DESDE.AsDateTime,
                                  CDSFiltroFECHA_HASTA.AsDateTime,
                                  CDSFiltroBASE_DESDE.AsFloat,
                                  CDSFiltroBASE_HASTA.AsFloat,
                                  CDSFiltroIMP_IVA_DESDE.AsFloat,
                                  CDSFiltroIMP_IVA_HASTA.AsFloat,
                                  CDSFiltroPRC_IVA_DESDE.AsFloat,
                                  CDSFiltroPRC_IVA_HASTA.AsFloat,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CheckBoxFormatoOficial.Checked,
                                  CDSFiltroORDEN.AsString,
                                  'B',
                                  CDSFiltroSUBCUENTA.AsString,
                                  CDSFiltroINFORME.AsString,
                                  CDSFiltroCUENTA.AsString,
                                  CDSFiltroID_DELEGACION.AsString,
                                  CDSFiltroID_DEPARTAMENTO.AsString,
                                  CDSFiltroID_SECCION.AsString,
                                  CDSFiltroID_PROYECTO.AsString,
                                  CDSFiltroINTRACOMUN.AsString);
         end
         else begin {ReportFacturasEmitidas(ACallBack);}
            FModel.ReportLibroIVA(CallBackReportFacturasEmitidas,
                                  CDSFiltroFECHA_DESDE.AsDateTime,
                                  CDSFiltroFECHA_HASTA.AsDateTime,
                                  CDSFiltroBASE_DESDE.AsFloat,
                                  CDSFiltroBASE_HASTA.AsFloat,
                                  CDSFiltroIMP_IVA_DESDE.AsFloat,
                                  CDSFiltroIMP_IVA_HASTA.AsFloat,
                                  CDSFiltroPRC_IVA_DESDE.AsFloat,
                                  CDSFiltroPRC_IVA_HASTA.AsFloat,
                                  CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                  CheckBoxFormatoOficial.Checked,
                                  CDSFiltroORDEN.AsString,
                                  'B',
                                  CDSFiltroSUBCUENTA.AsString,
                                  CDSFiltroINFORME.AsString,
                                  CDSFiltroCUENTA.AsString,
                                  CDSFiltroID_DELEGACION.AsString,
                                  CDSFiltroID_DEPARTAMENTO.AsString,
                                  CDSFiltroID_SECCION.AsString,
                                  CDSFiltroID_PROYECTO.AsString,
                                  CDSFiltroINTRACOMUN.AsString);
         end;
      end;
   end;
end;

end.
