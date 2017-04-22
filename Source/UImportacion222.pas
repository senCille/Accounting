unit UImportacion;

interface

uses
   Buttons, Classes, Controls, DB, DBTables, Dialogs, ExtCtrls, Forms,
   Graphics, IBDatabase, IBSQL, Messages, StdCtrls, SysUtils, Variants, Windows;

type
   TWImportacion = class(TForm)
      RgTipo:          TRadioGroup;
      QSubcuentas:     TTable;
      QProveedores:    TTable;
      BitBtn1:         TBitBtn;
      BitBtn2:         TBitBtn;
      QExiste:         TIBSQL;
      QActualiza:      TIBSQL;
      QInserta:        TIBSQL;
      QBuscaProvincia: TIBSQL;
      procedure BitBtn1Click(Sender: TObject);
   private
   public
   end;

var
   WImportacion: TWImportacion;

implementation

uses DM, UPrincipal;

{$R *.dfm}

procedure TWImportacion.BitBtn1Click(Sender: TObject);
var
   cProvincia, cLinea, cSubcta, cNombre, cDireccion, cNif, cPostal, cPoblacion, cTelefono: String;
   F: TextFile;
begin
   if (WPrincipal.MensajePrincipal.Preguntar('¿Confirma procesar la importación?', 'Confirmación', 2) =
      ID_YES) then begin
      if RgTipo.ItemIndex = 0 then   begin
         with QExiste, Sql do begin
            // Dejo esto para borrar todas las subcuentas, por comodidad
  {   close;
     clear;
     Add('delete from subctas where subcuenta like "43%"');
     execquery;
     transaction.commitretaining;
     exit; }
            Close;
            Clear;
            Add('select count(*) as cuantos from subctas where subcuenta=:subcuenta');
         end;
         with QActualiza, Sql do begin
            Close;
            Clear;
            Add('update subctas set descripcion=:descripcion,direccion=:direccion,nif=:nif,codpostal=:codpostal,');
            Add(' poblacion=:poblacion,telefono=:telefono,provincia=:provincia,pais="ES" where subcuenta=:subcuenta');
         end;
         with QInserta, Sql do begin
            Close;
            Clear;
            Add('insert into subctas(subcuenta,descripcion,profesional,arrendador,intracomunitario,obsoleto)');
            Add(' values(:subcuenta,:descripcion,"N","N","N","N")');
         end;
         with QBuscaProvincia, Sql do begin
            Close;
            Clear;
            Add('select provincia from provincias where codigo=:codigo');
         end;
         // Leer fichero Gems.txt
         AssignFile(F, 'c:\Gems.txt');
         Reset(F);
         while not EOF(F) do begin
            readln(F, cLinea);
            cLinea     := Uppercase(cLinea);
            cSubcta    := Copy(cLinea, 6, 10);
            cNombre    := Copy(cLinea, 18, 30);
            cDireccion := Copy(cLinea, 49, 34);
            cNif       := Copy(cLinea, 101, 15);
            cPostal    := Copy(cLinea, 161, 5);
            cPoblacion := Copy(cLinea, 167, 25);
            cTelefono  := Copy(cLinea, 214, 16);
            if length(Trim(cSubcta)) > 7 then   begin
               // Ver si existe
               QExiste.Close;
               QExiste.ParamByName('Subcuenta').AsString := Trim(cSubcta);
               QExiste.Execquery;
               if QExiste.FieldByName('Cuantos').AsInteger > 0 then   begin
                  // Si existe se actualiza
                  QActualiza.Close;
                  QActualiza.ParamByName('Subcuenta').AsString   := Trim(cSubcta);
                  QActualiza.ParamByName('Descripcion').AsString := Copy(Trim(cNombre), 1, 80);
                  QActualiza.ParamByName('Direccion').AsString   := Trim(cDireccion);
                  QActualiza.ParamByName('Nif').AsString         := Trim(cNif);
                  QActualiza.ParamByName('codpostal').AsString   := Trim(cPostal);
                  QActualiza.ParamByName('poblacion').AsString   := Trim(cPoblacion);
                  QActualiza.ParamByName('Telefono').AsString    := Trim(cTelefono);
                  // Buscar provincia en codpostal
                  QBuscaProvincia.Close;
                  QBuscaProvincia.ParamByName('Codigo').AsString := Copy(Trim(cPostal), 1, 2);
                  QBuscaProvincia.Execquery;
                  cProvincia := QBuscaProvincia.FieldByName('provincia').AsString;
                  if cProvincia = '' then begin
                     QActualiza.ParamByName('provincia').AsVariant := null;
                  end
                  else begin
                     QActualiza.ParamByName('provincia').AsString := cProvincia;
                  end;
                  QActualiza.Execquery;
                  QActualiza.Transaction.CommitRetaining;
               end
               else begin
                  // Si no existe se crea
                  QInserta.Close;
                  QInserta.ParamByName('Subcuenta').AsString   := Trim(cSubcta);
                  QInserta.ParamByName('Descripcion').AsString := Copy(Trim(cNombre), 1, 80);
                  QInserta.Execquery;
                  QInserta.Transaction.CommitRetaining;
               end;
            end;
         end;
      end // eof
      else
      if RgTipo.ItemIndex = 1 then   begin
         with QActualiza, Sql do begin
            Close;
            Clear;
            Add('update subctas set descripcion=:descripcion,direccion=:direccion,direccion1=:direccion1,');
            Add(' poblacion=:poblacion,codpostal=:codpostal,telefono=:telefono,nif=:nif,pais="ES",provincia=:provincia');
            Add('where subcuenta=:subcuenta');
         end;
         with QBuscaProvincia, Sql do begin
            Close;
            Clear;
            Add('select provincia from provincias where codigo=:codigo');
         end;
         with QProveedores do begin
            Close;
            Open;
            while not EOF do begin
               // Buscar provincia en codpostal
               QBuscaProvincia.Close;
               QBuscaProvincia.ParamByName('Codigo').AsString :=
                  Copy(Trim(FieldByName('P_codpost').AsString), 1, 2);
               QBuscaProvincia.Execquery;
               cProvincia := QBuscaProvincia.FieldByName('provincia').AsString;

               QActualiza.Close;
               QActualiza.ParamByName('Subcuenta').AsString   := Trim(FieldByName('P_cuentcontable').AsString);
               QActualiza.ParamByName('Descripcion').AsString :=
                  Copy(Trim(FieldByName('P_Nombre').AsString), 1, 80);
               QActualiza.ParamByName('Direccion').AsString   :=
                  Copy(Trim(FieldByName('P_Direccion').AsString), 1, 35);
               QActualiza.ParamByName('Direccion1').AsString  := '';
               QActualiza.ParamByName('Poblacion').AsString   :=
                  Copy(Trim(FieldByName('P_Poblacion').AsString), 1, 60);
               QActualiza.ParamByName('Codpostal').AsString   :=
                  Copy(Trim(FieldByName('P_Codpost').AsString), 1, 10);
               QActualiza.ParamByName('Telefono').AsString    :=
                  Copy(Trim(FieldByName('P_Telefono1').AsString), 1, 16);
               QActualiza.ParamByName('Provincia').AsString   := cProvincia;
               QActualiza.ParamByName('Nif').AsString         := Copy(Trim(FieldByName('P_Cif').AsString), 1, 20);
               QActualiza.Execquery;
               QActualiza.Transaction.CommitRetaining;
               Next;
            end;
         end;
      end
      else
      if RgTipo.ItemIndex = 2 then   begin
         with QExiste, Sql do begin
            Close;
            Clear;
            Add('select count(*) as cuantos from cuentas where cuenta=:cuenta');
         end;
         with QActualiza, Sql do begin
            Close;
            Clear;
            Add('update cuentas set descripcion=:descripcion where cuenta=:cuenta');
         end;
         with QInserta, Sql do begin
            Close;
            Clear;
            Add('insert into cuentas(cuenta,descripcion,tipocuenta)');
            Add(' values(:cuenta,:descripcion,"O")');
         end;
         with QSubcuentas do begin
            Close;
            Open;
            while not EOF do begin
               if length(Trim(FieldByName('cta_codigo').AsString)) <= 3 then   begin
                  // Ver si existe
                  QExiste.Close;
                  QExiste.ParamByName('cuenta').AsString := copy(Trim(FieldByName('Cta_codigo').AsString), 1, 3);
                  QExiste.Execquery;
                  if QExiste.FieldByName('Cuantos').AsInteger > 0 then   begin
                     // Si existe se actualiza
                     QActualiza.Close;
                     QActualiza.ParamByName('cuenta').AsString      :=
                        Copy(Trim(FieldByName('Cta_codigo').AsString), 1, 3);
                     QActualiza.ParamByName('Descripcion').AsString :=
                        Copy(Trim(FieldByName('Cta_Nombre').AsString), 1, 50);
                     QActualiza.Execquery;
                     QActualiza.Transaction.CommitRetaining;
                  end
                  else begin
                     // Si no existe se crea
                     QInserta.Close;
                     QInserta.ParamByName('cuenta').AsString      := copy(Trim(FieldByName('Cta_codigo').AsString), 1, 3);
                     QInserta.ParamByName('Descripcion').AsString :=
                        Copy(Trim(FieldByName('Cta_Nombre').AsString), 1, 50);
                     QInserta.Execquery;
                     QInserta.Transaction.CommitRetaining;
                  end;
               end;
               Next;
            end;
         end;
      end
      else begin
         DatabaseError('Debe seleccionar un tipo de importación.');
      end;
      WPrincipal.MensajePrincipal.MensajeInformativo('Proceso finalizado correctamente.', Application.Title);
   end;
end;

end.
