unit UBorradoDiario;
interface

uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, IBX.IBSQL, Mask, Messages, StdCtrls, SysUtils, Windows,
     UBorradoDiarioModel;
     
type
  TWBorradoDiario = class(TForm)
    lTitulo: TLabel;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    BtnEdtAceptar: TButton;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    Label36: TLabel;
    Label29: TLabel;
    Label1: TLabel;
    EditIMPORTE_DESDE: TDBEdit;
    EditIMPORTE_HASTA: TDBEdit;
    EditASIENTO_DESDE: TDBEdit;
    EditASIENTO_HASTA: TDBEdit;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EditFECHA_DESDE: TDBEdit;
    EditFECHA_HASTA: TDBEdit;
    ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox;
    ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox;
    Label2: TLabel;
    ComboBoxCD_CONCEPTO: TDBLookupComboBox;
    ComboBoxDS_CONCEPTO: TDBLookupComboBox;
    CDSFiltroASIENTO_DESDE: TIntegerField;
    CDSFiltroASIENTO_HASTA: TIntegerField;
    CDSFiltroFECHA_DESDE: TDateField;
    CDSFiltroFECHA_HASTA: TDateField;
    CDSFiltroSUBCUENTA_DESDE: TStringField;
    CDSFiltroSUBCUENTA_HASTA: TStringField;
    CDSFiltroIMPORTE_DESDE: TFloatField;
    CDSFiltroIMPORTE_HASTA: TFloatField;
    CDSFiltroCD_CONCEPTO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnEdtAceptarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TBorradoDiarioModel;
  public
    TipoListado: Integer;
  end;

var WBorradoDiario: TWBorradoDiario;

implementation

uses System.Math,
     DM, DMConta, Globales, Processing, ccStr;

{$R *.DFM}

procedure TWBorradoDiario.FormCreate(Sender: TObject);
var nPrimerAsiento :Integer;
    nUltimoAsiento :Integer;
    dPrimeraFecha  :TDateTime;
    dUltimaFecha   :TDateTime;
begin
   FModel := TBorradoDiarioModel.Create(DMRef.BDContab);
   Caption := '';

   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;

   DmContaRef.ObtenerFiltrosDiario(nPrimerAsiento, nUltimoAsiento, dPrimeraFecha, dUltimaFecha);
   CDSFiltroASIENTO_DESDE.AsInteger  := nPrimerAsiento;
   CDSFiltroASIENTO_HASTA.AsInteger  := nUltimoAsiento;
   CDSFiltroFECHA_DESDE.AsDateTime   := dPrimeraFecha;
   CDSFiltroFECHA_HASTA.AsDateTime   := dUltimaFecha;
   CDSFiltroIMPORTE_DESDE.AsFloat    := 0;
   CDSFiltroIMPORTE_HASTA.AsFloat    := 0;
   CDSFiltroSUBCUENTA_DESDE.AsString := '';
   CDSFiltroSUBCUENTA_HASTA.AsString := '';
   CDSFiltroCD_CONCEPTO.AsString     := '';
end;

procedure TWBorradoDiario.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWBorradoDiario.FormShow(Sender: TObject);
begin
   EditASIENTO_DESDE.SetFocus;
end;

procedure TWBorradoDiario.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnEdtAceptar.Click;
      end;
   end;
end;

procedure TWBorradoDiario.BtnEdtAceptarClick(Sender: TObject);
var InProgress      :TProcessingView;
    Subcuenta_Hasta :string;
    Subcuenta_Desde :string;
    Q               :TIBSQL;
begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);
   if MessageDlg('¿Confirma el borrado de asientos seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      InProgress := InProgressView('Borrando asientos ...');
      try
         subcuenta_desde := CDSFiltroSUBCUENTA_DESDE.AsString;
         subcuenta_hasta := CDSFiltroSUBCUENTA_HASTA.AsString;

         if subcuenta_hasta = '' then begin
            subcuenta_hasta := subcuenta_desde;
         end;

         if length(subcuenta_desde) < Config.MaxLengthAccounts then   begin
            subcuenta_desde := TStrTools.BackChar(subcuenta_desde, '0', Config.MaxLengthAccounts);
         end;
         if length(subcuenta_hasta) < Config.MaxLengthAccounts then   begin
            subcuenta_hasta := TStrTools.Backchar(subcuenta_hasta, '9', Config.MaxLengthAccounts);
         end;

         Q := TIBSQL.Create(nil);
         try
            Q.Database := DmRef.BDContab;
            Q.SQL.Add('delete from diario');
            Q.SQL.Add('where asiento in (select asiento from diario ');
            Q.SQL.Add('    where Fecha>=:fecha1 and Fecha<=:Fecha2');
            if (CDSFiltroASIENTO_DESDE.AsInteger <> 0) and
               (CDSFiltroASIENTO_HASTA.AsInteger <> 0) then   begin
               Q.SQL.Add(' and asiento >= :asiento1 and asiento <= :asiento2 ');
            end;

            if (RoundTo(CDSFiltroIMPORTE_DESDE.AsFloat, -2) <> 0) and
               (RoundTo(CDSFiltroIMPORTE_HASTA.AsFloat, -2) <> 0) then begin
               Q.SQL.Add(' and importe >= :importe1 and importe <= :importe2 ');
            end;

            if (CDSFiltroSUBCUENTA_DESDE.AsString <> '') then begin
               Q.SQL.Add(' and subcuenta >= :subcuenta1');
               Q.SQL.Add(' and SUBCUENTA <= :SUBCUENTA2');
            end;

            if (CDSFiltroCD_CONCEPTO.AsString <> '') then begin
               Q.SQL.Add(' and concepto=:concepto1 ');
            end;

            Q.SQL.Add(' )'); // Cierre de subconsulta

            Q.ParamByName('Fecha1').AsDateTime := CDSFiltroFECHA_DESDE.AsDateTime;
            Q.ParamByName('Fecha2').AsDateTime := CDSFiltroFECHA_HASTA.AsDateTime;

            if (CDSFiltroASIENTO_DESDE.AsInteger <> 0) and
               (CDSFiltroASIENTO_HASTA.AsInteger <> 0) then   begin
               Q.ParamByName('Asiento1').AsInteger := CDSFiltroASIENTO_DESDE.AsInteger;
               Q.ParamByName('Asiento2').AsInteger := CDSFiltroASIENTO_HASTA.AsInteger;
            end;

            if (RoundTo(CDSFiltroIMPORTE_DESDE.AsFloat, -2) <> 0) and
               (RoundTo(CDSFiltroIMPORTE_HASTA.AsFloat, -2) <> 0) then   begin
               Q.Parambyname('Importe1').AsDouble := CDSFiltroIMPORTE_DESDE.AsFloat;
               Q.Parambyname('Importe2').AsDouble := CDSFiltroIMPORTE_HASTA.AsFloat;
            end;

            if (CDSFiltroSUBCUENTA_DESDE.AsString <> '') then   begin
               Q.Parambyname('Subcuenta1').AsString := Subcuenta_Desde;
               Q.Parambyname('Subcuenta2').AsString := Subcuenta_Hasta;
            end;

            if (CDSFiltroCD_CONCEPTO.AsString <> '') then   begin
               Q.Parambyname('Concepto1').AsString := CDSFiltroCD_CONCEPTO.AsString;
            end;

            Q.ExecQuery;
            Q.Transaction.commitretaining;
         finally
            Q.Free;
         end;
      finally
         InProgress.Free;
      end;
      
      MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
      Close;
   end;
end;

end.
