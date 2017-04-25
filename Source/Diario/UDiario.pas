unit UDiario;

interface

uses Buttons, Classes, ComCtrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms,
     Globales, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, jpeg, Mask,
     Menus, Messages, StdCtrls, SysUtils, Windows, DBGrids,
     FormHandler,
     UDiarioModel;

type
  TWDiario = class(TForm)
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    QFiltro: TClientDataSet;
    SFiltro: TDataSource;
    PopupMenuListados: TPopupMenu;
    ListadoAsientoActual: TMenuItem;
    SFichero: TDataSource;
    QFicheroDescApunte: TStringField;
    ListadoAsientos: TMenuItem;
    QFicheroDESCSUBCUENTA: TIBStringField;
    QFicheroDESCCONCEPTO: TIBStringField;
    QFicheroCalcImporte: TStringField;
    QFicheroDebe: TFloatField;
    QFicheroHaber: TFloatField;
    QFicheroFechaInicial: TDateTimeField;
    QFicheroFechaFinal: TDateTimeField;
    QFicheroFechaImpresion: TDateTimeField;
    QFicheroID_DIARIO: TIntegerField;
    QFicheroAPUNTE: TSmallintField;
    QFicheroASIENTO: TIntegerField;
    QFicheroBASEIMPONIBLE: TFloatField;
    QFicheroCOMENTARIO: TIBStringField;
    QFicheroCONTRAPARTIDA: TIBStringField;
    QFicheroDEBEHABER: TIBStringField;
    QFicheroFECHA: TDateTimeField;
    QFicheroIMPORTE: TFloatField;
    QFicheroIVA: TFloatField;
    QFicheroNIF: TIBStringField;
    QFicheroMONEDA: TIBStringField;
    QFicheroNUMEROFACTURA: TIBStringField;
    QFicheroRECARGO: TFloatField;
    QFicheroSUBCUENTA: TIBStringField;
    QFicheroPUNTEO: TIBStringField;
    QFicheroASIENTOPUNTEO: TIntegerField;
    QFicheroPUNTEOIVA: TIBStringField;
    QFicheroID_CONCEPTOS: TIBStringField;
    QFicheroTIPODIARIO: TIBStringField;
    QFicheroCUENTA_ANALITICA: TIBStringField;
    QFicheroCUOTAIVA: TFloatField;
    QFicheroCUOTARECARGO: TFloatField;
    QFicheroDESCCONTRAPARTIDA: TStringField;
    QFicheroABREVIATURA: TIBStringField;
    QFicheroTIPOASIENTO: TIntegerField;
    QFicheroASIENTONOMINA: TIntegerField;
    QFicheroEJERCICIO: TIntegerField;
    QFicheroSERIE: TIBStringField;
    lTitulo: TLabel;
    Shape1: TShape;
    DBText1: TDBText;
    Panel2: TPanel;
    Panel3: TPanel;
    Label12: TLabel;
    DBText2: TDBText;
    Panel: TPanel;
    SpFiltro: TSpeedButton;
    BtnNew: TButton;
    BtnReports: TButton;
    BtnModify: TButton;
    BtnDuplicate: TButton;
    BtnDueDates: TButton;
    BtnSelect: TButton;
    BtnBookEntryBaja: TButton;
    BtnRenum: TButton;
    PageControl: TPageControl;
    TabSheetDiario: TTabSheet;
    TabSheetFiltro: TTabSheet;
    Buscar: TGroupBox;
    Label1: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EditFiltroBAsiento: TDBEdit;
    EditFiltroBFactura: TDBEdit;
    EditFiltroBSubcuenta: TDBEdit;
    EditFiltroBDescSubcuenta: TDBEdit;
    EditFiltroBContrapartida: TDBEdit;
    EditFiltroBDescContrapartida: TDBEdit;
    EditFiltroBImporte: TDBEdit;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    EditFiltroAsientoDesde: TDBEdit;
    EditFiltroFechaDesde: TDBEdit;
    EditFiltroFechaHasta: TDBEdit;
    EditFiltroAsientoHasta: TDBEdit;
    EditFiltroImporteDesde: TDBEdit;
    EditFiltroImporteHasta: TDBEdit;
    ComboBoxDESCSUBCUENTA: TDBLookupComboBox;
    ComboBoxSUBCUENTA: TDBLookupComboBox;
    ComboBoxDESCCONCEPTO: TDBLookupComboBox;
    ComboBoxCONCEPTO: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBoxCUENTA_ANALITICA: TDBLookupComboBox;
    ComboBoxDELEGACION: TDBLookupComboBox;
    ComboBoxDEPARTAMENTO: TDBLookupComboBox;
    ComboBoxSECCION: TDBLookupComboBox;
    ComboBoxPROYECTO: TDBLookupComboBox;
    ComboBoxDESCCUENTA_ANALITICA: TDBLookupComboBox;
    ComboBoxDESCCONTRAPARTIDA: TDBLookupComboBox;
    ComboBoxCONTRAPARTIDA: TDBLookupComboBox;
    RadioGroupCLASE_CONCEPTO: TDBRadioGroup;
    RadioGroupMONEDA: TDBRadioGroup;
    RadioGroupPUNTEO: TDBRadioGroup;
    BtnDelete: TButton;
    DBNavigator: TDBNavigator;
    DataGrid: TDBGrid;
    QSubCuentas: TIBDataSet;
    QSubCuentasSUBCUENTA: TIBStringField;
    QSubCuentasDESCRIPCION: TIBStringField;
    QSubCuentasABREVIATURA: TIBStringField;
    SSubCuentas: TDataSource;
    QConceptos: TIBDataSet;
    IBStringField42: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField43: TIBStringField;
    SConceptos: TDataSource;
    QAnaliticas: TIBDataSet;
    QAnaliticasCUENTA: TIBStringField;
    QAnaliticasNOMBRE: TIBStringField;
    QAnaliticasID_PROYECTO: TIBStringField;
    QAnaliticasID_SECCION: TIBStringField;
    QAnaliticasID_DEPARTAMENTO: TIBStringField;
    QAnaliticasID_DELEGACION: TIBStringField;
    QDelegacion: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    QDepartamento: TIBDataSet;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    QProyecto: TIBDataSet;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    QSeccion: TIBDataSet;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    SAnaliticas: TDataSource;
    SDelegacion: TDataSource;
    SDepartamento: TDataSource;
    SProyecto: TDataSource;
    SSeccion: TDataSource;
    procedure BtnNavCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnNavAnadirClick(Sender: TObject);
    procedure fcIBMinimizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnReportsClick(Sender: TObject);
    procedure SpFiltroClick(Sender: TObject);
    procedure ListadoAdvancedDrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect; State: TOwnerDrawState);
    procedure LimpiarFiltro(Sender: TObject);
    procedure LimpiarFiltroFacturas(Sender: TObject);
    procedure QFicheroCalcFields(DataSet: TDataSet);
    procedure ListadoAsientosClick(Sender: TObject);
    procedure ListadoAsientoActualClick(Sender: TObject);
    procedure BtnDuplicateClick(Sender: TObject);
    procedure BtnDueDatesClick(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure BtnBookEntryBajaClick(Sender: TObject);
    procedure BtnRenumClick(Sender: TObject);
    procedure EditFiltroImporteDesdeExit(Sender: TObject);
    procedure DataGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DataGridDblClick(Sender: TObject);
    procedure DataGridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DataGridTitleClick(Column: TColumn);
    procedure BtnModifyClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FormManager            :TccFormHandler;
    FModel                 :TDiarioModel;
    FCampoOrden            :string;
    FColorActual           :TColor;
    FAsientoAnterior       :Integer;
    FFechaAnterior         :TDateTime;
    FSubcuentaAnterior     :string;
    FConceptoAnterior      :string;
    FContrapartidaAnterior :string;
    procedure NuevoAsiento;
    procedure BorrarAsiento(ASIENTO: Integer);
    procedure CrearFiltro;
    procedure InicializarFiltro;
    procedure ModificarAsiento;
    procedure MostrarUltimosMovimientos;
    procedure PrepararQuery;
    procedure PrepararRefresh;
  public
    FModoConsulta :Boolean;
    FImporteDesde :Double;
    FImporteHasta :Double;
    FFechaDesde   :TDateTime;
    FFechaHasta   :TDateTime;
  end;

var WDiario: TWDiario;

implementation

uses System.Math,
     DM, DMConta, DMControl, Tools, UCargaApuntes, UCargaAsiento,
     UCargaCobrosPagos, UCargaRapidaNominas, UCarteraEfectos, Processing,
     UFiltroListadosAsientosModel;

{$R *.DFM}

const TabDiario = 0;
      TabFiltro = 1;

procedure TWDiario.FormCreate(Sender: TObject);
begin
   FormManager := TccFormHandler.Create(Self);

   FModel := TDiarioModel.Create(DMRef.BDContab);
   Self.Caption := '';

   ActivateTransactions(Self, DMRef.BDContab);

   QSubCuentas.Open;
   QConceptos.Open;
   QAnaliticas.Open;
   QDelegacion.Open;
   QDepartamento.Open;
   QProyecto.Open;
   QSeccion.Open;

   CrearFiltro;

   FormManager.Mode := fmBrowse;
   //CargaImagenesMensaje(Mensaje);

   FModoConsulta := False;

   FormManager.AddComp(BtnNew.Name                      , fmBrowse);
   FormManager.AddComp(BtnModify.Name                   , fmBrowse);
   FormManager.AddComp(BtnDelete.Name                   , fmBrowse);
   FormManager.AddComp(BtnDuplicate.Name                , fmBrowse);
   FormManager.AddComp(BtnDueDates.Name                 , fmBrowse);
   FormManager.AddComp(BtnBookEntryBaja.Name            , fmBrowse);
   FormManager.AddComp(BtnRenum.Name                    , fmBrowse);
   FormManager.AddComp(BtnReports.Name                  , fmBrowse);
   FormManager.AddComp(BtnSelect.Name                   , fmBrowse);
   FormManager.AddComp(DBNavigator.Name                 , fmBrowse);
   FormManager.AddComp(DataGrid.Name                    , fmBrowse);
   FormManager.AddComp(EditFiltroBAsiento.Name          , fmBrowse);
   FormManager.AddComp(EditFiltroBFactura.Name          , fmBrowse);
   FormManager.AddComp(EditFiltroBImporte.Name          , fmBrowse);
   FormManager.AddComp(EditFiltroBSubcuenta.Name        , fmBrowse);
   FormManager.AddComp(EditFiltroBDescSubcuenta.Name    , fmBrowse);
   FormManager.AddComp(EditFiltroBContrapartida.Name    , fmBrowse);
   FormManager.AddComp(EditFiltroBDescContrapartida.Name, fmBrowse);
   FormManager.AddComp(EditFiltroAsientoDesde.Name      , fmBrowse);
   FormManager.AddComp(EditFiltroAsientoHasta.Name      , fmBrowse);
   FormManager.AddComp(EditFiltroFechaDesde.Name        , fmBrowse);
   FormManager.AddComp(EditFiltroFechaHasta.Name        , fmBrowse);
   FormManager.AddComp(EditFiltroImporteDesde.Name      , fmBrowse);
   FormManager.AddComp(EditFiltroImporteHasta.Name      , fmBrowse);
   FormManager.AddComp(ComboBoxSUBCUENTA.Name           , fmBrowse);
   FormManager.AddComp(ComboBoxDESCSUBCUENTA.Name       , fmBrowse);
   FormManager.AddComp(ComboBoxCONTRAPARTIDA.Name       , fmBrowse);
   FormManager.AddComp(ComboBoxDESCCONTRAPARTIDA.Name   , fmBrowse);
   FormManager.AddComp(ComboBoxCONCEPTO.Name            , fmBrowse);
   FormManager.AddComp(ComboBoxDESCCONCEPTO.Name        , fmBrowse);
   FormManager.AddComp(ComboBoxCUENTA_ANALITICA.Name    , fmBrowse);
   FormManager.AddComp(ComboBoxDESCCUENTA_ANALITICA.Name, fmBrowse);
   FormManager.AddComp(ComboBoxDELEGACION.Name          , fmBrowse);
   FormManager.AddComp(ComboBoxDEPARTAMENTO.Name        , fmBrowse);
   FormManager.AddComp(ComboBoxSECCION.Name             , fmBrowse);
   FormManager.AddComp(ComboBoxPROYECTO.Name            , fmBrowse);
   FormManager.AddComp(RadioGroupCLASE_CONCEPTO.Name    , fmBrowse);
   FormManager.AddComp(RadioGroupMONEDA.Name            , fmBrowse);
   FormManager.AddComp(RadioGroupPUNTEO.Name            , fmBrowse);

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

procedure TWDiario.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWDiario.NuevoAsiento;
begin
   WCargaAsiento := TWCargaAsiento.Create(nil);
   try
      WCargaAsiento.FModoArranque := INSERCION;
      WCargaAsiento.ShowModal;

      InicializarFiltro;

      MostrarUltimosMovimientos;
      //Paginas.Update;
      EditFiltroBAsiento.Repaint;
      DataGrid.Repaint;
   finally
      FreeAndNil(WCargaAsiento); {This finally section, may be bad situated. If there is any problems, put it upper.}
   end;
end;

procedure TWDiario.BorrarAsiento(ASIENTO: Integer);
begin
   try
      DmRef.EjecutarSQL('DELETE FROM DIARIO ' + 'WHERE ' + 'ASIENTO = ' + IntToStr(ASIENTO));
      PrepararQuery;
   except
      DatabaseError('No se ha podido borrar el asiento seleccionado.');
   end;
end;

procedure TWDiario.CrearFiltro;
begin
   QFiltro.Active := False;
   QFiltro.FieldDefs.Clear;
   QFiltro.FieldDefs.Add('BASIENTO'          , ftInteger ,  0, False);
   QFiltro.FieldDefs.Add('BFACTURA'          , ftString  , 10, False);
   QFiltro.FieldDefs.Add('BSubcuenta'        , ftString  , 10, False);
   QFiltro.FieldDefs.Add('BDescSubcuenta'    , ftString  , 80, False);
   QFiltro.FieldDefs.Add('BContrapartida'    , ftString  , 10, False);
   QFiltro.FieldDefs.Add('BDescContrapartida', ftString  , 80, False);
   QFiltro.FieldDefs.Add('BImporte'          , ftFloat   ,  0, False);
   QFiltro.FieldDefs.Add('FechaDesde'        , ftDate    ,  0, False);
   QFiltro.FieldDefs.Add('FechaHasta'        , ftDate    ,  0, False);
   QFiltro.FieldDefs.Add('AsientoDesde'      , ftInteger ,  0, False);
   QFiltro.FieldDefs.Add('AsientoHasta'      , ftInteger ,  0, False);
   QFiltro.FieldDefs.Add('ImporteDesde'      , ftFloat   ,  0, False);
   QFiltro.FieldDefs.Add('ImporteHasta'      , ftFloat   ,  0, False);
   QFiltro.FieldDefs.Add('Subcuenta'         , ftString  , 10, False);
   QFiltro.FieldDefs.Add('Contrapartida'     , ftString  , 10, False);
   QFiltro.FieldDefs.Add('Analitica'         , ftString  , 10, False);
   QFiltro.FieldDefs.Add('TipoConcepto'      , ftString  ,  1, False);
   QFiltro.FieldDefs.Add('Concepto'          , ftVarBytes,  3, False);
   QFiltro.FieldDefs.Add('Moneda'            , ftString  ,  1, False);
   QFiltro.FieldDefs.Add('CUENTA'            , ftString  , 10, False);
   QFiltro.FieldDefs.Add('ID_DELEGACION'     , ftString  , 10, False);
   QFiltro.FieldDefs.Add('ID_DEPARTAMENTO'   , ftString  , 10, False);
   QFiltro.FieldDefs.Add('ID_SECCION'        , ftString  , 10, False);
   QFiltro.FieldDefs.Add('ID_PROYECTO'       , ftString  , 10, False);
   QFiltro.FieldDefs.Add('PUNTEO'            , ftString  ,  1, False);
   QFiltro.CreateDataSet;
   QFiltro.Active := True;
   QFiltro.Append;
end;

procedure TWDiario.InicializarFiltro;
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   DmContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   if not (QFiltro.State in dsEditModes) then begin
      QFiltro.Edit;
   end;

   if DMRef.QParametrosFILTRO_ASIENTOS_INICIO.AsString = 'S' then begin
      QFiltro.FieldByName('AsientoDesde').Value := nPrimerAsiento;
   end else
   if DMRef.QParametrosASIENTO_INICIO_INTERVALO_FILTRO.AsInteger > 0 then begin
      QFiltro.FieldByName('AsientoDesde').Value :=
         nUltimoAsiento - DMRef.QParametrosASIENTO_INICIO_INTERVALO_FILTRO.AsInteger;
   end
   else begin
      QFiltro.FieldByName('AsientoDesde').Value := nUltimoAsiento - 50;
   end;

   if QFiltro.FieldByName('AsientoDesde').Value < 0 then begin
      QFiltro.FieldByName('AsientoDesde').Value := 0;
   end;

   if DMRef.QParametrosASIENTO_FIN_INTERVALO_FILTRO.AsInteger > 0 then begin
      QFiltro.FieldByName('AsientoHasta').Value :=
         nUltimoAsiento + DMRef.QParametrosASIENTO_FIN_INTERVALO_FILTRO.AsInteger;
   end
   else begin
      QFiltro.FieldByName('AsientoHasta').Value := nUltimoAsiento;
   end;

   QFiltro.FieldByName('FechaDesde'  ).AsDateTime := dPrimeraFecha;
   QFiltro.FieldByName('FechaHasta'  ).AsDateTime := dUltimaFecha;
   QFiltro.FieldByName('ImporteDesde').AsFloat    := -99999999;
   QFiltro.FieldByName('ImporteHasta').AsFloat    := 999999999;
   QFiltro.FieldByName('TipoConcepto').AsString   := 'T';
   QFiltro.FieldByName('Moneda'      ).AsString   := DmRef.QParametrosMONEDA.AsString;
   QFiltro.FieldByName('PUNTEO'      ).AsString   := 'A';

   if FModoConsulta then begin
      QFiltro.FieldByName('IMPORTEDESDE').AsFloat    := FImporteDesde;
      QFiltro.FieldByName('IMPORTEHASTA').AsFloat    := FImporteHasta;
      QFiltro.FieldByName('FECHADESDE'  ).AsDateTime := FFechaDesde;
      QFiltro.FieldByName('FECHAHASTA'  ).AsDateTime := FFechaHasta;
      QFiltro.FieldByName('ASIENTODESDE').AsInteger  := 1;
   end;
end;

procedure TWDiario.ModificarAsiento;
var AsientoNomina  :Integer;
    AsientoEmpresa :Integer;
begin
   if not QFichero.IsEmpty then begin
      if DMContaRef.AsientoBloqueado(QFicheroFECHA.AsDateTime) then begin
         DatabaseError('No se puede modificar un asiento bloqueado.');
      end;

      // ASIENTO DE NÓMINA / SS EMPRESA
      if (QFicheroTIPOASIENTO.AsInteger = ASIENTO_NOMINA) or
         (QFicheroTIPOASIENTO.AsInteger = ASIENTO_SSOCIAL_EMPRESA) then begin
         if QFicheroTIPOASIENTO.AsInteger = ASIENTO_NOMINA then begin
            AsientoNomina  := QFicheroASIENTO.AsInteger;
            AsientoEmpresa := QFicheroASIENTONOMINA.AsInteger;
         end
         else begin
            AsientoEmpresa := QFicheroASIENTO.AsInteger;
            AsientoNomina  := QFicheroASIENTONOMINA.AsInteger;
         end;

         if not Assigned(WCargaRapidaNominas) then begin
            WCargaRapidaNominas := TWCargaRapidaNominas.Create(nil);
         end;

         WCargaRapidaNominas.FModoArranque   := MODIFICACION;
         WCargaRapidaNominas.FAsientoNomina  := AsientoNomina;
         WCargaRapidaNominas.FAsientoEmpresa := AsientoEmpresa;

         WCargaRapidaNominas.ShowModal;
      end
      else begin
         WCargaAsiento := TWCargaAsiento.Create(nil);
         try
            WCargaAsiento.FModoArranque := MODIFICACION;
            WCargaAsiento.FAsiento      := QFichero.FieldByName('ASIENTO').AsInteger;
            WCargaAsiento.ShowModal;
         finally
            FreeAndNil(WCargaAsiento);
         end;
      end;

      if not (QFiltro.State in dsEditModes) then begin
         QFiltro.Edit;
      end;
      QFiltro.FieldByName('BAsiento').AsInteger := QFichero.FieldByName('ASIENTO').AsInteger;
      PrepararQuery;
   end;

   PageControl.ActivePage := TabSheetDiario;

   EditFiltroBAsiento.SetFocus;
   EditFiltroBAsiento.Repaint;
   DataGrid.Repaint;
end;

procedure TWDiario.MostrarUltimosMovimientos;
var Asiento :Integer;
begin
   Asiento := DMRef.ObtenerValor('GEN_ID(ASIENTO, 0)', 'RDB$DATABASE', '');
   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;

   QFichero.SelectSQL.Add('SELECT');
   QFichero.SelectSQL.Add('   DISTINCT D.*, C.DESCRIPCION DESCCONCEPTO, S1.ABREVIATURA,');
   QFichero.SelectSQL.Add('   S1.DESCRIPCION DESCSUBCUENTA, S2.DESCRIPCION DESCCONTRAPARTIDA');
   QFichero.SelectSQL.Add('FROM DIARIO D LEFT JOIN CONCEPTOS C');
   QFichero.SelectSQL.Add('              ON D.ID_CONCEPTOS = C.ID_CONCEPTOS');
   QFichero.SelectSQL.Add('              LEFT JOIN SUBCTAS S1');
   QFichero.SelectSQL.Add('              ON D.SUBCUENTA = S1.SUBCUENTA');
   QFichero.SelectSQL.Add('              LEFT JOIN SUBCTAS S2');
   QFichero.SelectSQL.Add('              ON D.CONTRAPARTIDA = S2.SUBCUENTA');
   QFichero.SelectSQL.Add('WHERE');
   QFichero.SelectSQL.Add('   D.ASIENTO >= :ASIENTO1 AND D.ASIENTO <= :ASIENTO2 AND');
   QFichero.SelectSQL.Add('   D.ID_CONCEPTOS = C.ID_CONCEPTOS');
   QFichero.SelectSQL.Add('ORDER BY D.ASIENTO, D.APUNTE');

   QFichero.Params.ByName('ASIENTO1').AsInteger := Asiento - 30;
   QFichero.Params.ByName('ASIENTO2').AsInteger := Asiento;

   QFichero.Prepare;
   QFichero.Open;

   QFichero.Last;
   QFichero.EnableControls;

   PageControl.ActivePage := TabSheetDiario;

   EditFiltroBAsiento.SetFocus;
   DataGrid.Repaint;
end;

procedure TWDiario.PrepararQuery;
var InProgress :TProcessingView;
begin
   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;

   QFichero.SelectSQL.Add('SELECT');
   QFichero.SelectSQL.Add('   D.*,');
   QFichero.SelectSQL.Add('   S1.DESCRIPCION DESCSUBCUENTA, S2.DESCRIPCION DESCCONTRAPARTIDA,');
   QFichero.SelectSQL.Add('   C.DESCRIPCION DESCCONCEPTO, S1.ABREVIATURA');
   QFichero.SelectSQL.Add('FROM DIARIO D LEFT JOIN CONCEPTOS C ON D.ID_CONCEPTOS = C.ID_CONCEPTOS');
   QFichero.SelectSQL.Add('              LEFT JOIN SUBCTAS S1 ON D.SUBCUENTA = S1.SUBCUENTA');
   QFichero.SelectSQL.Add('              LEFT JOIN SUBCTAS S2 ON D.CONTRAPARTIDA = S2.SUBCUENTA');

   if (QFiltro.FieldByName('BASIENTO').AsInteger = 0) and
      (QFiltro.FieldByName('BFACTURA').AsString = '') and
      (QFiltro.FieldByName('BSUBCUENTA').AsString = '') and
      (QFiltro.FieldByName('BDESCSUBCUENTA').AsString = '') and
      (QFiltro.FieldByName('BCONTRAPARTIDA').AsString = '') and
      (QFiltro.FieldByName('BDESCCONTRAPARTIDA').AsString = '') and
      ((QFiltro.FieldByName('CUENTA').AsString <> '') or
      (QFiltro.FieldByName('ID_DELEGACION').AsString <> '') or
      (QFiltro.FieldByName('ID_DEPARTAMENTO').AsString <> '') or
      (QFiltro.FieldByName('ID_SECCION').AsString <> '') or
      (QFiltro.FieldByName('ID_PROYECTO').AsString <> '')) then begin
      QFichero.SelectSQL.Add(', ANALITICAS A');
   end;
   QFichero.SelectSQL.Add('WHERE');

   if QFiltro.FieldByName('TipoConcepto').AsString <> 'T' then begin
      QFichero.SelectSQL.Add(' C.TIPOCONTABILIDAD=:TIPOCONCEPTO AND');
   end;

   if QFiltro.FieldByName('BASIENTO').AsInteger <> 0 then
      // Mostrar el asiento buscado y los n asientos anteriores y posteriores a él
   begin
      QFichero.SelectSQL.Add('  D.ASIENTO >= :ASIENTOINI AND D.ASIENTO <= :ASIENTOFIN');
   end else
   if QFiltro.FieldByName('BImporte').AsInteger <> 0 then begin
      QFichero.SelectSQL.Add('  D.IMPORTE>=:BIMPORTEDESDE and D.Importe<=:BimporteHasta ');
   end else
   if (QFiltro.FieldByName('BFACTURA').AsString <> '') then begin
      QFichero.SelectSQL.Add(' D.NUMEROFACTURA = :FACTURA  AND');
      QFichero.SelectSQL.Add(' D.FECHA >= :FECHADESDE AND D.FECHA <= :FECHAHASTA');
   end else
   if QFiltro.FieldByName('BSUBCUENTA').AsString <> '' then begin
      QFichero.SelectSQL.Add(' D.SUBCUENTA LIKE :SUBCUENTA');
   end else
   if QFiltro.FieldByName('BDESCSUBCUENTA').AsString <> '' then begin
      QFichero.SelectSQL.Add(' S1.DESCRIPCION LIKE :DESCSUBCUENTA');
   end else
   if QFiltro.FieldByName('BCONTRAPARTIDA').AsString <> '' then begin
      QFichero.SelectSQL.Add(' D.CONTRAPARTIDA LIKE :CONTRAPARTIDA');
   end else
   if QFiltro.FieldByName('BDESCCONTRAPARTIDA').AsString <> '' then begin
      QFichero.SelectSQL.Add(' S2.DESCRIPCION LIKE :DESCCONTRAPARTIDA');
   end
   else begin
      // Asiento
      QFichero.SelectSQL.Add('   D.ASIENTO >= :ASIENTODESDE AND D.ASIENTO <= :ASIENTOHASTA AND');

      // Fecha
      if QFiltro.FieldByName('FECHADESDE').IsNull then begin
         QFichero.SelectSQL.Add('   (D.FECHA IS NULL OR (D.FECHA >= :FECHADESDE AND D.FECHA <= :FECHAHASTA)) AND');
      end
      else begin
         QFichero.SelectSQL.Add('   D.FECHA >= :FECHADESDE AND D.FECHA <= :FECHAHASTA AND');
      end;

      // Importe
      if QFiltro.FieldByName('IMPORTEDESDE').AsFloat = 0 then begin
         QFichero.SelectSQL.Add('   (D.IMPORTE IS NULL OR (D.IMPORTE >= :IMPORTEDESDE AND D.IMPORTE <= :IMPORTEHASTA))');
      end
      else begin
         QFichero.SelectSQL.Add('   D.IMPORTE >= :IMPORTEDESDE AND D.IMPORTE <= :IMPORTEHASTA');
      end;

      // Subcuenta
      if QFiltro.FieldByName('SUBCUENTA').AsString <> '' then begin
         QFichero.SelectSQL.Add('   AND D.SUBCUENTA LIKE :SUBCUENTA');
      end;

      // Contrapartida
      if QFiltro.FieldByName('CONTRAPARTIDA').AsString <> '' then begin
         QFichero.SelectSQL.Add('   AND D.CONTRAPARTIDA LIKE :CONTRAPARTIDA');
      end;

      // Concepto
      if not IsEmpty(QFiltro.FieldByName('CONCEPTO').AsString) then begin
         QFichero.SelectSQL.Add('   AND D.ID_CONCEPTOS=:CONCEPTO');
      end;

      // Punteo
      if QFiltro.FieldByName('PUNTEO').AsString = 'S' then begin
         QFichero.SelectSQL.Add('   AND D.PUNTEO = "S"');
      end else
      if QFiltro.FieldByName('PUNTEO').AsString = 'N' then begin
         QFichero.SelectSQL.Add('   AND (D.PUNTEO = "" OR D.PUNTEO IS NULL OR D.PUNTEO = "N")');
      end;

      // Analítica
      if QFiltro.FieldByName('CUENTA').AsString <> '' then begin
         QFichero.SelectSQL.Add('   AND A.CUENTA = :CUENTA');
      end;
      if QFiltro.FieldByName('ID_DELEGACION').AsString <> '' then begin
         QFichero.SelectSQL.Add('   AND A.ID_DELEGACION = :ID_DELEGACION');
      end;
      if QFiltro.FieldByName('ID_DEPARTAMENTO').AsString <> '' then begin
         QFichero.SelectSQL.Add('   AND A.ID_DEPARTAMENTO = :ID_DEPARTAMENTO');
      end;
      if QFiltro.FieldByName('ID_SECCION').AsString <> '' then begin
         QFichero.SelectSQL.Add('   AND A.ID_SECCION = :ID_SECCION');
      end;
      if QFiltro.FieldByName('ID_PROYECTO').AsString <> '' then begin
         QFichero.SelectSQL.Add('   AND A.ID_PROYECTO = :ID_PROYECTO');
      end;
      if (QFiltro.FieldByName('CUENTA').AsString <> '') or
         (QFiltro.FieldByName('ID_DELEGACION').AsString <> '') or
         (QFiltro.FieldByName('ID_DEPARTAMENTO').AsString <> '') or
         (QFiltro.FieldByName('ID_SECCION').AsString <> '') or
         (QFiltro.FieldByName('ID_PROYECTO').AsString <> '') then begin
         QFichero.SelectSQL.Add('   AND A.CUENTA = D.CUENTA_ANALITICA');
      end;
   end;

   FCampoOrden := UpperCase(Trim(FCampoOrden));
   if FCampoOrden = 'ASIENTO'       then QFichero.SelectSQL.Add('ORDER BY D.ASIENTO      , D.APUNTE'                         ) else
   if FCampoOrden = 'FECHA'         then QFichero.SelectSQL.Add('ORDER BY D.FECHA        , D.ASIENTO, D.APUNTE'              ) else
   if FCampoOrden = 'SUBCUENTA'     then QFichero.SelectSQL.Add('ORDER BY D.SUBCUENTA    , D.FECHA  , D.ASIENTO  , D.APUNTE' ) else
   if FCampoOrden = 'CONTRAPARTIDA' then QFichero.SelectSQL.Add('ORDER BY D.CONTRAPARTIDA, D.FECHA  , D.ASIENTO  , D.APUNTE' ) else
   if FCampoOrden = 'ID_CONCEPTOS'  then QFichero.SelectSQL.Add('ORDER BY D.ID_CONCEPTOS , D.FECHA  , D.SUBCUENTA, D.ASIENTO') else
   if FCampoOrden <> '' then QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden)
   else QFichero.SelectSQL.Add('ORDER BY D.ASIENTO, D.APUNTE');

   // PARÁMETROS
   if QFiltro.FieldByName('BASIENTO').AsInteger <> 0 then  begin
      // Mostrar el asiento buscado y los n asientos anteriores y posteriores a él
      QFichero.Params.ByName('ASIENTOINI').AsInteger := QFiltro.FieldByName('BASIENTO').AsInteger -
                                                        DMRef.QParametrosASIENTOS_INICIO_INTERVALO_BQDA.AsInteger;
      QFichero.Params.ByName('ASIENTOFIN').AsInteger := QFiltro.FieldByName('BASIENTO').AsInteger +
                                                        DMRef.QParametrosASIENTOS_FIN_INTERVALO_BQDA.AsInteger;
   end
   else
   if QFiltro.FieldByName('BIMPORTE').AsInteger <> 0 then begin
      QFichero.Params.ByName('BIMPORTEDESDE').AsDouble :=
         RoundTo(QFiltro.FieldByName('BIMPORTE').AsFloat, -2) - 0.01;
      QFichero.Params.ByName('BIMPORTEHASTA').AsDouble :=
         RoundTo(QFiltro.FieldByName('BIMPORTE').AsFloat, -2) + 0.01;
   end
   else
   if (QFiltro.FieldByName('BFACTURA').AsString <> '') then  begin
      QFichero.Params.ByName('FACTURA').AsString      := QFiltro.FieldByName('BFACTURA').AsString;
      // Fecha, solo busca facturas dentro del ejercicio actual
      QFichero.Params.ByName('FECHADESDE').AsDateTime := QFiltro.FieldByName('FECHADesde').AsDateTime;
      QFichero.Params.ByName('FECHAHASTA').AsDateTime := QFiltro.FieldByName('FECHAHasta').AsDateTime;
   end
   else
   if QFiltro.FieldByName('BSUBCUENTA').AsString <> '' then begin
      QFichero.ParamByName('SUBCUENTA').AsString :=
         Copy(QFiltro.FieldByName('BSUBCUENTA').AsString + '%', 1, QFiltro.FieldByName('BSUBCUENTA').Size);
   end
   else
   if QFiltro.FieldByName('BDESCSUBCUENTA').AsString <> '' then begin
      QFichero.ParamByName('DESCSUBCUENTA').AsString :=
         Copy(QFiltro.FieldByName('BDESCSUBCUENTA').AsString + '%', 1,
         QFiltro.FieldByName('BDESCSUBCUENTA').Size);
   end
   else
   if QFiltro.FieldByName('BCONTRAPARTIDA').AsString <> '' then begin
      QFichero.ParamByName('CONTRAPARTIDA').AsString :=
         Copy(QFiltro.FieldByName('BCONTRAPARTIDA').AsString + '%', 1,
         QFiltro.FieldByName('BCONTRAPARTIDA').Size);
   end
   else
   if QFiltro.FieldByName('BDESCCONTRAPARTIDA').AsString <> '' then begin
      QFichero.ParamByName('DESCCONTRAPARTIDA').AsString :=
         Copy(QFiltro.FieldByName('BDESCCONTRAPARTIDA').AsString + '%', 1,
         QFiltro.FieldByName('BDESCCONTRAPARTIDA').Size);
   end
   else begin
      // Asiento
      QFichero.Params.ByName('ASIENTODESDE').AsInteger := QFiltro.FieldByName('ASIENTODESDE').AsInteger;
      QFichero.Params.ByName('ASIENTOHASTA').AsInteger := QFiltro.FieldByName('ASIENTOHASTA').AsInteger;

      // Fecha
      QFichero.Params.ByName('FECHADESDE').AsDateTime := QFiltro.FieldByName('FECHADESDE').AsDateTime;
      QFichero.Params.ByName('FECHAHASTA').AsDateTime := QFiltro.FieldByName('FECHAHASTA').AsDateTime;

      // Importe
      QFichero.Params.ByName('IMPORTEDESDE').AsDouble := QFiltro.FieldByName('IMPORTEDESDE').AsFloat - 0.01;
      QFichero.Params.ByName('IMPORTEHASTA').AsDouble := QFiltro.FieldByName('IMPORTEHASTA').AsFloat + 0.01;

      // Subcuenta
      if QFiltro.FieldByName('SUBCUENTA').AsString <> '' then begin
         QFichero.Params.ByName('SUBCUENTA').AsString := QFiltro.FieldByName('SUBCUENTA').AsString + '%';
      end;

      // Contrapartida
      if QFiltro.FieldByName('CONTRAPARTIDA').AsString <> '' then begin
         QFichero.Params.ByName('CONTRAPARTIDA').AsString := QFiltro.FieldByName('CONTRAPARTIDA').AsString + '%';
      end;

      // Concepto
      if not IsEmpty(QFiltro.FieldByName('CONCEPTO').AsString) then begin
         QFichero.Params.ByName('CONCEPTO').AsString := QFiltro.FieldByName('CONCEPTO').AsString;
      end;

      if QFiltro.FieldByName('TipoConcepto').AsString <> 'T' then begin
         QFichero.Params.ByName('TIPOCONCEPTO').AsString := QFiltro.FieldByName('TIPOCONCEPTO').AsString;
      end;

      // Analítica
      if QFiltro.FieldByName('CUENTA').AsString <> '' then begin
         QFichero.ParamByName('CUENTA').AsString := QFiltro.FieldByName('CUENTA').AsString;
      end;
      if QFiltro.FieldByName('ID_DELEGACION').AsString <> '' then begin
         QFichero.ParamByName('ID_DELEGACION').AsString := QFiltro.FieldByName('ID_DELEGACION').AsString;
      end;
      if QFiltro.FieldByName('ID_DEPARTAMENTO').AsString <> '' then begin
         QFichero.ParamByName('ID_DEPARTAMENTO').AsString := QFiltro.FieldByName('ID_DEPARTAMENTO').AsString;
      end;
      if QFiltro.FieldByName('ID_SECCION').AsString <> '' then begin
         QFichero.ParamByName('ID_SECCION').AsString := QFiltro.FieldByName('ID_SECCION').AsString;
      end;
      if QFiltro.FieldByName('ID_PROYECTO').AsString <> '' then begin
         QFichero.ParamByName('ID_PROYECTO').AsString := QFiltro.FieldByName('ID_PROYECTO').AsString;
      end;
   end;

   InProgress := InProgressView('Abriendo diario ...');
   try

      QFichero.Prepare;
      QFichero.Open;
      if QFiltro.FieldByName('BASIENTO').AsInteger = 0 then begin
         QFichero.Last;
      end;
      QFichero.EnableControls;
   finally
      InProgress.Free;
   end;

   EditFiltroBAsiento.Repaint;
   DataGrid.Repaint;

   if not QFichero.EOF and (QFiltro.FieldByName('BASIENTO').AsInteger <> 0) then begin
      // Posicionarnos en el asiento buscado
      QFichero.DisableControls;
      QFichero.First;
      while not QFichero.EOF and (QFicheroASIENTO.AsInteger <>
            QFiltro.FieldByName('BASIENTO').AsInteger) do begin
         QFichero.Next;
      end;

      if DMRef.QParametrosASIENTOS_INICIO_INTERVALO_BQDA.AsInteger > 0 then  begin
         // Posicionarnos en el último apunte del asiento buscado
         while not QFichero.EOF and (QFicheroASIENTO.AsInteger =
               QFiltro.FieldByName('BASIENTO').AsInteger) do begin
            QFichero.Next;
         end;
         if QFicheroASIENTO.AsInteger <> QFiltro.FieldByName('BASIENTO').AsInteger then begin
            QFichero.Prior;
         end;
      end;
      QFichero.EnableControls;
   end;

   DataGrid.Repaint;
end;

procedure TWDiario.PrepararRefresh;
begin
   QFichero.RefreshSQL.Clear;

   QFichero.RefreshSQL.Add('SELECT');
   QFichero.RefreshSQL.Add('   D.*,');
   QFichero.RefreshSQL.Add('   S1.DESCRIPCION DESCSUBCUENTA, S2.DESCRIPCION DESCCONTRAPARTIDA,');
   QFichero.RefreshSQL.Add('   C.DESCRIPCION DESCCONCEPTO, S1.ABREVIATURA');
   QFichero.RefreshSQL.Add('FROM DIARIO D LEFT JOIN CONCEPTOS C ON D.ID_CONCEPTOS = C.ID_CONCEPTOS');
   QFichero.RefreshSQL.Add('              LEFT JOIN SUBCTAS S1 ON D.SUBCUENTA = S1.SUBCUENTA');
   QFichero.RefreshSQL.Add('              LEFT JOIN SUBCTAS S2 ON D.CONTRAPARTIDA = S2.SUBCUENTA');

   QFichero.RefreshSQL.Add('WHERE');
   QFichero.RefreshSQL.Add('   D.ID_DIARIO = ?ID_DIARIO');


   FCampoOrden := UpperCase(Trim(FCampoOrden));
   if (FCampoOrden = 'ASIENTO') then begin
      QFichero.RefreshSQL.Add('ORDER BY D.ASIENTO, D.APUNTE');
   end else
   if FCampoOrden = 'FECHA' then begin
      QFichero.RefreshSQL.Add('ORDER BY D.FECHA, D.ASIENTO, D.APUNTE');
   end else
   if FCampoOrden = 'SUBCUENTA' then begin
      QFichero.RefreshSQL.Add('ORDER BY D.SUBCUENTA, D.FECHA, D.ASIENTO, D.APUNTE');
   end else
   if FCampoOrden = 'CONTRAPARTIDA' then begin
      QFichero.RefreshSQL.Add('ORDER BY D.CONTRAPARTIDA, D.FECHA, D.ASIENTO, D.APUNTE');
   end else
   if FCampoOrden = 'ID_CONCEPTOS' then begin
      QFichero.RefreshSQL.Add('ORDER BY D.ID_CONCEPTOS, D.FECHA, D.SUBCUENTA, D.ASIENTO');
   end else
   if FCampoOrden <> '' then begin
      QFichero.RefreshSQL.Add('ORDER BY ' + FCampoOrden);
   end
   else begin
      QFichero.RefreshSQL.Add('ORDER BY D.ASIENTO, D.APUNTE');
   end;
end;

procedure TWDiario.BtnNavCerrarClick(Sender: TObject);
begin
   if FModoConsulta then begin
      WCargaCobrosPagos.FID_DIARIO := 0;
   end;

   Close;
end;

procedure TWDiario.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // Si pulsamos enter y el control actual no es un grid pasamos al siguiente
   // control
   if (Key = Chr(VK_RETURN)) then begin
      // Comprobación del filtro por asiento
      if (EditFiltroBAsiento.Focused) and (Trim(EditFiltroBAsiento.Text) <> '') then begin
         Key := #0;
         if QFiltro.State in dsEditModes then begin
            QFiltro.Post;
         end;
         PrepararQuery;
      end
      // Comprobación del filtro por factura
      else
      if (EditFiltroBFactura.Focused) and (Trim(EditFiltroBFactura.Text) <> '') then begin
         key := #0;
         if QFiltro.State in dsEditModes then begin
            QFiltro.Post;
         end;
         PrepararQuery;
      end
      // Comprobación del filtro por Importe
      else
      if ((EditFiltroBImporte.Focused) and (Trim(EditFiltroBImporte.Text) <> '')) then begin
         key := #0;
         if QFiltro.State in dsEditModes then begin
            QFiltro.Post;
         end;
         PrepararQuery;
      end
      // Comprobación del filtro por subcuenta y contrapartida
      else
      if ((EditFiltroBSubcuenta.Focused        ) and (Trim(EditFiltroBSubcuenta.Text        ) <> '')) or
         ((EditFiltroBDescSubcuenta.Focused    ) and (Trim(EditFiltroBDescSubcuenta.Text    ) <> '')) or
         ((EditFiltroBContrapartida.Focused    ) and (Trim(EditFiltroBContrapartida.Text    ) <> '')) or
         ((EditFiltroBDescContrapartida.Focused) and (Trim(EditFiltroBDescContrapartida.Text) <> '')) then begin
         Key := #0;
         if QFiltro.State in dsEditModes then begin
            QFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWDiario.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_SPACE: begin
         if (UpperCase(Copy(ActiveControl.Name, 1, 6)) <> 'FILTRO') and
            not (QFichero.State in dsEditModes) then begin
            Key := 0;
            ModificarAsiento;
         end;
      end;
      VK_F2: begin
         if not (QFichero.State in dsEditModes) then begin
            NuevoAsiento;
         end;
      end;
      VK_F12: begin
         if not (QFichero.State in dsEditModes) then begin
            SpFiltro.Click;
         end;
      end;
   end;
end;

procedure TWDiario.BtnNavAnadirClick(Sender: TObject);
begin
   if DMControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      NuevoAsiento;
   end;
end;

procedure TWDiario.fcIBMinimizarClick(Sender: TObject);
begin
   WindowState := wsMinimized;
end;

procedure TWDiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWDiario.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then begin
      if DMContaRef.AsientoBloqueado(QFicheroFECHA.AsDateTime) then begin
         DatabaseError('No se puede borrar un asiento bloqueado.');
      end;
      if MessageDlg('¿Desea borrar el asiento ' + FormatFloat('###,###,###', QFicheroASIENTO.AsInteger) + ' ?',
                 mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         BorrarAsiento(QFicheroASIENTO.AsInteger);
      end;
      
      EditFiltroBAsiento.Repaint;
      DataGrid.Repaint;
   end;
end;

procedure TWDiario.FormShow(Sender: TObject);
begin
   InicializarFiltro;
   FCampoOrden := 'ASIENTO, APUNTE';
   PrepararRefresh;
   PrepararQuery;
   QFichero.Last;

   PageControl.ActivePage := TabSheetDiario;
   EditFiltroBAsiento.SetFocus;

   if not FModoConsulta then  begin
      BtnSelect.Free;
   end
   else begin
      BtnNew.Free;
      BtnModify.Free;
      BtnDelete.Free;
      BtnDuplicate.Free;
      BtnDueDates.Free;
      BtnBookEntryBaja.Free;
      BtnRenum.Free;
   end;
end;

procedure TWDiario.BtnReportsClick(Sender: TObject);
begin
   PopupMenuListados.Popup(Self.Left + Panel.Left + BtnReports.Left,
                           Self.Top  + Panel.Top  + BtnReports.Top + BtnReports.Height - 5);
end;

procedure TWDiario.SpFiltroClick(Sender: TObject);
begin
   if (QFiltro.State in dseditmodes) then begin
      QFiltro.post;
   end;

   LimpiarFiltro(nil);

   PrepararQuery;

   PageControl.ActivePage := TabSheetDiario;
   EditFiltroBAsiento.SetFocus;
end;

procedure TWDiario.ListadoAdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
   ARect: TRect; State: TOwnerDrawState);
begin
   if State * [odSelected, odFocused] = [] then  begin
      ACanvas.Font.Color  := clNavy;
      ACanvas.Brush.Color := $00D9D1C0;
   end
   else begin
      ACanvas.Font.Color  := clWhite;
      ACanvas.Brush.Color := clNavy;
   end;
   ACanvas.FillRect(ARect);
   ACanvas.Font.Name := 'Tahoma';
   if TMenuItem(Sender).Caption <> '-' then begin
      ACanvas.TextRect(ARect, ARect.Left + 7, ARect.Top, TMenuItem(Sender).Caption);
   end;
end;

procedure TWDiario.LimpiarFiltro(Sender: TObject);
begin
   if not (QFiltro.state in dseditmodes) then begin
      QFiltro.Edit;
   end;
   QFiltro.FieldByName('BImporte').AsInteger          := 0;
   QFiltro.FieldByName('BAsiento').AsInteger          := 0;
   QFiltro.FieldByName('BFactura').AsString           := '';
   QFiltro.FieldByName('BSUBCUENTA').AsString         := '';
   QFiltro.FieldByName('BDESCSUBCUENTA').AsString     := '';
   QFiltro.FieldByName('BCONTRAPARTIDA').AsString     := '';
   QFiltro.FieldByName('BDESCCONTRAPARTIDA').AsString := '';
end;

procedure TWDiario.LimpiarFiltroFacturas(Sender: TObject);
begin
   if not (QFiltro.state in dseditmodes) then begin
      QFiltro.Edit;
   end;
   QFiltro.FieldByName('BImporte').AsInteger          := 0;
   QFiltro.FieldByName('BAsiento').AsInteger          := 0;
   QFiltro.FieldByName('BSUBCUENTA').AsString         := '';
   QFiltro.FieldByName('BDESCSUBCUENTA').AsString     := '';
   QFiltro.FieldByName('BCONTRAPARTIDA').AsString     := '';
   QFiltro.FieldByName('BDESCCONTRAPARTIDA').AsString := '';
end;

procedure TWDiario.QFicheroCalcFields(DataSet: TDataSet);
begin
   // Descripción del apunte
   QFicheroDESCAPUNTE.AsString :=
      DMContaRef.GetDescripcionApunte(QFicheroDESCCONCEPTO.AsString,
                                      QFicheroNUMEROFACTURA.AsString,
                                      QFicheroSERIE.AsString,
                                      QFicheroEJERCICIO.AsInteger,
                                      QFicheroCOMENTARIO.AsString,
                                      QFicheroABREVIATURA.AsString);

   // Importe
   QFicheroCalcImporte.AsString := FormatFloat('###,###,##0.00', QFicheroIMPORTE.AsFloat);

   // Campos calculados empleados en el listado de asientos
   if QFicheroDEBEHABER.AsString = 'D' then begin
      QFicheroDebe.AsFloat := QFicheroIMPORTE.AsFloat;
   end
   else begin
      QFicheroHaber.AsFloat := QFicheroIMPORTE.AsFloat;
   end;
   QFichero.FieldByName('FechaInicial').AsDateTime   := QFiltro.FieldByName('FechaDesde').AsDateTime;
   QFichero.FieldByName('FechaFinal').AsDateTime     := QFiltro.FieldByName('FechaHasta').AsDateTime;
   QFichero.FieldByName('FechaImpresion').AsDateTime := Date;
end;

procedure TWDiario.ListadoAsientosClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      Exit;
   end;

   // Necessary for the report
   Config.SetAccountingType(QFiltro.FieldByName('TIPOCONCEPTO').AsString);
   Config.ReportCurrency  := QFiltro.FieldByName('MONEDA').AsString;
   Config.FormatoOficial  := False;

   FModel.ReportAsientos(QFichero);

   PageControl.ActivePage := TabSheetDiario;
end;

procedure TWDiario.ListadoAsientoActualClick(Sender: TObject);
var Model :TFiltroListadosAsientosModel;
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      Exit;
   end;

   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   Perform(wm_NextDlgCtl, 0, 0);

   // Necessary for the report
   Config.SetAccountingType(QFiltro.FieldByName('TipoConcepto').AsString);
   Config.ReportCurrency := QFiltro.FieldByName('Moneda').AsString;

   if not QFichero.IsEmpty then begin
      Model := TFiltroListadosAsientosModel.Create(DMRef.BDContab);
      try
         Model.LanzarInfAsientos(QFichero.FieldByName('Asiento').AsInteger,
                                 QFichero.FieldByName('Asiento').AsInteger,
                                 QFichero.FieldByName('Fecha').AsDateTime,
                                 QFichero.FieldByName('Fecha').AsDateTime, Date,
                                 QFiltro.FieldByName('TipoConcepto').AsString,
                                 '',
                                 '',
                                 '',
                                 '',
                                 '',
                                 True,  // Ordenado por asiento
                                 True,  // Informe Normal
                                 False, // Solo asientos descuadrados
                                 False);
      finally
         Model.Free;
      end;
   end; // Formato Oficial

   PageControl.ActivePage := TabSheetDiario;
end;

procedure TWDiario.BtnDuplicateClick(Sender: TObject);
var nAsiento  :Integer;
    QDiario   :TIBSQL;
    QDuplicar :TIBSQL;
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then Exit;
   if MessageDlg('¿Desea duplicar el asiento ' + FormatFloat('###,###,###', QFicheroASIENTO.AsInteger) + ' ?',
              mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      nAsiento  := DMContaRef.ObtenerNumeroAsiento;
      
      QDuplicar := TIbSql.Create(nil);
      QDuplicar.Close;
      QDuplicar.SQL.Clear;
      QDuplicar.Database := DMRef.BDContab;
      
      QDiario := TIbSql.Create(nil);
      try 
         QDiario.Database := DMRef.BDContab;
         QDiario.SQL.Add('select * from Diario where Asiento=:asiento');
         QDiario.ParamByName('Asiento').AsInteger := QFicheroAsiento.AsInteger;
         QDiario.ExecQuery;
         while not QDiario.EOF do begin
            QDuplicar.Close;
            QDuplicar.Sql.Clear;
            QDuplicar.Sql.Add(' INSERT INTO DIARIO (TIPOASIENTO, ID_DIARIO,APUNTE,ASIENTO,BASEIMPONIBLE,');
            QDuplicar.Sql.Add(' COMENTARIO,DEBEHABER,FECHA,');
            if not IsEmpty(QDiario.FieldByName('cuenta_analitica').AsString) then begin
               QDuplicar.Sql.Add(' CUENTA_ANALITICA,');
            end;
            QDuplicar.Sql.Add(' IMPORTE, IVA, NIF, MONEDA, NUMEROFACTURA, RECARGO,');
            if (QDiario.FieldByName('contrapartida').AsString) = '' then begin
               QDuplicar.Sql.Add(' SUBCUENTA,ID_CONCEPTOS) ');
            end
            else begin
               QDuplicar.Sql.Add(' SUBCUENTA,ID_CONCEPTOS,CONTRAPARTIDA) ');
            end;
            QDuplicar.Sql.Add(' VALUES(:TIPOASIENTO, :ID_DIARIO,:APUNTE,:ASIENTO,:BASEIMPONIBLE,');
            QDuplicar.Sql.Add(' :COMENTARIO,:DEBEHABER,:FECHA,');
            if not IsEmpty(QDiario.FieldByName('cuenta_analitica').AsString) then begin
               QDuplicar.Sql.Add(' :CUENTA_ANALITICA,');
            end;
            QDuplicar.Sql.Add(' :IMPORTE,:IVA,:NIF,:MONEDA,:NUMEROFACTURA,:RECARGO,');
            if (QDiario.FieldByName('contrapartida').AsString) = '' then begin
               QDuplicar.Sql.Add(' :SUBCUENTA,:ID_CONCEPTOS) ');
            end
            else begin
               QDuplicar.Sql.Add(' :SUBCUENTA,:ID_CONCEPTOS,:CONTRAPARTIDA) ');
            end;

            QDuplicar.Params.ByName('TIPOASIENTO'  ).AsInteger := QDiario.FieldByName('TIPOASIENTO').AsInteger;
            QDuplicar.Params.byname('ID_DIARIO'    ).AsInteger := DmContaRef.Obtener_Contador('DIARIO', 'id_diario', 'Diario');
            QDuplicar.Params.byname('APUNTE'       ).AsInteger := QDiario.FieldByName('APUNTE').AsInteger;
            QDuplicar.Params.byname('ASIENTO'      ).AsInteger := nAsiento;
            QDuplicar.Params.byname('BASEIMPONIBLE').AsFloat   := QDiario.FieldByName('BASEIMPONIBLE').AsFloat;
            QDuplicar.Params.byname('ID_CONCEPTOS' ).AsString  := QDiario.FieldByName('ID_CONCEPTOS').AsString;
            QDuplicar.Params.byname('SUBCUENTA'    ).AsString  := QDiario.FieldByName('SUBCUENTA').AsString;
            if not IsEmpty(QDiario.FieldByName('Cuenta_Analitica').AsString) then begin
               QDuplicar.Params.byname('CUENTA_ANALITICA').AsString := QDiario.FieldByName('Cuenta_Analitica').AsString;
            end;
            QDuplicar.Params.byname('COMENTARIO'   ).AsString   := QDiario.FieldByName('COMENTARIO'   ).AsString;
            QDuplicar.Params.byname('DEBEHABER'    ).AsString   := QDiario.FieldByName('DEBEHABER'    ).AsString;
            QDuplicar.Params.byname('FECHA'        ).AsDateTime := Date;
            QDuplicar.Params.byname('IMPORTE'      ).AsFloat    := QDiario.FieldByName('IMPORTE'      ).AsFloat;
            QDuplicar.Params.byname('IVA'          ).AsFloat    := QDiario.FieldByName('IVA'          ).AsFloat;
            QDuplicar.Params.byname('NIF'          ).AsString   := QDiario.FieldByName('NIF'          ).AsString;
            QDuplicar.Params.byname('MONEDA'       ).AsString   := QDiario.FieldByName('MONEDA'       ).AsString;
            QDuplicar.Params.byname('NUMEROFACTURA').AsString   := QDiario.FieldByName('NUMEROFACTURA').AsString;
            QDuplicar.Params.byname('RECARGO'      ).AsFloat    := QDiario.FieldByName('RECARGO'      ).AsFloat;
            if (QDiario.FieldByName('contrapartida').AsString <> '') then begin
               QDuplicar.Params.byname('CONTRAPARTIDA').AsString := QDiario.FieldByName('CONTRAPARTIDA').AsString;
            end;
            QDuplicar.ExecQuery;
            QDuplicar.Transaction.CommitRetaining;
            Next;
         end;
      finally
         QDiario.Free;
      end;

      if QFicheroTIPOASIENTO.AsInteger = ASIENTO_NOMINA then  begin
         QDuplicar.Close;
         QDuplicar.SQL.Clear;
         QDuplicar.SQL.Add('INSERT INTO NOMINAS (ASIENTO, NOMINA, IRPF, SSOCIAL, NETO, SUBCUENTA)');
         QDuplicar.SQL.Add('SELECT ' + IntToStr(nAsiento) + ', NOMINA, IRPF, SSOCIAL, NETO, SUBCUENTA');
         QDuplicar.SQL.Add('FROM NOMINAS WHERE ASIENTO = :ASIENTO');
         QDuplicar.ParamByName('ASIENTO').AsInteger := QFicheroASIENTO.AsInteger;
         QDuplicar.ExecQuery;
         QDuplicar.Transaction.CommitRetaining;
      end;

      QDuplicar.Close;
      QDuplicar.Free;
      //Mostrar asiento duplicado
      if not (QFiltro.State in dseditmodes) then begin
         QFiltro.Edit;
      end;
      QFiltro.FieldByName('BAsiento').AsInteger := nAsiento;
      QFiltro.Post;
   end;

   PrepararQuery;
   EditFiltroBAsiento.Repaint;
   DataGrid.Repaint;

   // Editar asiento duplicado
   ModificarAsiento;
end;

procedure TWDiario.BtnDueDatesClick(Sender: TObject);
var TipoCuenta :string;
    Q :TIBQuery;
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCARTERAEFECTOS') then begin
      Exit;
   end;


   if not QFichero.IsEmpty then  begin
      TipoCuenta := '';
      Q := TIBQuery.Create(nil);
      try 
         Q.Database := DMRef.BDContab;
         Q.SQL.Clear;
         Q.SQL.Add('SELECT TIPOCUENTA FROM CUENTAS');
         Q.SQL.Add('WHERE CUENTA = :CUENTA');
         Q.ParamByName('CUENTA').AsString := Copy(QFicheroSUBCUENTA.AsString, 1, 3);
         Q.Open;
         if not Q.EOF then begin
            TipoCuenta := Q.FieldByName('TIPOCUENTA').AsString;
         end;
      finally
         Q.Free;
      end;

      if (TipoCuenta = 'C') and (QFicheroDEBEHABER.AsString = 'D') then begin
         if Copy(QFicheroSUBCUENTA.AsString, 1, 3) = '431' then begin
            if MessageDlg('¿Desea generar el vencimiento asociado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
               if Assigned(WCarteraEfectos) then begin
                  WCarteraEfectos.Close;
               end;
               WCarteraEfectos := TWCarteraEfectos.Create(nil);
               WCarteraEfectos.NuevoVto          := True;
               WCarteraEfectos.SubcuentaNuevoVto := QFicheroSUBCUENTA.AsString;
               WCarteraEfectos.ConceptoNuevoVto  := QFicheroDescApunte.AsString;
               WCarteraEfectos.ImporteNuevoVto   := QFicheroIMPORTE.AsFloat;
               WCarteraEfectos.Show;
            end;
         end
         else begin
            if (QFicheroNUMEROFACTURA.AsString <> '') then begin
               if Assigned(WCarteraEfectos) then begin
                  WCarteraEfectos.Close;
               end;
               WCarteraEfectos := TWCarteraEfectos.Create(nil);
               WCarteraEfectos.FFacturaCliente := QFicheroNUMEROFACTURA.AsString;
               WCarteraEfectos.Show;
            end;
         end;
      end
      else
      if (TipoCuenta = 'P') and (QFicheroDEBEHABER.AsString = 'H') then begin
         if (QFicheroNUMEROFACTURA.AsString <> '') then begin
            if Assigned(WCarteraEfectos) then begin
               WCarteraEfectos.Close;
            end;
            WCarteraEfectos := TWCarteraEfectos.Create(nil);
            WCarteraEfectos.FFacturaProveedor := QFicheroNUMEROFACTURA.AsString;
            WCarteraEfectos.Show;
         end;
      end
      else begin
         MessageDlg('Seleccione una Factura de Venta o de Compra', mtError, [mbOK], 0);
      end;
   end;
   EditFiltroBAsiento.Repaint;
   DataGrid.Repaint;
end;

procedure TWDiario.BtnSelectClick(Sender: TObject);
begin
   if not QFichero.IsEmpty then  begin
      if (DMContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString) <> 'P') and
         (DMContaRef.ObtenerTipoSubcuenta(QFicheroSUBCUENTA.AsString) <> 'C') then begin
         MessageDlg('El apunte seleccionado no corresponde a una subcuenta de proveedor o cliente', mtError, [mbOK], 0);
      end
      else begin
         WCargaCobrosPagos.FID_Diario := QFicheroID_DIARIO.AsInteger;
         Close;
      end;
   end;
end;

procedure TWDiario.BtnBookEntryBajaClick(Sender: TObject);
var Asiento   :Integer;
    QAsientos :TIBQuery;
    Q         :TIBSQL;
begin
   if not QFichero.IsEmpty then  begin
      if MessageDlg('¿Confirma la realización del asiento de baja?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Asiento := DMContaRef.ObtenerNumeroAsiento;

         QAsientos := TIBQuery.Create(nil);
         try
            QAsientos.Close;
            QAsientos.Database := DMRef.BDContab;
            QAsientos.SQL.Clear;
            QAsientos.SQL.Add('SELECT * FROM DIARIO WHERE ASIENTO = :ASIENTO');
            QAsientos.ParamByName('ASIENTO').AsInteger := QFicheroASIENTO.AsInteger;
            QAsientos.Open;

            Q := TIBSQL.Create(nil);
            try
               Q.Close;
               Q.Database := DMRef.BDContab;
               Q.SQL.Clear;
               Q.SQL.Add('INSERT INTO DIARIO ');
               Q.SQL.Add('(APUNTE, ASIENTO, COMENTARIO, CONTRAPARTIDA, DEBEHABER,');
               Q.SQL.Add(' FECHA, IMPORTE, MONEDA, NUMEROFACTURA, SUBCUENTA,');
               Q.SQL.Add(' ID_CONCEPTOS, CUENTA_ANALITICA)');
               Q.SQL.Add('VALUES');
               Q.SQL.Add('(:APUNTE, :ASIENTO, :COMENTARIO, :CONTRAPARTIDA, :DEBEHABER,');
               Q.SQL.Add(' :FECHA, :IMPORTE, :MONEDA, :NUMEROFACTURA, :SUBCUENTA,');
               Q.SQL.Add(' :ID_CONCEPTOS, :CUENTA_ANALITICA)');
               while not QAsientos.EOF do begin
                  Q.Close;
                  Q.ParamByName('APUNTE').AsInteger        := QAsientos.FieldByName('APUNTE').AsInteger;
                  Q.ParamByName('ASIENTO').AsInteger       := Asiento;
                  Q.ParamByName('COMENTARIO').AsString     := QAsientos.FieldByName('COMENTARIO').AsString;
                  Q.ParamByName('CONTRAPARTIDA').AsVariant := QAsientos.FieldByName('SUBCUENTA').AsVariant;
                  Q.ParamByName('DEBEHABER').AsString      := QAsientos.FieldByName('DEBEHABER').AsString;
                  Q.ParamByName('FECHA').AsDateTime        := Date;
                  Q.ParamByName('IMPORTE').AsDouble        := RoundTo(QAsientos.FieldByName('IMPORTE').AsFloat, -2);
                  Q.ParamByName('MONEDA').AsString         := QAsientos.FieldByName('MONEDA').AsString;
                  Q.ParamByName('NUMEROFACTURA').AsString  := QAsientos.FieldByName('NUMEROFACTURA').AsString;
                  Q.ParamByName('SUBCUENTA').AsVariant     := QAsientos.FieldByName('CONTRAPARTIDA').AsVariant;
                  Q.ParamByName('ID_CONCEPTOS').AsVariant  := QAsientos.FieldByName('ID_CONCEPTOS').AsVariant;
                  Q.ParamByName('CUENTA_ANALITICA').AsVariant := QAsientos.FieldByName('CUENTA_ANALITICA').AsVariant;
                  Q.ExecQuery;
                  Q.Transaction.CommitRetaining;
                  QAsientos.Next;
               end;  // while not QAsientos.Eof do

            finally
               Q.Free;
            end;
         finally
            QAsientos.Free;
         end;
         MessageDlg('Generado el asiento nº ' + IntToStr(Asiento), mtInformation, [mbOK], 0);
      end;
   end;        
end;

procedure TWDiario.BtnRenumClick(Sender: TObject);
var Asiento :Integer;
    Q       :TIBSQL;
begin
   if not QFichero.IsEmpty then  begin
      if MessageDlg('¿Confirma la renumeración del asiento seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Asiento := DMContaRef.ObtenerNumeroAsiento;
         Q := TIBSQL.Create(nil);
         try
            Q.Close;
            Q.Database := DMRef.BDContab;
            Q.SQL.Clear;
            Q.SQL.Add('UPDATE DIARIO SET ASIENTO = :ASIENTO_NUEVO');
            Q.SQL.Add('WHERE ASIENTO = :ASIENTO_ACTUAL');
            Q.ParamByName('ASIENTO_NUEVO').AsInteger  := Asiento;
            Q.ParamByName('ASIENTO_ACTUAL').AsInteger := QFicheroASIENTO.AsInteger;
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;
         finally
            Q.Free;
         end;    

         if not (QFiltro.State in dsEditModes) then begin
            QFiltro.Edit;
         end;
         QFiltro.FieldByName('BAsiento').AsInteger := Asiento;
         PrepararQuery;

         PageControl.ActivePage := TabSheetDiario;

         EditFiltroBAsiento.SetFocus;
         EditFiltroBAsiento.Repaint;
         DataGrid.Repaint;

         MessageDlg('Asiento renumerado ' + IntToStr(Asiento), mtInformation, [mbOK], 0);
      end;
   end; 
end;

procedure TWDiario.EditFiltroImporteDesdeExit(Sender: TObject);
begin
   if QFiltro.State in dsEditModes then begin
      QFiltro.FieldByName('IMPORTEHASTA').AsFloat := QFiltro.FieldByName('IMPORTEDESDE').AsFloat;
   end;
end;

procedure TWDiario.DataGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if StrPos(PChar(UpperCase(FCampoOrden)), PChar(UpperCase(Column.FieldName))) <> nil then begin
      DataGrid.Canvas.Brush.Color := clBlue;
      DataGrid.Canvas.Font.Style  := [fsBold];
      DataGrid.Canvas.Font.Color  := clNavy;
   end;

   { Ordenación por ASIENTO }
   if StrPos(PChar(UpperCase(FCampoOrden)), 'ASIENTO') <> nil then begin
      if QFicheroASIENTO.AsInteger <> FAsientoAnterior then begin
         FAsientoAnterior := QFicheroASIENTO.AsInteger;
         if FColorActual = $00EDFBFC then begin
            FColorActual := $00D9D1C0;
         end
         else begin
            FColorActual := $00EDFBFC;
         end;
      end;
   end else
   { Ordenación por FECHA }
   if StrPos(PChar(UpperCase(FCampoOrden)), 'FECHA') <> nil then begin
      if QFicheroFECHA.AsDateTime <> FFechaAnterior then begin
         FFechaAnterior := QFicheroFECHA.AsDateTime;
         if FColorActual = $00EDFBFC then begin
            FColorActual := $00D9D1C0;
         end
         else begin
            FColorActual := $00EDFBFC;
         end;
      end;
   end else
   { Ordenación por SUBCUENTA }
   if StrPos(PChar(UpperCase(FCampoOrden)), 'SUBCUENTA') <> nil then begin
      if QFicheroSUBCUENTA.AsString <> FSubcuentaAnterior then begin
         FSubcuentaAnterior := QFicheroSUBCUENTA.AsString;
         if FColorActual = $00EDFBFC then begin
            FColorActual := $00D9D1C0;
         end
         else begin
            FColorActual := $00EDFBFC;
         end;
      end;
   end else
   { Ordenación por CONCEPTO }
   if StrPos(PChar(UpperCase(FCampoOrden)), 'ID_CONCEPTOS') <> nil then begin
      if QFicheroID_CONCEPTOS.AsString <> FConceptoAnterior then begin
         FConceptoAnterior := QFicheroID_CONCEPTOS.AsString;
         if FColorActual = $00EDFBFC then begin
            FColorActual := $00D9D1C0;
         end
         else begin
            FColorActual := $00EDFBFC;
         end;
      end;
   end else
   { Ordenación por CONTRAPARTIDA }
   if StrPos(PChar(UpperCase(FCampoOrden)), 'CONTRAPARTIDA') <> nil then begin
      if QFicheroCONTRAPARTIDA.AsString <> FContrapartidaAnterior then begin
         FContrapartidaAnterior := QFicheroCONTRAPARTIDA.AsString;
         if FColorActual = $00EDFBFC then begin
            FColorActual := $00D9D1C0;
         end
         else begin
            FColorActual := $00EDFBFC;
         end;
      end;
   end
   else begin
      FColorActual := $00EDFBFC;
   end;

   if State * [gdFixed, gdSelected] = [] then begin
      DataGrid.Canvas.Brush.Color := FColorActual;
      DataGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

procedure TWDiario.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWDiario.DataGridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Coord   :TGridCoord;
    cNomCol :string;
    ClickCol :Integer;
begin
   {$Message Warn 'Esto está pendiente'}
   {Un CheckBox en la casilla de Punteo. Al pulsarlo debe cambiar su estado. Eso es todo.}
   if Button = mbright then begin
      Coord   := DataGrid.MouseCoord(X, Y);
      //cNomCol := Coord.X;{DataGrid.FieldName(Coord.X);}
      ClickCol := Coord.X;
      ShowMessage('You clicked column ' + DataGrid.Columns[ClickCol - 1].Field.FieldName);

      QFichero.DisableControls;
      if UpperCase(cNomcol) = 'PUNTEO' then begin
         QFichero.Edit;
         if IsEmpty(QFichero.FieldByName('PUNTEO').AsString) then begin
            QFichero.FieldByName('PUNTEO').AsString := 'S';
         end
         else begin
            QFichero.FieldByName('PUNTEO').AsString := ' ';
         end;
         QFichero.Post;
         QFichero.Transaction.CommitRetaining;
         QFichero.Refresh;
      end;
      QFichero.EnableControls;
   end;

   FAsientoAnterior       := QFicheroASIENTO.AsInteger;
   FFechaAnterior         := QFicheroFECHA.AsDateTime;
   FSubcuentaAnterior     := QFicheroSUBCUENTA.AsString;
   FConceptoAnterior      := QFicheroID_CONCEPTOS.AsString;
   FContrapartidaAnterior := QFicheroCONTRAPARTIDA.AsString;

   DataGrid.Refresh;
end;

procedure TWDiario.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'ASIENTO'  ) or (UpperCase(Column.FieldName) = 'FECHA'       ) or
      (UpperCase(Column.FieldName) = 'SUBCUENTA') or (UpperCase(Column.FieldName) = 'ID_CONCEPTOS') or
      (UpperCase(Column.FieldName) = 'CONTRAPARTIDA') then begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

procedure TWDiario.BtnModifyClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      ModificarAsiento;
   end;
end;

end.
