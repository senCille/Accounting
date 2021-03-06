unit URecalculoSaldos;

interface
uses Buttons, Classes, comctrls, Controls, DB, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     Grids, IBX.IBDatabase, IBX.IBSQL, Mask, Messages, StdCtrls, SysUtils, WinProcs, WinTypes,
     URecalculoSaldosModel;

type
  TWRecalculoSaldos = class(TForm)
    Datos: TGroupBox;
    Shape1: TShape;
    lTitulo: TLabel;
    Label4: TLabel;
    BtnEdtProcesar: TButton;
    EditEJERCICIO: TEdit;
    Label1: TLabel;
    procedure BtnEdtProcesarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    FModel :TRecalculoSaldosModel;
  public
  end;

var WRecalculoSaldos: TWRecalculoSaldos;

implementation

uses System.DateUtils, System.UITypes,
     DM, Globales, Processing;

{$R *.DFM}

procedure TWRecalculoSaldos.FormCreate(Sender: TObject);
begin
   FModel := TRecalculoSaldosModel.Create(DMRef.BDContab);
end;

procedure TWRecalculoSaldos.BtnEdtProcesarClick(Sender: TObject);
//var Q :TIBSQL;
begin
   if StrToInt(EditEjercicio.Text) = 0 then begin
      MessageDlg('Especifique el ejercicio que desea recalcular', mtInformation, [mbOK], 0);
   end
   else begin
      //Q := TIBSQL.Create(nil);
      //try
         //try
            (*Q.Database    := DMRef.BDContab;
            Q.Transaction := DMRef.BDContab.DefaultTransaction;
            Q.SQL.Add('execute procedure RecalculoSaldos(:EJERCICIO)');
            Q.Params.ByName('EJERCICIO').AsInteger := StrToInt(EditEJERCICIO.Text);
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;*)
            FModel.RecalculaSaldos(StrToInt(EditEJERCICIO.Text));
         //except
         //   DatabaseError('Por favor, revise los datos de entrada.');
         //end;
      //finally
      //   Q.Free;
      //end;

      MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
      Close;
   end;
end;

procedure TWRecalculoSaldos.FormShow(Sender: TObject);
begin
   EditEJERCICIO.Text := IntToStr(YearOf(Date));
   EditEJERCICIO.SetFocus;
end;

procedure TWRecalculoSaldos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9 :begin
         BtnEdtProcesar.Click;
      end;
   end;
end;

end.
