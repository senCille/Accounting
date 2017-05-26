unit USubCuentas;

interface

uses Buttons, Classes, ComCtrls, ComObj, Controls, Db, DBClient, DBCtrls, Dialogs,
     ExtCtrls, Forms, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, Mask, Menus, Messages,
     StdCtrls, SysUtils, Windows, FormHandler, DBGrids, frxClass, frxDBSet, frxExportPDF,
     USubcuentasModel, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart;

type
  TWSubCuentas = class(TForm)
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    CDSFiltro: TClientDataSet;
    SFiltro: TDataSource;
    SFichero: TDataSource;
    QFicheroSaldo: TFloatField;
    QFicheroACUDB01: TFloatField;
    QFicheroACUDB02: TFloatField;
    QFicheroACUDB03: TFloatField;
    QFicheroACUDB04: TFloatField;
    QFicheroACUDB05: TFloatField;
    QFicheroACUDB06: TFloatField;
    QFicheroACUDB07: TFloatField;
    QFicheroACUDB08: TFloatField;
    QFicheroACUDB09: TFloatField;
    QFicheroACUDB10: TFloatField;
    QFicheroACUDB11: TFloatField;
    QFicheroACUDB12: TFloatField;
    QFicheroACUHB01: TFloatField;
    QFicheroACUHB02: TFloatField;
    QFicheroACUHB03: TFloatField;
    QFicheroACUHB04: TFloatField;
    QFicheroACUHB05: TFloatField;
    QFicheroACUHB06: TFloatField;
    QFicheroACUHB07: TFloatField;
    QFicheroACUHB08: TFloatField;
    QFicheroACUHB09: TFloatField;
    QFicheroACUHB10: TFloatField;
    QFicheroACUHB11: TFloatField;
    QFicheroACUHB12: TFloatField;
    QFicheroANTDB:  TFloatField;
    QFicheroANTDB01: TFloatField;
    QFicheroANTDB02: TFloatField;
    QFicheroANTDB03: TFloatField;
    QFicheroANTDB04: TFloatField;
    QFicheroANTDB05: TFloatField;
    QFicheroANTDB06: TFloatField;
    QFicheroANTDB07: TFloatField;
    QFicheroANTDB08: TFloatField;
    QFicheroANTDB09: TFloatField;
    QFicheroANTDB10: TFloatField;
    QFicheroANTDB11: TFloatField;
    QFicheroANTDB12: TFloatField;
    QFicheroANTHB:  TFloatField;
    QFicheroANTHB01: TFloatField;
    QFicheroANTHB02: TFloatField;
    QFicheroANTHB03: TFloatField;
    QFicheroANTHB04: TFloatField;
    QFicheroANTHB05: TFloatField;
    QFicheroANTHB06: TFloatField;
    QFicheroANTHB07: TFloatField;
    QFicheroANTHB08: TFloatField;
    QFicheroANTHB09: TFloatField;
    QFicheroANTHB10: TFloatField;
    QFicheroANTHB11: TFloatField;
    QFicheroANTHB12: TFloatField;
    QFicheroARRENDADOR: TIBStringField;
    QFicheroCONTRAPARTIDA: TIBStringField;
    QFicheroDESCRIPCION: TIBStringField;
    QFicheroDIRECCION: TIBStringField;
    QFicheroFAX: TIBStringField;
    QFicheroIVA: TFloatField;
    QFicheroPROFESIONAL: TIBStringField;
    QFicheroRECARGO: TFloatField;
    QFicheroSUBCUENTA: TIBStringField;
    QFicheroSUMADB: TFloatField;
    QFicheroSUMAHB: TFloatField;
    QFicheroTELEFONO: TIBStringField;
    QFicheroTIPOIVA: TIBStringField;
    QFicheroDIRECCION1: TIBStringField;
    QFicheroNIF: TIBStringField;
    QFicheroCODPOSTAL: TIBStringField;
    QFicheroPOBLACION: TIBStringField;
    QFicheroPROVINCIA: TIBStringField;
    QFicheroPAIS: TIBStringField;
    QFicheroNUMERO: TIBStringField;
    QAmortiza: TIBDataSet;
    SAmortiza: TDataSource;
    QAmortizaSUBCUENTA: TIBStringField;
    QAmortizaCENTROCOSTE: TIBStringField;
    QAmortizaFCOMPRA: TDateTimeField;
    QAmortizaFINICIO: TDateTimeField;
    QAmortizaFULTAMOR: TDateTimeField;
    QAmortizaFFINAMOR: TDateTimeField;
    QAmortizaFBAJA: TDateTimeField;
    QAmortizaSUBGASTO: TIBStringField;
    QAmortizaSUBAMOR: TIBStringField;
    QAmortizaPERIODO: TIBStringField;
    QAmortizaANUAL: TFloatField;
    QAmortizaPROVEEDOR: TIBStringField;
    QAmortizaFACTURA: TIBStringField;
    QAmortizaVCOMPRA: TFloatField;
    QAmortizaVRESIDUAL: TFloatField;
    QAmortizaVAMOR: TFloatField;
    QAmortizaVEJPINICIO: TFloatField;
    QAmortizaVEJAINICIO: TFloatField;
    QAmortizaVEJPAMOR: TFloatField;
    QAmortizaVEJAAMOR: TFloatField;
    QAmortizaCLASE: TFloatField;
    QFicheroFORMAPAGO: TIBStringField;
    QFicheroDIAPAGO1: TSmallintField;
    QFicheroDIAPAGO2: TSmallintField;
    QFicheroPRES01: TFloatField;
    QFicheroPRES02: TFloatField;
    QFicheroPRES03: TFloatField;
    QFicheroPRES04: TFloatField;
    QFicheroPRES05: TFloatField;
    QFicheroPRES06: TFloatField;
    QFicheroPRES07: TFloatField;
    QFicheroPRES08: TFloatField;
    QFicheroPRES09: TFloatField;
    QFicheroPRES10: TFloatField;
    QFicheroPRES11: TFloatField;
    QFicheroPRES12: TFloatField;
    QFicheroPRESTOT: TFloatField;
    QFicheroOBSOLETO: TIBStringField;
    PopupMenuListados: TPopupMenu;
    DetalledeSubcuentas1: TMenuItem;
    Subcuentas1:    TMenuItem;
    QFicheroDESCFORMAPAGO: TStringField;
    QDiario: TIBDataSet;
    SDiario: TDataSource;
    QDiarioID_DIARIO: TIntegerField;
    QDiarioAPUNTE:  TSmallintField;
    QDiarioASIENTO: TIntegerField;
    QDiarioBASEIMPONIBLE: TFloatField;
    QDiarioCOMENTARIO: TIBStringField;
    QDiarioCONTRAPARTIDA: TIBStringField;
    QDiarioDEBEHABER: TIBStringField;
    QDiarioFECHA: TDateTimeField;
    QDiarioIMPORTE: TFloatField;
    QDiarioIVA: TFloatField;
    QDiarioNIF: TIBStringField;
    QDiarioMONEDA: TIBStringField;
    QDiarioNUMEROFACTURA: TIBStringField;
    QDiarioRECARGO: TFloatField;
    QDiarioSUBCUENTA: TIBStringField;
    QDiarioPUNTEO: TIBStringField;
    QDiarioASIENTOPUNTEO: TIntegerField;
    QDiarioPUNTEOIVA: TIBStringField;
    QDiarioID_CONCEPTOS: TIBStringField;
    QDiarioTIPODIARIO: TIBStringField;
    QDiarioCUENTA_ANALITICA: TIBStringField;
    QDiarioCUOTAIVA: TFloatField;
    QDiarioCUOTARECARGO: TFloatField;
    QDiarioDescApunte: TStringField;
    CDSFiltroCartas: TClientDataSet;
    SFiltroCartas: TDataSource;
    QProvincias: TIBDataSet;
    QProvinciasNOMBRE: TIBStringField;
    QProvinciasPROVINCIA: TIBStringField;
    QProvinciasCODIGO: TIBStringField;
    QSubcuentaPago: TIBDataSet;
    QSubcuentaPagoSUBCUENTA: TIBStringField;
    QSubcuentaPagoDESCRIPCION: TIBStringField;
    QFicheroDIAPAGO3: TSmallintField;
    QFicheroABREVIATURA: TIBStringField;
    QDiarioABREVIATURA: TStringField;
    QFicheroINTRACOMUNITARIO: TIBStringField;
    QMovimientos: TIBDataSet;
    QMovimientosASIENTO: TIntegerField;
    QMovimientosFECHA: TDateTimeField;
    QMovimientosID_CONCEPTOS: TIBStringField;
    QMovimientosDescComentario: TStringField;
    QMovimientosDEBEHABER: TIBStringField;
    QMovimientosIMPORTE: TFloatField;
    QMovimientosCONTRAPARTIDA: TIBStringField;
    QMovimientosCOMENTARIO: TIBStringField;
    QMovimientosDESCCONCEPTO: TStringField;
    SMovimientos:   TDataSource;
    QMovimientosTIPOASIENTO: TIntegerField;
    QMovimientosASIENTONOMINA: TIntegerField;
    QMovimientosNUMEROFACTURA: TIBStringField;
    QDiarioTIPOASIENTO: TIntegerField;
    QDiarioASIENTONOMINA: TIntegerField;
    QDiarioEJERCICIO: TIntegerField;
    QDiarioSERIE:   TIBStringField;
    QMovimientosEJERCICIO: TIntegerField;
    QMovimientosSERIE: TIBStringField;
    QFicheroSUBCTARET: TIBStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Shape1: TShape;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel2: TPanel;
    BtnRefresh: TSpeedButton;
    BtnAppend: TButton;
    BtnDelete: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    BtnReports: TButton;
    NavAnimate: TAnimate;
    BtnModify: TButton;
    BtnRepGraphics: TButton;
    BtnDuple: TButton;
    PageControl: TPageControl;
    TabSubAccounts: TTabSheet;
    FiltroBuscar: TGroupBox;
    Label1: TLabel;
    Label12: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label73: TLabel;
    EditBDescripcion: TDBEdit;
    EditBSubCuenta: TDBEdit;
    EditBTitulo: TDBEdit;
    EditBGrupo: TDBEdit;
    EditBId_Fiscal: TDBEdit;
    TabData: TTabSheet;
    GroupBox1: TGroupBox;
    Label30: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label74: TLabel;
    EditDESCRIPCION: TDBEdit;
    EditSUBCUENTA: TDBEdit;
    ComboBoxCONTRAPARTIDA: TDBLookupComboBox;
    ComboBoxDS_CONTRAPARTIDA: TDBLookupComboBox;
    CheckBoxOBSOLETO: TDBCheckBox;
    ComboBoxCD_SUBCTARETENCION: TDBLookupComboBox;
    ComboBoxDS_SUBCTARETENCION: TDBLookupComboBox;
    CheckBoxSubctaRet: TCheckBox;
    GroupBox14: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label36: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label5: TLabel;
    EditID_FISCAL: TDBEdit;
    ComboBoxPROVINCIA: TDBLookupComboBox;
    EditDIRECCION: TDBEdit;
    EditCODPOSTAL: TDBEdit;
    EditTELEFONO: TDBEdit;
    EditTELEFONO2: TDBEdit;
    CheckBoxPROFESIONAL: TDBCheckBox;
    CheckBoxARRENDADOR: TDBCheckBox;
    EditDIRECCION1: TDBEdit;
    EditPOBLACION: TDBEdit;
    ComboBoxPAIS: TDBLookupComboBox;
    EditNUMERO: TDBEdit;
    CheckBoxINTRA_UE: TDBCheckBox;
    GroupBoxVATType: TGroupBox;
    Label46: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    ComboBoxVATType: TDBLookupComboBox;
    EditIVA: TDBEdit;
    EditRE: TDBEdit;
    GroupBox25: TGroupBox;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label71: TLabel;
    EditDIAPAGO1: TDBEdit;
    ComboBoxCD_FORMAPAGO: TDBLookupComboBox;
    ComboBoxFORMAPAGO: TDBLookupComboBox;
    EditDIAPAGO2: TDBEdit;
    EditDIAPAGO3: TDBEdit;
    TabAcumulados: TTabSheet;
    PageControlAcumulados: TPageControl;
    TabCurrentYear: TTabSheet;
    TabPreviousYear: TTabSheet;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    Edit01: TDBEdit;
    Edit02: TDBEdit;
    Edit03: TDBEdit;
    Edit04: TDBEdit;
    Edit05: TDBEdit;
    Edit06: TDBEdit;
    GroupBox4: TGroupBox;
    Edit07: TDBEdit;
    Edit08: TDBEdit;
    Edit09: TDBEdit;
    Edit10: TDBEdit;
    Edit11: TDBEdit;
    Edit12: TDBEdit;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    GroupBox6: TGroupBox;
    Edit13: TDBEdit;
    Edit14: TDBEdit;
    Edit15: TDBEdit;
    Edit16: TDBEdit;
    Edit17: TDBEdit;
    Edit18: TDBEdit;
    GroupBox7: TGroupBox;
    Edit19: TDBEdit;
    Edit20: TDBEdit;
    Edit21: TDBEdit;
    Edit22: TDBEdit;
    Edit23: TDBEdit;
    Edit24: TDBEdit;
    Label19: TLabel;
    Edit25: TDBEdit;
    Label20: TLabel;
    Edit26: TDBEdit;
    GroupBox8: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox9: TGroupBox;
    Edit27: TDBEdit;
    Edit28: TDBEdit;
    Edit29: TDBEdit;
    Edit30: TDBEdit;
    Edit31: TDBEdit;
    Edit32: TDBEdit;
    GroupBox10: TGroupBox;
    Edit33: TDBEdit;
    Edit34: TDBEdit;
    Edit35: TDBEdit;
    Edit36: TDBEdit;
    Edit37: TDBEdit;
    Edit38: TDBEdit;
    GroupBox11: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    GroupBox12: TGroupBox;
    Edit39: TDBEdit;
    Edit40: TDBEdit;
    Edit41: TDBEdit;
    Edit42: TDBEdit;
    Edit43: TDBEdit;
    Edit44: TDBEdit;
    GroupBox13: TGroupBox;
    Edit45: TDBEdit;
    Edit46: TDBEdit;
    Edit47: TDBEdit;
    Edit48: TDBEdit;
    Edit49: TDBEdit;
    Edit50: TDBEdit;
    Label34: TLabel;
    Edit51: TDBEdit;
    Label35: TLabel;
    Edit52: TDBEdit;
    TabGraphics: TTabSheet;
    PageControlGraphics: TPageControl;
    TabGraphicCurrentYear: TTabSheet;
    TabGraphicPreviousYear: TTabSheet;
    TabGraphicComparativ: TTabSheet;
    TabLetters: TTabSheet;
    Panel5: TPanel;
    LabelCartas: TLabel;
    LBPago: TLabel;
    LBCheque: TLabel;
    LBCtoD: TLabel;
    LBCtoH: TLabel;
    LbFechaAsiento: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    BtnFilterLetters: TSpeedButton;
    EditNUMCHEQUE: TDBEdit;
    ComboBoxDS_SCTABANCO: TDBLookupComboBox;
    ComboBoxDS_CONCEPTO_DEBE: TDBLookupComboBox;
    ComboBoxDS_CONCEPTO_HABER: TDBLookupComboBox;
    ComboBoxCD_CONCEPTO_DEBE: TDBLookupComboBox;
    ComboBoxCD_CONCEPTO_HABER: TDBLookupComboBox;
    ComboBoxCD_SCTABANCO: TDBLookupComboBox;
    GroupBox24: TGroupBox;
    EditTotalImporte: TEdit;
    BtnLetter: TButton;
    BtnGenera: TButton;
    EditFechaHasta: TDBEdit;
    EditFechaDesde: TDBEdit;
    EditFechaAsiento: TDBEdit;
    TabAmortizations: TTabSheet;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    Label39: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    EditFCOMPRA: TDBEdit;
    EditFINICIO: TDBEdit;
    EditFULTAMOR: TDBEdit;
    EditFBAJA: TDBEdit;
    GroupBox17: TGroupBox;
    Label49: TLabel;
    RadioGroupPERIODO: TDBRadioGroup;
    EditANUAL: TDBEdit;
    GroupBox18: TGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    Label54: TLabel;
    ComboBoxCD_CENTROCOSTE: TDBLookupComboBox;
    ComboBoxDS_CENTROCOSTE: TDBLookupComboBox;
    ComboBoxCD_SUBGASTO: TDBLookupComboBox;
    ComboBoxDS_SUBGASTO: TDBLookupComboBox;
    ComboBoxCD_SUBAMOR: TDBLookupComboBox;
    ComboBoxDS_SUBAMOR: TDBLookupComboBox;
    GroupBox19: TGroupBox;
    Label55: TLabel;
    Label56: TLabel;
    ComboBoxCD_PROVEEDOR: TDBLookupComboBox;
    ComboBoxDS_PROVEEDOR: TDBLookupComboBox;
    EditFACTURA: TDBEdit;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    EditVCOMPRA: TDBEdit;
    EditVRESIDUAL: TDBEdit;
    EditVAMOR: TDBEdit;
    GroupBox22: TGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    EditVEJPINICIO: TDBEdit;
    EditVEJPAMOR: TDBEdit;
    GroupBox23: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    EditVEJAINICIO: TDBEdit;
    EditVEJAAMOR: TDBEdit;
    DBNavigator: TDBNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SubGridMovements: TDBGrid;
    DataGrid: TDBGrid;
    GridPago: TDBGrid;
    PDFExport: TfrxPDFExport;
    ReportDBLInk: TfrxDBDataset;
    ReportDetails: TfrxReport;
    ReportSubCuentas: TfrxReport;
    ChartCurrentExercise: TChart;
    QVAT: TIBDataSet;
    QVATTIPO: TIBStringField;
    QVATDESCRIPCION: TIBStringField;
    SVAT: TDataSource;
    CDSFiltroBSUBCUENTA: TStringField;
    CDSFiltroBNIF: TStringField;
    CDSFiltroBDESCRIPCION: TStringField;
    CDSFiltroBTITULO: TStringField;
    CDSFiltroBGRUPO: TStringField;
    QDiarioDescConcepto: TWideStringField;
    procedure fcIBCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAppendClick(Sender: TObject);
    procedure QFicheroBeforeOpen(DataSet: TDataSet);
    procedure QFicheroNewRecord(DataSet: TDataSet);
    procedure QFicheroAfterEdit(DataSet: TDataSet);
    procedure QFicheroCalcFields(DataSet: TDataSet);
    procedure QFicheroAfterScroll(DataSet: TDataSet);
    procedure fcIBMinimizarClick(Sender: TObject);
    procedure EditBSubCuentaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnReportsClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure QAmortizaNewRecord(DataSet: TDataSet);
    procedure Subcuentas1Click(Sender: TObject);
    procedure Subcuentas1AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect; State: TOwnerDrawState);
    procedure DetalledeSubcuentas1Click(Sender: TObject);
    procedure BtnLetterClick(Sender: TObject);
    procedure BtnGeneraClick(Sender: TObject);
    procedure BtnFilterLettersClick(Sender: TObject);
    procedure QDiarioCalcFields(DataSet: TDataSet);
    procedure GroupBoxVATTypeEnter(Sender: TObject);
    procedure BtnRepGraphicsClick(Sender: TObject);
    procedure QMovimientosCalcFields(DataSet: TDataSet);
    procedure CalculoImportesAmortizaciones(Sender: TObject);
    procedure BtnDupleClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure SubGridMovementsDblClick(Sender: TObject);
    procedure DataGridDblClick(Sender: TObject);
    procedure BtnModifyClick(Sender: TObject);
    procedure DataGridTitleClick(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
  private
    procedure CheckComboBoxLIVABehavior;
  private
    FormManager  :TccFormHandler;
    FModel       :TSubcuentasModel;
    lAdd         :Boolean;
    CampoOrden   :string;
    FEsProveedor :Boolean;
    procedure ActivarTransacciones;
    procedure CrearFiltroCartas;
    procedure InicializarFiltro;
    procedure PrepararQuery;
    procedure PrepararQueryDiario;
    procedure PrepararRefreshDiario;
    procedure PrepararQueryMovimientos;
    procedure RefrescarControles;
    procedure RellenaChart;
  public
  end;

var WSubCuentas: TWSubCuentas;

implementation

uses System.UITypes, System.Math,
     DM, DMConta, DMControl, Tools, Globales, UCargaAsiento, UCargaRapidaNominas;

{$R *.DFM}

procedure TWSubCuentas.FormCreate(Sender: TObject);
begin
   FModel := TSubcuentasModel.Create(DMRef.BDContab);
   Caption := '';

   Screen.Cursor  := crHourGlass;
   try
      ActivarTransacciones;
      InicializarFiltro;

      CrearFiltroCartas;

      CampoOrden := 'SUBCUENTA';
      PrepararQuery;
      PrepararQueryMovimientos;

      {-----------------------------------------------------------------------------------------}
      FormManager := TccFormHandler.Create(Self);
      FormManager.AddComp(DataGrid.Name                  , fmBrowse);
      FormManager.AddComp(DBNavigator.Name               , fmBrowse);
      FormManager.AddComp(SubGridMovements.Name          , fmBrowse);

      FormManager.AddComp(BtnRefresh.Name                , fmBrowse);
      FormManager.AddComp(BtnAppend.Name                 , fmBrowse);
      FormManager.AddComp(BtnModify.Name                 , fmBrowse);
      FormManager.AddComp(BtnDelete.Name                 , fmBrowse);
      FormManager.AddComp(BtnDuple.Name                  , fmBrowse);
      FormManager.AddComp(BtnRepGraphics.Name            , fmBrowse);
      FormManager.AddComp(BtnReports.Name                , fmBrowse);
      FormManager.AddComp(BtnAccept.Name                 , fmEdit  );
      FormManager.AddComp(BtnCancel.Name                 , fmEdit  );
      FormManager.AddComp(BtnGenera.Name                 , fmEdit  );
      FormManager.AddComp(BtnLetter.Name                 , fmEdit  );
      FormManager.AddComp(BtnFilterLetters.Name          , fmEdit  );
      FormManager.AddComp(EditSUBCUENTA.Name             , fmEdit  );
      FormManager.AddComp(CheckBoxSubctaRet.Name         , fmEdit  );
      FormManager.AddComp(CheckBoxOBSOLETO.Name          , fmEdit  );
      FormManager.AddComp(EditDESCRIPCION.Name           , fmEdit  );
      FormManager.AddComp(ComboBoxCONTRAPARTIDA.Name     , fmEdit  );
      FormManager.AddComp(ComboBoxDS_CONTRAPARTIDA.Name  , fmEdit  );
      FormManager.AddComp(ComboBoxCD_SUBCTARETENCION.Name, fmEdit  );
      FormManager.AddComp(ComboBoxDS_SUBCTARETENCION.Name, fmEdit  );
      FormManager.AddComp(EditID_FISCAL.Name             , fmEdit  );
      FormManager.AddComp(CheckBoxPROFESIONAL.Name       , fmEdit  );
      FormManager.AddComp(CheckBoxARRENDADOR.Name        , fmEdit  );
      FormManager.AddComp(CheckBoxINTRA_UE.Name          , fmEdit  );
      FormManager.AddComp(EditDIRECCION.Name             , fmEdit  );
      FormManager.AddComp(EditNUMERO.Name                , fmEdit  );
      FormManager.AddComp(EditDIRECCION1.Name            , fmEdit  );
      FormManager.AddComp(EditCODPOSTAL.Name             , fmEdit  );
      FormManager.AddComp(EditPOBLACION.Name             , fmEdit  );
      FormManager.AddComp(ComboBoxPROVINCIA.Name         , fmEdit  );
      FormManager.AddComp(ComboBoxPAIS.Name              , fmEdit  );
      FormManager.AddComp(EditTELEFONO.Name              , fmEdit  );
      FormManager.AddComp(EditTELEFONO2.Name             , fmEdit  );

      FormManager.AddComp(EditBSubCuenta.Name            , fmBrowse);
      FormManager.AddComp(EditBDescripcion.Name          , fmBrowse);
      FormManager.AddComp(EditBId_Fiscal.Name            , fmBrowse);
      FormManager.AddComp(EditBTitulo.Name               , fmBrowse);
      FormManager.AddComp(EditBGrupo.Name                , fmBrowse);
      FormManager.AddComp(ComboBoxVATType.Name           , fmEdit  );
      FormManager.AddComp(EditIVA.Name                   , fmEdit  );
      FormManager.AddComp(EditRE.Name                    , fmEdit  );
      FormManager.AddComp(ComboBoxCD_FORMAPAGO.Name      , fmEdit  );
      FormManager.AddComp(ComboBoxFORMAPAGO.Name         , fmEdit  );
      FormManager.AddComp(EditDIAPAGO1.Name              , fmEdit  );
      FormManager.AddComp(EditDIAPAGO2.Name              , fmEdit  );
      FormManager.AddComp(EditDIAPAGO3.Name              , fmEdit  );

      FormManager.AddComp(GridPago.Name                  , fmEdit  );
      FormManager.AddComp(EditFechaDesde.Name            , fmEdit  );
      FormManager.AddComp(EditFechaHasta.Name            , fmEdit  );
      FormManager.AddComp(EditFechaAsiento.Name          , fmEdit  );
      FormManager.AddComp(ComboBoxCD_SCTABANCO.Name      , fmEdit  );
      FormManager.AddComp(ComboBoxDS_SCTABANCO.Name      , fmEdit  );
      FormManager.AddComp(EditTotalImporte.Name          , fmEdit  );
      FormManager.AddComp(EditNUMCHEQUE.Name             , fmEdit  );
      FormManager.AddComp(ComboBoxCD_CONCEPTO_DEBE.Name  , fmEdit  );
      FormManager.AddComp(ComboBoxDS_CONCEPTO_DEBE.Name  , fmEdit  );
      FormManager.AddComp(ComboBoxCD_CONCEPTO_HABER.Name , fmEdit  );
      FormManager.AddComp(ComboBoxDS_CONCEPTO_HABER.Name , fmEdit  );
      FormManager.AddComp(EditFCOMPRA.Name               , fmEdit  );
      FormManager.AddComp(EditFINICIO.Name               , fmEdit  );
      FormManager.AddComp(EditFULTAMOR.Name              , fmEdit  );
      FormManager.AddComp(EditFBAJA.Name                 , fmEdit  );
      FormManager.AddComp(RadioGroupPERIODO.Name         , fmEdit  );
      FormManager.AddComp(EditANUAL.Name                 , fmEdit  );
      FormManager.AddComp(ComboBoxCD_PROVEEDOR.Name      , fmEdit  );
      FormManager.AddComp(ComboBoxDS_PROVEEDOR.Name      , fmEdit  );
      FormManager.AddComp(EditFACTURA.Name               , fmEdit  );
      FormManager.AddComp(ComboBoxCD_SUBGASTO.Name       , fmEdit  );
      FormManager.AddComp(ComboBoxDS_SUBGASTO.Name       , fmEdit  );
      FormManager.AddComp(ComboBoxCD_SUBAMOR.Name        , fmEdit  );
      FormManager.AddComp(ComboBoxCD_SUBAMOR.Name        , fmEdit  );
      FormManager.AddComp(ComboBoxCD_CENTROCOSTE.Name    , fmEdit  );
      FormManager.AddComp(ComboBoxCD_CENTROCOSTE.Name    , fmEdit  );
      FormManager.AddComp(EditVCOMPRA.Name               , fmEdit  );
      FormManager.AddComp(EditVRESIDUAL.Name             , fmEdit  );
      FormManager.AddComp(EditVAMOR.Name                 , fmEdit  );
      FormManager.AddComp(EditVEJPINICIO.Name            , fmEdit  );
      FormManager.AddComp(EditVEJPAMOR.Name              , fmEdit  );
      FormManager.AddComp(EditVEJAINICIO.Name            , fmEdit  );
      FormManager.AddComp(EditVEJAAMOR.Name              , fmEdit  );

      FormManager.AddComp(Edit01.Name                , fmNone  );
      FormManager.AddComp(Edit02.Name                , fmNone  );
      FormManager.AddComp(Edit03.Name                , fmNone  );
      FormManager.AddComp(Edit04.Name                , fmNone  );
      FormManager.AddComp(Edit05.Name                , fmNone  );
      FormManager.AddComp(Edit06.Name                , fmNone  );
      FormManager.AddComp(Edit07.Name                , fmNone  );
      FormManager.AddComp(Edit08.Name                , fmNone  );
      FormManager.AddComp(Edit09.Name                , fmNone  );
      FormManager.AddComp(Edit10.Name                , fmNone  );
      FormManager.AddComp(Edit12.Name                , fmNone  );
      FormManager.AddComp(Edit13.Name                , fmNone  );
      FormManager.AddComp(Edit14.Name                , fmNone  );
      FormManager.AddComp(Edit15.Name                , fmNone  );
      FormManager.AddComp(Edit16.Name                , fmNone  );
      FormManager.AddComp(Edit17.Name                , fmNone  );
      FormManager.AddComp(Edit18.Name                , fmNone  );
      FormManager.AddComp(Edit19.Name                , fmNone  );
      FormManager.AddComp(Edit20.Name                , fmNone  );
      FormManager.AddComp(Edit21.Name                , fmNone  );
      FormManager.AddComp(Edit22.Name                , fmNone  );
      FormManager.AddComp(Edit23.Name                , fmNone  );
      FormManager.AddComp(Edit24.Name                , fmNone  );
      FormManager.AddComp(Edit25.Name                , fmNone  );
      FormManager.AddComp(Edit26.Name                , fmNone  );
      FormManager.AddComp(Edit27.Name                , fmNone  );
      FormManager.AddComp(Edit28.Name                , fmNone  );
      FormManager.AddComp(Edit29.Name                , fmNone  );
      FormManager.AddComp(Edit30.Name                , fmNone  );
      FormManager.AddComp(Edit31.Name                , fmNone  );
      FormManager.AddComp(Edit32.Name                , fmNone  );
      FormManager.AddComp(Edit33.Name                , fmNone  );
      FormManager.AddComp(Edit34.Name                , fmNone  );
      FormManager.AddComp(Edit35.Name                , fmNone  );
      FormManager.AddComp(Edit36.Name                , fmNone  );
      FormManager.AddComp(Edit37.Name                , fmNone  );
      FormManager.AddComp(Edit38.Name                , fmNone  );
      FormManager.AddComp(Edit39.Name                , fmNone  );
      FormManager.AddComp(Edit40.Name                , fmNone  );
      FormManager.AddComp(Edit41.Name                , fmNone  );
      FormManager.AddComp(Edit42.Name                , fmNone  );
      FormManager.AddComp(Edit43.Name                , fmNone  );
      FormManager.AddComp(Edit44.Name                , fmNone  );
      FormManager.AddComp(Edit45.Name                , fmNone  );
      FormManager.AddComp(Edit46.Name                , fmNone  );
      FormManager.AddComp(Edit47.Name                , fmNone  );
      FormManager.AddComp(Edit48.Name                , fmNone  );
      FormManager.AddComp(Edit49.Name                , fmNone  );
      FormManager.AddComp(Edit50.Name                , fmNone  );
      FormManager.AddComp(Edit51.Name                , fmNone  );
      FormManager.AddComp(Edit52.Name                , fmNone  );

      {-----------------------------------------------------------------------------------------}

      QVAT.Database := DMRef.BDContab;
      QVAT.Open;

      QAmortiza.SelectSql.Clear;
      QAmortiza.CachedUpdates := True;
      QAmortiza.DataSource    := SFichero;
      QAmortiza.SelectSql.Add('select * from Amortiza');
      QAmortiza.SelectSql.Add('where Subcuenta=:subcuenta');
      QAmortiza.Prepare;
      QAmortiza.Open;
      
      QProvincias.Close;
      QProvincias.SelectSQL.Clear;
      QProvincias.DataSource := SFichero;
      QProvincias.SelectSQL.Add('SELECT * FROM PROVINCIAS WHERE PROVINCIA = :PROVINCIA');
      QProvincias.Prepare;
      QProvincias.Open;

      QSubcuentaPago.Close;
      QSubcuentaPago.SelectSQL.Clear;
      QSubcuentaPago.DataSource := SFiltroCartas;
      QSubcuentaPago.SelectSQL.Add('SELECT * FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA');
      QSubcuentaPago.Prepare;
      QSubcuentaPago.Open;

      FormManager.Mode := fmEdit;
      FormManager.Mode := fmBrowse;

      EditSUBCUENTA.MaxLength  := DmRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;
      EditBSubcuenta.MaxLength := DmRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;

      PageControl.ActivePage := TabSubAccounts;
      PageControlChange(TabSubAccounts);
   finally
     Screen.Cursor := crDefault;
   end;
end;      

procedure TWSubCuentas.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWSubCuentas.ActivarTransacciones;
var i :Word;
begin
   for i := 0 to (ComponentCount - 1) do begin
      if (Components[i] is TibTransaction) then   begin
         TibTransaction(Components[i]).active := False;
         TibTransaction(Components[i]).Params.Clear;
         TibTransaction(Components[i]).Params.add('Read_committed');
         TibTransaction(Components[i]).Params.add('Rec_version');
         TibTransaction(Components[i]).Params.add('Write');
         {Next block was be added after change the name of the Database Component}
         if (TibTransaction(Components[i]).DefaultDatabase = nil) then begin
           TibTransaction(Components[i]).DefaultDatabase := DMRef.BDContab;
         end;
         TibTransaction(Components[i]).active := True;
      end;
   end;
end;

procedure TWSubCuentas.CrearFiltroCartas;
begin
   CDSFiltroCartas.Active := False;
   CDSFiltroCartas.FieldDefs.Clear;
   CDSFiltroCartas.FieldDefs.Add('FECHADESDE', ftDateTime, 0, False);
   CDSFiltroCartas.FieldDefs.Add('FECHAHASTA', ftDateTime, 0, False);
   CDSFiltroCartas.FieldDefs.Add('FECHAASIENTO', ftDateTime, 0, False);
   CDSFiltroCartas.FieldDefs.Add('SUBCUENTA', ftString, 10, False);
   CDSFiltroCartas.FieldDefs.Add('CHEQUE', ftString, 15, False);
   CDSFiltroCartas.FieldDefs.Add('CONCEPTOD', ftVarBytes, 3, False);
   CDSFiltroCartas.FieldDefs.Add('CONCEPTOH', ftVarBytes, 3, False);

   CDSFiltroCartas.CreateDataSet;
   CDSFiltroCartas.Active := True;

   CDSFiltroCartas.Append;
   CDSFiltroCartas.FieldByName('FECHADESDE').AsDateTime := DMRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime;
   CDSFiltroCartas.FieldByName('FECHAHASTA').AsDateTime := DMRef.QParametrosFECHA_FIN_EJERCICIO.AsDateTime;
   CDSFiltroCartas.FieldByName('SUBCUENTA').AsString    := DmRef.QParametrosSCTABANCO.AsString;
   CDSFiltroCartas.FieldByName('CONCEPTOD').AsString    := DmRef.QParametrosCTOPAGO.AsString;
   CDSFiltroCartas.FieldByName('CONCEPTOH').AsString    := DmRef.QParametrosCTOPAGO.AsString;
end;

procedure TWSubCuentas.InicializarFiltro;
begin
   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;
   CDSFiltroBSUBCUENTA.AsString   := DMRef.QParametrosFILTROSUBCTAS.AsString;
   CDSFiltroBDESCRIPCION.AsString := '';
   CDSFiltroBNIF.AsString         := '';
   CDSFiltroBTITULO.AsString      := '';
   CDSFiltroBGRUPO.AsString       := '';
end;

procedure TWSubCuentas.PrepararQuery;
begin
   QFichero.DisableControls;
   QFichero.Close;
   QFichero.ModifySql.Clear;
   QFichero.ModifySql.Add(' UPDATE SUBCTAS                                                                           ');
   QFichero.ModifySql.Add('    SET PAIS      = :PAIS     ,                                                           ');
   QFichero.ModifySql.Add('        CODPOSTAL = :CODPOSTAL,                                                           ');
   QFichero.ModifySql.Add('        POBLACION = :POBLACION,                                                           ');
   QFichero.ModifySql.Add('        PROVINCIA = :PROVINCIA,                                                           ');
   QFichero.ModifySql.Add('        SUMADB    = :SUMADB   ,                                                           ');
   QFichero.ModifySql.Add('        SUMAHB    = :SUMAHB   ,                                                           ');
   QFichero.ModifySql.Add('        ACUDB01   = :ACUDB01  ,  ACUDB02 = :ACUDB02 , ACUDB03 = :ACUDB03 ,                ');
   QFichero.ModifySql.Add('        ACUDB04   = :ACUDB04  ,  ACUDB05 = :ACUDB05 , ACUDB06 = :ACUDB06 ,                ');
   QFichero.ModifySql.Add('        ACUDB07   = :ACUDB07  ,  ACUDB08 = :ACUDB08 , ACUDB09 = :ACUDB09 ,                ');
   QFichero.ModifySql.Add('        ACUDB10   = :ACUDB10  ,  ACUDB11 = :ACUDB11 , ACUDB12 = :ACUDB12 ,                ');
   QFichero.ModifySql.Add('        ACUHB01   = :ACUHB01  ,  ACUHB02 = :ACUHB02 , ACUHB03 = :ACUHB03 ,                ');
   QFichero.ModifySql.Add('        ACUHB04   = :ACUHB04  ,  ACUHB05 = :ACUHB05 , ACUHB06 = :ACUHB06 ,                ');
   QFichero.ModifySql.Add('        ACUHB07   = :ACUHB07  ,  ACUHB08 = :ACUHB08 , ACUHB09 = :ACUHB09 ,                ');
   QFichero.ModifySql.Add('        ACUHB10   = :ACUHB10  ,  ACUHB11 = :ACUHB11 , ACUHB12 = :ACUHB12 ,                ');
   QFichero.ModifySql.Add('        ANTDB01   = :ANTDB01  ,  ANTDB02 = :ANTDB02 , ANTDB03 = :ANTDB03 ,                ');
   QFichero.ModifySql.Add('        ANTDB04   = :ANTDB04  ,  ANTDB05 = :ANTDB05 , ANTDB06 = :ANTDB06 ,                ');
   QFichero.ModifySql.Add('        ANTDB07   = :ANTDB07  ,  ANTDB08 = :ANTDB08 , ANTDB09 = :ANTDB09 ,                ');
   QFichero.ModifySql.Add('        ANTDB10   = :ANTDB10  ,  ANTDB11 = :ANTDB11 , ANTDB12 = :ANTDB12 ,                ');
   QFichero.ModifySql.Add('        ANTHB01   = :ANTHB01  ,  ANTHB02 = :ANTHB02 , ANTHB03 = :ANTHB03 ,                ');
   QFichero.ModifySql.Add('        ANTHB04   = :ANTHB04  ,  ANTHB05 = :ANTHB05 , ANTHB06 = :ANTHB06 ,                ');
   QFichero.ModifySql.Add('        ANTHB07   = :ANTHB07  ,  ANTHB08 = :ANTHB08 , ANTHB09 = :ANTHB09 ,                ');
   QFichero.ModifySql.Add('        ANTHB10   = :ANTHB10  ,  ANTHB11 = :ANTHB11 , ANTHB12 = :ANTHB12 ,                ');
   QFichero.ModifySql.Add('        ANTHB     = :ANTHB    ,  ANTDB   = :ANTDB   ,                                     ');
   QFichero.ModifySql.Add('        IVA = :IVA, RECARGO = :RECARGO, NUMERO = :NUMERO, OBSOLETO = :OBSOLETO,           ');
   QFichero.ModifySql.Add('        CONTRAPARTIDA = :CONTRAPARTIDA, DESCRIPCION = :DESCRIPCION, TELEFONO = :TELEFONO, ');
   QFichero.ModifySql.Add('        FAX = :FAX, DIRECCION = :DIRECCION, TIPOIVA = :TIPOIVA, ARRENDADOR = :ARRENDADOR, ');
   QFichero.ModifySql.Add('        PROFESIONAL = :PROFESIONAL, DIRECCION1 = :DIRECCION1, NIF = :NIF,                 ');
   QFichero.ModifySql.Add('        FORMAPAGO = :FORMAPAGO,                                                           ');
   QFichero.ModifySql.Add('        DIAPAGO1 = :DIAPAGO1, DIAPAGO2 = :DIAPAGO2, DIAPAGO3 = :DIAPAGO3,                 ');
   QFichero.ModifySql.Add('        PRES01 = :PRES01, PRES02 = :PRES02, PRES03 = :PRES03, PRES04 = :PRES04,           ');
   QFichero.ModifySql.Add('        PRES05 = :PRES05, PRES06 = :PRES06, PRES07 = :PRES07, PRES08 = :PRES08,           ');
   QFichero.ModifySql.Add('        PRES09 = :PRES09, PRES10 = :PRES10, PRES11 = :PRES11, PRES12 = :PRES12,           ');
   QFichero.ModifySql.Add('        PRESTOT = :PRESTOT, ABREVIATURA = :ABREVIATURA,                                   ');
   QFichero.ModifySql.Add('        INTRACOMUNITARIO = :INTRACOMUNITARIO, SUBCTARET = :SUBCTARET,                     ');
   QFichero.ModifySql.Add('        SUBCUENTA = :SUBCUENTA                                                            ');
   QFichero.ModifySql.Add('WHERE SUBCUENTA = :OLD_SUBCUENTA                                                          ');

   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.Transaction.Active := True;
   QFichero.SelectSQL.Add('SELECT S.* FROM SUBCTAS S WHERE S.SUBCUENTA IS NOT NULL');

   if CDSFiltroBSUBCUENTA.AsString <> '' then begin
      QFichero.SelectSQL.Add('AND S.SubCuenta LIKE :BSubCuenta ');
   end else
   if CDSFiltroBDESCRIPCION.AsString <> '' then begin
      QFichero.SelectSQL.Add('AND Upper(S.Descripcion) LIKE Upper(:BDescripcion)');
   end else
   if CDSFiltroBNIF.AsString <> '' then begin
      QFichero.SelectSQL.Add('AND Upper(S.Nif) LIKE Upper(:BNif)');
   end else
   if CDSFiltroBTITULO.AsString <> '' then begin
      QFichero.SelectSQL.Add('AND SUBSTR(S.SUBCUENTA, 1, 3) IN');
      QFichero.SelectSQL.Add('         (SELECT C.CUENTA FROM CUENTAS C');
      QFichero.SelectSQL.Add('          WHERE C.CUENTA = SUBSTR(S.SUBCUENTA, 1, 3)');
      QFichero.SelectSQL.Add('                AND (C.GRUPO1 LIKE :TITULO OR C.GRUPO2 LIKE :TITULO))');
   end else
   if CDSFiltroBGRUPO.AsString <> '' then begin
      QFichero.SelectSQL.Add('AND SUBSTR(S.SUBCUENTA, 1, 3) IN');
      QFichero.SelectSQL.Add('         (SELECT C.CUENTA FROM CUENTAS C');
      QFichero.SelectSQL.Add('          WHERE C.CUENTA = SUBSTR(S.SUBCUENTA, 1, 3)');
      QFichero.SelectSQL.Add('                AND (C.GRUPO1 LIKE :GRUPO OR C.GRUPO2 LIKE :GRUPO))');
   end;

   CampoOrden := UpperCase(Trim(CampoOrden));
   if CampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + CampoOrden);
   end
   else begin
      QFichero.SelectSQL.Add('ORDER BY Descripcion');
   end;

   // PARÁMETROS
   if CDSFiltroBSUBCUENTA.AsString <> '' then begin
      QFichero.Params.ByName('BSubCuenta').AsString := Copy(CDSFiltroBSUBCUENTA.AsString + '%', 1, CDSFiltroBSUBCUENTA.Size);
   end else
   if CDSFiltroBDESCRIPCION.AsString <> '' then begin
      QFichero.Params.ByName('BDescripcion').AsString := Copy(CDSFiltroBDESCRIPCION.AsString + '%', 1, CDSFiltroBDESCRIPCION.Size);
   end else
   if CDSFiltroBNIF.AsString <> '' then begin
      QFichero.Params.ByName('BNif').AsString := Copy(CDSFiltroBNIF.AsString + '%', 1, CDSFiltroBNIF.Size);
   end else
   if CDSFiltroBTITULO.AsString <> '' then begin
      QFichero.Params.ByName('Titulo').AsString := CDSFiltroBTITULO.AsString + '%';
   end else
   if CDSFiltroBGRUPO.AsString <> '' then begin
      QFichero.Params.ByName('Grupo').AsString := Copy(CDSFiltroBGRUPO.AsString + '%', 1, CDSFiltroBGRUPO.Size);
   end;

   QFichero.Prepare;
   QFichero.EnableControls;
   QFichero.Open;

   BtnRefresh.Flat := True;
end;

procedure TWSubCuentas.PrepararQueryDiario;
begin
   QDiario.Close;
   QDiario.SelectSQL.Clear;
   QDiario.DataSource := SFichero;
   QDiario.SelectSQL.Add('SELECT D.*, C.DESCRIPCION DESCCONCEPTO   ');
   QDiario.SelectSQL.Add('FROM DIARIO D, CONCEPTOS C               ');
   QDiario.SelectSQL.Add('WHERE                                    ');

   if (DmContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString) = 'C') or
      (DmContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString) = 'P') then begin
      QDiario.SelectSQL.Add('   D.SUBCUENTA = :SUBCUENTA AND (D.PUNTEO IS NULL OR D.PUNTEO = "" OR PUNTEO = "N")');
      if CDSFiltroCartas.FieldByName('FECHADESDE').IsNull then begin
         QDiario.SelectSQL.Add(' AND (D.FECHA IS NULL OR (D.FECHA >= :FECHADESDE AND D.FECHA <= :FECHAHASTA))');
      end
      else begin
         QDiario.SelectSQL.Add(' AND D.FECHA >= :FECHADESDE AND D.FECHA <= :FECHAHASTA');
      end;
      QDiario.SelectSQL.Add(' AND D.ID_CONCEPTOS = C.ID_CONCEPTOS');
      QDiario.SelectSQL.Add('ORDER BY D.FECHA, D.ASIENTO');

      QDiario.ParamByName('FECHADESDE').AsDateTime := CDSFiltroCartas.FieldByName('FECHADESDE').AsDateTime;
      QDiario.ParamByName('FECHAHASTA').AsDateTime := CDSFiltroCartas.FieldByName('FECHAHASTA').AsDateTime;
      QDiario.ParamByName('SUBCUENTA').AsString    := CDSFiltroCartas.FieldByName('SUBCUENTA').AsString;
   end
   else begin
      QDiario.SelectSQL.Add(' D.ASIENTO IS NULL');
      QDiario.SelectSQL.Add(' AND D.ID_CONCEPTOS = C.ID_CONCEPTOS');
      QDiario.SelectSQL.Add('ORDER BY D.FECHA, D.ASIENTO');
   end;

   QDiario.Prepare;
   QDiario.Open;
end;

procedure TWSubCuentas.PrepararRefreshDiario;
begin
   QDiario.RefreshSQL.Clear;
   QDiario.RefreshSQL.Add('SELECT D.*, C.DESCRIPCION DESCCONCEPTO');
   QDiario.RefreshSQL.Add('FROM DIARIO D, CONCEPTOS C');
   QDiario.RefreshSQL.Add('WHERE');
   QDiario.RefreshSQL.Add(' D.ID_DIARIO = ?ID_DIARIO AND');
   QDiario.RefreshSQL.Add(' D.ID_CONCEPTOS = C.ID_CONCEPTOS');
   QDiario.RefreshSQL.Add('ORDER BY D.FECHA, D.ASIENTO');
end;

procedure TWSubCuentas.PrepararQueryMovimientos;
begin
   QMovimientos.DisableControls;
   QMovimientos.Close;
   QMovimientos.SelectSQL.Clear;
   QMovimientos.Transaction.active := True;
   QMovimientos.SelectSQL.Add('SELECT');
   QMovimientos.SelectSQL.Add('   D.ASIENTO,D.FECHA,D.ID_CONCEPTOS, D.DEBEHABER,');
   QMovimientos.SelectSQL.Add('   D.CONTRAPARTIDA,D.COMENTARIO, D.SERIE, D.EJERCICIO,');
   QMovimientos.SelectSQL.Add('   C.DESCRIPCION DESCCONCEPTO, D.IMPORTE,');
   QMovimientos.SelectSQL.Add('   D.TIPOASIENTO, D.ASIENTONOMINA,D.NUMEROFACTURA');
   QMovimientos.SelectSQL.Add('FROM DIARIO D, CONCEPTOS C');
   QMovimientos.SelectSQL.Add('WHERE');
   //  Add('   D.FECHA >= :FECHAINI AND D.FECHA <= :FECHAFIN AND');
   QMovimientos.SelectSQL.Add('   D.FECHA >= :FECHAINI AND ');
   QMovimientos.SelectSQL.Add('   D.ID_CONCEPTOS = C.ID_CONCEPTOS AND');
   QMovimientos.SelectSQL.Add('   D.SUBCUENTA = :SUBCUENTA');
   QMovimientos.SelectSQL.Add('ORDER BY D.FECHA, D.ASIENTO');
   QMovimientos.Params.ByName('FECHAINI').AsDateTime :=
   DmRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime;
   //  Params.ByName('FECHAFIN').AsDateTime := DmRef.QParametrosFECHA_FIN_EJERCICIO.AsDateTime;
   QMovimientos.Params.ByName('SUBCUENTA').AsString  := QFicheroSUBCUENTA.AsString;
   QMovimientos.Prepare;
   QMovimientos.EnableControls;
   QMovimientos.Open;
end;

procedure TWSubCuentas.RefrescarControles;
begin
   FEsProveedor := (QFicheroSUBCUENTA.AsString <> '') and
      (DMRef.ExistenRegistros('CUENTAS', 'CUENTA = ' +
      Copy(QFicheroSUBCUENTA.AsString, 1, 3) + ' AND TIPOCUENTA = "P"'));

   EditTotalImporte.Text := '0';

   if FEsProveedor then begin
      LabelCartas.Caption := 'Pago a Proveedores';
   end
   else begin
      LabelCartas.Caption := 'Reclamación a Clientes';
   end;

   BtnGenera.Visible                 := FEsProveedor;
   ComboBoxCD_SCTABANCO.Visible      := FEsProveedor;
   ComboBoxDS_SCTABANCO.Visible      := FEsProveedor;
   EditNUMCHEQUE.Visible             := FEsProveedor;
   LbFechaAsiento.Visible            := FEsProveedor;
   EditFechaAsiento.Visible          := FEsProveedor;
   ComboBoxCD_CONCEPTO_DEBE.Visible  := FEsProveedor;
   ComboBoxDS_CONCEPTO_DEBE.Visible  := FEsProveedor;
   ComboBoxCD_CONCEPTO_HABER.Visible := FEsProveedor;
   ComboBoxDS_CONCEPTO_HABER.Visible := FEsProveedor;
   LBCtoD.Visible                    := FEsProveedor;
   LBCtoH.Visible                    := FEsProveedor;
   LBPago.Visible                    := FEsProveedor;
   LBCheque.Visible                  := FEsProveedor;
   LBCtoD.Visible                    := FEsProveedor;
   LBCtoH.Visible                    := FEsProveedor;

   QDiario.Refresh;
end;

procedure TWSubCuentas.RellenaChart;
(*var i     :Integer;
   Grupo1 :string;
   Grupo2 :string;
   Q      :TIBQuery;*)
begin
(*   Grupo1 := '';
   Grupo2 := '';
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('SELECT GRUPO1, GRUPO2 FROM CUENTAS WHERE CUENTA = :CUENTA');
      Q.ParamByName('CUENTA').AsString := Copy(QFicheroSUBCUENTA.AsString, 1, 3);
      Q.Open;
      if not EOF then   begin
         Grupo1 := Q.FieldByName('GRUPO1').AsString;
         Grupo2 := Q.FieldByName('GRUPO2').AsString;
      end;
      Q.Close;
   finally
      Q.Free;
   end;

   ChartActual.Title.Text.Clear;
   ChartActual.Title.Text.Add(Config.ActiveDS_ENTERPRISE);

   ChartActual.Foot.Text.Clear;
   ChartActual.Foot.Text.Add(QFicheroSUBCUENTA.AsString + '   ' + QFicheroDESCRIPCION.AsString);

   ChartAnterior.Title.Text.Clear;
   ChartAnterior.Title.Text.Add(Config.ActiveDS_ENTERPRISE);

   ChartAnterior.Foot.Text.Clear;
   ChartAnterior.Foot.Text.Add(QFicheroSUBCUENTA.AsString + '   ' + QFicheroDESCRIPCION.AsString);

   ChartCompara.Title.Text.Clear;
   ChartCompara.Title.Text.Add(Config.ActiveDS_ENTERPRISE);

   ChartCompara.Foot.Text.Clear;
   ChartCompara.Foot.Text.Add(QFicheroSUBCUENTA.AsString + '   ' + QFicheroDESCRIPCION.AsString);

   DMContaRef.QGraficos.EmptyDataSet;
   for I := 1 to 12 do begin
      DMContaRef.QGraficos.Append;
      DMContaRef.QGraficosNUMMES.AsInteger := I;
      case I of
         1: begin
            DMContaRef.QGraficosMES.AsString     := 'Ene';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB01.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB01.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB01.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB01.AsFloat;
         end;
         2: begin
            DMContaRef.QGraficosMES.AsString     := 'Feb';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB02.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB02.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB02.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB02.AsFloat;
         end;
         3: begin
            DMContaRef.QGraficosMES.AsString     := 'Mar';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB03.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB03.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB03.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB03.AsFloat;
         end;
         4: begin
            DMContaRef.QGraficosMES.AsString     := 'Abr';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB04.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB04.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB04.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB04.AsFloat;
         end;
         5: begin
            DMContaRef.QGraficosMES.AsString     := 'May';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB05.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB05.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB05.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB05.AsFloat;
         end;
         6: begin
            DMContaRef.QGraficosMES.AsString     := 'Jun';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB06.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB06.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB06.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB06.AsFloat;
         end;
         7: begin
            DMContaRef.QGraficosMES.AsString     := 'Jul';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB07.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB07.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB07.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB07.AsFloat;
         end;
         8: begin
            DMContaRef.QGraficosMES.AsString     := 'Ago';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB08.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB08.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB08.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB08.AsFloat;
         end;
         9: begin
            DMContaRef.QGraficosMES.AsString     := 'Sep';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB09.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB09.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB09.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB09.AsFloat;
         end;
         10: begin
            DMContaRef.QGraficosMES.AsString     := 'Oct';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB10.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB10.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB10.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB10.AsFloat;
         end;
         11: begin
            DMContaRef.QGraficosMES.AsString     := 'Nov';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB11.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB11.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB11.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB11.AsFloat;
         end;
         12: begin
            DMContaRef.QGraficosMES.AsString     := 'Dic';
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB12.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB12.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat := QFicheroACUHB12.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat := QFicheroANTHB12.AsFloat;
         end;
         13: begin
            DMContaRef.QGraficosMES.AsString     := 'Tot';
            DMContaRef.QGraficosDEBEACT.AsFloat  :=
               QFicheroACUDB01.AsFloat + QFicheroACUDB02.AsFloat +
               QFicheroACUDB03.AsFloat + QFicheroACUDB04.AsFloat +
               QFicheroACUDB05.AsFloat + QFicheroACUDB06.AsFloat +
               QFicheroACUDB07.AsFloat + QFicheroACUDB08.AsFloat +
               QFicheroACUDB09.AsFloat + QFicheroACUDB10.AsFloat +
               QFicheroACUDB11.AsFloat + QFicheroACUDB12.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  :=
               QFicheroANTDB01.AsFloat + QFicheroANTDB02.AsFloat +
               QFicheroANTDB03.AsFloat + QFicheroANTDB04.AsFloat +
               QFicheroANTDB05.AsFloat + QFicheroANTDB06.AsFloat +
               QFicheroANTDB07.AsFloat + QFicheroANTDB08.AsFloat +
               QFicheroANTDB09.AsFloat + QFicheroANTDB10.AsFloat +
               QFicheroANTDB11.AsFloat + QFicheroANTDB12.AsFloat;
            DMContaRef.QGraficosHABERACT.AsFloat :=
               QFicheroACUHB01.AsFloat + QFicheroACUHB02.AsFloat +
               QFicheroACUHB03.AsFloat + QFicheroACUHB04.AsFloat +
               QFicheroACUHB05.AsFloat + QFicheroACUHB06.AsFloat +
               QFicheroACUHB07.AsFloat + QFicheroACUHB08.AsFloat +
               QFicheroACUHB09.AsFloat + QFicheroACUHB10.AsFloat +
               QFicheroACUHB11.AsFloat + QFicheroACUHB12.AsFloat;
            DMContaRef.QGraficosHABERANT.AsFloat :=
               QFicheroANTHB01.AsFloat + QFicheroANTHB02.AsFloat +
               QFicheroANTHB03.AsFloat + QFicheroANTHB04.AsFloat +
               QFicheroANTHB05.AsFloat + QFicheroANTHB06.AsFloat +
               QFicheroANTHB07.AsFloat + QFicheroANTHB08.AsFloat +
               QFicheroANTHB09.AsFloat + QFicheroANTHB10.AsFloat +
               QFicheroANTHB11.AsFloat + QFicheroANTHB12.AsFloat;
         end;
      end;    // case

      // Dividir entre 1000
      {   QGraficosDEBEANT.AsInteger := QGraficosDEBEANT.AsInteger div 1000;
         QGraficosDEBEACT.AsInteger := QGraficosDEBEACT.AsInteger div 1000;
         QGraficosHABERANT.AsInteger := QGraficosHABERANT.AsInteger div 1000;
         QGraficosHABERACT.AsInteger := QGraficosHABERACT.AsInteger div 1000;
       }
      // Situar cuentas
      if (Copy(Grupo1, 1, 1) = 'A') or (Copy(Grupo1, 1, 1) = 'D') or
         (Copy(Grupo2, 1, 1) = 'A') or (Copy(Grupo2, 1, 1) = 'D') then   begin
         // Debe
         DMContaRef.QGraficosSALDOACT.AsFloat := RoundTo(DMContaRef.QGraficosDEBEACT.AsFloat, -2);
         DMContaRef.QGraficosSALDOANT.AsFloat := RoundTo(DMContaRef.QGraficosDEBEANT.AsFloat, -2);
      end
      else begin
         // Haber
         DMContaRef.QGraficosSALDOACT.AsFloat := RoundTo(DMContaRef.QGraficosHABERACT.AsFloat, -2);
         DMContaRef.QGraficosSALDOANT.AsFloat := RoundTo(DMContaRef.QGraficosHABERANT.AsFloat, -2);
      end;
      DMContaRef.QGraficos.Post;
   end;*)
end;

procedure TWSubCuentas.fcIBCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TWSubCuentas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = Chr(VK_RETURN)) then  begin
      if (EditBSubCuenta.Focused) and (Trim(EditBSubCuenta.Text) <> '') then   begin
         Key := #0;
         if CDSFiltro.State in dsEditModes then   begin
            CDSFiltro.Post;
         end;
         CampoOrden := 'SubCuenta';
         PrepararQuery;
         DataGrid.SetFocus;
      end

      // Comprobación del filtro por Descripción de la cuenta
      else
      if (EditBDescripcion.Focused) and (Trim(EditBDescripcion.Text) <> '') then begin
         Key := #0;
         if CDSFiltro.State in dsEditModes then   begin
            CDSFiltro.Post;
         end;
         CampoOrden := 'Descripcion';
         PrepararQuery;
         DataGrid.SetFocus;
      end

      // Comprobación del filtro por Nif de la cuenta
      else
      if (EditBId_Fiscal.Focused) and (Trim(EditBId_Fiscal.Text) <> '') then begin
         key := #0;
         if CDSFiltro.State in dsEditModes then   begin
            CDSFiltro.Post;
         end;
         CampoOrden := 'Nif';
         PrepararQuery;
         DataGrid.SetFocus;
      end


      // Comprobación del filtro por título
      else
      if (EditBTitulo.Focused) and (Trim(EditBTitulo.Text) <> '') then begin
         Key := #0;
         if CDSFiltro.State in dsEditModes then begin
            CDSFiltro.Post;
         end;
         CampoOrden := 'SubCuenta';
         PrepararQuery;
         DataGrid.SetFocus;
      end

      // Comprobación del filtro por grupo
      else
      if (EditBGrupo.Focused) and (Trim(EditBGrupo.Text) <> '') then begin
         Key := #0;
         if CDSFiltro.State in dsEditModes then begin
            CDSFiltro.Post;
         end;
         CampoOrden := 'SubCuenta';
         PrepararQuery;
         DataGrid.SetFocus;
      end;
   end;
end;

procedure TWSubCuentas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         if TDataSet(SFichero.DataSet).State in
            dsEditModes then begin
            BtnCancel.Click;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditBSubCuenta) and (ActiveControl <> EditBDescripcion) and (PageControl.ActivePage <> TabLetters) and
            not (TDataSet(SFichero.DataSet).State in dsEditModes) then
         begin
            if not (TDataSet(SFichero.DataSet).State in dsEditModes) then begin
               Key := 0;
               BtnModify.Click;
            end;
         end;
      end;
      VK_F4: begin
         if not (TDataSet(SFichero.DataSet).State in dsEditModes) then   begin
            BtnAppend.Click;
         end;
      end;
      VK_F9: begin
         if TDataSet(SFichero.DataSet).State in dsEditModes then begin
            BtnAccept.Click;
         end;
      end;
      VK_F12: begin
         if not (QFichero.State in dsEditModes) then begin
            BtnRefresh.Click;
         end;
      end;
   end;
end;

procedure TWSubCuentas.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   lAdd := True;
   try
      CheckBoxSubctaRet.Visible := True;
      PageControl.ActivePage    := TabData;
      QFichero.Insert;
      EditSUBCUENTA.SetFocus;
      FormManager.Mode := fmEdit;
      TabAmortizations.Visible := False;
      PageControlChange(TabData);
   except
      raise;
      DatabaseError('Error al añadir una nueva Subcuenta.');
   end;
end;

procedure TWSubCuentas.QFicheroBeforeOpen(DataSet: TDataSet);
begin
   QFichero.EnableControls;
end;

procedure TWSubCuentas.QFicheroNewRecord(DataSet: TDataSet);
begin
   QFicheroPROFESIONAL.AsString      := 'N';
   QFicheroARRENDADOR.AsString       := 'N';
   QFicheroOBSOLETO.AsString         := 'N';
   QFicheroPAIS.AsString             := 'ES';
   QFicheroINTRACOMUNITARIO.AsString := 'N';
end;

procedure TWSubCuentas.fcIBMinimizarClick(Sender: TObject);
begin
   WindowState := wsMinimized;
end;

procedure TWSubCuentas.QFicheroAfterEdit(DataSet: TDataSet);
begin
   PageControlChange(TabData);
end;

procedure TWSubCuentas.EditBSubCuentaEnter(Sender: TObject);
begin
   if not (CDSFiltro.state in dseditmodes) then begin
      CDSFiltro.Edit;
   end;
   CDSFiltroBSUBCUENTA.AsString   := '';
   CDSFiltroBDESCRIPCION.AsString := '';
   CDSFiltroBTITULO.AsString      := '';
   CDSFiltroBNIF.AsString         := '';
   CDSFiltroBGRUPO.AsString       := '';
end;

procedure TWSubCuentas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      {$Message Warn 'Aparición de TCorreo'}
      (*DMContaRef.HCorreo.Active := False;*)
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWSubCuentas.BtnDeleteClick(Sender: TObject);
var Subcta     :string;
    SubctaAmor :string;
    SubctaRet  :string;
    Q          :TIBSQL;
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then begin
      Exit;
   end;

   if MessageDlg('¿Desea borrar esta subcuenta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then  begin
      try
         Subcta     := QFicheroSUBCUENTA.AsString;
         SubctaAmor := QAmortizaSUBAMOR.AsString;
         SubctaRet  := QFicheroSUBCTARET.AsString;
         // Primero hay que borrar su registro de amortizaciones relacionados
         Q := TIBSql.Create(nil);
         try
            Q.Database := DMRef.BDContab;
            Q.SQL.Add('delete from amortiza where subcuenta=:subcuenta');
            Q.ParamByName('subcuenta').AsString := Subcta;
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;
            Q.Close;
            Q.SQL.Clear;
            // Ahora se borra la subcuenta de retencion ventas
            Q.Close;
            if not IsEmpty(SubctaRet) then   begin
               Q.SQL.Add('delete from subctas where subcuenta=:subcuenta');
               Q.ParamByName('subcuenta').AsString := SubctaRet;
               Q.ExecQuery;
               Q.Transaction.CommitRetaining;
            end;
            // Ahora se borra la subcuenta de amortizacion
            Q.Close;
            if not IsEmpty(Subctaamor) then   begin
               Q.SQL.Add('delete from subctas where subcuenta=:subcuenta');
               Q.ParamByName('subcuenta').AsString := SubctaAmor;
               Q.ExecQuery;
               Q.Transaction.CommitRetaining;
               Q.Close;
            end;
         finally
            Q.Free;
         end;
         QFichero.Delete;
         QFichero.Transaction.CommitRetaining;
         DMContaRef.RefrescarSubcuentas(Subcta);

         // fibQueryRefresh(QFichero);
      except
         DatabaseError('No se ha podido borrar la subcuenta seleccionada.' + #13 +
                       'La subcuenta seleccionada se encuentra referenciada en algún asiento.');
      end;
   end;
end;

procedure TWSubCuentas.BtnAcceptClick(Sender: TObject);
var
   Subcta, cSubctaRet, cDescripcion, cNif: String;
begin
   Perform(wm_NextDlgCtl, 0, 0);

   // Quitar espacios de subcuenta
   QFicheroSUBCUENTA.AsString := Trim(QFicheroSUBCUENTA.AsString);
   cDescripcion := QFicheroDESCRIPCION.AsString;
   cNif         := QFicheroNIF.AsString;

   if Length(QFicheroSUBCUENTA.AsString) < DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger then  begin
      EditSUBCUENTA.SetFocus;
      DatabaseError('La longitud de subcuenta es menor de ' + DMRef.QParametrosLONGITUD_SUBCUENTAS.AsString + ' caracteres.');
   end;

   // Comprobar si existe la cuenta a la que pertenece la subcuenta
   if not DMRef.ExistenRegistros('CUENTAS', 'CUENTA = "' +
      Copy(QFicheroSUBCUENTA.AsString, 1, 3) + '"') then   begin
      DatabaseError('No existe la cuenta ' + Copy(QFicheroSUBCUENTA.AsString, 1, 3) +
         ' a la que pertenece la subcuenta seleccionada.');
   end;

   try
      if CheckBoxSubctaRet.Checked then   begin
         QFicheroSUBCTARET.AsString := '434' + Copy(QFicheroSUBCUENTA.AsString, 4, 7);
      end;
      QFichero.DisableControls;
      QFichero.Post;
      Subcta := QFicheroSUBCUENTA.AsString;
      QFichero.Transaction.CommitRetaining;
      QAmortiza.ApplyUpdates;
      QAmortiza.Transaction.CommitRetaining;
      QFichero.EnableControls;
   except
      DatabaseError('Error al guardar datos de la Subcuenta.' + #13 + 'Puede estar duplicada');
      QFichero.EnableControls;
   end;

   if lAdd then  begin
      if not (CDSFiltro.State in dsEditModes) then begin
         CDSFiltro.Edit;
      end;

      CDSFiltroBSUBCUENTA.AsString := QFicheroSUBCUENTA.AsString;
      if CheckBoxSubctaRet.Checked then begin
         cSubctaRet := '434' + Copy(QFicheroSUBCUENTA.AsString, 4, 7);
         QFichero.Insert;
         QFicheroSUBCUENTA.AsString   := cSubctaRet;
         QFicheroDESCRIPCION.AsString := cDescripcion;
         QFicheroNIF.AsString         := cNif;
         Qfichero.Post;
         QFichero.Transaction.CommitRetaining;
      end;
      PrepararQuery;
   end;

   DMContaRef.RefrescarSubcuentas(Subcta);
   FormManager.Mode          := fmBrowse;
   CheckBoxSubctaRet.Visible := False;
   TabSubAccounts.Show;
   PageControlChange(TabSubAccounts);
   DataGrid.SetFocus;
end;

procedure TWSubCuentas.BtnCancelClick(Sender: TObject);
begin
   if MessageDlg('¿Quiere anular los cambios realizados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('Error al cancelar la operación');
      end;

      FormManager.Mode := fmBrowse;
      PageControl.ActivePage := TabSubaccounts;
      PageControlChange(TabSubAccounts);
      CheckBoxSubctaRet.Visible := False;

      DataGrid.SetFocus;
   end;
end;

procedure TWSubCuentas.FormShow(Sender: TObject);
begin
   EditBSubCuenta.SetFocus;
end;

procedure TWSubCuentas.BtnReportsClick(Sender: TObject);
begin
   PopupMenuListados.Popup(Self.Left + BtnReports.Left, Self.Top + BtnReports.Top + BtnReports.Height - 5);
end;

procedure TWSubCuentas.BtnRefreshClick(Sender: TObject);
begin
   if (CDSFiltro.State in dsEditModes) then begin
      CDSFiltro.Post;
   end;

   NavAnimate.Active  := True;
   NavAnimate.Visible := True;

   EditBSubcuentaEnter(nil);

   PrepararQuery;

   NavAnimate.Visible := False;
   NavAnimate.Active  := False;
   TabSubAccounts.Show;
   FiltroBuscar.SetFocus;
end;

procedure TWSubCuentas.QFicheroCalcFields(DataSet: TDataSet);
begin
   QFicheroSALDO.AsFloat := QFicheroSUMADB.Value - QFicheroSUMAHB.Value;
end;

procedure TWSubCuentas.QAmortizaNewRecord(DataSet: TDataSet);
begin
   QAmortizaSubcuenta.AsString  := QFicheroSUBCUENTA.AsString;
   QAmortizaClase.AsInteger     := StrToInt(Copy(Trim(QFicheroSUBCUENTA.AsString), 2, 2));
   QAmortizaPeriodo.AsString    := 'M';
   QAmortizaFCompra.AsDateTime  := Date;
   QAmortizaFInicio.AsDateTime  := Date;
   QAmortizaFUltAmor.AsDateTime := Date;
   //QAmortizaFBaja.asdatetime:=-693594;
   QAmortizaVcompra.AsFloat     := QFicheroSUMADB.AsFloat;

   QAmortizaVamor.AsFloat    := QAmortizaVcompra.AsFloat  - QAmortizaVresidual.AsFloat;
   QAmortizaVejpamor.AsFloat := QAmortizaVamor.AsFloat    - QAmortizaVejpinicio.AsFloat;
   QAmortizaVejaamor.AsFloat := QAmortizaVejpamor.AsFloat - QAmortizaVejainicio.AsFloat;
end;

procedure TWSubCuentas.Subcuentas1Click(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      QFichero.DisableControls;
      try
        {$Message Warn 'Este informe no funciona cuando se selecciona un gran número de subcuentas. Habrá que mejorarlo'}
        //BtnRefresh.Click;
        PDFExport.Author          := 'senCille Accounting';
        PDFExport.ShowDialog      := False;
        PDFExport.FileName        := 'Subcuentas.pdf';
        PDFExport.OpenAfterExport := True;

        ReportSubCuentas.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
        ReportSubCuentas.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

        ReportSubCuentas.PrepareReport(False);
        ReportSubCuentas.Export(PDFExport);
      finally
        QFichero.EnableControls;
      end;
   end;
end;

procedure TWSubCuentas.DetalledeSubcuentas1Click(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      QFichero.DisableControls;
      try
         {$Message Warn 'Este informe no funciona cuando se selecciona un gran número de subcuentas. Habrá que mejorarlo'}
         //BtnRefresh.Click;
         PDFExport.Author          := 'senCille Accounting';
         PDFExport.ShowDialog      := False;
         PDFExport.FileName        := 'DetalleSubcuentas.pdf';
         PDFExport.OpenAfterExport := True;

         ReportDetails.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
         ReportDetails.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

         ReportDetails.PrepareReport(True); 
         ReportDetails.Export(PDFExport);
      finally
        QFichero.EnableControls;
      end;
   end;
end;

procedure TWSubCuentas.Subcuentas1AdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
   ARect: TRect; State: TOwnerDrawState);
begin
   ACanvas.Brush.Color := $00D9D1C0;
   ACanvas.FillRect(ARect);
   ACanvas.Font.Color := clNavy;
   ACanvas.Font.Name  := 'Tahoma';
   ACanvas.TextRect(ARect, ARect.Left + 7, ARect.Top, TMenuItem(Sender).Caption);
end;

procedure TWSubCuentas.BtnLetterClick(Sender: TObject);
(*var
   nTotImporte, nImporte, nTotImpoDec, nTotImpo: Double;
   i, j:    Integer;
   Documento, Registro: String;
   FWord:   Variant;
   Fichero: TextFile;
   Year, Month, Day :Word;*)
begin
   ShowMessage('Funcionalidad Cancelada. Ver comentario en el código fuente.');
   {Esta funcionalidad queda de momento cancelada por su dependencia de la aplicación externa MS-Word.}
   {En un futuro se incluirá un informe, modificable por el usuario, que suplirá con creces esta funcionalidad}

(*   Perform(wm_NextDlgCtl, 0, 0);
   AssignFile(Fichero, 'c:\correo.txt');
   Rewrite(Fichero);

   // Primero crear la cabecera del fichero la cual no se usa
   Registro := 'NOMBRE#SUBCUENTA#DIRECCION#POBLACION#CODPOSTAL#PROVINCIA#BANCO#CHEQUE#EJERCICIO#EMPRESA#TOTIMPORTE#EUROS#FECHAASIENTO#FECHA1#TEXTO1#IMPORTE1#FACTURA1#' + 'FECHA2#TEXTO2#IMPORTE2#FACTURA2#FECHA3#TEXTO3#IMPORTE3#FACTURA3#FECHA4#TEXTO4#IMPORTE4#FACTURA4#FECHA5#TEXTO5#IMPORTE5#FACTURA5#' + 'FECHA6#TEXTO6#IMPORTE6#FACTURA6#FECHA7#TEXTO7#IMPORTE7#FACTURA7#FECHA8#TEXTO8#IMPORTE8#FACTURA8#FECHA9#TEXTO9#IMPORTE9#FACTURA9#' + 'FECHA10#TEXTO10#IMPORTE10#FACTURA10#';
   Writeln(Fichero, Registro);

   // Segundo incluir registro
   Registro := QFicheroDESCRIPCION.AsString + '#' + QFicheroSUBCUENTA.AsString + '#' +
      QFicheroDIRECCION.AsString + ' ' + QFicheroDIRECCION1.AsString +
      ', ' + QFicheroNUMERO.AsString + '#' + QFicheroPOBLACION.AsString + '#' +
      QFicheroCODPOSTAL.AsString + '#';
   if not QProvincias.IsEmpty then begin
      Registro := Registro + QProvinciasNOMBRE.AsString + '#';
   end
   else begin
      Registro := Registro + ' ' + '#';
   end;
   if CDSFiltroCartas.FieldByName('SUBCUENTA').AsString <> '' then   begin
      Registro := Registro + DMContaRef.QSubCTABancoDesc.FieldByName('DESCRIPCION').AsString + '#';
   end
   else begin
      Registro := Registro + ' ' + '#';
   end;

   DecodeDate(DMRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime, Year, Month, Day);

   Registro := Registro + CDSFiltroCartas.FieldByName('CHEQUE').AsString + '#' +
      IntToStr(Year) + '#' + DMRef.QParametrosNOMBREFISCAL.AsString + '#';


   // Poner fechas, texto e importes
   nTotImporte := 0;
   nTotImpo    := 0;
   nTotImpoDec := 0;*)

   {$Message warn 'Se han seleccionado varios registros, que se puede, y esto debe gestionarse'}
   (*for i := 0 to GridPago.SelectedList.Count - 1 do begin
      QDiario.GotoBookmark(GridPermPago.SelectedList.items[i]);
      if QDiario.FieldByName('Debehaber').AsString = 'H' then  begin
         if FEsProveedor then   begin
            nImporte    := RoundTo(QDiarioIMPORTE.AsFloat, -2);
            nTotImpo    := nTotImpo + nImporte;
            nTotImpoDec := nTotImpoDec + nImporte;
         end
         else begin
            nImporte    := (-1) * RoundTo(QDiarioIMPORTE.AsFloat, -2);
            nTotImpo    := nTotImpo + nImporte;
            nTotImpoDec := nTotImpoDec + nImporte;
         end;
      end
      else begin
         if FEsProveedor then   begin
            nImporte    := (-1) * RoundTo(QDiarioIMPORTE.AsFloat, -2);
            nTotImpo    := nTotImpo + nImporte;
            nTotImpoDec := nTotImpoDec + nImporte;
         end
         else begin
            nImporte    := RoundTo(QDiarioIMPORTE.AsFloat, -2);
            nTotImpo    := nTotImpo + nImporte;
            nTotImpoDec := nTotImpoDec + nImporte;
         end;
      end;

      nTotImporte := nTotImporte + nImporte;
      if i = 9 then begin
         break;
      end;

   end;*)

(*   Registro := Registro + Format('%.2n', [nTotImporte]) + '#';
   if nTotImpo > 0 then begin
      Registro := Registro + UpperCase(Euros(nTotImpo, 'M')) + '#';
   end
   else begin
      Registro := Registro + 'cero#';
   end;

   Registro := Registro + CDSFiltroCartas.FieldByName('fechaAsiento').AsString + '#';
   if nTotImporte = 0 then begin
      DatabaseError('No ha seleccionado ningún registro.');
   end;*)

   {$Message warn 'Se han seleccionado varios registros, que se puede, y esto debe gestionarse'}
   (*for i := 0 to GridPago.SelectedList.Count - 1 do begin
      QDiario.GotoBookmark(GridPermPago.SelectedList.items[i]);
      if QDiario.FieldByName('Debehaber').AsString = 'H' then   begin
         if FEsProveedor then begin
            nImporte := RoundTo(QDiarioIMPORTE.AsFloat, -2);
         end
         else begin
            nImporte := (-1) * RoundTo(QDiarioIMPORTE.AsFloat, -2);
         end;
      end
      else begin
         if FEsProveedor then begin
            nImporte := (-1) * RoundTo(QDiarioIMPORTE.AsFloat, -2);
         end
         else begin
            nImporte := RoundTo(QDiarioIMPORTE.AsFloat, -2);
         end;
      end;
      Registro := Registro + QDiario.FieldByName('fecha').AsString + '#' +
         Copy(QDiarioDescApunte.AsString, 1, 40) + '#' + Format('%.2n', [nImporte]) + '#' +
         QDiarioNUMEROFACTURA.AsString + '#';
      if i = 9 then begin
         break;
      end;
   end;*)

   // Poner el resto de campos vacios
(*   if i < 9 then  begin
      for j := i to 9 do begin
         Registro := Registro + ' # # # #';
      end;
   end;
   Writeln(Fichero, Registro);
   CloseFile(Fichero);

   if FEsProveedor then begin
      Documento := DMRef.QParametrosDOCPROVEEDOR.AsString;
   end
   else begin
      Documento := DMRef.QParametrosDOCCLIENTE.AsString;
   end;

   Screen.Cursor := crHourGlass;

   try
      FWord := GetActiveOleObject('Word.Application');
   except
      FWord := CreateOleObject('Word.Application');
   end;

   FWord.Documents.Open(
      FileName := Documento,
      ConfirmConversions := False,
      ReadOnly := True, AddToRecentFiles := False, PasswordDocument := '',
      PasswordTemplate := '', Revert := False, WritePasswordDocument := '',
      WritePasswordTemplate := '', Format := wdOpenFormatAuto);

   FWord.ActiveDocument.MailMerge.MainDocumentType := 0;

   Screen.Cursor := crDefault;

   FWord.ActiveDocument.MailMerge.OpenDataSource(
      Name := 'c:\correo.txt',
      ConfirmConversions := False, ReadOnly := False, LinkToSource := True,
      AddToRecentFiles := False, PasswordDocument := '', PasswordTemplate := '',
      WritePasswordDocument := '', WritePasswordTemplate := '', Revert := False,
      Format := wdOpenFormatAuto, Connection := '',
      SQLStatement := '', SQLStatement1 := '');

   if DMRef.QParametrosDOCIMPRIMIR.AsString = 'S' then   begin
      FWord.activeDocument.MailMerge.Destination := wdSendToNewDocument;
      FWord.Visible := True;
   end
   else begin
      FWord.activeDocument.MailMerge.Destination := wdSendToPrinter;
   end;

   FWord.activeDocument.Mailmerge.MailAsAttachment       := False;
   FWord.activeDocument.Mailmerge.SuppressBlankLines     := True;
   FWord.activeDocument.Mailmerge.Datasource.FirstRecord := wdDefaultFirstRecord;
   FWord.activeDocument.Mailmerge.Datasource.LastRecord  := wdDefaultLastRecord;
   FWord.activeDocument.Mailmerge.Execute(Pause          := False);

   if DMRef.QParametrosDOCIMPRIMIR.AsString <> 'S' then   begin
      FWord.ActiveDocument.Close(wdDoNotSaveChanges);
   end;

   MessageDlg('Impresión de carta finalizada', mtInformation, [mbOK], 0);

   QDiario.Refresh; *)
end;

procedure TWSubCuentas.BtnGeneraClick(Sender: TObject);
var //i                    :Integer;
    nAsiento             :Integer;
    nApunte              :Integer;
    nTotImporte          :Double;
    //nImporte             :Double;
    AbreviaturaSubcuenta :string;
    //cDB                  :string;
    //cComentario          :string;
    cFactura             :string;
    cCuentaAnalitica     :string;
    QAbrevSubctas        :TIBQuery;
begin
   if QDiario.IsEmpty then   begin
      Exit;
   end;

   {$Message warn 'Se han seleccionado varios registros, que se puede, y esto debe gestionarse'}
   {if GridPago.SelectedList.Count = 0 then   begin
      DatabaseError('No ha seleccionado ningún asiento.');
   end;}

   // Confirmación
   if MessageDlg('¿Desea generar el asiento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;

   Perform(wm_NextDlgCtl, 0, 0);

   if CDSFiltroCartas.FieldByName('FECHAASIENTO').IsNull then begin
      EditFechaAsiento.SetFocus;
      DatabaseError('No se puede dejar la fecha de asiento en blanco.' + #13 + 'Por favor, revise los datos de entrada.');
   end;
   if CDSFiltroCartas.FieldByName('SUBCUENTA').AsString = '' then begin
      ComboBoxCD_SCTABANCO.SetFocus;
      DatabaseError('No se puede dejar la subcuenta de pago en blanco.' + #13 + 'Por favor, revise los datos de entrada.');
   end;
   if CDSFiltroCartas.FieldByName('CONCEPTOD').AsString = '' then begin
      ComboBoxCD_CONCEPTO_DEBE.SetFocus;
      DatabaseError('No se puede dejar el concepto debe en blanco.' + #13 + 'Por favor, revise los datos de entrada.');
   end;
   if CDSFiltroCartas.FieldByName('CONCEPTOH').AsString = '' then begin
      ComboBoxCD_CONCEPTO_HABER.SetFocus;
      DatabaseError('No se puede dejar el concepto haber en blanco.' + #13 + 'Por favor, revise los datos de entrada.');
   end;

   EditTotalImporte.Text := '0';
   nAsiento := DMContaRef.ObtenerNumeroAsiento;
   { Control inicio programa }
   if nAsiento = 0 then   begin
      nAsiento := 1;
   end;

   nTotImporte := 0;
   nApunte     := 1;

   QAbrevSubctas := TIBQuery.Create(nil);
   try
      QAbrevSubctas.Database := DMRef.BDContab;
      QAbrevSubctas.SQL.Add('SELECT SUBCUENTA, ABREVIATURA FROM SUBCTAS');
      QAbrevSubctas.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA');
      QAbrevSubctas.ParamByName('SUBCUENTA').AsString := CDSFiltroCartas.FieldByName('SUBCUENTA').AsString;
      QAbrevSubctas.Open;
      AbreviaturaSubcuenta := QAbrevSubctas.FieldByName('ABREVIATURA').AsString;
   finally
      QAbrevSubctas.Free;
   end;

   {$Message warn 'Se han seleccionado varios registros, que se puede, y esto debe gestionarse'}
   {for i := 0 to GridPago.SelectedList.Count - 1 do begin
      QDiario.GotoBookmark(GridPermPago.SelectedList.items[i]);

      cCuentaAnalitica := QDiarioCUENTA_ANALITICA.AsString;
      nImporte         := RoundTo(QDiarioIMPORTE.AsFloat, -2);
      cFactura         := QDiarioNUMEROFACTURA.AsString;
      cComentario      := QDiarioCOMENTARIO.AsString;

      if QDiarioDEBEHABER.AsString = 'D' then   begin
         cDB         := 'H';
         nTotImporte := nTotImporte - nImporte;
      end
      else begin
         cDB         := 'D';
         nTotImporte := nTotImporte + nImporte;
      end;


      QDiario.Edit;
      QDiarioPUNTEO.AsString := 'S';
      QDiario.Post;
      QDiario.Transaction.CommitRetaining;
      QDiario.Refresh;


      QDiario.Insert;
      QDiarioASIENTO.AsInteger := nAsiento;
      QDiarioAPUNTE.AsInteger  := nApunte;
      Inc(nApunte);
      QDiarioMONEDA.AsString           := 'E';
      QDiarioSUBCUENTA.AsString        := QFicheroSUBCUENTA.AsString;
      QDiarioCONTRAPARTIDA.AsString    := CDSFiltroCartas.FieldByName('SUBCUENTA').AsString;
      QDiarioFECHA.AsDateTime          := CDSFiltroCartas.FieldByName('FECHAASIENTO').AsDateTime;
      QDiarioDEBEHABER.AsString        := cDB;
      QDiarioCUENTA_ANALITICA.AsString := cCuentaAnalitica;
      QDiarioID_CONCEPTOS.AsString     := CDSFiltroCartas.FieldByName('CONCEPTOD').AsString;
      QDiarioIMPORTE.AsFloat           := nImporte;
      QDiarioNUMEROFACTURA.AsString    := cFactura;
      QDiarioCOMENTARIO.AsString       := cComentario;
      QDiarioPUNTEO.AsString           := 'S';
      QDiario.Post;
      QDiario.Transaction.CommitRetaining;
      QDiario.Refresh;

      QDiario.Freebookmark(GridPermPago.SelectedList.items[i]);
   end;}

   // Apunte final
   QDiario.Insert;
   QDiarioASIENTO.AsInteger         := nAsiento;
   QDiarioAPUNTE.AsInteger          := nApunte;
   QDiarioMONEDA.AsString           := 'E';
   QDiarioSUBCUENTA.AsString        := CDSFiltroCartas.FieldByName('SUBCUENTA').AsString;
   QDiarioCONTRAPARTIDA.AsString    := QFicheroSUBCUENTA.AsString;
   QDiarioFECHA.AsDateTime          := CDSFiltroCartas.FieldByName('FECHAASIENTO').AsDateTime;
   QDiarioDEBEHABER.AsString        := 'H';
   QDiarioCUENTA_ANALITICA.AsString := cCuentaAnalitica;
   QDiarioID_CONCEPTOS.AsString     := CDSFiltroCartas.FieldByName('CONCEPTOH').AsString;
   QDiarioIMPORTE.AsFloat           := nTotImporte;
   QDiarioNUMEROFACTURA.AsString    := cFactura;
   QDiarioCOMENTARIO.AsString       := 'Ch: ' + CDSFiltroCartas.FieldByName('CHEQUE').AsString + ' ' + Trim(QFicheroDESCRIPCION.AsString);
   QDiarioPUNTEO.AsString           := '';
   QDiario.Post;
   QDiario.Transaction.CommitRetaining;
   QDiario.Refresh;

   MessageDlg('Generado asiento nº: ' + IntToStr(nAsiento), mtInformation, [mbOK], 0);

   // Limpiar lista
   {$Message warn 'Se han seleccionado varios registros, que se puede, y esto debe gestionarse'}
   //GridPago.SelectedList.Clear;

   QDiario.Close;
   QDiario.Open;

   QDiario.Refresh;
end;

(*procedure TWSubCuentas.GridPermPagoMultiSelectRecord(Grid: TDBGrid; Selecting: Boolean; var Accept: Boolean);
var nPor :Integer;
begin
   nPor := 1;
   if FEsProveedor and (grid.datasource.dataset.FieldByName('debehaber').AsString = 'D') then   begin
      nPor := -1;
   end;
   if not FEsProveedor and (grid.datasource.dataset.FieldByName('debehaber').AsString = 'H') then   begin
      nPor := -1;
   end;

   if selecting then   begin
      EditTotalImporte.Text := FormatFloat('#.##', StrToFloat(EditTotalImporte.Text) + (nPor * Grid.DataSource.DataSet.FieldByName('IMPORTE').AsFloat));
   end
   else begin
      EditTotalImporte.Text := FormatFloat('#.##', StrToFloat(EditTotalImporte.Text) - (nPor * Grid.DataSource.DataSet.FieldByName('IMPORTE').AsFloat));
   end;
end;*)

procedure TWSubCuentas.BtnFilterLettersClick(Sender: TObject);
begin
   if CDSFiltroCartas.State in dsEditModes then   begin
      CDSFiltroCartas.Post;
   end;

   PrepararQueryDiario;
end;

procedure TWSubCuentas.QDiarioCalcFields(DataSet: TDataSet);
begin
   QDiarioDescApunte.AsString :=
      DMContaRef.GetDescripcionApunte(QDiarioDescConcepto.AsString,
                                      QDiarioNUMEROFACTURA.AsString,
                                      QDiarioSERIE.AsString,
                                      QDiarioEJERCICIO.AsInteger,
                                      QDiarioCOMENTARIO.AsString,
                                      QDiarioABREVIATURA.AsString);
end;

procedure TWSubCuentas.QFicheroAfterScroll(DataSet: TDataSet);
begin
   QFichero.EnableControls;
   if PageControl.ActivePage = TabLetters then begin
      PrepararQueryDiario;
      RefrescarControles;
   end else
   if PageControl.ActivePage = TabGraphics then begin
      RellenaChart;
   end;
end;

procedure TWSubCuentas.GroupBoxVATTypeEnter(Sender: TObject);
begin
   CheckComboBoxLIVABehavior;
end;

procedure TWSubCuentas.BtnRepGraphicsClick(Sender: TObject);
begin
   (*if PageControl.ActivePage = TabGraphics then begin
      if MessageDlg('¿Desea imprimir este gráfico?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         if PageControlGraphics.ActivePage = TabGraphicCurrentYear then begin
            ChartActual.PrintLandscape;
         end else
         if PageControlGraphics.ActivePage = TabGraphicPreviousYear then begin
            ChartAnterior.PrintLandscape;
         end else
         if PageControlGraphics.ActivePage = TabGraphicComparativ then begin
            ChartCompara.PrintLandscape;
         end;
      end;
   end;*)
end;

procedure TWSubCuentas.QMovimientosCalcFields(DataSet: TDataSet);
begin
   QMovimientosDESCCOMENTARIO.AsString :=
         DMContaRef.GetDescripcionApunte(QMovimientosDESCCONCEPTO.AsString,
                                         QMovimientosNUMEROFACTURA.AsString,
                                         QMovimientosSERIE.AsString,
                                         QMovimientosEJERCICIO.AsInteger,
                                         QMovimientosCOMENTARIO.AsString, '');
end;

procedure TWSubCuentas.CalculoImportesAmortizaciones(Sender: TObject);
begin
   if QAmortiza.State in dsEditModes then  begin
      QAmortizaVAMOR.AsFloat    := QAmortizaVCOMPRA.AsFloat  - QAmortizaVRESIDUAL.AsFloat;
      QAmortizaVEJPAMOR.AsFloat := QAmortizaVAMOR.AsFloat    - QAmortizaVEJPINICIO.AsFloat;
      QAmortizaVEJAAMOR.AsFloat := QAmortizaVEJPAMOR.AsFloat - QAmortizaVEJAINICIO.AsFloat;
   end;
end;

procedure TWSubCuentas.BtnDupleClick(Sender: TObject);
var QOrigen :TibDataset;
    i       :Word;
    Campo   :string;
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   if MessageDlg('¿Quiere duplicar esta Subcuenta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      lAdd    := True;
      QOrigen := TibDataset.Create(nil);
      try
         try
            QOrigen.Database    := DMRef.BDContab;
            QOrigen.Transaction := Transaccion;
            QOrigen.SelectSql.Add('SELECT * FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA');
            QOrigen.Params.ByName('SUBCUENTA').AsString := QFicheroSUBCUENTA.AsString;
            QOrigen.Open;

            QFichero.Insert;
            for i := 0 to QOrigen.FieldCount - 1 do begin
               Campo           := QOrigen.Fields[i].Fieldname;
               QFichero[Campo] := QOrigen[campo];
            end;
            QOrigen.Close;
            TabData.Show;
            EditSUBCUENTA.SetFocus;
            FormManager.Mode := fmEdit;
            TabAmortizations.Visible := False;
            PageControlChange(TabData);
         except
            raise;
            DatabaseError('Error al duplicar una Subcuenta.');
         end;
      finally
         QOrigen.Free;
      end;
   end;
end;

procedure TWSubcuentas.CheckComboBoxLIVABehavior;
var AccountType :string;
begin
   ComboBoxVATType.ReadOnly := False;

   if IsEmpty(QFicheroSUBCUENTA.AsString) then begin
      ComboBoxVATType.ReadOnly := True;
      if PageControl.ActivePage = TabData then begin
         EditSUBCUENTA.SetFocus;
      end;
      Exit;
   end;

   AccountType := FModel.GetAccountType(QFicheroSUBCUENTA.AsString);
   if AccountType = 'R' then begin
      QVAT.Close;
      QVAT.SelectSQL.Clear;
      QVAT.SelectSQL.Add('SELECT TIPO, DESCRIPCION FROM IVAR ORDER BY DESCRIPCION');
      QVAT.Open;
   end else
   if AccountType = 'S' then begin
      QVAT.Close;
      QVAT.SelectSQL.Clear;
      QVAT.SelectSQL.Add('SELECT TIPO, DESCRIPCION FROM IVAS ORDER BY DESCRIPCION');
      QVAT.Open;
   end
   else begin
      ComboBoxVATType.ReadOnly := True;
   end;
end;

procedure TWSubCuentas.PageControlChange(Sender: TObject);
begin
   if Sender = TabData then begin
      //BtnAppend.Visible := not (QFichero.State in dsEditModes);
      //BtnDelete.Visible := not (QFichero.State in dsEditModes);
      CheckComboBoxLIVABehavior;
   end else
   if Sender = TabAmortizations then begin
      if (QFichero.State in dsEditModes) then begin
         if (QAmortiza.EOF) then begin
            QAmortiza.Insert;
         end
         else begin
            QAmortiza.Edit;
         end;
      end;
   end else
   if Sender = TabLetters then begin
      DMContaRef.CrearTablaCorreo;
      PrepararRefreshDiario;
      PrepararQueryDiario;
      RefrescarControles;
   end else
   if Sender = TabGraphics then begin
      RellenaChart;
   end;

   BtnRepGraphics.Visible := PageControl.ActivePage = TabGraphics;
end;

procedure TWSubCuentas.SubGridMovementsDblClick(Sender: TObject);
var Asiento        :Integer;
    AsientoNomina  :Integer;
    AsientoEmpresa :Integer;
begin
   if not QMovimientos.IsEmpty then  begin
      if DMContaRef.AsientoBloqueado(QMovimientosFECHA.AsDateTime) then   begin
         DatabaseError('No se puede modificar un asiento bloqueado.');
      end;

      Asiento := QMovimientos.FieldByName('ASIENTO').AsInteger;

      // ASIENTO DE NÓMINA / SS EMPRESA
      if (QMovimientosTIPOASIENTO.AsInteger = ASIENTO_NOMINA) or
         (QMovimientosTIPOASIENTO.AsInteger = ASIENTO_SSOCIAL_EMPRESA) then   begin
         if QMovimientosTIPOASIENTO.AsInteger = ASIENTO_NOMINA then   begin
            AsientoNomina  := QMovimientosASIENTO.AsInteger;
            AsientoEmpresa := QMovimientosASIENTONOMINA.AsInteger;
         end
         else begin
            AsientoEmpresa := QMovimientosASIENTO.AsInteger;
            AsientoNomina  := QMovimientosASIENTONOMINA.AsInteger;
         end;

         if not Assigned(WCargaRapidaNominas) then   begin
            WCargaRapidaNominas := TWCargaRapidaNominas.Create(nil);
         end;

         WCargaRapidaNominas.FModoArranque   := Modificacion;
         WCargaRapidaNominas.FAsientoNomina  := AsientoNomina;
         WCargaRapidaNominas.FAsientoEmpresa := AsientoEmpresa;

         WCargaRapidaNominas.ShowModal;
      end
      else begin
         WCargaAsiento := TWCargaAsiento.Create(nil);
         try
            WCargaAsiento.FModoArranque := Modificacion;
            WCargaAsiento.FAsiento      := QMovimientos.FieldByName('ASIENTO').AsInteger;
            WCargaAsiento.ShowModal;
         finally
            FreeAndNil(WCargaAsiento);
         end;
      end;

      PrepararQueryMovimientos;

      QMovimientos.DisableControls;
      QMovimientos.First;
      while not QMovimientos.EOF do begin
         if QMovimientos.FieldByName('ASIENTO').AsInteger = Asiento then   begin
            Break;
         end;
         QMovimientos.Next;
      end;
      QMovimientos.EnableControls;
   end;

   PageControl.Update;
end;

procedure TWSubCuentas.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWSubCuentas.BtnModifyClick(Sender: TObject);
var valor :string;
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      lAdd := False;
      try
         QFichero.Edit;
         FormManager.Mode          := fmEdit;
         CheckBoxSubctaRet.Visible := False;
         PageControl.ActivePage    := TabData;
         PageControlChange(TabData);

         // Si la subcuenta no es del tipo de cuenta de Amort. material o inmaterial
         // no tendra datos y no puede entrar.
         Valor := DmRef.ObtenerValor('TIPOCUENTA', 'CUENTAS', 'CUENTA = ' +
            Copy(Trim(QFicheroSUBCUENTA.AsString), 1, 3));
         if (Valor <> 'M') and (Valor <> 'I') then   begin
            TabAmortizations.Visible := False;
         end;

         EditDESCRIPCION.SetFocus;
      except MessageDlg('No se puede editar el registro seleccionado.' + #13 +
                        'Puede estar en uso por otra persona.', mtInformation, [mbOK], 0);
      end;
   end;
end;

procedure TWSubCuentas.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'SUBCUENTA') or (UpperCase(Column.FieldName) = 'DESCRIPCION') then  begin
      CampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

end.
