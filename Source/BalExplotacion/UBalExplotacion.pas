unit UBalExplotacion;

interface

uses Buttons, Classes, comctrls, Controls, CheckLst, DB, DBClient, DBCtrls, DBGrids, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, jpeg, Mask, StdCtrls, SysUtils, WinProcs, WinTypes,
     Messages, UBalExplotacionModel;

type
  TWBalExplotacion = class(TForm)
    Datos: TGroupBox;
    QFiltro: TClientDataSet;
    SFiltro: TDataSource;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    CheckBoxSaldosEjAnt: TCheckBox;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    RadioGroupConcepto: TDBRadioGroup;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxID_DELEGACION: TDBLookupComboBox;
    ComboBoxID_DEPARTAMENTO: TDBLookupComboBox;
    ComboBoxID_SECCION: TDBLookupComboBox;
    ComboBoxID_PROYECTO: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    lbEmpresas: TCheckListBox;
    GroupBoxTipoInforme: TDBRadioGroup;
    QAnaliticas: TClientDataSet;
    ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnProcess: TButton;
    Shape1: TShape;
    lTitulo: TLabel;
    QFiltroFECHA_DESDE: TDateField;
    QFiltroFECHA_HASTA: TDateField;
    QFiltroTIPO_CONCEPTO: TStringField;
    QFiltroFECHA_IMPRIMIR: TDateField;
    QFiltroCUENTA: TStringField;
    QFiltroCUENTA_H: TStringField;
    QFiltroID_DELEGACION: TStringField;
    QFiltroID_DEPARTAMENTO: TStringField;
    QFiltroID_SECCION: TStringField;
    QFiltroID_PROYECTO: TStringField;
    QFiltroINFORME: TStringField;
    procedure BtnProcessClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TBalExplotacionModel;
    procedure RellenarEmpresas;
  public
  end;

var WBalExplotacion: TWBalExplotacion;

implementation

uses System.Math,
     DM, DMConta, DMControl, Globales, Processing;

{$R *.DFM}

procedure TWBalExplotacion.FormCreate(Sender: TObject);
begin
   FModel := TBalExplotacionModel.Create(DMRef.BDContab);
   Self.Caption := '';
end;

procedure TWBalExplotacion.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWBalExplotacion.RellenarEmpresas;
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

procedure TWBalExplotacion.FormShow(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   DmContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);

   QFiltro.CreateDataSet;
   QFiltro.Active := True;
   QFiltro.Append;
   QFiltroFECHA_DESDE.AsDateTime    := dPrimeraFecha;
   QFiltroFECHA_HASTA.AsDateTime    := dUltimaFecha;
   QFiltroTIPO_CONCEPTO.AsString    := 'T';
   QFiltroFECHA_IMPRIMIR.AsDateTime := Date;
   QFiltroINFORME.AsString          := 'N';

   RellenarEmpresas;

   EditFECHA_DESDE.SetFocus;
end;

procedure TWBalExplotacion.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

procedure TWBalExplotacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   WBalExplotacion := nil;
end;

procedure TWBalExplotacion.BtnProcessClick(Sender: TObject);
begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   FModel.ProcessBalanceExplotacion(DMRef.BDContab                  ,
                                    DmRef.IBDConsolida              ,
                                    QFiltroFECHA_DESDE.AsDateTime   ,
                                    QFiltroFECHA_HASTA.AsDateTime   ,
                                    QFiltroFECHA_IMPRIMIR.AsDateTime,
                                    QFiltroTIPO_CONCEPTO.AsString[1],
                                    QFiltroINFORME.AsString[1]      ,
                                    CheckBoxSaldosEjAnt.Checked     ,
                                    QFiltroCUENTA.AsString          ,
                                    QFiltroCUENTA_H.AsString        ,
                                    QFiltroID_DELEGACION.AsString   ,
                                    QFiltroID_DEPARTAMENTO.AsString ,
                                    QFiltroID_SECCION.AsString      ,
                                    QFiltroID_PROYECTO.AsString     ,
                                    lbEmpresas                      );
end;

end.
