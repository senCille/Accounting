unit UTraspasoApuntes;

interface

uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics, IBX.IBSQL,
     Mask, Messages, StdCtrls, SysUtils, Windows;

type
  TWTraspasoApuntes = class(TForm)
    lTitulo: TLabel;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    BtnAccept: TButton;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    Label5: TLabel;
    CBSUBCUENTAOrigen: TDBLookupComboBox;
    CBDESCSUBCUENTAOrigen: TDBLookupComboBox;
    CBSUBCUENTADestino: TDBLookupComboBox;
    CBDESCSUBCUENTADestino: TDBLookupComboBox;
    Label7: TLabel;
    Label1: TLabel;
    BtnNewSubAccount: TButton;
    oBorrarOrigen: TCheckBox;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnNewSubAccountClick(Sender: TObject);
    procedure CBSUBCUENTADestinoNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
  private
    procedure CrearFiltro;
    procedure InicializarFiltro;
    procedure TraspasarApuntes;
  public
  end;

var WTraspasoApuntes: TWTraspasoApuntes;

implementation

uses System.StrUtils, System.UITypes,
     DM, DMConta, Globales, UNuevaSubcuenta;

{$R *.DFM}

procedure TWTraspasoApuntes.CrearFiltro;
begin
   CDSFiltro.Active := False;
   CDSFiltro.FieldDefs.Clear;
   CDSFiltro.FieldDefs.Add('SubcuentaOrigen', ftString, 10, False);
   CDSFiltro.FieldDefs.Add('SubcuentaDestino', ftString, 10, False);
   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;
end;

procedure TWTraspasoApuntes.InicializarFiltro;
begin
   CDSFiltro.FieldByName('SubcuentaDestino').AsString := DupeString('9', 10);
end;

procedure TWTraspasoApuntes.TraspasarApuntes;
var Msg :string;
    Q   :TIBSQL;
begin
   Msg := '¿Desea traspasar todos los apuntes de la subcuenta ORIGEN ' +
      CDSFiltro.FieldByName('SUBCUENTAORIGEN').AsString + #13 +
      'a la subcuenta DESTINO ' + CDSFiltro.FieldByName('SUBCUENTADESTINO').AsString;
   if oBorrarOrigen.Checked then   begin
      Msg := Msg + ', ' + #13 + 'y borrar la subcuenta ORIGEN ?';
   end
   else begin
      Msg := Msg + '?';
   end;

   if MessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      Q := TIBSQL.Create(nil);
      try
         Q.Database := DmRef.BDContab;
         // Actualizar DIARIO
         Q.SQL.Add('UPDATE DIARIO SET');
         Q.SQL.Add('   SUBCUENTA = :SUBCUENTA_DESTINO');
         Q.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA_ORIGEN');

         Q.Params.ByName('SUBCUENTA_ORIGEN').AsString  := CDSFiltro.FieldByName('SUBCUENTAORIGEN').AsString;
         Q.Params.ByName('SUBCUENTA_DESTINO').AsString := CDSFiltro.FieldByName('SUBCUENTADESTINO').AsString;

         Q.ExecQuery;
         Q.Transaction.CommitRetaining;

         // Actualizar DIARIO
         Q.Close;
         Q.SQL.Clear;
         Q.SQL.Add('UPDATE DIARIO SET');
         Q.SQL.Add('   CONTRAPARTIDA = :CONTRAPARTIDA_DESTINO');
         Q.SQL.Add('WHERE CONTRAPARTIDA = :CONTRAPARTIDA_ORIGEN');

         Q.Params.ByName('CONTRAPARTIDA_ORIGEN').AsString  := CDSFiltro.FieldByName('SUBCUENTAORIGEN').AsString;
         Q.Params.ByName('CONTRAPARTIDA_DESTINO').AsString := CDSFiltro.FieldByName('SUBCUENTADESTINO').AsString;

         Q.ExecQuery;
         Q.Transaction.CommitRetaining;

         if oBorrarOrigen.Checked then   begin
            // Borrar la subcuenta ORIGEN
            Q.Close;
            Q.SQL.Clear;
            Q.SQL.Add('DELETE FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA_ORIGEN');

            Q.Params.ByName('SUBCUENTA_ORIGEN').AsString := CDSFiltro.FieldByName('SUBCUENTAORIGEN').AsString;

            Q.ExecQuery;
            Q.Transaction.CommitRetaining;

            // Refrescar subcuentas
            DMContaRef.RefrescarSubcuentas(CDSFiltro.FieldByName('SUBCUENTAORIGEN').AsString);
            DMContaRef.RefrescarSubcuentas(CDSFiltro.FieldByName('SUBCUENTADESTINO').AsString);
         end;
      finally
         Q.Free;
      end;

      CDSFiltro.FieldByName('SUBCUENTAORIGEN').AsString := '';

      MessageDlg('Proceso concluido con éxito', mtInformation, [mbOK], 0);
   end;
end;

procedure TWTraspasoApuntes.FormShow(Sender: TObject);
begin
   CrearFiltro;
   InicializarFiltro;
end;

procedure TWTraspasoApuntes.BtnAcceptClick(Sender: TObject);
begin
   // Primero vaciar el fichero
   DMContaRef.QInformesConta.EmptyDataset;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   TraspasarApuntes;

   CBDESCSUBCUENTAOrigen.SetFocus;
end;

procedure TWTraspasoApuntes.FormCreate(Sender: TObject);
begin
   //DMContaRef.FijarLongitudSubcuentas(Self);
   //CBSUBCUENTADestino.MaxLength := DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;
   //CBSUBCUENTAOrigen.MaxLength  := DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger;
end;

procedure TWTraspasoApuntes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

procedure TWTraspasoApuntes.BtnNewSubAccountClick(Sender: TObject);
begin
   WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
   try
      WNuevaSubcuenta.ShowModal;
      if WNuevaSubcuenta.FNuevaSubcuenta <> '' then   begin
         CDSFiltro.FieldByName('SUBCUENTADESTINO').AsString := WNuevaSubcuenta.FNuevaSubcuenta;
      end;
      CBDESCSUBCUENTADestino.SetFocus;
   finally
      FreeAndNil(WNuevaSubcuenta);
   end;
end;

procedure TWTraspasoApuntes.CBSUBCUENTADestinoNotInList(Sender: TObject;
   LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
   Accept := False;

   if (Trim(NewValue) <> '') then  begin
      if Length(NewValue) < DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger then begin
         MessageDlg('La longitud de subcuenta es menor de ' + DMRef.QParametrosLONGITUD_SUBCUENTAS.AsString +
                    ' caracteres.', mtInformation, [mbOK], 0);
         CBSUBCUENTADestino.SetFocus;
         Exit;
      end;

      if MessageDlg('Subcuenta no existente. ¿Quiere añadirla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
         try
            WNuevaSubcuenta.FNuevaSubcuenta := NewValue;
            WNuevaSubcuenta.ShowModal;
            if WNuevaSubcuenta.FNuevaSubcuenta <> '' then   begin
               if not (CDSFiltro.State in dsEditModes) then   begin
                  CDSFiltro.Edit;
               end;
               CDSFiltro.FieldByName('SubcuentaDestino').AsString := WNuevaSubcuenta.FNuevaSubcuenta;
               Accept := True;
            end;
         finally
            FreeAndNil(WNuevaSubcuenta);
         end;
      end;
      CBSUBCUENTAOrigen.SetFocus;
   end;
end;

end.
