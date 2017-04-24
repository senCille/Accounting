unit UCuentas;

interface

uses Buttons, Classes, ComCtrls, Controls, Db, DBClient, DBCtrls, Dialogs,
     ExtCtrls, Forms, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBSQL, Messages,
     StdCtrls, SysUtils, Windows, DBGrids, FormHandler,  Mask,
     frxClass, frxExportPDF, frxDBSet;
     
type
  TWCuentas = class(TForm)
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    SFichero: TDataSource;
    QAux: TIBSQL;
    QFicheroDESCRIPCION: TIBStringField;
    QFicheroTIPOCUENTA: TIBStringField;
    QFicheroGRUPO1: TIBStringField;
    QFicheroGRUPO2: TIBStringField;
    QFicheroSUMADB: TFloatField;
    QFicheroSUMAHB: TFloatField;
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
    QFicheroANTHB: TFloatField;
    QFicheroANTDB: TFloatField;
    QFicheroCUENTA: TIBStringField;
    QFicheroTipoCuentaDesc: TIBStringField;
    Panel1: TPanel;
    Label2: TLabel;
    Shape1: TShape;
    DBText2: TDBText;
    DBText1: TDBText;
    Panel2: TPanel;
    PageControl: TPageControl;
    TabCuentas: TTabSheet;
    TabDatos: TTabSheet;
    TabAcumulados: TTabSheet;
    TabGraficos: TTabSheet;
    Panel3: TPanel;
    BtnRefresh: TSpeedButton;
    BtnAppend: TButton;
    BtnDelete: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    BtnReports: TButton;
    NavAnimate: TAnimate;
    BtnModify: TButton;
    FiltroBuscar: TGroupBox;
    Label1: TLabel;
    Label12: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    EditFiltroBDescripcion: TDBEdit;
    EditFiltroBCuenta: TDBEdit;
    EditFiltroBTitulo: TDBEdit;
    EditFiltroBGrupo: TDBEdit;
    DataGrid: TDBGrid;
    GroupBox1: TGroupBox;
    Label30: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditDescripcion: TDBEdit;
    EditCuenta: TDBEdit;
    ComboGrupo1: TDBLookupComboBox;
    ComboGrupo2: TDBLookupComboBox;
    ComboGrupo1Desc: TDBLookupComboBox;
    ComboGrupo2Desc: TDBLookupComboBox;
    DBRadioGroup: TDBRadioGroup;
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
    Edit1: TDBEdit;
    Edit2: TDBEdit;
    Edit3: TDBEdit;
    Edit4: TDBEdit;
    Edit5: TDBEdit;
    Edit6: TDBEdit;
    GroupBox4: TGroupBox;
    Edit7: TDBEdit;
    Edit8: TDBEdit;
    Edit9: TDBEdit;
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
    Edit52: TDBEdit;
    Label35: TLabel;
    Edit51: TDBEdit;
    Label34: TLabel;
    DBNavigator: TDBNavigator;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    FastReport: TfrxReport;
    PageControlGraficos: TPageControl;
    TabGraphicCurrentYear: TTabSheet;
    TabGraphicPreviousYear: TTabSheet;
    TabGraphicComparative: TTabSheet;
    Memo1: TMemo;
    procedure fcIBCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAppendClick(Sender: TObject);
    procedure RejillaDblClick(Sender: TObject);
    procedure QFicheroBeforeOpen(DataSet: TDataSet);
    procedure QFicheroAfterEdit(DataSet: TDataSet);
    procedure EditFiltroBCuentaEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
    procedure RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure FormShow(Sender: TObject);
    procedure EditFiltroBCuentaExit(Sender: TObject);
    procedure BtnReportsClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure QFicheroCalcFields(DataSet: TDataSet);
    procedure EditCuentaEnter(Sender: TObject);
    procedure QFicheroAfterScroll(DataSet: TDataSet);
    procedure PageControlChange(Sender: TObject);
  private
    FormManager :TccFormHandler;
    lAdd       :Boolean;
    CampoOrden :string;
    procedure ActivarTransacciones;
    procedure PrepararQuery;
    procedure CrearFiltro;
    procedure InicializarFiltro;
    procedure RellenaChart;
  public
  end;

const
   TabCuentas    = 0;
   TabDatos      = 1;
   TabAcumulados = 2;
   TabGraficos   = 3;

var WCuentas: TWCuentas;

implementation

uses System.Math, System.StrUtils,
     DM, DMConta, DMControl, Globales;

{$R *.DFM}

procedure TWCuentas.FormCreate(Sender: TObject);
begin
   ActivarTransacciones;
   CrearFiltro;
   InicializarFiltro;

   CampoOrden := 'CUENTA';
   PrepararQuery;

   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(DataGrid.Name              , fmBrowse);
   FormManager.AddComp(EditFiltroBGrupo.Name      , fmBrowse);
   FormManager.AddComp(BtnAppend.Name             , fmBrowse);
   FormManager.AddComp(BtnModify.Name             , fmBrowse);
   FormManager.AddComp(BtnDelete.Name             , fmBrowse);
   FormManager.AddComp(BtnReports.Name            , fmBrowse);
   FormManager.AddComp(BtnAccept.Name             , fmEdit  );
   FormManager.AddComp(BtnCancel.Name             , fmEdit  );
   FormManager.AddComp(BtnRefresh.Name            , fmBrowse);
   FormManager.AddComp(EditFiltroBCuenta.Name     , fmBrowse);
   FormManager.AddComp(EditFiltroBDescripcion.Name, fmBrowse);
   FormManager.AddComp(EditFiltroBTitulo.Name     , fmBrowse);
   FormManager.AddComp(EditFiltroBGrupo.Name      , fmBrowse);
   FormManager.AddComp(EditCuenta.Name            , fmEdit  );
   FormManager.AddComp(EditDescripcion.Name       , fmEdit  );
   FormManager.AddComp(ComboGrupo1.Name           , fmEdit  );
   FormManager.AddComp(ComboGrupo1Desc.Name       , fmEdit  );
   FormManager.AddComp(ComboGrupo2.Name           , fmEdit  );
   FormManager.AddComp(ComboGrupo2Desc.Name       , fmEdit  );
   FormManager.AddComp(DBRadioGroup.Name          , fmEdit  );
   FormManager.AddComp(Edit1.Name                 , fmNone  );
   FormManager.AddComp(Edit2.Name                 , fmNone  );
   FormManager.AddComp(Edit3.Name                 , fmNone  );
   FormManager.AddComp(Edit4.Name                 , fmNone  );
   FormManager.AddComp(Edit5.Name                 , fmNone  );
   FormManager.AddComp(Edit6.Name                 , fmNone  );
   FormManager.AddComp(Edit7.Name                 , fmNone  );
   FormManager.AddComp(Edit8.Name                 , fmNone  );
   FormManager.AddComp(Edit9.Name                 , fmNone  );
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

   PageControl.ActivePage := TabCuentas;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

procedure TWCuentas.PrepararQuery;
begin
   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.Transaction.Active := True;
   QFichero.SelectSQL.Add('SELECT * FROM Cuentas WHERE Cuenta IS NOT NULL');

   if CDSFiltro.FieldByName('BCuenta').AsString <> '' then   begin
      QFichero.SelectSQL.Add('AND Cuenta LIKE :BCuenta ');
   end else
   if CDSFiltro.FieldByName('BDescripcion').AsString <> '' then   begin
      QFichero.SelectSQL.Add('AND Upper(Descripcion) LIKE Upper(:BDescripcion)');
   end else
   if CDSFiltro.FieldByName('BTITULO').AsString <> '' then   begin
      QFichero.SelectSQL.Add('AND (GRUPO1 LIKE :TITULO OR GRUPO2 LIKE :TITULO)');
   end
   else
   if CDSFiltro.FieldByName('BGRUPO').AsString <> '' then   begin
      QFichero.SelectSQL.Add('AND (GRUPO1 LIKE :GRUPO OR GRUPO2 LIKE :GRUPO)');
   end;

   CampoOrden := UpperCase(Trim(CampoOrden));
   if CampoOrden <> '' then   begin
      QFichero.SelectSQL.Add('ORDER BY ' + CampoOrden);
   end
   else begin
      QFichero.SelectSQL.Add('ORDER BY Cuenta');
   end;

   // PARÁMETROS
   if CDSFiltro.FieldByName('BCuenta').AsString <> '' then   begin
      QFichero.Params.byname('BCuenta').AsString :=
         Trim(CDSFiltro.FieldByName('BCuenta').AsString);
      if Length(CdsFiltro.FieldByName('BCuenta').AsString) <> 3 then   begin
         QFichero.Params.byname('BCuenta').AsString := QFichero.Params.byname('BCuenta').AsString + '%';
      end;
   end else
   if CDSFiltro.FieldByName('BDescripcion').AsString <> '' then   begin
      QFichero.Params.byname('BDescripcion').AsString :=
         Trim(CDSFiltro.FieldByName('BDescripcion').AsString) + '%';
   end
   else
   if CDSFiltro.FieldByName('BTITULO').AsString <> '' then   begin
      QFichero.Params.ByName('TITULO').AsString := CDSFiltro.FieldByName('BTITULO').AsString + '%';
   end
   else
   if CDSFiltro.FieldByName('BGRUPO').AsString <> '' then   begin
      QFichero.Params.ByName('GRUPO').AsString :=
         Copy(CDSFiltro.FieldByName('BGRUPO').AsString + '%', 1,
         CDSFiltro.FieldByName('BGRUPO').Size);
   end;

   QFichero.Prepare;
   QFichero.EnableControls;
   QFichero.Open;

   BtnRefresh.Flat := True;
end;

procedure TWCuentas.ActivarTransacciones;
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

procedure TWCuentas.CrearFiltro;
begin
   CDSFiltro.Active := False;
   CDSFiltro.FieldDefs.Clear;
   CDSFiltro.FieldDefs.Add('BCuenta', ftString, 3, False);
   CDSFiltro.FieldDefs.Add('BDescripcion', ftstring, 50, False);
   CDSFiltro.FieldDefs.Add('BTITULO', ftstring, 2, False);
   CDSFiltro.FieldDefs.Add('BGRUPO', ftstring, 3, False);
   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;
end;

procedure TWCuentas.InicializarFiltro;
begin
   CDSFiltro.FieldByName('BCuenta').AsString      := '';
   CDSFiltro.FieldByName('BDescripcion').AsString := '';
   CDSFiltro.FieldByName('BTITULO').AsString      := '';
   CDSFiltro.FieldByName('BGRUPO').AsString       := '';
end;

procedure TWCuentas.RellenaChart;
//var i :Integer;
begin
   (*ChartActual.Title.Text.Clear;
   ChartActual.Title.Text.Add(Config.ActiveDS_ENTERPRISE);

   ChartActual.Foot.Text.Clear;
   ChartActual.Foot.Text.Add(QFicheroCUENTA.AsString + '   ' + QFicheroDESCRIPCION.AsString);

   ChartAnterior.Title.Text.Clear;
   ChartAnterior.Title.Text.Add(Config.ActiveDS_ENTERPRISE);

   ChartAnterior.Foot.Text.Clear;
   ChartAnterior.Foot.Text.Add(QFicheroCUENTA.AsString + '   ' + QFicheroDESCRIPCION.AsString);

   ChartCompara.Title.Text.Clear;
   ChartCompara.Title.Text.Add(Config.ActiveDS_ENTERPRISE);

   ChartCompara.Foot.Text.Clear;
   ChartCompara.Foot.Text.Add(QFicheroCUENTA.AsString + '   ' + QFicheroDESCRIPCION.AsString);

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
            DMContaRef.QGraficosDEBEACT.AsFloat  := QFicheroACUDB01.AsFloat + QFicheroACUDB02.AsFloat +
               QFicheroACUDB03.AsFloat + QFicheroACUDB04.AsFloat +
               QFicheroACUDB05.AsFloat + QFicheroACUDB06.AsFloat +
               QFicheroACUDB07.AsFloat + QFicheroACUDB08.AsFloat +
               QFicheroACUDB09.AsFloat + QFicheroACUDB10.AsFloat +
               QFicheroACUDB11.AsFloat + QFicheroACUDB12.AsFloat;
            DMContaRef.QGraficosDEBEANT.AsFloat  := QFicheroANTDB01.AsFloat + QFicheroANTDB02.AsFloat +
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
      end;

      // Situar cuentas
      if (Copy(QFicheroGRUPO1.AsString, 1, 1) = 'A') or (Copy(QFicheroGRUPO1.AsString, 1, 1) = 'D') or
         (Copy(QFicheroGRUPO2.AsString, 1, 1) = 'A') or
         (Copy(QFicheroGRUPO2.AsString, 1, 1) = 'D') then
      begin
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

procedure TWCuentas.fcIBCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TWCuentas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = Chr(VK_RETURN)) then  begin
      // Comprobación del filtro por número de cuenta
      if (EditFiltroBCuenta.Focused) and (Trim(EditFiltroBCuenta.Text) <> '') then begin
         key := #0;
         if CDSFiltro.State in dsEditModes then   begin
            CDSFiltro.Post;
         end;
         PrepararQuery;
      end

      // Comprobación del filtro por Descripción de la cuenta
      else
      if (EditFiltroBDescripcion.Focused) and (Trim(EditFiltroBDescripcion.Text) <> '') then begin
         Key := #0;
         if CDSFiltro.State in dsEditModes then   begin
            CDSFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWCuentas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         if TDataSet(DBNavigator.DataSource.DataSet).State in
            dsEditModes then begin
            BtnCancel.Click;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditFiltroBCuenta) and (ActiveControl <> EditFiltroBDescripcion) and
            (ActiveControl <> EditFiltroBTitulo) and
            (ActiveControl <> EditFiltroBGrupo) and not
            (TDataSet(DBNavigator.DataSource.DataSet).State in dsEditModes) then   begin
            if not (TDataSet(DBNavigator.DataSource.DataSet).State in dsEditModes) then begin
               Key := 0;
               RejillaDblClick(Self);
            end;
         end;
      end;
      VK_F9: begin
         if TDataSet(DBNavigator.DataSource.DataSet).State in dsEditModes then begin
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

procedure TWCuentas.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   lAdd := True;
   try
      PageControl.ActivePage := TabDatos;
      QFichero.Insert;
      EditCuenta.SetFocus;
      FormManager.Mode := fmEdit;
      //PaginasPageChanged(Self, TabDatos);
   except
      raise;
      DatabaseError('Error al añadir una nueva cuenta.');
   end;
end;

procedure TWCuentas.RejillaDblClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      lAdd := False;
      try
         QFichero.Edit;
         FormManager.Mode := fmEdit;
         PageControl.ActivePage := TabDatos;
         EditDescripcion.SetFocus;
      except MessageDlg('No se puede editar el registro seleccionado.' + #13 +
                        'Puede estar en uso por otra persona.', mtInformation, [mbOK], 0);
      end;
   end;
end;

procedure TWCuentas.QFicheroBeforeOpen(DataSet: TDataSet);
begin
   QFichero.EnableControls;
end;

procedure TWCuentas.QFicheroAfterEdit(DataSet: TDataSet);
begin
   PageControlChange(TabDatos);
end;

procedure TWCuentas.EditFiltroBCuentaEnter(Sender: TObject);
begin
   if not (CDSFiltro.state in dseditmodes) then begin
      CDSFiltro.edit;
   end;
   CDSFiltro.FieldByName('BCuenta').AsString      := '';
   CDSFiltro.FieldByName('BDescripcion').AsString := '';
   CDSFiltro.FieldByName('BTITULO').AsString      := '';
   CDSFiltro.FieldByName('BGRUPO').AsString       := '';
end;

procedure TWCuentas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWCuentas.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then begin
      Exit;
   end;

   if MessageDlg('¿Quiere borrar esta cuenta? ' + #13 + QFicheroDescripcion.AsString,
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      QFichero.Delete;
      QFichero.Transaction.CommitRetaining;
   end;
end;

procedure TWCuentas.BtnAcceptClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   QFichero.Post;
   Transaccion.CommitRetaining;
   DMContaRef.RefrescarSubcuentas(
      QFicheroCUENTA.AsString + DupeString('0', DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger - Length(Trim(QFicheroCUENTA.AsString))));

   FormManager.Mode := fmBrowse;
   PageControl.ActivePage := TabCuentas;
   DataGrid.SetFocus;
end;

procedure TWCuentas.BtnCancelClick(Sender: TObject);
begin
   if MessageDlg('¿Quiere anular los cambios realizados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('Error al cancelar la operación');
      end;

      FormManager.Mode := fmBrowse;
      PageControl.ActivePage := TabCuentas;
      DataGrid.SetFocus;
   end;
end;

procedure TWCuentas.RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String;
   AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
begin
   if (UpperCase(AFieldName) = UpperCase(CampoOrden)) then   begin
      ABrush.Color := clBlue;
      AFont.Style  := [fsBold];
      AFont.Color  := clWhite;
   end;
end;

procedure TWCuentas.RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
begin
   if (UpperCase(AFieldName) = 'CUENTA') or (UpperCase(AFieldName) = 'DESCRIPCION') then  begin
      CampoOrden := UpperCase(AFieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;

end;

procedure TWCuentas.FormShow(Sender: TObject);
begin
   EditFiltroBCuenta.SetFocus;
end;

procedure TWCuentas.EditFiltroBCuentaExit(Sender: TObject);
begin
   if CDSFiltro.FieldByName('BCuenta').AsString <> '' then begin
      CampoOrden := 'Cuenta';
   end else
   if CDSFiltro.FieldByName('BDescripcion').AsString <> '' then begin
      CampoOrden := 'Descripcion';
   end;
   
   PrepararQuery;
end;

procedure TWCuentas.BtnReportsClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      (*if PageControl.ActivePage = TabGraficos then begin
         if MessageDlg('¿Desea imprimir este gráfico?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            if PageControlGraficos.ActivePage = TabGraphicCurrentYear  then ChartActual.PrintLandscape   else
            if PageControlGraficos.ActivePage = TabGraphicPreviousYear then ChartAnterior.PrintLandscape else
            if PageControlGraficos.ActivePage = TabGraphicComparative  then ChartCompara.PrintLandscape;
         end;
      end
      else begin*)
         BtnRefresh.Click;
         PDFExport.Author          := 'senCille Accounting';
         PDFExport.ShowDialog      := False;
         PDFExport.FileName        := 'Cuentas.pdf';
         PDFExport.OpenAfterExport := True;

         FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
         FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

         FastReport.PrepareReport(True);
         FastReport.Export(PDFExport);
      //end;
   end;
end;

procedure TWCuentas.BtnRefreshClick(Sender: TObject);
begin

   if (CDSFiltro.State in dseditmodes) then begin
      CDSFiltro.post;
   end;

   NavAnimate.Active  := True;
   NavAnimate.Visible := True;

   EditFiltroBCuentaEnter(nil);

   PrepararQuery;

   NavAnimate.Visible := False;
   NavAnimate.Active  := False;
   PageControl.ActivePage := TabCuentas;
   FiltroBuscar.SetFocus;
end;

procedure TWCuentas.QFicheroCalcFields(DataSet: TDataSet);
begin
   if Dataset.FieldByName('TipoCuenta').AsString = 'C' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'Clientes';
   end else
   if Dataset.FieldByName('TipoCuenta').AsString = 'P' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'Proveedores';
   end else
   if Dataset.FieldByName('TipoCuenta').AsString = 'R' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'I.V.A. Devengado';
   end else
   if Dataset.FieldByName('TipoCuenta').AsString = 'S' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'I.V.A. Deducible';
   end else
   if Dataset.FieldByName('TipoCuenta').AsString = 'M' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'Amort. Mater.';
   end else
   if Dataset.FieldByName('TipoCuenta').AsString = 'I' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'Amort. Inmate.';
   end else
   if Dataset.FieldByName('TipoCuenta').AsString = 'B' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'Banco/Caja';
   end else
   if Dataset.FieldByName('TipoCuenta').AsString = 'V' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'Ventas';
   end else
   if Dataset.FieldByName('TipoCuenta').AsString = 'A' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'Compras';
   end else
   if Dataset.FieldByName('TipoCuenta').AsString = 'O' then begin
      Dataset.FieldByName('TipoCuentaDesc').AsString := 'Otras';
   end;
end;

procedure TWCuentas.EditCuentaEnter(Sender: TObject);
begin
   if not lAdd then begin
      Perform(wm_NextDlgCtl, 0, 0);
   end;
end;

procedure TWCuentas.QFicheroAfterScroll(DataSet: TDataSet);
begin
   if PageControl.ActivePage = TabGraficos then begin
      RellenaChart;
   end;
end;

procedure TWCuentas.PageControlChange(Sender: TObject);
begin
   (*if Sender = TabDatos then begin                                      
      BtnAppend.Visible := not (QFichero.State in dsEditModes);
      BtnDelete.Visible := not (QFichero.State in dsEditModes);
   end else*)
   if Sender = TabGraficos then begin
      RellenaChart;
   end;
end;

end.
