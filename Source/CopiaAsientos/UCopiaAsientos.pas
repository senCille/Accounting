unit UCopiaAsientos;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBSQL, jpeg,
     Mask, Messages, StdCtrls, SysUtils, WinProcs, WinTypes,
     UCopiaAsientosModel;

type
  TWCopiaAsientos = class(TForm)
    Datos: TGroupBox;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditFECHA_DESDE: TDBEdit;
    FiltroFechaHasta: TDBEdit;
    Label3: TLabel;
    Label1: TLabel;
    FiltroCBDESCSUBCUENTADesde: TDBLookupComboBox;
    FiltroCBSUBCUENTADesde: TDBLookupComboBox;
    FiltroCBSUBCUENTAHasta: TDBLookupComboBox;
    FiltroCBDESCSUBCUENTAHasta: TDBLookupComboBox;
    Label2: TLabel;
    EditASIENTO_DESDE: TDBEdit;
    EditASIENTO_HASTA: TDBEdit;
    GbDestino: TGroupBox;
    ComboEMPRESA: TDBLookupComboBox;
    SFiltro: TDataSource;
    QFiltro: TClientDataSet;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnProcess: TButton;
    Label4: TLabel;
    Label5: TLabel;
    QFiltroASIENTO_DESDE: TIntegerField;
    QFiltroASIENTO_HASTA: TIntegerField;
    QFiltroEMPRESA: TIntegerField;
    QFiltroSUBCUENTA_DESDE: TStringField;
    QFiltroSUBCUENTA_HASTA: TStringField;
    QFiltroFECHA_DESDE: TDateField;
    QFiltroFECHA_HASTA: TStringField;
    procedure BtnProcessClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TCopiaAsientosModel;
  public
  end;

var WCopiaAsientos: TWCopiaAsientos;

implementation

uses DM, DMConta, DMControl, General, Globales, UEspere, ccStr;
{$R *.DFM}

procedure TWCopiaAsientos.FormCreate(Sender: TObject);
begin
   FModel := TCopiaAsientosModel.Create(DMRef.BDContab);
   Self.Caption := '';
end;

procedure TWCopiaAsientos.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWCopiaAsientos.FormShow(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   DMContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   QFiltro.CreateDataSet;
   QFiltro.Active;
   QFiltro.Append;
   QFiltroFECHA_DESDE.AsDateTime := dPrimeraFecha;
   QFiltroFECHA_HASTA.AsDateTime := dUltimaFecha;
   QFiltroASIENTO_DESDE.Value    := nPrimerAsiento;
   QFiltroASIENTO_HASTA.Value    := nUltimoAsiento;

   EditFECHA_DESDE.SetFocus;
end;

procedure TWCopiaAsientos.BtnProcessClick(Sender: TObject);
var InProgress :TEspere;
begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFiltroEMPRESA.AsInteger = 0 then begin
      ComboEMPRESA.SetFocus;
      ShowMessage('Debe seleccionar una empresa de destino');
      Exit;
   end;

   InProgress := InProgressView('Copiando asientos ...');
   try
      if not (QFiltroSUBCUENTA_DESDE.AsString = '') then begin
         if not (QFiltro.State in dsEditModes) then begin
            QFiltro.Edit;
         end;
         if QFiltroSUBCUENTA_HASTA.AsString = '' then begin
            QFiltroSUBCUENTA_HASTA.AsString := QFiltroSUBCUENTA_DESDE.AsString;
         end;
         if Length(Trim(QFiltroSUBCUENTA_DESDE.AsString)) < Config.MaxLengthAccounts then begin
            QFiltroSUBCUENTA_DESDE.AsString := TStrTools.BackChar(QFiltroSUBCUENTA_DESDE.AsString, '0', Config.MaxLengthAccounts);
         end;
         if Length(Trim(QFiltroSUBCUENTA_HASTA.AsString)) < Config.MaxLengthAccounts then begin
            QFiltroSUBCUENTA_HASTA.AsString := TStrTools.BackChar(QFiltroSUBCUENTA_HASTA.AsString, '0', Config.MaxLengthAccounts);
         end;
         QFiltro.Post;
      end;

      FModel.CopyEntries(QFiltroSUBCUENTA_DESDE.AsString, QFiltroSUBCUENTA_HASTA.AsString,
                         QFiltroASIENTO_DESDE.AsInteger , QFiltroASIENTO_HASTA.AsInteger ,
                         QFiltroFECHA_DESDE.AsDateTime  , QFiltroFECHA_HASTA.AsDateTime  );
   finally
      InProgress.Free;
   end;

   MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
   Close;
end;

procedure TWCopiaAsientos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

end.
