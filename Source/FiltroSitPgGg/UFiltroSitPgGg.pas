unit UFiltroSitPgGg;

interface

uses Classes, comctrls, Controls, CheckLst, Db, DBClient, DBCtrls, DBGrids, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBQuery, Mask, Messages, StdCtrls, SysUtils, Windows,
     UFiltroSitPgGgModel;

type
  TWFiltroSitPgGg = class(TForm)
    GroupBox1: TGroupBox;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    CheckBoxSaldosEjerAnterior: TCheckBox;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    RadioGroupConcepto: TDBRadioGroup;
    GroupBox2: TGroupBox;
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
    GroupBox5: TGroupBox;
    ListBoxEmpresas: TCheckListBox;
    Label11: TLabel;
    ComboBoxEMPRESA: TDBLookupComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    LabelTitulo: TLabel;
    Shape1: TShape;
    BtnProcess: TButton;
    CDSFiltroFECHA_DESDE: TDateField;
    CDSFiltroFECHA_HASTA: TDateField;
    CDSFiltroTIPO_CONCEPTO: TStringField;
    CDSFiltroEMPRESA: TIntegerField;
    CDSFiltroFECHA_IMPRIMIR: TDateField;
    CDSFiltroCUENTA: TStringField;
    CDSFiltroID_DELEGACION: TStringField;
    CDSFiltroID_DEPARTAMENTO: TStringField;
    CDSFiltroID_SECCION: TStringField;
    CDSFiltroID_PROYECTO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnProcessClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TFiltroSitPgGgModel;
    procedure FillEnterpriseCheckListBox;
  public
    TipoListado: Integer;
  end;

var WFiltroSitPgGg: TWFiltroSitPgGg;

implementation

uses DM, DMConta, DMControl, Globales, DateUtils;
{$R *.DFM}

procedure TWFiltroSitPgGg.FormCreate(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   FModel := TFiltroSitPgGgModel.Create(DMRef.BDContab);
   Self.Caption := '';

   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;

   FModel.GetFiltroDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   CDSFiltroFECHA_DESDE.AsDateTime := dPrimeraFecha;
   CDSFiltroFECHA_HASTA.AsDateTime := dUltimaFecha;
   CDSFiltroTIPO_CONCEPTO.AsString := 'T';
   CDSFiltroFECHA_IMPRIMIR.Value   := Date;

   CheckBoxSaldosEjerAnterior.Checked := False;
end;

procedure TWFiltroSitPgGg.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWFiltroSitPgGg.FillEnterpriseCheckListBox;
var Q : TIBQuery;
begin
   ListBoxEmpresas.Clear;
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DmControlRef.BDControl;
      Q.SQL.Add('SELECT NOMBRE                   ');
      Q.SQL.Add('FROM   EMPRESAS                 ');
      Q.SQL.Add('WHERE ID_EMPRESA <> :ID_EMPRESA ');
      Q.SQL.Add('ORDER BY NOMBRE                 ');
      Q.ParamByName('ID_EMPRESA').AsInteger := Config.ActiveID_ENTERPRISE;
      Q.Open;
      while not Q.EOF do begin
         ListBoxEmpresas.Items.Add(Q.FieldByName('NOMBRE').AsString);
         Q.Next;
      end;
   finally
      Q.Free;
   end;
end;

procedure TWFiltroSitPgGg.FormShow(Sender: TObject);
begin
   FillEnterpriseCheckListBox;

   case TipoListado of
      INF_BALANCE_SITUACION            :LabelTitulo.Caption := 'Balance de Situación';
      INF_BALANCE_PERDIDAS_Y_GANANCIAS :LabelTitulo.Caption := 'Cuenta de Pérdidas y Ganancias';
   end;
end;

procedure TWFiltroSitPgGg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

procedure TWFiltroSitPgGg.BtnProcessClick(Sender: TObject);
var Empresas :TStringList;
    i        :Integer;
begin
   { Primero vaciar la tabla }
   FModel.EmptyInformesContab;
   if CheckBoxSaldosEjerAnterior.Checked and (CDSFiltroEMPRESA.AsInteger <> 0) then begin
      DatabaseError('Debe seleccionar una empresa o saldos acumulados para el ejercicio anterior.' +
                    'Ambas opciones a la vez no es posible.');
   end;

   if CheckBoxSaldosEjerAnterior.Checked or (CDSFiltroEMPRESA.AsInteger <> 0) then begin
      CDSFiltroTIPO_CONCEPTO.AsString := 'N';
      { Como compara por meses se pone fecha de hasta como el ultimo dia del mes }
      CDSFiltroFECHA_HASTA.AsDateTime := StartOfTheMonth(CDSFiltroFECHA_HASTA.AsDateTime);
   end;
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   Config.SetAccountingType(CDSFiltroTIPO_CONCEPTO.AsString);

   Empresas := TStringList.Create;
   try
      Empresas.Clear;
      for i := 0 to ListBoxEmpresas.Items.Count - 1 do begin
         if ListBoxEmpresas.Checked[i] then begin
            Empresas.Add(ListBoxEmpresas.Items[i]);
         end;
      end;

      FModel.ProcesaInfBalanceSituacion(TipoListado,
                                        CDSFiltroFECHA_DESDE.AsDateTime,
                                        CDSFiltroFECHA_HASTA.AsDateTime,
                                        CDSFiltroFECHA_IMPRIMIR.AsDateTime,
                                        CheckBoxSaldosEjerAnterior.Checked,
                                        CDSFiltroTIPO_CONCEPTO.AsString,
                                        CDSFiltroCUENTA.AsString,
                                        CDSFiltroID_DELEGACION.AsString,
                                        CDSFiltroID_DEPARTAMENTO.AsString,
                                        CDSFiltroID_SECCION.AsString,
                                        CDSFiltroID_PROYECTO.AsString,
                                        Empresas,
                                        CDSFiltroEMPRESA.AsInteger);
   finally
      Empresas.Free;
   end;
end;


end.
