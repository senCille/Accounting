unit UCarteraEfectos;

interface

uses Buttons, Classes, ComCtrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, jpeg, Mask, Menus, Messages,
     StdCtrls, SysUtils, Variants, Windows,
     FormHandler,
     UCarteraEfectosModel, DBGrids;
     
type
  TWCarteraEfectos = class(TForm)
    DBText1: TDBText;
    QAux: TIBSQL;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Shape1: TShape;
    PopupMenuListados: TPopupMenu;
    InformeFVenc: TMenuItem;
    InformeporSubcuenta1: TMenuItem;
    InformeporBanco1: TMenuItem;
    InformeporSituacin1: TMenuItem;
    InformeporComercial1: TMenuItem;
    PageControl1: TPageControl;
    TabSheetCarteraEfectos: TTabSheet;
    TabSheetDatos: TTabSheet;
    TabSheetFiltro: TTabSheet;
    Panel2: TPanel;
    SpFiltro: TSpeedButton;
    BtnEfectos: TButton;
    BtnAceptar: TButton;
    BtnInformes: TButton;
    BtnCancelar: TButton;
    BtnSeleccion: TButton;
    BtnNew: TButton;
    BtnDelete: TButton;
    NavAnimate: TAnimate;
    Navegador: TDBNavigator;
    BtnModify: TButton;
    BtnAsiento: TButton;
    BtnCarta: TButton;
    BtnAsientoBaja: TButton;
    BtnDuplicar: TButton;
    FiltroBuscar: TGroupBox;
    Label1: TLabel;
    Label12: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    EditBUSCA_FACT_PROVEEDOR: TDBEdit;
    EditBUSCA_FACT_CLIENTE: TDBEdit;
    EditBUSCA_NUMERO: TDBEdit;
    EditBUSCA_IMPORTE: TDBEdit;
    GroupBox1: TGroupBox;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Bevel3: TBevel;
    Label15: TLabel;
    Label14: TLabel;
    lbEjercicio: TLabel;
    lbSerie: TLabel;
    ComboBoxCD_SUBCUENTA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_BANCO: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_BANCO: TDBLookupComboBox;
    EditCONCEPTO: TDBEdit;
    EditFACT_CLIENTE: TDBEdit;
    EditFACT_PROVEEDOR: TDBEdit;
    EditIMPORTE: TDBEdit;
    EditIMP_COMISION: TDBEdit;
    EditFECHA_EMISION: TDBEdit;
    EditFECHA_VENCIMIENTO: TDBEdit;
    EditFECHA_ASIENTO: TDBEdit;
    ComboBoxCOMERCIAL: TDBLookupComboBox;
    EditSERIE: TDBEdit;
    EditEJERCICIO: TDBEdit;
    GroupBoxREMESAS: TGroupBox;
    Label16: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label20: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label21: TLabel;
    FiltroSituacion: TGroupBox;
    CheckBoxPENDIENTE: TCheckBox;
    CheckBoxREMESADO: TCheckBox;
    CheckBoxCOBRADO: TCheckBox;
    CheckBoxDEVUELTO: TCheckBox;
    CheckBoxPAGADO: TCheckBox;
    CheckBoxACEPTADO: TCheckBox;
    CheckBoxVENCIDO: TCheckBox;
    EditFECHA_VENCIMIENTO_DESDE: TDBEdit;
    EditFECHA_VENCIMIENTO_HASTA: TDBEdit;
    EditIMPORTE_DESDE: TDBEdit;
    EditIMPORTE_HASTA: TDBEdit;
    ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxBUSCADS_SUBCUENTA_BANCO: TDBLookupComboBox;
    ComboBoxBUSCACD_SUBCUENTA_BANCO: TDBLookupComboBox;
    EditFECHA_EMISION_DESDE: TDBEdit;
    EditFECHA_EMISION_HASTA: TDBEdit;
    ComboBoxBUSCA_COMERCIAL: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox;
    EditFACT_CLIENTE_DESDE: TDBEdit;
    EditFACT_CLIENTE_HASTA: TDBEdit;
    EditFACT_PROVEEDOR_DESDE: TDBEdit;
    EditFACT_PROVEEDOR_HASTA: TDBEdit;
    EditFECHA_ASIENTO_HASTA: TDBEdit;
    EditFECHA_ASIENTO_DESDE: TDBEdit;
    FiltroRemesasBancarias: TCheckBox;
    RadioGroupSITUACION: TDBRadioGroup;
    DBGrid: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnNewClick(Sender: TObject);
    procedure EditBUSCA_FACT_CLIENTEEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAceptarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditBUSCA_FACT_CLIENTEExit(Sender: TObject);
    procedure BtnInformesClick(Sender: TObject);
    procedure SpFiltroClick(Sender: TObject);
    procedure InformeFVencAdvancedDrawItem(Sender: TObject; ACanvas: TCanvas; ARect: TRect; State: TOwnerDrawState);
    procedure InformeFVencClick(Sender: TObject);
    procedure InformeporSubcuenta1Click(Sender: TObject);
    procedure InformeporBanco1Click(Sender: TObject);
    procedure InformeporSituacin1Click(Sender: TObject);
    procedure InformeporComercial1Click(Sender: TObject);
    procedure BtnAsientoClick(Sender: TObject);
    procedure BtnSeleccionClick(Sender: TObject);
    procedure FiltroRemesasBancariasClick(Sender: TObject);
    procedure BtnCartaClick(Sender: TObject);
    procedure BtnEfectosClick(Sender: TObject);
    procedure BtnAsientoBajaClick(Sender: TObject);
    procedure BtnDuplicarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure DBGridDblClick(Sender: TObject);
  private
    FModel      :TCarteraEfectosModel;
    FormManager :TccFormHandler;
    lAdd        :Boolean;
    CampoOrden  :string;
    procedure PrepararQuery;
    procedure InicializarFiltro;
    procedure GenerarAsientoEfectoActual;
    procedure GenerarAsientoFiltroRemesa;
    function ObtenerComentarioEfecto(Comentario :string):string;
    procedure SetConceptoNuevoVto(const Value: string);
    procedure SetImporteNuevoVto(const Value: Double);
    procedure SetNuevoVto(const Value: Boolean);
    procedure SetSubcuentaNuevoVto(const Value: string);
  public
    FFacturaCliente    :string;
    FFacturaProveedor  :string;
    FModoConsulta      :Boolean;
    FSubcuenta         :string;
    FImporteDesde      :Double;
    FImporteHasta      :Double;
    FFechaVtoDesde     :TDateTime;
    FFechaVtoHasta     :TDateTime;
    FFechaEmisionDesde :TDateTime;
    FFechaEmisionHasta :TDateTime;
    FSituacion         :string;
    FCheque            :string;
    FSubctaBanco       :string;
    FFechaAsiento      :TDateTime;
    FConcepto          :string;
    FBorrarVtos        :Boolean;
    property NuevoVto          :Boolean write SetNuevoVto;
    property SubcuentaNuevoVto :string  write SetSubcuentaNuevoVto;
    property ConceptoNuevoVto  :string  write SetConceptoNuevoVto;
    property ImporteNuevoVto   :Double  write SetImporteNuevoVto;
  end;

var WCarteraEfectos: TWCarteraEfectos;

implementation

uses DM, DMConta, DMControl, General, Globales, UCargaCobrosPagos, UEfectosComerciales,
     UEspere, UGeneracionAsiento, USituacionEfecto;

{$R *.DFM}

procedure TWCarteraEfectos.FormCreate(Sender: TObject);
begin
   FormManager := TccFormHandler.Create(Self);

   FModel := TCarteraEfectosModel.Create(DMRef.BDContab);
   Self.Caption := '';

   QAux.Transaction := FModel.Datamodule.Transaccion;

   FFacturaCliente   := '';
   FFacturaProveedor := '';

   FModoConsulta   := False;
   FModel.NuevoVto := False;

   FormManager.AddComp(BtnNew.Name                         , fmBrowse);
   FormManager.AddComp(BtnModify.Name                      , fmBrowse);
   FormManager.AddComp(BtnDelete.Name                      , fmBrowse);
   FormManager.AddComp(BtnAsiento.Name                     , fmNone  );
   FormManager.AddComp(BtnDuplicar.Name                    , fmBrowse);
   FormManager.AddComp(BtnCarta.Name                       , fmBrowse);
   FormManager.AddComp(BtnEfectos.Name                     , fmBrowse);
   FormManager.AddComp(BtnAsientoBaja.Name                 , fmBrowse);
   FormManager.AddComp(BtnInformes.Name                    , fmBrowse);
   FormManager.AddComp(BtnSeleccion.Name                   , fmBrowse);
   FormManager.AddComp(BtnAceptar.Name                     , fmEdit  );
   FormManager.AddComp(BtnCancelar.Name                    , fmEdit  );

   FormManager.AddComp(EditBUSCA_NUMERO.Name               , fmBrowse);
   FormManager.AddComp(EditBUSCA_FACT_CLIENTE.Name         , fmBrowse);
   FormManager.AddComp(EditBUSCA_FACT_PROVEEDOR.Name       , fmBrowse);
   FormManager.AddComp(EditBUSCA_IMPORTE.Name              , fmBrowse);

   FormManager.AddComp(ComboBoxCD_SUBCUENTA.Name           , fmEdit  );
   FormManager.AddComp(ComboBoxDS_SUBCUENTA.Name           , fmEdit  );
   FormManager.AddComp(EditCONCEPTO.Name                   , fmEdit  );
   FormManager.AddComp(EditFECHA_EMISION.Name              , fmEdit  );
   FormManager.AddComp(EditFECHA_VENCIMIENTO.Name          , fmEdit  );
   FormManager.AddComp(EditFECHA_ASIENTO.Name              , fmEdit  );
   FormManager.AddComp(ComboBoxCOMERCIAL.Name              , fmEdit  );
   FormManager.AddComp(EditIMP_COMISION.Name               , fmEdit  );
   FormManager.AddComp(ComboBoxCD_SUBCUENTA_BANCO.Name     , fmEdit  );
   FormManager.AddComp(ComboBoxDS_SUBCUENTA_BANCO.Name     , fmEdit  );
   FormManager.AddComp(EditFACT_CLIENTE.Name               , fmEdit  );
   FormManager.AddComp(EditEJERCICIO.Name                  , fmEdit  );
   FormManager.AddComp(EditSERIE.Name                      , fmEdit  );
   FormManager.AddComp(EditFACT_PROVEEDOR.Name             , fmEdit  );
   FormManager.AddComp(RadioGroupSITUACION.Name            , fmEdit  );
   FormManager.AddComp(EditIMPORTE.Name                    , fmEdit  );

   FormManager.AddComp(EditFECHA_EMISION_DESDE.Name        , fmBrowse);
   FormManager.AddComp(EditFECHA_EMISION_HASTA.Name        , fmBrowse);
   FormManager.AddComp(EditFECHA_VENCIMIENTO_DESDE.Name    , fmBrowse);
   FormManager.AddComp(EditFECHA_VENCIMIENTO_HASTA.Name    , fmBrowse);
   FormManager.AddComp(EditFECHA_ASIENTO_DESDE.Name        , fmBrowse);
   FormManager.AddComp(EditFECHA_ASIENTO_HASTA.Name        , fmBrowse);
   FormManager.AddComp(EditIMPORTE_DESDE.Name              , fmBrowse);
   FormManager.AddComp(EditIMPORTE_HASTA.Name              , fmBrowse);
   FormManager.AddComp(EditFACT_CLIENTE_DESDE.Name         , fmBrowse);
   FormManager.AddComp(EditFACT_CLIENTE_HASTA.Name         , fmBrowse);
   FormManager.AddComp(EditFACT_PROVEEDOR_DESDE.Name       , fmBrowse);
   FormManager.AddComp(EditFACT_PROVEEDOR_HASTA.Name       , fmBrowse);
   FormManager.AddComp(ComboBoxCD_SUBCUENTA_DESDE.Name     , fmBrowse);
   FormManager.AddComp(ComboBoxDS_SUBCUENTA_DESDE.Name     , fmBrowse);
   FormManager.AddComp(ComboBoxCD_SUBCUENTA_HASTA.Name     , fmBrowse);
   FormManager.AddComp(ComboBoxDS_SUBCUENTA_HASTA.Name     , fmBrowse);
   FormManager.AddComp(ComboBoxBUSCACD_SUBCUENTA_BANCO.Name, fmBrowse);
   FormManager.AddComp(ComboBoxBUSCADS_SUBCUENTA_BANCO.Name, fmBrowse);
   FormManager.AddComp(ComboBoxBUSCA_COMERCIAL.Name        , fmBrowse);
   FormManager.AddComp(CheckBoxPENDIENTE.Name              , fmBrowse);
   FormManager.AddComp(CheckBoxDEVUELTO.Name               , fmBrowse);
   FormManager.AddComp(CheckBoxVENCIDO.Name                , fmBrowse);
   FormManager.AddComp(CheckBoxREMESADO.Name               , fmBrowse);
   FormManager.AddComp(CheckBoxPAGADO.Name                 , fmBrowse);
   FormManager.AddComp(CheckBoxCOBRADO.Name                , fmBrowse);
   FormManager.AddComp(CheckBoxACEPTADO.Name               , fmBrowse);
   FormManager.AddComp(GroupBoxREMESAS.Name                , fmBrowse);

   TabSheetCarteraEfectos.Show;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

procedure TWCarteraEfectos.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWCarteraEfectos.PrepararQuery;
var StrSQL: String;
begin
   FModel.Datamodule.QFichero.DisableControls;
   FModel.Datamodule.QFichero.Close;
   FModel.Datamodule.QFichero.SelectSQL.Clear;
   FModel.Datamodule.QFichero.Transaction.active := True;
   FModel.Datamodule.QFichero.SelectSQL.Add('SELECT * FROM CARTERAEFECTOS E WHERE ID_CARTERAEFECTOS IS NOT NULL');

   if FModel.DataModule.CDSFiltroBFACTCLIENTE.AsString <> '' then begin
      FModel.Datamodule.QFichero.SelectSQL.Add('AND FACTCLIENT LIKE :BFACTCLIENTE');
   end else
   if FModel.DataModule.CDSFiltroBFACTPROVEEDOR.AsString <> '' then begin
      FModel.Datamodule.QFichero.SelectSQL.Add('AND FACTPROVEEDOR LIKE :BFACTPROVEEDOR');
   end else
   if FModel.DataModule.CDSFiltroBNUMERO.AsInteger <> 0 then begin
      FModel.Datamodule.QFichero.SelectSQL.Add('AND ID_CARTERAEFECTOS = :BNUMERO');
   end else
   if FModel.DataModule.CDSFiltroBIMPORTE.AsFloat <> 0 then begin
      FModel.Datamodule.QFichero.SelectSQL.Add('AND IMPORTE = :BIMPORTE');
   end
   else begin
      if FiltroRemesasBancarias.Checked then begin
         // Sin fecha de asiento
         FModel.Datamodule.QFichero.SelectSQL.Add('AND FASIENTO IS NULL');

         // Sin subcuenta de banco
         FModel.Datamodule.QFichero.SelectSQL.Add('AND (SUBCTABANCO IS NULL OR SUBCTABANCO = "")');

         // Sólo subcuentas de cliente
         FModel.Datamodule.QFichero.SelectSQL.Add('AND SUBSTR(E.SUBCUENTA, 1, 3) IN (SELECT C.CUENTA FROM CUENTAS C');
         FModel.Datamodule.QFichero.SelectSQL.Add('                                  WHERE C.TIPOCUENTA = "C" AND');
         FModel.Datamodule.QFichero.SelectSQL.Add('                                  SUBSTR(E.SUBCUENTA, 1, 3) = C.CUENTA)');
      end
      else begin
         // Fecha de asiento
         if FModel.DataModule.CDSFiltroFECHAASIENTODESDE.IsNull then begin
            FModel.Datamodule.QFichero.SelectSQL.Add('AND (FASIENTO IS NULL OR (FASIENTO >= :FECHAASIENTODESDE AND FASIENTO <= :FECHAASIENTOHASTA))');
         end
         else begin
            FModel.Datamodule.QFichero.SelectSQL.Add('AND FASIENTO >= :FECHAASIENTODESDE AND FASIENTO <= :FECHAASIENTOHASTA');
         end;

         // Subcuenta de banco
         if FModel.DataModule.CDSFiltroSUBCUENTABANCO.AsString <> '' then begin
            FModel.Datamodule.QFichero.SelectSQL.Add('AND SUBCTABANCO LIKE :SUBCUENTABANCO');
         end;
      end;

      if FModel.DataModule.CDSFiltroFECHAEMISIONDESDE.IsNull then begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND (FEMISION IS NULL OR (FEMISION >= :FECHAEMISIONDESDE AND FEMISION <= :FECHAEMISIONHASTA))');
      end
      else begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND FEMISION >= :FECHAEMISIONDESDE AND FEMISION <= :FECHAEMISIONHASTA');
      end;
      if FModel.DataModule.CDSFiltroFECHAVENCIMDESDE.IsNull then begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND (FVENCIMIENTO IS NULL OR (FVENCIMIENTO >= :FECHAVENCIMDESDE AND FVENCIMIENTO <= :FECHAVENCIMHASTA))');
      end
      else begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND FVENCIMIENTO >= :FECHAVENCIMDESDE AND FVENCIMIENTO <= :FECHAVENCIMHASTA');
      end;

      if FModel.DataModule.CDSFiltroIMPORTEDESDE.AsFloat = 0 then begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND (IMPORTE IS NULL OR (IMPORTE >= :IMPORTEDESDE AND IMPORTE <= :IMPORTEHASTA))');
      end
      else begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND IMPORTE >= :IMPORTEDESDE AND IMPORTE <= :IMPORTEHASTA');
      end;
      if FModel.DataModule.CDSFiltroFACTCLIENTEDESDE.AsString = '' then begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND (FACTCLIENT IS NULL OR (FACTCLIENT >= :FACTCLIENTEDESDE AND FACTCLIENT <= :FACTCLIENTEHASTA))');
      end
      else begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND FACTCLIENT >= :FACTCLIENTEDESDE AND FACTCLIENT <= :FACTCLIENTEHASTA');
      end;
      if FModel.DataModule.CDSFiltroFACTPROVEEDORDESDE.AsString = '' then begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND (FACTPROVEEDOR IS NULL OR (FACTPROVEEDOR >= :FACTPROVEEDORDESDE AND FACTPROVEEDOR <= :FACTPROVEEDORHASTA))');
      end
      else begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND FACTPROVEEDOR >= :FACTPROVEEDOR AND FACTPROVEEDOR <= :FACTPROVEEDORHASTA');
      end;

      if FModel.DataModule.CDSFiltroSUBCUENTADESDE.AsString = '' then begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND (SUBCUENTA IS NULL OR (SUBCUENTA >= :SUBCUENTADESDE AND SUBCUENTA <= :SUBCUENTAHASTA))');
      end else
      if FModel.DataModule.CDSFiltroSUBCUENTAHASTA.AsString = '' then begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND SUBCUENTA LIKE :SUBCUENTADESDE');
      end
      else begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND SUBCUENTA >= :SUBCUENTADESDE AND SUBCUENTA <= :SUBCUENTAHASTA');
      end;

      if FModel.DataModule.CDSFiltroCOMERCIAL.AsString <> '' then begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND COMERCIAL = :COMERCIAL');
      end;

      StrSQL := '';
      if CheckBoxPENDIENTE.Checked then begin
         if StrSQL <> '' then begin
            StrSQL := StrSQL + ' OR ';
         end;
         StrSQL := StrSQL + 'SITUACION = "N"';
      end;

      if CheckBoxRemesado.Checked then begin
         if StrSQL <> '' then begin
            StrSQL := StrSQL + ' OR ';
         end;
         StrSQL := StrSQL + 'SITUACION = "B"';
      end;

      if CheckBoxCobrado.Checked then begin
         if StrSQL <> '' then begin
            StrSQL := StrSQL + ' OR ';
         end;
         StrSQL := StrSQL + 'SITUACION = "C"';
      end;

      if CheckBoxDevuelto.Checked then begin
         if StrSQL <> '' then begin
            StrSQL := StrSQL + ' OR ';
         end;
         StrSQL := StrSQL + 'SITUACION = "D"';
      end;

      if CheckBoxPagado.Checked then begin
         if StrSQL <> '' then begin
            StrSQL := StrSQL + ' OR ';
         end;
         StrSQL := StrSQL + 'SITUACION = "P"';
      end;

      if CheckBoxAceptado.Checked then begin
         if StrSQL <> '' then begin
            StrSQL := StrSQL + ' OR ';
         end;
         StrSQL := StrSQL + 'SITUACION = "A"';
      end;

      if CheckBoxVencido.Checked then begin
         if StrSQL <> '' then begin
            StrSQL := StrSQL + ' OR ';
         end;
         StrSQL := StrSQL + 'SITUACION = "V"';
      end;

      if StrSQL <> '' then begin
         FModel.Datamodule.QFichero.SelectSQL.Add('AND (' + StrSQL + ')');
      end;
   end;

   CampoOrden := UpperCase(Trim(CampoOrden));
   if CampoOrden = 'SUBCUENTA' then begin
      FModel.Datamodule.QFichero.SelectSQL.Add('ORDER BY SUBCUENTA, FVENCIMIENTO');
   end else
   if CampoOrden = 'SUBCTABANCO' then begin
      FModel.Datamodule.QFichero.SelectSQL.Add('ORDER BY SUBCTABANCO, FVENCIMIENTO');
   end else
   if CampoOrden = 'FVENCIMIENTO' then begin
      FModel.Datamodule.QFichero.SelectSQL.Add('ORDER BY FVENCIMIENTO, SUBCUENTA');
   end else
   if CampoOrden <> '' then begin
      FModel.Datamodule.QFichero.SelectSQL.Add('ORDER BY ' + CampoOrden);
   end
   else begin
      FModel.Datamodule.QFichero.SelectSQL.Add('ORDER BY FVencimiento, Subcuenta');
   end;

   // PARÁMETROS
   if FModel.DataModule.CDSFiltroBFACTCLIENTE.AsString <> '' then begin
      FModel.Datamodule.QFichero.ParamByName('BFACTCLIENTE').AsString := Copy(FModel.DataModule.CDSFiltroBFACTCLIENTE.AsString + '%', 1, FModel.DataModule.CDSFiltroBFACTCLIENTE.Size);
   end else
   if FModel.DataModule.CDSFiltroBFACTPROVEEDOR.AsString <> '' then begin
      FModel.Datamodule.QFichero.ParamByName('BFACTPROVEEDOR').AsString := Copy(FModel.DataModule.CDSFiltroBFACTPROVEEDOR.AsString + '%', 1, FModel.DataModule.CDSFiltroBFACTPROVEEDOR.Size);
   end else
   if FModel.DataModule.CDSFiltroBNUMERO.AsInteger <> 0 then begin
      FModel.Datamodule.QFichero.ParamByName('BNUMERO').AsInteger := FModel.DataModule.CDSFiltroBNUMERO.AsInteger;
   end else
   if FModel.DataModule.CDSFiltroBIMPORTE.AsFloat <> 0 then begin
      FModel.Datamodule.QFichero.ParamByName('BIMPORTE').AsVariant := FModel.DataModule.CDSFiltroBIMPORTE.AsFloat;
   end
   else begin
      if not FiltroRemesasBancarias.Checked then begin
         FModel.Datamodule.QFichero.ParamByName('FECHAASIENTODESDE').AsDateTime := FModel.DataModule.CDSFiltroFECHAASIENTODESDE.AsDateTime;
         FModel.Datamodule.QFichero.ParamByName('FECHAASIENTOHASTA').AsDateTime := FModel.DataModule.CDSFiltroFECHAASIENTOHASTA.AsDateTime;

         if FModel.DataModule.CDSFiltroSUBCUENTABANCO.AsString <> '' then begin
            FModel.Datamodule.QFichero.ParamByName('SUBCUENTABANCO').AsString := Copy(FModel.DataModule.CDSFiltroSUBCUENTABANCO.AsString + '%', 1, FModel.DataModule.CDSFiltroSUBCUENTABANCO.Size);
         end;
      end;

      FModel.Datamodule.QFichero.ParamByName('FECHAEMISIONDESDE').AsDateTime := FModel.DataModule.CDSFiltroFECHAEMISIONDESDE.AsDateTime;
      FModel.Datamodule.QFichero.ParamByName('FECHAEMISIONHASTA').AsDateTime := FModel.DataModule.CDSFiltroFECHAEMISIONHASTA.AsDateTime;
      FModel.Datamodule.QFichero.ParamByName('FECHAVENCIMDESDE').AsDateTime  := FModel.DataModule.CDSFiltroFECHAVENCIMDESDE.AsDateTime;
      FModel.Datamodule.QFichero.ParamByName('FECHAVENCIMHASTA').AsDateTime  := FModel.DataModule.CDSFiltroFECHAVENCIMHASTA.AsDateTime;
      FModel.Datamodule.QFichero.ParamByName('IMPORTEDESDE').AsFloat         := FModel.DataModule.CDSFiltroIMPORTEDESDE.AsFloat - 0.001;
      FModel.Datamodule.QFichero.ParamByName('IMPORTEHASTA').AsFloat         := FModel.DataModule.CDSFiltroIMPORTEHASTA.AsFloat + 0.001;
      FModel.Datamodule.QFichero.ParamByName('FACTCLIENTEDESDE').AsString    := FModel.DataModule.CDSFiltroFACTCLIENTEDESDE.AsString;
      FModel.Datamodule.QFichero.ParamByName('FACTCLIENTEHASTA').AsString    := FModel.DataModule.CDSFiltroFACTCLIENTEHASTA.AsString;
      FModel.Datamodule.QFichero.ParamByName('FACTPROVEEDORDESDE').AsString  := FModel.DataModule.CDSFiltroFACTPROVEEDORDESDE.AsString;
      FModel.Datamodule.QFichero.ParamByName('FACTPROVEEDORHASTA').AsString  := FModel.DataModule.CDSFiltroFACTPROVEEDORHASTA.AsString;
      FModel.Datamodule.QFichero.ParamByName('SUBCUENTADESDE').AsString      := FModel.DataModule.CDSFiltroSUBCUENTADESDE.AsString;
      //        Copy(CDSFiltroSUBCUENTADESDE.AsString + '%', 1,
      //             CDSFiltroSUBCUENTADESDE.Size);
      if FModel.DataModule.CDSFiltroSUBCUENTAHASTA.AsString <> '' then begin
         FModel.Datamodule.QFichero.ParamByName('SUBCUENTAHASTA').AsString := FModel.DataModule.CDSFiltroSUBCUENTAHASTA.AsString;
      end;

      if FModel.DataModule.CDSFiltroCOMERCIAL.AsString <> '' then begin
         FModel.Datamodule.QFichero.ParamByName('COMERCIAL').AsString := FModel.DataModule.CDSFiltroCOMERCIAL.AsString;
      end;
   end;

   FModel.Datamodule.QFichero.Prepare;
   FModel.Datamodule.QFichero.EnableControls;
   FModel.Datamodule.QFichero.Open;

   SpFiltro.Flat := True;
end;

procedure TWCarteraEfectos.InicializarFiltro;
var QSelEfectos: TIBQuery;
begin
   if FModoConsulta then begin
      FModel.DataModule.CDSFiltroFechaEmisionDesde.AsDateTime := FFechaEmisionDesde;
      FModel.DataModule.CDSFiltroFechaEmisionHasta.AsDateTime := FFechaEmisionHasta;
      FModel.DataModule.CDSFiltroFechaVencimDesde.AsDateTime  := FFechaVtoDesde;
      FModel.DataModule.CDSFiltroFechaVencimHasta.AsDateTime  := FFechaVtoHasta;
      FModel.DataModule.CDSFiltroImporteDesde.AsFloat         := FImporteDesde;
      FModel.DataModule.CDSFiltroImporteHasta.AsFloat         := FImporteHasta;
      if FSubcuenta <> '' then begin
         FModel.DataModule.CDSFiltroSUBCUENTADESDE.AsString := FSubcuenta;
         FModel.DataModule.CDSFiltroSUBCUENTAHASTA.AsString := FSubcuenta;
      end
      else begin
         FModel.DataModule.CDSFiltroSUBCUENTAHASTA.AsString := '9999999999';
      end;

      CheckBoxPendiente.Checked := True;
   end
   else begin
      FModel.DataModule.CDSFiltroFECHAEMISIONDESDE.AsDateTime := Date - 365;
      FModel.DataModule.CDSFiltroFECHAEMISIONHASTA.AsDateTime := Date + 30;
      FModel.DataModule.CDSFiltroFECHAVENCIMDESDE.AsDateTime  := Date - 30;
      FModel.DataModule.CDSFiltroFECHAVENCIMHASTA.AsDateTime  := Date + 365;
      FModel.DataModule.CDSFiltroIMPORTEHASTA.AsFloat         := 999999999;
      FModel.DataModule.CDSFiltroSUBCUENTAHASTA.AsString      := '9999999999';

      QSelEfectos := TIBQuery.Create(nil);
      try
         QSelEfectos.Database := DMRef.BDContab;
         QSelEfectos.SQL.Add('SELECT FEMISION FROM CARTERAEFECTOS');
         QSelEfectos.SQL.Add('WHERE NOT FEMISION IS NULL ORDER BY FEMISION');
         QSelEfectos.Open;
         if not QSelEfectos.EOF then begin
            FModel.DataModule.CDSFiltroFECHAEMISIONDESDE.AsDateTime := QSelEfectos.FieldByName('FEMISION').AsDateTime;
            QSelEfectos.Last;
            FModel.DataModule.CDSFiltroFECHAEMISIONHASTA.AsDateTime := QSelEfectos.FieldByName('FEMISION').AsDateTime;

            QSelEfectos.Close;
            QSelEfectos.SQL.Clear;
            QSelEfectos.SQL.Add('SELECT FVENCIMIENTO FROM CARTERAEFECTOS');
            QSelEfectos.SQL.Add('WHERE NOT FVENCIMIENTO IS NULL ORDER BY FVENCIMIENTO');
            QSelEfectos.Open;

            if not QSelEfectos.EOF then begin
               FModel.DataModule.CDSFiltroFECHAVENCIMDESDE.AsDateTime := QSelEfectos.FieldByName('FVENCIMIENTO').AsDateTime;
               QSelEfectos.Last;
               FModel.DataModule.CDSFiltroFECHAVENCIMHASTA.AsDateTime := QSelEfectos.FieldByName('FVENCIMIENTO').AsDateTime;
            end;
         end;
      finally
         QSelEfectos.Free;
      end;
   end;

   FModel.DataModule.CDSFiltroFECHAASIENTOHASTA.AsDateTime := Date + 30;
   FModel.DataModule.CDSFiltroFACTCLIENTEHASTA.AsString    := 'ZZZZZZZZZZ';
   FModel.DataModule.CDSFiltroFACTPROVEEDORHASTA.AsString  := 'ZZZZZZZZZZZZZZZ';
   FModel.DataModule.CDSFiltroMoneda.AsString              := 'E';

   if FFacturaCliente <> '' then begin
      FModel.DataModule.CDSFiltroBFACTCLIENTE.AsString := FFacturaCliente;
   end else
   if FFacturaProveedor <> '' then begin
      FModel.DataModule.CDSFiltroBFACTPROVEEDOR.AsString := FFacturaProveedor;
   end;

   FFacturaCliente   := '';
   FFacturaProveedor := '';
end;

procedure TWCarteraEfectos.GenerarAsientoEfectoActual;
var
   Asiento: Integer;
begin
   TabSheetDatos.Show;

   Perform(wm_NextDlgCtl, 0, 0);

   if FModel.Datamodule.QFicheroSUBCUENTA.AsString = '' then begin
      ComboBoxCD_SUBCUENTA.SetFocus;
      DatabaseError('La subcuenta está en blanco.');
   end;

   if FModel.Datamodule.QFicheroSUBCTABANCO.AsString = '' then begin
      ComboBoxCD_SUBCUENTA_BANCO.SetFocus;
      if FModel.Datamodule.QFichero.State in dsEditModes then begin
         DatabaseError('La subcuenta del banco está en blanco.');
      end
      else begin
         if MessageDlg('La subcuenta del banco está en blanco.' + #13 + '¿Desea modificarla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            FModel.Datamodule.QFichero.Edit;
            FormManager.Mode := fmEdit;
         end;
         Exit;
      end;
   end;

   if (FModel.Datamodule.QFicheroSITUACION.AsString <> 'C') and (FModel.Datamodule.QFicheroSITUACION.AsString <> 'P') then begin
      RadioGroupSITUACION.SetFocus;
      DatabaseError('La situación no es válida para generar asiento.');
   end;

   if FModel.Datamodule.QFicheroIMPORTE.AsFloat = 0 then begin
      EditIMPORTE.SetFocus;
      DatabaseError('El efecto no tiene importe.');
   end;

   if FModel.Datamodule.QFicheroFVENCIMIENTO.AsDateTime > Date then begin
      if MessageDlg('La fecha de vencimiento es mayor que la fecha actual.' + #13 +
      '¿Desea generar el asiento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
   end;

   if FModel.Datamodule.QFicheroFVENCIMIENTO.AsDateTime < FModel.Datamodule.QFicheroFEMISION.AsDateTime then begin
      if MessageDlg('La fecha de vencimiento es menor que la de emisión.' +
      #13 + '¿Desea generar el asiento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
   end;

   if FModel.Datamodule.QFicheroFVENCIMIENTO.AsDateTime < FModel.Datamodule.QFicheroFASIENTO.AsDateTime then begin
      if MessageDlg('La fecha de vencimiento es menor que la de asiento.' +
      #13 + '¿Desea generar el asiento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
   end;

   if FModel.Datamodule.QFicheroFASIENTO.IsNull then begin
      if MessageDlg('La fecha de asiento está en blanco. Se tomará la fecha actual.' + #13 +
      '¿Desea generar el asiento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
   end;

   if FModel.Datamodule.QFicheroFASIENTO.IsNull then begin
      if not (FModel.Datamodule.QFichero.State in dsEditModes) then begin
         FModel.Datamodule.QFichero.Edit;
      end;
      FModel.Datamodule.QFicheroFASIENTO.AsDateTime := Date;
      FModel.Datamodule.QFichero.Post;
   end;

   QAux.Close;
   QAux.Database := DMRef.BDContab;
   QAux.SQL.Clear;
   QAux.SQL.Add('INSERT INTO DIARIO');
   QAux.SQL.Add('(APUNTE, ASIENTO, MONEDA, FECHA, IMPORTE, DEBEHABER,');
   QAux.SQL.Add(' COMENTARIO, SUBCUENTA, ID_CONCEPTOS, NUMEROFACTURA, CONTRAPARTIDA)');
   QAux.SQL.Add('VALUES');
   QAux.SQL.Add('(:APUNTE, :ASIENTO, :MONEDA, :FECHA, :IMPORTE, :DEBEHABER,');
   QAux.SQL.Add(' :COMENTARIO, :SUBCUENTA, :ID_CONCEPTOS, :NUMEROFACTURA, :CONTRAPARTIDA)');

   // Número de asiento
   Asiento := DMContaRef.ObtenerNumeroAsiento;

   // Apunte 1
   QAux.Close;
   QAux.ParamByName('ASIENTO').AsInteger  := Asiento;
   QAux.ParamByName('APUNTE').AsInteger   := 1;
   QAux.ParamByName('MONEDA').AsString    := 'E';
   QAux.ParamByName('FECHA').AsDateTime   := FModel.Datamodule.QFicheroFASIENTO.AsDateTime;
   QAux.ParamByName('IMPORTE').AsFloat    := FModel.Datamodule.QFicheroIMPORTE.AsFloat;
   QAux.ParamByName('DEBEHABER').AsString := 'D';
   if FModel.Datamodule.QFicheroCONCEPTO.AsString <> '' then begin
      QAux.ParamByName('COMENTARIO').AsString := ObtenerComentarioEfecto(FModel.Datamodule.QFicheroCONCEPTO.AsString);
   end
   else begin
      QAux.ParamByName('COMENTARIO').AsString := FModel.Datamodule.QFicheroFVENCIMIENTO.AsString;
   end;

   if FModel.Datamodule.QFicheroSITUACION.AsString = 'C' then begin   // Cobro
      QAux.ParamByName('SUBCUENTA').AsString     := Trim(FModel.Datamodule.QFicheroSUBCTABANCO.AsString);
      QAux.ParamByName('CONTRAPARTIDA').AsString := Trim(FModel.Datamodule.QFicheroSUBCUENTA.AsString);
      QAux.ParamByName('ID_CONCEPTOS').AsString  := '07';
      QAux.ParamByName('NUMEROFACTURA').AsString := FModel.Datamodule.QFicheroFACTCLIENT.AsString;
   end
   else begin                                       // Pago
      QAux.ParamByName('SUBCUENTA').AsString     := Trim(FModel.Datamodule.QFicheroSUBCUENTA.AsString);
      QAux.ParamByName('CONTRAPARTIDA').AsString := Trim(FModel.Datamodule.QFicheroSUBCTABANCO.AsString);
      QAux.ParamByName('ID_CONCEPTOS').AsString  := '08';
      QAux.ParamByName('NUMEROFACTURA').AsString := FModel.Datamodule.QFicheroFACTPROVEEDOR.AsString;
   end;

   QAux.ExecQuery;
   QAux.Transaction.CommitRetaining;

   // Apunte 2
   QAux.Close;
   QAux.ParamByName('ASIENTO').AsInteger  := Asiento;
   QAux.ParamByName('APUNTE').AsInteger   := 2;
   QAux.ParamByName('MONEDA').AsString    := 'E';
   QAux.ParamByName('FECHA').AsDateTime   := FModel.Datamodule.QFicheroFASIENTO.AsDateTime;
   QAux.ParamByName('IMPORTE').AsFloat    := FModel.Datamodule.QFicheroIMPORTE.AsFloat;
   QAux.ParamByName('DEBEHABER').AsString := 'H';
   if FModel.Datamodule.QFicheroCONCEPTO.AsString <> '' then begin
      QAux.ParamByName('COMENTARIO').AsString := ObtenerComentarioEfecto(FModel.Datamodule.QFicheroCONCEPTO.AsString);
   end
   else begin
      QAux.ParamByName('COMENTARIO').AsString := FModel.Datamodule.QFicheroFVENCIMIENTO.AsString;
   end;
   if FModel.Datamodule.QFicheroSITUACION.AsString = 'C' then begin   // Cobro
      QAux.ParamByName('SUBCUENTA').AsString     := Trim(FModel.Datamodule.QFicheroSUBCUENTA.AsString);
      QAux.ParamByName('CONTRAPARTIDA').AsString := Trim(FModel.Datamodule.QFicheroSUBCTABANCO.AsString);
      QAux.ParamByName('ID_CONCEPTOS').AsString  := '07';
      QAux.ParamByName('NUMEROFACTURA').AsString := FModel.Datamodule.QFicheroFACTCLIENT.AsString;
   end
   else begin                                       // Pago
      QAux.ParamByName('SUBCUENTA').AsString     := Trim(FModel.Datamodule.QFicheroSUBCTABANCO.AsString);
      QAux.ParamByName('CONTRAPARTIDA').AsString := Trim(FModel.Datamodule.QFicheroSUBCUENTA.AsString);
      QAux.ParamByName('ID_CONCEPTOS').AsString  := '08';
      QAux.ParamByName('NUMEROFACTURA').AsString := FModel.Datamodule.QFicheroFACTPROVEEDOR.AsString;
   end;
   QAux.ExecQuery;
   QAux.Transaction.CommitRetaining;

   if MessageDlg('¿Desea borrar el vencimiento después de generar el asiento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      FModel.Datamodule.QFichero.Delete;
      FModel.Datamodule.QFichero.Transaction.CommitRetaining;
   end;

   MessageDlg('Generado el asiento nº ' + IntToStr(Asiento), mtInformation, [mbOK], 0);
   FormManager.Mode := fmBrowse;
   TabSheetCarteraEfectos.Show;
   DBGrid.SetFocus;
   PageControl1.Update;
end;

procedure TWCarteraEfectos.GenerarAsientoFiltroRemesa;
var
   Asiento, Apunte, I: Integer;
   Importe:       Double;
   AbreviaturaSubcuenta, Subcuenta1, Factura1, Concepto1: String;
   FechaVto1:     TDateTime;
   NumRegistros:  Integer;
   QAbrevSubctas: TIBQuery;
begin
   if not FModel.Datamodule.QFichero.IsEmpty then begin
      QAux.Close;
      QAux.Database := DMRef.BDContab;
      QAux.SQL.Clear;
      QAux.SQL.Add('INSERT INTO DIARIO');
      QAux.SQL.Add('(APUNTE, ASIENTO, COMENTARIO, CONTRAPARTIDA, DEBEHABER,');
      QAux.SQL.Add(' FECHA, ID_CONCEPTOS, IMPORTE, MONEDA, NUMEROFACTURA,');
      QAux.SQL.Add(' SUBCUENTA)');
      QAux.SQL.Add('VALUES');
      QAux.SQL.Add('(:APUNTE, :ASIENTO, :COMENTARIO, :CONTRAPARTIDA, :DEBEHABER,');
      QAux.SQL.Add(' :FECHA, :ID_CONCEPTOS, :IMPORTE, :MONEDA, :NUMEROFACTURA,');
      QAux.SQL.Add(' :SUBCUENTA)');

      // Si no se ha seleccionado ningún efecto, confirmar si desea generar
      // el asiento con todos los efectos filtrados.
      if DBGrid.SelectedRows.Count = 0 then begin
         if MessageDlg('No ha seleccionado ningún efecto.' + #13 +
            '¿Desea generar el asiento con todos los efectos filtrados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            //DBGrid.SelectedRows.SelectAll; {$Message Warn 'This is pendant of be doit'}
         end;
      end;

      // Generar el asiento con los efectos marcados.
      Subcuenta1 := '';
      FechaVto1  := 0;
      Factura1   := '';
      Concepto1  := '';

      {$Message Warn 'This is pendant. This Screen don't works without this part'}
      (*WGeneracionAsiento := TWGeneracionAsiento.Create(nil);
      try
         Importe := 0;
         for i := 0 to DBGrid.SelectedRows.Count - 1 do begin
            FModel.Datamodule.QFichero.GotoBookmark(DBGrid.SelectedRows[i].Text);
            // Subcuenta de cliente o proveedor
            if DMContaRef.ObtenerTipoSubcuenta(FModel.Datamodule.QFicheroSUBCUENTA.AsString) = 'C' then begin
               QAux.ParamByName('DEBEHABER').AsString := 'H';
               Importe := Importe - FModel.Datamodule.QFicheroIMPORTE.AsFloat;
            end
            else begin
               QAux.ParamByName('DEBEHABER').AsString := 'D';
               Importe := Importe + FModel.Datamodule.QFicheroIMPORTE.AsFloat;
            end;
            WGeneracionAsiento.ImporteAsiento := Abs(Importe);
         end;
         WGeneracionAsiento.ShowModal;
      finally
         FreeAndNil(WGeneracionAsiento);
      end;*)

      if FSubctaBanco <> '' then begin
         QAbrevSubctas := TIBQuery.Create(nil);
         try
            QAbrevSubctas.Close;
            QAbrevSubctas.Database := DMRef.BDContab;
            QAbrevSubctas.SQL.Clear;
            QAbrevSubctas.SQL.Add('SELECT SUBCUENTA, ABREVIATURA FROM SUBCTAS');
            QAbrevSubctas.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA');
            QAbrevSubctas.ParamByName('SUBCUENTA').AsString := FSubctaBanco;
            QAbrevSubctas.Open;

            AbreviaturaSubcuenta := QAbrevSubctas.FieldByName('ABREVIATURA').AsString;
         finally
            QAbrevSubctas.Free;
         end;

         Importe := 0;
         Apunte  := 0;
         Asiento := DMContaRef.ObtenerNumeroAsiento;

         NumRegistros := DBGrid.SelectedRows.Count;

         {$Message Warn 'This is pendant. This Screen don't works without this part'}
         (*for I := 0 to Rejilla.SelectedList.Count - 1 do begin
            FModel.Datamodule.QFichero.GotoBookmark(Rejilla.SelectedList.Items[I]);

            if (NumRegistros = 1) and (I = 0) then begin
               Subcuenta1 := FModel.Datamodule.QFicheroSUBCUENTA.AsString;
               FechaVto1  := FModel.Datamodule.QFicheroFVENCIMIENTO.AsDateTime;
               Factura1   := FModel.Datamodule.QFicheroFACTCLIENT.AsString;
               Concepto1  := FModel.Datamodule.QFicheroCONCEPTO.AsString;
            end;

            Inc(Apunte);

            QAux.Close;
            QAux.ParamByName('APUNTE').AsInteger  := Apunte;
            QAux.ParamByName('ASIENTO').AsInteger := Asiento;
            if FModel.Datamodule.QFicheroCONCEPTO.AsString <> '' then begin
               QAux.ParamByName('COMENTARIO').AsString := ObtenerComentarioEfecto(FModel.Datamodule.QFicheroCONCEPTO.AsString);
            end
            else begin
               QAux.ParamByName('COMENTARIO').AsString := FModel.Datamodule.QFicheroFVENCIMIENTO.AsString;
            end;
            QAux.ParamByName('CONTRAPARTIDA').AsString := FSubctaBanco;
            // Subcuenta de cliente o proveedor
            if DMContaRef.ObtenerTipoSubcuenta(FModel.Datamodule.QFicheroSUBCUENTA.AsString) = 'C' then begin
               QAux.ParamByName('DEBEHABER').AsString := 'H';
               Importe := Importe - FModel.Datamodule.QFicheroIMPORTE.AsFloat;
            end
            else begin
               QAux.ParamByName('DEBEHABER').AsString := 'D';
               Importe := Importe + FModel.Datamodule.QFicheroIMPORTE.AsFloat;
            end;
            QAux.ParamByName('FECHA').AsDateTime      := FFechaAsiento;
            QAux.ParamByName('ID_CONCEPTOS').AsString := FConcepto;
            QAux.ParamByName('IMPORTE').AsFloat       := FModel.Datamodule.QFicheroIMPORTE.AsFloat;
            QAux.ParamByName('MONEDA').AsString       := 'E';
            if AbreviaturaSubcuenta <> '' then begin
               QAux.ParamByName('NUMEROFACTURA').AsString := AbreviaturaSubcuenta;
            end
            else begin
               QAux.ParamByName('NUMEROFACTURA').AsString := FModel.Datamodule.QFicheroFACTCLIENT.AsString;
            end;
            QAux.ParamByName('SUBCUENTA').AsString := FModel.Datamodule.QFicheroSUBCUENTA.AsString;
            QAux.ExecQuery;
            QAux.Transaction.CommitRetaining;

            if FBorrarVtos then begin
               FModel.Datamodule.QFichero.Delete;
               FModel.Datamodule.QFichero.Transaction.CommitRetaining;
            end
            else begin
               FModel.Datamodule.QFichero.Edit;
               FModel.Datamodule.QFicheroSUBCTABANCO.AsString := FSubctaBanco;
               FModel.Datamodule.QFicheroFASIENTO.AsDateTime  := FFechaAsiento;
               FModel.Datamodule.QFicheroSITUACION.AsString   := FSituacion;
               FModel.Datamodule.QFichero.Post;
               FModel.Datamodule.QFichero.Transaction.CommitRetaining;
            end;
         end;*)    // for

         Inc(Apunte);
         QAux.Close;
         QAux.ParamByName('APUNTE').AsInteger  := Apunte;
         QAux.ParamByName('ASIENTO').AsInteger := Asiento;
         if NumRegistros = 1 then begin
            if Concepto1 <> '' then begin
               QAux.ParamByName('COMENTARIO').AsString := ObtenerComentarioEfecto(Concepto1);
            end
            else begin
               QAux.ParamByName('COMENTARIO').AsString := DateToStr(FechaVto1);
            end;
            QAux.ParamByName('CONTRAPARTIDA').AsString := Subcuenta1;
            if AbreviaturaSubcuenta <> '' then begin
               QAux.ParamByName('NUMEROFACTURA').AsString := AbreviaturaSubcuenta;
            end
            else begin
               QAux.ParamByName('NUMEROFACTURA').AsString := Factura1;
            end;
         end
         else begin
            QAux.ParamByName('COMENTARIO').AsString     := '';
            QAux.ParamByName('CONTRAPARTIDA').AsVariant := null;
            if AbreviaturaSubcuenta <> '' then begin
               QAux.ParamByName('NUMEROFACTURA').AsString := AbreviaturaSubcuenta;
            end
            else begin
               QAux.ParamByName('NUMEROFACTURA').AsString := '';
            end;
         end;
         // Subcuenta de cliente o proveedor
         if Importe > 0 then begin
            QAux.ParamByName('DEBEHABER').AsString := 'H';
         end
         else begin
            QAux.ParamByName('DEBEHABER').AsString := 'D';
         end;
         QAux.ParamByName('FECHA').AsDateTime      := FFechaAsiento;
         QAux.ParamByName('ID_CONCEPTOS').AsString := FConcepto;
         QAux.ParamByName('IMPORTE').AsFloat       := Abs(Importe);
         QAux.ParamByName('MONEDA').AsString       := 'E';
         QAux.ParamByName('SUBCUENTA').AsString    := FSubctaBanco;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;

         FModel.Datamodule.QFichero.First;
         FModel.Datamodule.QFichero.EnableControls;

{      // Refrescar datos
      if not (CDSFiltro.State in dsEditModes) then
        CDSFiltro.Edit;
      CDSFiltro.FieldByName('FechaAsientoDesde').AsDateTime := FFechaAsiento;
      CDSFiltro.FieldByName('FechaAsientoHasta').AsDateTime := FFechaAsiento;
      CDSFiltro.FieldByName('SubcuentaBanco').AsString := FSubctaBanco;
      FiltroPendiente.Checked := FALSE;
      FiltroRemesado.Checked := FALSE;
      FiltroCobrado.Checked := FALSE;
      FiltroDevuelto.Checked := FALSE;
      FiltroPagado.Checked := FALSE;
      FiltroAceptado.Checked := FALSE;
      FiltroVencido.Checked := FALSE;
      FiltroRemesasBancarias.Checked := FALSE;}

         DBGrid.SelectedRows.Clear;// Rejilla.SelectedList.Clear;
         MessageDlg('Generado asiento nº ' + FormatFloat('###,###,###', Asiento), mtInformation, [mbOK], 0);
      end;
   end;
end;

function TWCarteraEfectos.ObtenerComentarioEfecto(Comentario: String): String;
begin
   Comentario := Trim(Comentario);
   if UpperCase(Copy(Comentario, 1, 5)) = 'COBRO' then begin
      Comentario := Trim(Copy(Comentario, 6, length(Comentario)));
   end;
   Result := Copy(Comentario, 1, 40);
end;

procedure TWCarteraEfectos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = Chr(VK_RETURN)) then begin
      // Comprobación del filtro por número
      if (EditBUSCA_NUMERO.Focused) and (Trim(EditBUSCA_NUMERO.Text) <> '') then begin
         key := #0;
         if FModel.DataModule.CDSFiltro.State in dsEditModes then begin
            FModel.DataModule.CDSFiltro.Post;
         end;
         PrepararQuery;
      end

      // Comprobación del filtro por factura de cliente
      else
      if (EditBUSCA_FACT_CLIENTE.Focused) and (Trim(EditBUSCA_FACT_CLIENTE.Text) <> '') then begin
         key := #0;
         if FModel.DataModule.CDSFiltro.State in dsEditModes then begin
            FModel.DataModule.CDSFiltro.Post;
         end;
         PrepararQuery;
      end

      // Comprobación del filtro por factura de proveedor
      else
      if (EditBUSCA_FACT_PROVEEDOR.Focused) and (Trim(EditBUSCA_FACT_PROVEEDOR.Text) <> '') then begin
         key := #0;
         if FModel.DataModule.CDSFiltro.State in dsEditModes then begin
            FModel.DataModule.CDSFiltro.Post;
         end;
         PrepararQuery;
      end

      // Comprobación del filtro por importe
      else
      if (EditBUSCA_IMPORTE.Focused) and (Trim(EditBUSCA_IMPORTE.Text) <> '') then begin
         key := #0;
         if FModel.DataModule.CDSFiltro.State in dsEditModes then begin
            FModel.DataModule.CDSFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWCarteraEfectos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         if TDataSet(Navegador.DataSource.DataSet).State in dsEditModes then begin
            BtnCancelar.Click;
         end;
      end;
      VK_F9: begin
         if TDataSet(Navegador.DataSource.DataSet).State in dsEditModes then begin
            BtnAceptar.Click;
         end;
      end;
      VK_F12: begin
         if not (FModel.Datamodule.QFichero.State in dsEditModes) then begin
            SpFiltro.Click;
         end;
      end;
   end;
end;

procedure TWCarteraEfectos.BtnNewClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   lAdd := True;
   try
      TabSheetDatos.Show;
      FModel.Datamodule.QFichero.Insert;
      ComboBoxCD_SUBCUENTA.SetFocus;
      FormManager.Mode := fmEdit;
   except
      raise;
      DatabaseError('Error al añadir un nuevo efecto.');
   end;
end;

procedure TWCarteraEfectos.EditBUSCA_FACT_CLIENTEEnter(Sender: TObject);
begin
   if not (FModel.DataModule.CDSFiltro.State in dsEditModes) then begin
      FModel.DataModule.CDSFiltro.Edit;
   end;

   FModel.DataModule.CDSFiltroBFACTCLIENTE.AsString   := '';
   FModel.DataModule.CDSFiltroBFACTPROVEEDOR.AsString := '';
   FModel.DataModule.CDSFiltroBNUMERO.AsInteger       := 0;
   FModel.DataModule.CDSFiltroBIMPORTE.AsFloat        := 0;
end;

procedure TWCarteraEfectos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if FModoConsulta then begin
      WCargaCobrosPagos.FID_Cartera := 0;
      WCargaCobrosPagos.FSituacion  := '';
   end;

   if FModel.Datamodule.QFichero.State = dsBrowse then begin
      {$Message Warn 'Aparición de TCorreo'}
      (*DMContaRef.HCorreo.Active := False;*)
      FormManager.Free;
      Action := caFree;
      WCarteraEfectos := nil;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWCarteraEfectos.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if FModel.Datamodule.QFichero.IsEmpty then Exit;
   if MessageDlg('¿Desea borrar este efecto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try FModel.Datamodule.QFichero.Delete;
          FModel.Datamodule.QFichero.Transaction.CommitRetaining;
      except DatabaseError('Error al borrar el efecto.' + #13 + 'Puede tener datos asociados');
      end;
   end;
end;

procedure TWCarteraEfectos.BtnAceptarClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);
   FModel.Datamodule.QFichero.Post;
   FModel.Datamodule.Transaccion.CommitRetaining;

   FormManager.Mode := fmBrowse;
   TabSheetCarteraEfectos.Show;
   DBGrid.SetFocus;
end;

procedure TWCarteraEfectos.BtnCancelarClick(Sender: TObject);
begin
   if MessageDlg('¿Quiere anular los cambios realizados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try FModel.Datamodule.QFichero.Cancel;
      except DatabaseError('Error al cancelar la operación');
      end;

      FormManager.Mode := fmBrowse;
      TabSheetCarteraEfectos.Show;
      DBGrid.SetFocus;
   end;
end;

procedure TWCarteraEfectos.FormShow(Sender: TObject);
begin
   InicializarFiltro;

   CampoOrden := 'FVencimiento';
   PrepararQuery;
   FormManager.Mode := fmBrowse;

   lbSerie.Visible       := False;
   lbEjercicio.Visible   := False;
   EditEJERCICIO.Visible := False;
   EditSERIE.Visible     := False;
   if Dmref.QParametrosTRATASERIE.AsString = 'S' then begin
      lbSerie.Visible       := True;
      lbEjercicio.Visible   := True;
      EditEJERCICIO.Visible := True;
      EditSERIE.Visible     := True;
   end;

   if not FModoConsulta then begin
      BtnSeleccion.Free;
   end
   else begin
      BtnNew.Free;
      BtnModify.Free;
      BtnAsiento.Free;
      BtnCarta.Free;
      BtnEfectos.Free;
      BtnAsientoBaja.Free;
   end;

   if FModel.NuevoVto then begin
      BtnNew.Click;
   end;
end;

procedure TWCarteraEfectos.EditBUSCA_FACT_CLIENTEExit(Sender: TObject);
begin
   if (FModel.DataModule.CDSFiltro.State in dsEditModes) then begin
      FModel.DataModule.CDSFiltro.Post;
   end;

   if FModel.Datamodule.QFichero.State in dsEditModes then begin
      Exit;
   end;

   PrepararQuery;
end;

procedure TWCarteraEfectos.BtnInformesClick(Sender: TObject);
begin
   PopupMenuListados.Popup(Self.Left + BtnInformes.Left, Self.Top + BtnInformes.Top + BtnInformes.Height - 5);
end;

procedure TWCarteraEfectos.SpFiltroClick(Sender: TObject);
begin
   if (FModel.DataModule.CDSFiltro.State in dsEditModes) then begin
      FModel.DataModule.CDSFiltro.Post;
   end;

   NavAnimate.Active  := True;
   NavAnimate.Visible := True;

   EditBUSCA_FACT_CLIENTEEnter(nil);

   PrepararQuery;

   NavAnimate.Visible := False;
   NavAnimate.Active  := False;
   TabSheetCarteraEfectos.Show;
   FiltroBuscar.SetFocus;
end;

procedure TWCarteraEfectos.InformeFVencAdvancedDrawItem(Sender: TObject; ACanvas: TCanvas;
   ARect: TRect; State: TOwnerDrawState);
begin
   ACanvas.Brush.Color := $00D9D1C0;
   ACanvas.FillRect(ARect);
   ACanvas.Font.Color := clNavy;
   ACanvas.Font.Name  := 'Tahoma';
   ACanvas.TextRect(ARect, ARect.Left + 7, ARect.Top, TMenuItem(Sender).Caption);
end;

procedure TWCarteraEfectos.InformeFVencClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      Exit;
   end;

   if CampoOrden <> 'FVENCIMIENTO' then begin
      CampoOrden := 'FVENCIMIENTO';
      PrepararQuery;
   end;
   
   FModel.ReportCarteraFVenc;
end;

procedure TWCarteraEfectos.InformeporSubcuenta1Click(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      Exit;
   end;

   if CampoOrden <> 'SUBCUENTA' then begin
      CampoOrden := 'SUBCUENTA';
      PrepararQuery;
   end;
   FModel.ReportCarteraSubcta;
end;

procedure TWCarteraEfectos.InformeporBanco1Click(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      Exit;
   end;

   if CampoOrden <> 'SUBCTABANCO' then begin
      CampoOrden := 'SUBCTABANCO';
      PrepararQuery;
   end;
   FModel.ReportCarteraBanco;
end;

procedure TWCarteraEfectos.InformeporSituacin1Click(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      Exit;
   end;

   if CampoOrden <> 'SITUACION, FVENCIMIENTO' then begin
      CampoOrden := 'SITUACION, FVENCIMIENTO';
      PrepararQuery;
   end;
   FModel.ReportCarteraSituacion;
end;

procedure TWCarteraEfectos.InformeporComercial1Click(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      Exit;
   end;

   if CampoOrden <> 'COMERCIAL, SUBCUENTA, FVENCIMIENTO' then begin
      CampoOrden := 'COMERCIAL, SUBCUENTA, FVENCIMIENTO';
      PrepararQuery;
   end;
   FModel.ReportCarteraComercial;
end;

procedure TWCarteraEfectos.BtnAsientoClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not FModel.Datamodule.QFichero.IsEmpty then begin
      if FModel.Datamodule.QFichero.State in dsEditModes then begin
         GenerarAsientoEfectoActual;
      end
      else begin
         GenerarAsientoFiltroRemesa;
      end;
   end;
end;

procedure TWCarteraEfectos.BtnSeleccionClick(Sender: TObject);
begin
   if not FModel.Datamodule.QFichero.IsEmpty then begin
      WSituacionEfecto := TWSituacionEfecto.Create(nil);
      try
         WSituacionEfecto.FOperacionEfectos := GENERAR_ASIENTO;
         WSituacionEfecto.ShowModal;
         if FSituacion <> '' then begin
            WCargaCobrosPagos.FID_Cartera := FModel.Datamodule.QFicheroID_CARTERAEFECTOS.AsInteger;
            WCargaCobrosPagos.FSituacion  := FSituacion;
            Close;
         end;
      finally
         FreeAndNil(WSituacionEfecto);
      end;
   end;
end;

procedure TWCarteraEfectos.FiltroRemesasBancariasClick(Sender: TObject);
begin
   if FiltroRemesasBancarias.Checked then begin
      ComboBoxCD_SUBCUENTA_DESDE.ListSource := FModel.DataModule.SSubCtaClientes;
      ComboBoxDS_SUBCUENTA_DESDE.ListSource := FModel.DataModule.SSubCtaClientes;
      ComboBoxCD_SUBCUENTA_HASTA.ListSource := FModel.DataModule.SSubCtaClientes;
      ComboBoxDS_SUBCUENTA_HASTA.ListSource := FModel.DataModule.SSubCtaClientes;
   end
   else begin
      ComboBoxCD_SUBCUENTA_DESDE.ListSource := FModel.DataModule.SSubCtaClientesProv;
      ComboBoxDS_SUBCUENTA_DESDE.ListSource := FModel.DataModule.SSubCtaClientesProv;
      ComboBoxCD_SUBCUENTA_HASTA.ListSource := FModel.DataModule.SSubCtaClientesProv;
      ComboBoxDS_SUBCUENTA_HASTA.ListSource := FModel.DataModule.SSubCtaClientesProv;
   end;
end;

procedure TWCarteraEfectos.BtnCartaClick(Sender: TObject);
//var
   //nTotImporte :Double;
   //nImporte    :Double;
   //i           :Integer;
   //j           :Integer;
   //Documento   :string;
   //Registro    :string;
   //QSubcuentas :TIBQuery;
   //Factura     :string;
   //FWord       :Variant;
   //Fichero     :TextFile;
   //ResultWasOK :Boolean;
begin
   ShowMessage('Funcionalidad Cancelada. Ver comentario en el código fuente.');
   {Esta funcionalidad queda de momento cancelada por su dependencia de la aplicación externa MS-Word.}
   {En un futuro se incluirá un informe, modificable por el usuario, que suplirá con creces esta funcionalidad}

   (*if not FModel.Datamodule.QFichero.IsEmpty then begin
      if Rejilla.SelectedList.Count = 0 then begin
         DatabaseError('No ha seleccionado ningún registro.');
      end;

      WSituacionEfecto := TWSituacionEfecto.Create(nil);
      try
         WSituacionEfecto.FOperacionEfectos := IMPRIMIR_CARTA;
         ResultWasOK := WSituacionEfecto.ShowModal = mrOk;
      finally
         FreeAndNil(WSituacionEfecto);
      end;
         //DMContaRef.CrearTablaCorreo;

      if ResultWasOK then begin
         QSubcuentas := TIBQuery.Create(nil);
         QSubcuentas.Close;
         QSubcuentas.Database := DMRef.BDContab;
         QSubcuentas.SQL.Clear;
         QSubcuentas.SQL.Add('SELECT S.DESCRIPCION, S.DIRECCION, S.DIRECCION1, S.NUMERO,');
         QSubcuentas.SQL.Add('       S.POBLACION, S.CODPOSTAL, PR.NOMBRE NOMPROVINCIA   ');
         QSubcuentas.SQL.Add('FROM SUBCTAS S LEFT JOIN PROVINCIAS PR                    ');
         QSubcuentas.SQL.Add('     ON S.PROVINCIA = PR.PROVINCIA                        ');
         QSubcuentas.SQL.Add('WHERE S.SUBCUENTA = :SUBCUENTA                            ');

         AssignFile(Fichero, 'c:\correo.txt');
         Rewrite(Fichero);

         // Primero crear la cabecera del fichero la cual no se usa
         Registro :=
            'NOMBRE#SUBCUENTA#DIRECCION#POBLACION#CODPOSTAL#PROVINCIA#BANCO#CHEQUE#EJERCICIO#EMPRESA#TOTIMPORTE#EUROS#FECHAASIENTO#FECHA1#TEXTO1#IMPORTE1#FACTURA1#' +
            'FECHA2#TEXTO2#IMPORTE2#FACTURA2#FECHA3#TEXTO3#IMPORTE3#FACTURA3#FECHA4#TEXTO4#IMPORTE4#FACTURA4#FECHA5#TEXTO5#IMPORTE5#FACTURA5#'
            +
            'FECHA6#TEXTO6#IMPORTE6#FACTURA6#FECHA7#TEXTO7#IMPORTE7#FACTURA7#FECHA8#TEXTO8#IMPORTE8#FACTURA8#FECHA9#TEXTO9#IMPORTE9#FACTURA9#'
            +
            'FECHA10#TEXTO10#IMPORTE10#FACTURA10#';
         Writeln(Fichero, Registro);

         QSubcuentas.Close;
         QSubcuentas.ParamByName('SUBCUENTA').AsString := FModel.Datamodule.QFicheroSUBCUENTA.AsString;
         QSubcuentas.Open;

         // Segundo incluir registro
         if not QSubcuentas.EOF then begin
            Registro := QSubcuentas.FieldByName('DESCRIPCION').AsString + '#' +
               FModel.Datamodule.QFicheroSUBCUENTA.AsString + '#' + QSubcuentas.FieldByName(
               'DIRECCION').AsString + ' ' + QSubcuentas.FieldByName('DIRECCION1').AsString +
               ', ' + QSubcuentas.FieldByName('NUMERO').AsString + '#' +
               QSubcuentas.FieldByName('POBLACION').AsString + '#' +
               QSubcuentas.FieldByName('CODPOSTAL').AsString + '#';
            if QSubcuentas.FieldByName('NOMPROVINCIA').AsString <> '' then begin
               Registro := Registro + QSubcuentas.FieldByName('NOMPROVINCIA').AsString + '#';
            end
            else begin
               Registro := Registro + ' #';
            end;
         end
         else begin
            Registro := ' #' + FModel.Datamodule.QFicheroSUBCUENTA.AsString + '# # # # #';
         end;

         if FModel.Datamodule.QFicheroSUBCTABANCO.AsString <> '' then begin
            Registro := Registro + FModel.Datamodule.QFicheroDescSubcuentaBanco.AsString + '#' + FCheque + '# #' +
               DMRef.QParametrosNOMBREFISCAL.AsString + '#';
         end
         else begin
            Registro := Registro + ' # # # #';
         end;

         // Obtener total importe
         nTotImporte := 0;
         for i := 0 to Rejilla.SelectedList.Count - 1 do begin
            FModel.Datamodule.QFichero.GotoBookmark(Rejilla.SelectedList.items[i]);
            nImporte    := RoundTo(FModel.Datamodule.QFicheroIMPORTE.AsFloat, -2);
            nTotImporte := nTotImporte + nImporte;
            if i = 9 then begin
               break;
            end;
         end;
         Registro := Registro + Format('%.2n', [nTotImporte]) + '#' +
            UpperCase(Euros(nTotImporte, 'M')) + '# #'; // Fecha asiento


         for i := 0 to Rejilla.SelectedList.Count - 1 do begin
            FModel.Datamodule.QFichero.GotoBookmark(Rejilla.SelectedList.items[i]);
            nImporte := RoundTo(FModel.Datamodule.QFicheroIMPORTE.AsFloat, -2);
            if QFicheroFACTCLIENT.AsString <> '' then begin
               Factura := FModel.Datamodule.QFicheroFACTCLIENT.AsString;
            end
            else begin
               Factura := FModel.Datamodule.QFicheroFACTPROVEEDOR.AsString;
            end;

            Registro := Registro + FModel.Datamodule.QFicheroFVencimiento.AsString + '#' +
               Copy(QFicheroConcepto.AsString, 1, 40) + '#' + Format('%.2n', [nImporte]) + '#' +
               FACTURA + '#';
            if i = 9 then begin
               break;
            end;
         end;
         // Poner el resto de campos vacios
         if i < 9 then begin
            for j := i to 9 do begin
               Registro := Registro + ' # # # #';
            end;
         end;
         Writeln(Fichero, Registro);
         CloseFile(Fichero);

         if DMContaRef.ObtenerTipoSubcuenta(FModel.Datamodule.QFicheroSUBCUENTA.AsString) = 'P' then begin
            Documento := DMRef.QParametrosDOCPROVEEDOR.AsString;
         end
         else begin
            Documento := DMRef.QParametrosDOCCLIENTE.AsString;
         end;

         Screen.Cursor := crHourGlass;

         QSubcuentas.Close;
         QSubcuentas.Free;
         Screen.Cursor := crDefault;
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

         FWord.ActiveDocument.MailMerge.OpenDataSource(
            Name := 'c:\correo.txt',
            ConfirmConversions := False, ReadOnly := False, LinkToSource := True,
            AddToRecentFiles := False, PasswordDocument := '', PasswordTemplate := '',
            WritePasswordDocument := '', WritePasswordTemplate := '', Revert := False,
            Format := wdOpenFormatAuto, Connection := '',
            SQLStatement := '', SQLStatement1 := '');

         if DMRef.QParametrosDOCIMPRIMIR.AsString = 'S' then begin
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

         if DMRef.QParametrosDOCIMPRIMIR.AsString <> 'S' then begin
            FWord.ActiveDocument.Close(wdDoNotSaveChanges);
         end;

         MessageDlg('Impresión de carta finalizada', mtInformation, [mbOK], 0);
      end;
   end;*)
end;

procedure TWCarteraEfectos.BtnEfectosClick(Sender: TObject);
var
   Importe, Total: Double;
   I: Integer;
begin
   WEfectosComerciales := TWEfectosComerciales.Create(nil);
   try
      if not FModel.Datamodule.QFichero.IsEmpty then begin
         Total := 0;
         {$Message Warn 'This is pendant. This Screen don't works without this part'}
         (*for i := 0 to Rejilla.SelectedList.Count - 1 do begin
            FModel.Datamodule.QFichero.GotoBookmark(Rejilla.SelectedList.items[I]);
            Importe := RoundTo(FModel.Datamodule.QFicheroIMPORTE.AsFloat, -2);
            Total   := Total + Importe;
            WEfectosComerciales.FFechaEmision     := FModel.Datamodule.QFicheroFEMISION.AsDateTime;
            WEfectosComerciales.FFechaVencimiento := FModel.Datamodule.QFicheroFVENCIMIENTO.AsDateTime;
            WEfectosComerciales.FSubcuenta        := FModel.Datamodule.QFicheroSUBCUENTA.AsString;
            WEfectosComerciales.FTotalImporte     := Total;
            if FModel.Datamodule.QFicheroFACTCLIENT.AsString <> '' then begin
               WEfectosComerciales.FFactura := FModel.Datamodule.QFicheroFACTCLIENT.AsString;
            end
            else begin
               WEfectosComerciales.FFactura := FModel.Datamodule.QFicheroFACTPROVEEDOR.AsString;
            end;
         end;*)
      end;
      WEfectosComerciales.ShowModal;
   finally
      FreeAndNil(WEfectosComerciales);
   end;
   DBGrid.SelectedRows.Clear; //Rejilla.SelectedList.Clear;
end;

procedure TWCarteraEfectos.BtnAsientoBajaClick(Sender: TObject);
var i           :Integer;
    Asiento     :Integer;
    QInsDiario  :TIBSQL;
    QAsientos   :TIBQuery;
    StrAsientos :string;
    InProgress  :TEspere;
begin
   if not FModel.Datamodule.QFichero.IsEmpty then begin
      // Si no se ha seleccionado ningún efecto, confirmar si desea generar
      // el asiento de baja de todos los efectos filtrados.
      if (DBGrid.SelectedRows.Count = 0) or ((DBGrid.SelectedRows.Count = 1) and
         (FModel.Datamodule.QFicheroASIENTORIESGO.AsInteger = 0)) then begin
         if MessageDlg('No ha seleccionado ningún efecto.' + #13 +
            '¿Desea generar el asiento de baja de todos los efectos filtrados?' + #13 +
            'Le recuerdo que sólo son válidos asientos con asiento de riesgo ya generado.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            {$Message Warn 'This is pendant. This Screen don't works without this part'}
            //Rejilla.SelectAll;
         end;
      end
      else
      if MessageDlg('¿Confirma la realización del asiento de baja?.' + #13 +
         'Le recuerdo que sólo son válidos asientos con asiento de riesgo ya generado.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Exit;
      end;

      // Seleccionar asiento de riesgo
      QAsientos := TIBQuery.Create(nil);
      QAsientos.Close;
      QAsientos.Database := DMRef.BDContab;
      QAsientos.SQL.Clear;
      QAsientos.SQL.Add('SELECT * FROM DIARIO WHERE ASIENTO = :ASIENTO');

      // Insertar asiento de baja
      QInsDiario := TIBSQL.Create(nil);
      QInsDiario.Close;
      QInsDiario.Database := DMRef.BDContab;
      QInsDiario.SQL.Clear;
      QInsDiario.SQL.Add('INSERT INTO DIARIO ');
      QInsDiario.SQL.Add('(APUNTE, ASIENTO, COMENTARIO, CONTRAPARTIDA, DEBEHABER,');
      QInsDiario.SQL.Add(' FECHA, IMPORTE, MONEDA, NUMEROFACTURA, SUBCUENTA,');
      QInsDiario.SQL.Add(' ID_CONCEPTOS, CUENTA_ANALITICA)');
      QInsDiario.SQL.Add('VALUES');
      QInsDiario.SQL.Add('(:APUNTE, :ASIENTO, :COMENTARIO, :CONTRAPARTIDA, :DEBEHABER,');
      QInsDiario.SQL.Add(' :FECHA, :IMPORTE, :MONEDA, :NUMEROFACTURA, :SUBCUENTA,');
      QInsDiario.SQL.Add(' :ID_CONCEPTOS, :CUENTA_ANALITICA)');

      Asiento     := 0;
      StrAsientos := '';

      InProgress := InProgressView('Generando asientos ...');
      try
         FModel.Datamodule.QFichero.DisableControls;
         {$Message Warn 'This is pendant. This Screen don't works without this part'}
         (*for I := 0 to Rejilla.SelectedList.Count - 1 do begin
            FModel.Datamodule.QFichero.GotoBookmark(Rejilla.SelectedList.items[I]);
            if FModel.Datamodule.QFicheroASIENTORIESGO.AsInteger <> 0 then begin
               QAsientos.Close;
               QAsientos.ParamByName('ASIENTO').AsInteger := FModel.Datamodule.QFicheroASIENTORIESGO.AsInteger;
               QAsientos.Open;
               if not QAsientos.EOF then begin
                  Asiento := DMContaRef.ObtenerNumeroAsiento;

                  QInsDiario.Close;
                  while not QAsientos.EOF do begin
                     QInsDiario.Close;
                     QInsDiario.ParamByName('APUNTE').AsInteger           := QAsientos.FieldByName('APUNTE').AsInteger;
                     QInsDiario.ParamByName('ASIENTO').AsInteger          := Asiento;
                     QInsDiario.ParamByName('COMENTARIO').AsString        := QAsientos.FieldByName('COMENTARIO').AsString;
                     QInsDiario.ParamByName('CONTRAPARTIDA').AsVariant    := QAsientos.FieldByName('SUBCUENTA').AsVariant;
                     QInsDiario.ParamByName('DEBEHABER').AsString         := QAsientos.FieldByName('DEBEHABER').AsString;
                     QInsDiario.ParamByName('FECHA').AsDateTime           := Date;
                     QInsDiario.ParamByName('IMPORTE').AsFloat            := RoundTo(QAsientos.FieldByName('IMPORTE').AsFloat, -2);
                     QInsDiario.ParamByName('MONEDA').AsString            := QAsientos.FieldByName('MONEDA').AsString;
                     QInsDiario.ParamByName('NUMEROFACTURA').AsString     := QAsientos.FieldByName('NUMEROFACTURA').AsString;
                     QInsDiario.ParamByName('SUBCUENTA').AsVariant        := QAsientos.FieldByName('CONTRAPARTIDA').AsVariant;
                     QInsDiario.ParamByName('ID_CONCEPTOS').AsVariant     := QAsientos.FieldByName('ID_CONCEPTOS').AsVariant;
                     QInsDiario.ParamByName('CUENTA_ANALITICA').AsVariant := QAsientos.FieldByName('CUENTA_ANALITICA').AsVariant;
                     QInsDiario.ExecQuery;
                     QInsDiario.Transaction.CommitRetaining;
                     QAsientos.Next;
                  end;  // while not QAsientos.Eof do

                  if StrAsientos <> '' then begin
                     StrAsientos := StrAsientos + ', ';
                  end;
                  StrAsientos := StrAsientos + IntToStr(Asiento);
               end;  // if not QAsientos.Eof then
            end;  // if FModel.Datamodule.QFicheroASIENTORIESGO.AsInteger <> 0 then
         end; *) // for I := 0 to Rejilla.SelectedList.Count - 1 do
      finally
         InProgress.Free;
      end;

      if Asiento = 0 then begin
         MessageDlg('No había ningún asiento de riesgo entre los seleccionados.', mtInformation, [mbOK], 0);
      end
      else begin
         if MessageDlg('¿Desea eliminar los efectos seleccionados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
            InProgress := InProgressView('Eliminando efectos ...');
            try
               {$Message Warn 'This is pendant. This Screen don't works without this part'}
               (*for I := 0 to Rejilla.SelectedList.Count - 1 do begin
                  FModel.Datamodule.QFichero.GotoBookmark(Rejilla.SelectedList.items[I]);
                  if FModel.Datamodule.QFicheroASIENTORIESGO.AsInteger <> 0 then begin
                     FModel.Datamodule.QFichero.Delete;
                     FModel.Datamodule.QFichero.Transaction.CommitRetaining;
                  end;
               end;*)  // for I := 0 to Rejilla.SelectedList.Count - 1 do
            finally
               InProgress.Free;
            end;
         end;
      end;
      DBGrid.SelectedRows.Clear;
      FModel.Datamodule.QFichero.EnableControls;

      if StrAsientos <> '' then begin
         MessageDlg('Generado asiento nº ' + StrAsientos, mtInformation, [mbYes], 0);
      end;

      QAsientos.Close;
      QAsientos.Free;

      QInsDiario.Close;
      QInsDiario.Free;
   end;        // if not FModel.Datamodule.QFichero.IsEmpty then
end;

procedure TWCarteraEfectos.BtnDuplicarClick(Sender: TObject);
var QOrigen   :TibDataset;
    i         :Integer;
    nContador :Integer;
    Campo     :string;
begin
   if MessageDlg('¿Confirma duplicar el registro actual?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      QOrigen := TIBDataset.Create(nil);
      try
         QOrigen.Database    := DMRef.BDContab;
         QOrigen.Transaction := FModel.Datamodule.Transaccion;
         QOrigen.SelectSQL.Add('select * from carteraefectos where id_carteraefectos=:id_carteraefectos');
         QOrigen.Params.ByName('id_carteraefectos').AsInteger := FModel.Datamodule.QFicheroid_CarteraEfectos.AsInteger;
         QOrigen.Open;

         FModel.Datamodule.QFichero.insert;
         for i := 0 to QOrigen.FieldCount - 1 do begin
            Campo           := QOrigen.Fields[i].FieldName;
            FModel.Datamodule.QFichero[campo] := QOrigen[campo];
         end;
         FModel.Datamodule.QFichero.Post;
         FModel.Datamodule.Transaccion.CommitRetaining;
         QOrigen.Close;
      finally
         QOrigen.Free;
      end;

      nContador := DMRef.ObtenerValor('GEN_ID(CARTERAEFECTOS, 0)', 'RDB$DATABASE', '');
      FModel.DataModule.CDSFiltro.Edit;
      FModel.DataModule.CDSFiltroBNUMERO.AsInteger := nContador;
      FModel.DataModule.CDSFiltro.Post;
      PrepararQuery;
   end;
end;

procedure TWCarteraEfectos.DBGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'SUBCUENTA') or (UpperCase(Column.FieldName) = 'FVENCIMIENTO') or
      (UpperCase(Column.FieldName) = 'FEMISION') or (UpperCase(Column.FieldName) = 'ID_CARTERAEFECTOS') then begin
      CampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DBGrid.SetFocus;
end;

procedure TWCarteraEfectos.DBGridDblClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not FModel.Datamodule.QFichero.IsEmpty and (DBGrid.SelectedRows.Count = 1) then begin
      lAdd := False;
      try
         FModel.Datamodule.QFichero.Edit;
         FormManager.Mode := fmEdit;
         TabSheetDatos.Show;
         ComboBoxCD_SUBCUENTA.SetFocus;
      except
         DatabaseError('No se puede editar el registro seleccionado.' + #13 + 'Puede estar en uso por otra persona.');
      end;
   end;
end;

procedure TWCarteraEfectos.SetConceptoNuevoVto(const Value: string);
begin
   FModel.ConceptoNuevoVto := Value;
end;

procedure TWCarteraEfectos.SetImporteNuevoVto(const Value: Double);
begin
   FModel.ImporteNuevoVto := Value;
end;

procedure TWCarteraEfectos.SetNuevoVto(const Value: Boolean);
begin
   FModel.NuevoVto := Value;
end;

procedure TWCarteraEfectos.SetSubcuentaNuevoVto(const Value: string);
begin
   FModel.SubcuentaNuevoVto := Value;
end;

end.
