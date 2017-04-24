unit UDetalleIVA;

interface

uses SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms, Dialogs, Grids, DB,
     StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, IBX.IBDatabase, jpeg, IBX.IBSQL, ComCtrls, IBX.IBServices;

type
  TWDetalleIVA = class(TForm)
    Shape1: TShape;
    lTitulo: TLabel;
    BtnEdtCerrar: TButton;
    gDatos: TGroupBox;
    Label6: TLabel;
    EditIMPORTE: TDBEdit;
    pDatos: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    EditBASEIMPONIBLE: TDBEdit;
    EditCUOTAIVA: TDBEdit;
    EditIVA: TDBEdit;
    EditCUOTARECARGO: TDBEdit;
    EditRECARGO: TDBEdit;
    SFichero: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditBASEIMPONIBLEExit(Sender: TObject);
    procedure EditIMPORTEExit(Sender: TObject);
   procedure BtnEdtCerrarClick(Sender: TObject);
   private
     procedure RecalcularCuotas;
     procedure RecalcularTotalImporte;
   public
   end;

var WDetalleIVA: TWDetalleIVA;

implementation

uses DM, Globales, UCargaAsiento, Math;

{$R *.DFM}

procedure TWDetalleIVA.RecalcularCuotas;
begin
   if not (SFichero.DataSet.State in dsEditModes) then begin
      SFichero.DataSet.Edit;
   end;
   if RoundTo(SFichero.DataSet.FieldByName('BASEIMPONIBLE').AsFloat, -3) <> 0 then  begin
      SFichero.DataSet.FieldByName('CUOTAIVA').AsFloat     := RoundTo(SFichero.DataSet.FieldByName('BASEIMPONIBLE').AsFloat * 0.01 *
                                                                      SFichero.DataSet.FieldByName('IVA'          ).AsFloat, -3);
      SFichero.DataSet.FieldByName('CUOTARECARGO').AsFloat := RoundTo(SFichero.DataSet.FieldByName('BASEIMPONIBLE').AsFloat * 0.01 *
                                                                      SFichero.DataSet.FieldByName('RECARGO'      ).AsFloat, -3);
   end;
   RecalcularTotalImporte;
end;

procedure TWDetalleIVA.RecalcularTotalImporte;
begin
   if not (SFichero.DataSet.State in dsEditModes) then begin
      SFichero.DataSet.Edit;
   end;
   if DMRef.QParametrosRECARGO.AsString = 'S' then   begin
      if RoundTo(SFichero.DataSet.FieldByName('CUOTARECARGO').AsFloat, -3) > 0 then   begin
         SFichero.DataSet.FieldByName('IMPORTE').AsFloat := RoundTo(SFichero.DataSet.FieldByName('CUOTARECARGO').AsFloat, -3);
      end
      else begin
         SFichero.DataSet.FieldByName('IMPORTE').AsFloat := RoundTo(SFichero.DataSet.FieldByName('CUOTAIVA').AsFloat, -3);
      end;
   end
   else begin
      SFichero.DataSet.FieldByName('IMPORTE').AsFloat := RoundTo(SFichero.DataSet.FieldByName('CUOTAIVA').AsFloat +
         SFichero.DataSet.FieldByName('CUOTARECARGO').AsFloat, -3);
   end;
end;

procedure TWDetalleIVA.FormShow(Sender: TObject);
begin
   RecalcularCuotas;
   EditBASEIMPONIBLE.Update;
   EditIMPORTE.SetFocus;
   EditBASEIMPONIBLE.SetFocus;
end;

procedure TWDetalleIVA.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9 :begin
         Key := 0;
         BtnEdtCerrar.Click;
      end;
   end;
end;

procedure TWDetalleIVA.EditBASEIMPONIBLEExit(Sender: TObject);
begin
   RecalcularCuotas;
end;

procedure TWDetalleIVA.EditIMPORTEExit(Sender: TObject);
begin
   RecalcularTotalImporte;
end;

procedure TWDetalleIVA.BtnEdtCerrarClick(Sender: TObject);
begin
   Close;
end;

end.
