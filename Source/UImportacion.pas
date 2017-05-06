unit UImportacion;

interface

uses Buttons, Classes, Controls, DB, Dialogs, ExtCtrls, Forms, Graphics, IBX.IBDatabase, IBX.IBSQL,
     Messages, StdCtrls, SysUtils, Variants, Windows, IBX.IBCustomDataSet, IBX.IBTable;

type
  TWImportacion = class(TForm)
    RgTipo:          TRadioGroup;
    QSubcuentas: TIBTable;
    QProveedores: TIBTable;
    BitBtn1:         TBitBtn;
    BitBtn2:         TBitBtn;
    QExiste:         TIBSQL;
    QActualiza:      TIBSQL;
    QInserta:        TIBSQL;
    QBuscaProvincia: TIBSQL;
    IBDatabase1:     TIBDatabase;
    IBTransaction1:  TIBTransaction;
    procedure BitBtn1Click(Sender: TObject);
   private
   public
   end;

var WImportacion :TWImportacion;

implementation

uses System.UITypes,
     DM;

{$R *.dfm}

procedure TWImportacion.BitBtn1Click(Sender: TObject);
var cProvincia: String;
begin
   if MessageDlg('Confirma procesar la importación', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      if RgTipo.ItemIndex = 0 {SUBACCOUNTS} then begin
         QExiste.Close;
         QExiste.SQL.Clear;
         QExiste.SQL.Add('SELECT COUNT(*) AS CUANTOS FROM SUBCTAS WHERE SUBCUENTA = :SUBCUENTA');

         QActualiza.Close;
         QActualiza.SQL.Clear;
         QActualiza.SQL.Add('UPDATE SUBCTAS SET DESCRIPCION = :DESCRIPCION, ');
         QActualiza.SQL.Add('                   NIF         = :NIF          ');
         QActualiza.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA                   ');

         QInserta.Close;
         QInserta.SQL.Clear;
         QInserta.SQL.Add('INSERT INTO SUBCTAS(SUBCUENTA       ,   ');
         QInserta.SQL.Add('                    DESCRIPCION     ,   ');
         QInserta.SQL.Add('                    PROFESIONAL     ,   ');
         QInserta.SQL.Add('                    ARRENDADOR      ,   ');
         QInserta.SQL.Add('                    INTRACOMUNITARIO,   ');
         QInserta.SQL.Add('                    OBSOLETO)           ');
         QInserta.SQL.Add('            VALUES(:SUBCUENTA  ,        ');
         QInserta.SQL.Add('                   :DESCRIPCION,        ');
         QInserta.SQL.Add('                   "N"         ,        ');
         QInserta.SQL.Add('                   "N"         ,        ');
         QInserta.SQL.Add('                   "N"         ,        ');
         QInserta.SQL.Add('                   "N"         ,        ');
         QInserta.SQL.Add('                   :NIF        )        ');

         QSubcuentas.Close;
         QSubcuentas.Open;
         while not QSubcuentas.EOF do begin
            if (Length(Trim(QSubcuentas.FieldByName('cta_codigo').AsString)) > 7) and
               (Copy  (Trim(QSubcuentas.FieldByName('cta_codigo').AsString), 1, 2) = '43') then begin
               // Ver si existe
               QExiste.Close;
               QExiste.ParamByName('Subcuenta').AsString := Trim(QSubcuentas.FieldByName('Cta_codigo').AsString);
               QExiste.Execquery;
               if QExiste.FieldByName('Cuantos').AsInteger > 0 then begin
                  // Si existe se actualiza
                  QActualiza.Close;
                  QActualiza.ParamByName('Subcuenta').AsString   := Trim(QSubcuentas.FieldByName('Cta_codigo').AsString);
                  QActualiza.ParamByName('Descripcion').AsString :=
                     Copy(Trim(QSubcuentas.FieldByName('Cta_Nombre').AsString), 1, 80);
                  QActualiza.ParamByName('nif').AsString         := Trim(QSubcuentas.FieldByName('Cta_Nif').AsString);
                  QActualiza.Execquery;
                  QActualiza.Transaction.CommitRetaining;
               end
               else begin
                  // Si no existe se crea
                  QInserta.Close;
                  QInserta.ParamByName('Descripcion').AsString :=
                     Copy(Trim(QSubcuentas.FieldByName('Cta_Nombre').AsString), 1, 80);
                  QInserta.ParamByName('Subcuenta').AsString   := Trim(QSubcuentas.FieldByName('Cta_codigo').AsString);
                  QInserta.ParamByName('nif').AsString         := Trim(QSubcuentas.FieldByName('Cta_Nif').AsString);
                  QInserta.Execquery;
                  QInserta.Transaction.CommitRetaining;
               end;
            end;
            QSubcuentas.Next;
         end;
      end
      else
      if RgTipo.ItemIndex = 1 {SUPLIERS} then begin
         QActualiza.Close;
         QActualiza.SQL.Clear;
         QActualiza.SQL.Add('UPDATE SUBCTAS SET DESCRIPCION = :DESCRIPCION, ');
         QActualiza.SQL.Add('                   DIRECCION   = :DIRECCION  , ');
         QActualiza.SQL.Add('                   DIRECCION1  = :DIRECCION1 , ');
         QActualiza.SQL.Add('                   POBLACION   = :POBLACION  , ');
         QActualiza.SQL.Add('                   CODPOSTAL   = :CODPOSTAL  , ');
         QActualiza.SQL.Add('                   TELEFONO    = :TELEFONO   , ');
         QActualiza.SQL.Add('                   NIF         = :NIF        , ');
         QActualiza.SQL.Add('                   PAIS        = "es"        , ');
         QActualiza.SQL.Add('                   PROVINCIA   = :PROVINCIA    ');
         QActualiza.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA                   ');

         QBuscaProvincia.Close;
         QBuscaProvincia.SQL.Clear;
         QBuscaProvincia.SQL.Add('SELECT PROVINCIA FROM PROVINCIAS WHERE CODIGO = :CODIGO');
         QProveedores.Close;
         QProveedores.Open;
         
         while not QProveedores.EOF do begin
            // Buscar provincia en codpostal
            QBuscaProvincia.Close;
            QBuscaProvincia.ParamByName('CODIGO').AsString := Copy(Trim(QProveedores.FieldByName('P_CODPOST').AsString), 1, 2);
            QBuscaProvincia.ExecQuery;
            cProvincia := QBuscaProvincia.FieldByName('PROVINCIA').AsString;
            QActualiza.Close;
            QActualiza.ParamByName('SUBCUENTA'  ).AsString :=      Trim(QProveedores.FieldByName('P_CUENTCONTABLE').AsString);
            QActualiza.ParamByName('DESCRIPCION').AsString := Copy(Trim(QProveedores.FieldByName('P_NOMBRE'       ).AsString), 1, 80);
            QActualiza.ParamByName('DIRECCION'  ).AsString := Copy(Trim(QProveedores.FieldByName('P_DIRECCION'    ).AsString), 1, 35);
            QActualiza.ParamByName('DIRECCION1' ).AsString := '';
            QActualiza.ParamByName('POBLACION'  ).AsString := Copy(Trim(QProveedores.FieldByName('P_POBLACION'    ).AsString), 1, 60);
            QActualiza.ParamByName('CODPOSTAL'  ).AsString := Copy(Trim(QProveedores.FieldByName('P_CODPOST'      ).AsString), 1, 10);
            QActualiza.ParamByName('TELEFONO'   ).AsString := Copy(Trim(QProveedores.FieldByName('P_TELEFONO1'    ).AsString), 1, 16);
            QActualiza.ParamByName('PROVINCIA'  ).AsString := cProvincia;
            QActualiza.ParamByName('NIF'        ).AsString := Copy(Trim(QProveedores.FieldByName('P_CIF'          ).AsString), 1, 20);
            QActualiza.Execquery;
            QActualiza.Transaction.CommitRetaining;
            Next;
         end;
      end
      else
      if RgTipo.ItemIndex = 2 {ACCOUNTS} then begin
         QExiste.Close;
         QExiste.SQL.Clear;
         QExiste.SQL.Add('select count(*) as cuantos from cuentas where cuenta=:cuenta');

         QActualiza.Close;
         QActualiza.SQL.Clear;
         QActualiza.SQL.Add('update cuentas set descripcion=:descripcion where cuenta=:cuenta');

         QInserta.Close;
         QInserta.SQL.Clear;
         QInserta.SQL.Add('insert into cuentas(cuenta,descripcion,tipocuenta)');
         QInserta.SQL.Add(' values(:cuenta,:descripcion,"O")');

         QSubcuentas.Close;
         QSubcuentas.Open;
         while not EOF do begin
            if Length(Trim(QSubcuentas.FieldByName('cta_codigo').AsString)) <= 3 then   begin
               // Ver si existe
               QExiste.Close;
               QExiste.ParamByName('cuenta').AsString := copy(Trim(QSubcuentas.FieldByName('Cta_codigo').AsString), 1, 3);
               QExiste.Execquery;
               if QExiste.FieldByName('Cuantos').AsInteger > 0 then   begin
                  // Si existe se actualiza
                  QActualiza.Close;
                  QActualiza.ParamByName('cuenta').AsString      := Copy(Trim(QSubcuentas.FieldByName('Cta_codigo').AsString), 1, 3);
                  QActualiza.ParamByName('Descripcion').AsString := Copy(Trim(QSubcuentas.FieldByName('Cta_Nombre').AsString), 1, 50);
                  QActualiza.Execquery;
                  QActualiza.Transaction.CommitRetaining;
               end
               else begin
                  // Si no existe se crea
                  QInserta.Close;
                  QInserta.ParamByName('cuenta').AsString      := Copy(Trim(QSubcuentas.FieldByName('Cta_codigo').AsString), 1, 3);
                  QInserta.ParamByName('Descripcion').AsString := Copy(Trim(QSubcuentas.FieldByName('Cta_Nombre').AsString), 1, 50);
                  QInserta.Execquery;
                  QInserta.Transaction.CommitRetaining;
               end;
            end;
            QSubcuentas.Next;
         end;
      end
      else begin
         DatabaseError('Debe seleccionar un tipo de importación.');
      end;
      MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
   end;
end;

end.
