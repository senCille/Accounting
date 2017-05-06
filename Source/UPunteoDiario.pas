unit UPunteoDiario;

interface

uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, IBX.IBQuery, IBX.IBSQL, Mask, Messages, StdCtrls, SysUtils, Windows;

type
  TWPunteoDiario = class(TForm)
    lTitulo: TLabel;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    BtnAccept: TButton;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    RGTipoPunteo: TRadioGroup;
    RGOperacion: TRadioGroup;
    Label3: TLabel;
    FiltroCBDESCSUBCUENTADesde: TDBLookupComboBox;
    FiltroCBSUBCUENTADesde: TDBLookupComboBox;
    DBLookupCombo1: TDBLookupComboBox;
    DBLookupCombo2: TDBLookupComboBox;
    Label2: TLabel;
    CDSFiltroSUBCUENTA_DESDE: TStringField;
    CDSFiltroSUBCUENTA_HASTA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  public
    TipoListado: Integer;
  end;

var WPunteoDiario: TWPunteoDiario;

implementation

uses System.UITypes,
     DM, DMConta, Globales, Processing, ccStr, Math;

{$R *.DFM}

procedure TWPunteoDiario.FormShow(Sender: TObject);
begin
   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;
   CDSFiltroSUBCUENTA_DESDE.AsString := '';
   CDSFiltroSUBCUENTA_HASTA.AsString := '';
end;

procedure TWPunteoDiario.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWPunteoDiario.BtnAcceptClick(Sender: TObject);
var InProgress       :TProcessingView;
    Subcuenta_hasta  :string;
    Subcuenta_desde  :string;
    QModifica        :TIBSQL;
    QConsulta        :TIBQuery;
    QConsultaCuantos :TIBQuery;
    Q                :TIBQuery;
begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if MessageDlg('¿Confirma el punteo de asientos seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      InProgress := InProgressView('');
      try
         if RgOperacion.ItemIndex = 0 then InProgress.Text := 'Punteando asientos ...'
                                      else InProgress.Text := 'Eliminando punteo ...';

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

         QModifica := TIBSQL.Create(nil);
         try
            QModifica.Database := DmRef.BDContab;
            QModifica.SQL.Clear;
            QModifica.SQL.Add('update diario set punteo=:punteo,asientopunteo=:asiento');
            QModifica.SQL.Add('where id_diario=:id_diario');
            QModifica.Prepare;

            QConsultaCuantos := TIBQuery.Create(nil);
            QConsultaCuantos.Database := DmRef.BDContab;
            QConsultaCuantos.SQL.Clear;
            QConsultaCuantos.SQL.Add('select count(*) as cuantos from diario');
            QConsultaCuantos.SQL.Add('where subcuenta = :subcuenta and');
            QConsultaCuantos.SQL.Add('  importe >= :importedesde and importe <= :importehasta');
            QConsultaCuantos.SQL.Add(' and debehaber = :debehaber ');
            if RgOperacion.ItemIndex = 0 then begin
               QConsultaCuantos.SQL.Add(' and (punteo is null or punteo<>"S") ');
            end
            else begin
               QConsultaCuantos.SQL.Add(' and punteo="S" ');
            end;
            if RGTipoPunteo.ItemIndex = 1 then   begin
               QConsultaCuantos.SQL.Add('and numerofactura = :numerofactura');
            end;
            QConsultaCuantos.Prepare;

            QConsulta := TIBQuery.Create(nil);
            QConsulta.Database := DmRef.BDContab;
            QConsulta.SQL.Clear;
            QConsulta.SQL.Add('select id_diario,asiento from diario');
            QConsulta.SQL.Add('where subcuenta=:subcuenta and');
            QConsulta.SQL.Add('  importe>=:importedesde and importe<=:importehasta');
            QConsulta.SQL.Add(' and debehaber=:debehaber ');
            if RgOperacion.ItemIndex = 0 then begin
               QConsulta.SQL.Add(' and (punteo is null or punteo<>"S") ');
            end
            else begin
               QConsulta.SQL.Add(' and punteo="S" ');
            end;
            if RGTipoPunteo.ItemIndex = 1 then   begin
               QConsulta.SQL.Add('and numerofactura = :numerofactura');
            end;
            QConsulta.Prepare;

            Q := TIBQuery.Create(nil);
            try
               Q.Database := DmRef.BDContab;
               Q.SQL.Clear;
               Q.SQL.Add('select id_diario,asiento,subcuenta,importe,debehaber,numerofactura');
               Q.SQL.Add('from diario');
               Q.SQL.Add('where subcuenta>=:subcuenta1');
               Q.SQL.Add(' and SUBCUENTA<=:SUBCUENTA2');
               if RgOperacion.ItemIndex = 0 then begin
                  Q.SQL.Add(' and (punteo is null or punteo<>"S") ');
               end
               else begin
                  Q.SQL.Add(' and punteo="S" ');
               end;
               Q.SQL.Add(' order by Subcuenta ');

               Q.ParamByName('Subcuenta1').AsString := Subcuenta_Desde;
               Q.ParamByName('Subcuenta2').AsString := Subcuenta_Hasta;
               Q.Open;
               while not Q.EOF do begin
                  Q.ParamByName('Subcuenta1').AsString := Q.FieldByName('subcuenta').AsString;
                  // Se busca si para esta subcuenta existe
                  // un unico, solo uno, apunte de igual importe y debehaber contrario
                  QConsultaCuantos.Close;
                  QConsultaCuantos.parambyname('subcuenta').AsString   := Q.FieldByName('subcuenta').AsString;
                  QConsultaCuantos.parambyname('importedesde').AsFloat := RoundTo(Q.FieldByName('importe').AsFloat, -2) - 0.001;
                  QConsultaCuantos.parambyname('importehasta').AsFloat := RoundTo(Q.FieldByName('importe').AsFloat, -2) + 0.001;
                  if Q.FieldByName('debehaber').AsString = 'D' then begin
                     QConsultaCuantos.ParamByName('debehaber').AsString := 'H';
                  end
                  else begin
                     QConsultaCuantos.ParamByName('debehaber').AsString := 'D';
                  end;

                  if RGTipoPunteo.ItemIndex = 1 then   begin
                     QConsultaCuantos.ParamByName('numerofactura').AsString := Q.FieldByName('numerofactura').AsString;
                  end;
                  QConsultaCuantos.Open;
                  if QConsultaCuantos.FieldByName('Cuantos').AsInteger > 0 then   begin
                     QConsulta.Close;
                     QConsulta.parambyname('subcuenta').AsString   := Q.FieldByName('subcuenta').AsString;
                     QConsulta.parambyname('importedesde').AsFloat := RoundTo(Q.FieldByName('importe').AsFloat, -2) - 0.001;
                     QConsulta.parambyname('importehasta').AsFloat := RoundTo(Q.FieldByName('importe').AsFloat, -2) + 0.001;
                     if Q.FieldByName('debehaber').AsString = 'D' then begin
                        QConsulta.parambyname('debehaber').AsString := 'H';
                     end
                     else begin
                        QConsulta.parambyname('debehaber').AsString := 'D';
                     end;

                     if RGTipoPunteo.ItemIndex = 1 then   begin
                        QConsulta.ParamByName('numerofactura').AsString := Q.FieldByName('numerofactura').AsString;
                     end;

                     QConsulta.Open;
                     // Se modifica punteo y asiento
                     QModifica.Close;
                     QModifica.ParamByName('asiento').AsInteger := Q.FieldByName('asiento').AsInteger;
                     if RgOperacion.ItemIndex = 0 then begin
                        QModifica.parambyname('punteo').AsString := 'S';
                     end
                     else begin
                        QModifica.ParamByName('punteo').AsString := '';
                     end;

                     QModifica.ParamByName('id_diario').AsInteger := QConsulta.FieldByName('id_diario').AsInteger;
                     QModifica.ExecQuery;
                     QModifica.Transaction.CommitRetaining;
                     // Ahora del actual
                     QModifica.Close;
                     QModifica.ParamByName('asiento').AsInteger := QConsulta.FieldByName('asiento').AsInteger;
                     if RgOperacion.ItemIndex = 0 then begin
                        QModifica.ParamByName('punteo').AsString := 'S';
                     end
                     else begin
                        QModifica.ParamByName('punteo').AsString := '';
                     end;
                     QModifica.ParamByName('id_diario').AsInteger := Q.FieldByName('id_diario').AsInteger; // el actual
                     QModifica.ExecQuery;
                     QModifica.Transaction.CommitRetaining;
                     // Hacemos nuevamente la consulta para que vea los cambios producidos
                     // El parametro subcuenta1 se va actualizando cada vez que hacemos el
                     // bucle, de esta manera se va reduciendo el numero de registros devueltos
                     Q.Close;
                     Q.Open;
                     Continue;
                  end;
                  Q.Next;
               end;
            finally
               Q.Free;
            end;
         finally
            QConsultaCuantos.Free;
            QConsulta.Free;
            QModifica.Free;
         end;
      finally
         InProgress.Free;
      end;

      MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
      Close;
   end;
end;

end.
