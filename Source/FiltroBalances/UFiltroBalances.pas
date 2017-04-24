unit UFiltroBalances;

interface

uses Classes, comctrls, Controls, CheckLst, Db, DBClient, DBCtrls, Dialogs, ExtCtrls, 
     Forms, Graphics, IBX.IBQuery, Mask, Messages, StdCtrls, SysUtils, Windows,
     UFiltroBalancesModel;

type
  TWFiltroBalances = class(TForm)
    GroupBox1: TGroupBox;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    GroupBox2: TGroupBox;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditDTE_SINCE: TDBEdit;
    EditDTE_UNTIL: TDBEdit;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    CheckBoxConSubcuentas: TCheckBox;
    CheckBoxSoloSaldos: TCheckBox;
    lSubtotales1: TLabel;
    EditNIVEL_1: TDBEdit;
    EditNIVEL_2: TDBEdit;
    lSubtotales2: TLabel;
    GroupBoxConcepto: TDBRadioGroup;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBoxCD_ANALITICA: TDBLookupComboBox;
    ComboBoxDELEGACION: TDBLookupComboBox;
    ComboBoxDEPARTAMENTO: TDBLookupComboBox;
    ComboBoxSECCION: TDBLookupComboBox;
    ComboBoxPROYECTO: TDBLookupComboBox;
    ComboBoxDS_ANALITICA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox;
    CombBoxDescrCD_SUBCUENTA_DESDE: TDBLookupComboBox;
    CombBoxDescrCD_SUBCUENTA_HASTA: TDBLookupComboBox;
    CombBoxDescrDS_SUBCUENTA_HASTA: TDBLookupComboBox;
    CombBoxDescrDS_SUBCUENTA_DESDE: TDBLookupComboBox;
    CheckBoxSubcuenta: TCheckBox;
    CheckBoxDescripcion: TCheckBox;
    GroupBox5: TGroupBox;
    lbEmpresas: TCheckListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    lTitulo: TLabel;
    Shape1: TShape;
    BtnProcess: TButton;
    CDSFiltroSUBCUENTA_DESDE: TStringField;
    CDSFiltroSUBCUENTA_HASTA: TStringField;
    CDSFiltroDESCRIPCION_DESDE: TStringField;
    CDSFiltroDESCRIPCION_HASTA: TStringField;
    CDSFiltroFECHA_DESDE: TDateField;
    CDSFiltroFECHA_HASTA: TDateField;
    CDSFiltroTIPO_CONCEPTO: TStringField;
    CDSFiltroFECHA_IMPRIMIR: TDateField;
    CDSFiltroNIVEL_1: TIntegerField;
    CDSFiltroNIVEL_2: TIntegerField;
    CDSFiltroCUENTA: TStringField;
    CDSFiltroID_DELEGACION: TStringField;
    CDSFiltroID_DEPARTAMENTO: TStringField;
    CDSFiltroID_SECCION: TStringField;
    CDSFiltroID_PROYECTO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnProcessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBoxSubcuentaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TFiltroBalancesModel;
    procedure RellenarEmpresas;
  public
    TipoListado: Integer;
  end;

var WFiltroBalances: TWFiltroBalances;

implementation

uses System.StrUtils,
     DM, DMConta, DMControl, Globales;

{$R *.DFM}

procedure TWFiltroBalances.FormCreate(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   FModel := TFiltroBalancesModel.Create(DMRef.BDContab);
   Self.Caption := '';

   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;

   DmContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   CDSFiltroSUBCUENTA_HASTA.AsString := DupeString('9', 10);
   CDSFiltroFECHA_DESDE.AsDateTime   := dPrimeraFecha;
   CDSFiltroFECHA_HASTA.AsDateTime   := dUltimaFecha;
   CDSFiltroTIPO_CONCEPTO.AsString   := 'T';
   CDSFiltroFECHA_IMPRIMIR.Value     := Date;
   CDSFiltroNIVEL_1.AsInteger        := 3;
   CDSFiltroNIVEL_2.AsInteger        := 1;

   //DMContaRef.FijarLongitudSubcuentas(Self);
   //DMContaRef.RefrescarSubcuentas(Self);
   //FiltroCBSUBCUENTADesde1.MaxLength := DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;
   //FiltroCBSUBCUENTAHasta1.MaxLength := DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;
   //FiltroCBSUBCUENTADesde2.MaxLength := DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;
   //FiltroCBSUBCUENTAHasta2.MaxLength := DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;
end;

procedure TWFiltroBalances.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWFiltroBalances.RellenarEmpresas;
var Q :TIBQuery;
begin
   lbEmpresas.Clear;
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DmControlRef.BDControl;
      Q.SQL.Add('SELECT NOMBRE FROM EMPRESAS     ');
      Q.SQL.Add('WHERE ID_EMPRESA <> :ID_EMPRESA ');
      Q.SQL.Add('ORDER BY NOMBRE                 ');
      Q.ParamByName('ID_EMPRESA').AsInteger := Config.ActiveID_ENTERPRISE;
      Q.Open;
      while not Q.EOF do begin
         lbEmpresas.Items.Add(Q.FieldByName('NOMBRE').AsString);
         Q.Next;
      end;
   finally
      Q.Free;
   end;
end;

procedure TWFiltroBalances.FormShow(Sender: TObject);
begin
   RellenarEmpresas;

   case TipoListado of
      INF_BALANCE_SUMAS_Y_SALDOS: begin
         lTitulo.Caption := 'Balance de Sumas y Saldos';
      end;
   end;
end;

procedure TWFiltroBalances.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

procedure TWFiltroBalances.CheckBoxSubcuentaClick(Sender: TObject);
begin
   ComboBoxCD_SUBCUENTA_DESDE.Enabled := CheckBoxSubcuenta.Checked;
   ComboBoxDS_SUBCUENTA_DESDE.Enabled := CheckBoxSubcuenta.Checked;
   ComboBoxCD_SUBCUENTA_HASTA.Enabled := CheckBoxSubcuenta.Checked;
   ComboBoxDS_SUBCUENTA_HASTA.Enabled := CheckBoxSubcuenta.Checked;

   CombBoxDescrCD_SUBCUENTA_DESDE.Enabled := CheckBoxDescripcion.Checked;
   CombBoxDescrDS_SUBCUENTA_DESDE.Enabled := CheckBoxDescripcion.Checked;
   CombBoxDescrCD_SUBCUENTA_HASTA.Enabled := CheckBoxDescripcion.Checked;
   CombBoxDescrDS_SUBCUENTA_HASTA.Enabled := CheckBoxDescripcion.Checked;
end;


procedure TWFiltroBalances.BtnProcessClick(Sender: TObject);
var
   Empresas: TStringList;
   I:        Integer;
begin
   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   Config.SetAccountingType(CDSFiltroTIPO_CONCEPTO.AsString);

   Empresas := TStringList.Create;
   Empresas.Clear;
   for I := 0 to lbEmpresas.Items.Count - 1 do begin
      if lbEmpresas.Checked[I] then   begin
         Empresas.Add(lbEmpresas.Items[I]);
      end;
   end;

   case TipoListado of
      INF_BALANCE_SUMAS_Y_SALDOS: begin
         FModel.BalanceSumasYGastos(CDSFiltroFECHA_DESDE.AsDateTime    ,
                                    CDSFiltroFECHA_HASTA.AsDateTime    ,
                                    CDSFiltroFECHA_IMPRIMIR.AsDateTime ,
                                    CheckBoxSubcuenta.Checked          ,
                                    CheckBoxDescripcion.Checked        ,
                                    CDSFiltroSUBCUENTA_DESDE.AsString  ,
                                    CDSFiltroSUBCUENTA_HASTA.AsString  ,
                                    CDSFiltroDESCRIPCION_DESDE.AsString,
                                    CDSFiltroDESCRIPCION_HASTA.AsString,
                                    CDSFiltroTIPO_CONCEPTO.AsString    ,
                                    CheckBoxConSubcuentas.Checked      ,
                                    CheckBoxSoloSaldos.Checked         ,
                                    CDSFiltroCUENTA.AsString           ,
                                    CDSFiltroID_DELEGACION.AsString    ,
                                    CDSFiltroID_DEPARTAMENTO.AsString  ,
                                    CDSFiltroID_SECCION.AsString       ,
                                    CDSFiltroID_PROYECTO.AsString      ,
                                    Empresas                           ,
                                    CDSFiltroNIVEL_1.AsInteger         ,
                                    CDSFiltroNIVEL_2.AsInteger         );
      end;
   end;

   Empresas.Free;
end;

end.
