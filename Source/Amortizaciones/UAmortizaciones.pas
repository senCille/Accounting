unit UAmortizaciones;

interface

uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls, Windows,
     Forms, Graphics, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBSQL, Mask, Messages, StdCtrls, SysUtils,
     UAmortizacionesModel;

type
  TWAmortizaciones = class(TForm)
    GroupBox1: TGroupBox;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    RadioGroupOPERACION: TRadioGroup;
    RadioGroupLISTADO: TRadioGroup;
    RadioGroupTIPO: TRadioGroup;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    FiltroCBDESCSUBCUENTADesde: TDBLookupComboBox;
    FiltroCBSUBCUENTADesde: TDBLookupComboBox;
    DBLookupCombo1: TDBLookupComboBox;
    FiltroCBSUBCUENTAHasta: TDBLookupComboBox;
    ComboBoxCD_CONCEPTO: TDBLookupComboBox;
    ComboBoxDS_CONCEPTO: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label17: TLabel;
    EditFECHA_ULT_DESDE: TDBEdit;
    FechaFECHA_ULT_HASTA: TDBEdit;
    EditFECHA_COMPRA_DESDE: TDBEdit;
    EditFECHA_COMPRA_HASTA: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnProcess: TButton;
    lTitulo: TLabel;
    Shape1: TShape;
    CDSFiltroSUBCUENTA_DESDE: TStringField;
    CDSFiltroSUBCUENTA_HASTA: TStringField;
    CDSFiltroFECHA: TDateField;
    CDSFiltroFECHA_COMPRA_DESDE: TStringField;
    CDSFiltroFECHA_COMPRA_HASTA: TDateField;
    CDSFiltroFECHA_ULT_DESDE: TDateField;
    CDSFiltroFECHA_ULT_HASTA: TDateField;
    CDSFiltroID_CONCEPTOS: TStringField;
    EditFECHA: TDBEdit;
    procedure BtnProcessClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TAmortizacionesModel;
  public
    TipoListado: Integer;
  end;

var WAmortizaciones: TWAmortizaciones;

implementation

uses System.Math,
     DM, DMConta, Globales, Processing, ccStr;

{$R *.DFM}

procedure TWAmortizaciones.FormCreate(Sender: TObject);
begin
   FModel := TAmortizacionesModel.Create(DMRef.BDContab);
   Caption := '';
   
   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;
   CDSFiltroFECHA.AsDateTime              := DmRef.QParametrosFECHAAMORTIZACION.AsDateTime;
   CDSFiltroFECHA_COMPRA_HASTA.AsDateTime := DmRef.QParametrosFECHAAMORTIZACION.AsDateTime;
   CDSFiltroFECHA_ULT_HASTA.AsDateTime    := DmRef.QParametrosFECHAAMORTIZACION.AsDateTime;
end;

procedure TWAmortizaciones.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWAmortizaciones.BtnProcessClick(Sender: TObject);
begin
   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   Self.Enabled := False;
   try
      if RadioGroupOPERACION.ItemIndex = 1 then begin
         FModel.GenerarAsientosAmortizacion(CDSFiltroID_CONCEPTOS.AsString   ,
                                            CDSFiltroFECHA.AsDateTime        ,
                                            CDSFiltroSUBCUENTA_DESDE.AsString,
                                            CDSFiltroSUBCUENTA_HASTA.AsString,
                                            RadioGroupTIPO.ItemIndex         );
      end else
      if RadioGroupLISTADO.ItemIndex = 0 then begin
         FModel.GenerarDetalleInmovilizado(CDSFiltroSUBCUENTA_DESDE.AsString     ,
                                           CDSFiltroSUBCUENTA_HASTA.AsString     ,
                                           RadioGroupTIPO.ItemIndex              ,
                                           CDSFiltroFECHA.IsNull                 ,
                                           CDSFiltroFECHA.AsDateTime             ,
                                           CDSFiltroFECHA_COMPRA_DESDE.IsNull    ,
                                           CDSFiltroFECHA_COMPRA_DESDE.AsDateTime,
                                           CDSFiltroFECHA_COMPRA_HASTA.IsNull    ,
                                           CDSFiltroFECHA_COMPRA_HASTA.AsDateTime,
                                           CDSFiltroFECHA_ULT_DESDE.IsNull       ,
                                           CDSFiltroFECHA_ULT_DESDE.AsDateTime   ,
                                           CDSFiltroFECHA_ULT_HASTA.IsNull       ,
                                           CDSFiltroFECHA_ULT_HASTA.AsDateTime   );
      end
      else begin
         FModel.GenerarInformeAmortizacion(CDSFiltroSUBCUENTA_DESDE.AsString     ,
                                           CDSFiltroSUBCUENTA_HASTA.AsString     ,
                                           RadioGroupTIPO.ItemIndex              ,
                                           CDSFiltroFECHA.IsNull                 ,
                                           CDSFiltroFECHA.AsDateTime             ,
                                           CDSFiltroFECHA_COMPRA_DESDE.IsNull    ,
                                           CDSFiltroFECHA_COMPRA_DESDE.AsDateTime,
                                           CDSFiltroFECHA_COMPRA_HASTA.IsNull    ,
                                           CDSFiltroFECHA_COMPRA_HASTA.AsDateTime,
                                           CDSFiltroFECHA_ULT_DESDE.IsNull       ,
                                           CDSFiltroFECHA_ULT_DESDE.AsDateTime   ,
                                           CDSFiltroFECHA_ULT_HASTA.IsNull       ,
                                           CDSFiltroFECHA_ULT_HASTA.AsDateTime   );
      end;
   finally
      Self.Enabled := True;
   end;
end;

procedure TWAmortizaciones.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

end.
