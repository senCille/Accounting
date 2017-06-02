unit DatabaseUpdate;

interface
uses SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms, Dialogs, Grids, DB,
     StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, IBX.IBDatabase, IBX.IBSQL, ComCtrls, IBX.IBServices;

type
  TViewDatabaseUpdate = class(TForm)
    Datos: TGroupBox;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnAccept: TButton;
    Label1: TLabel;
    FileListBox: TListBox;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure MostrarActualizacionActual;
    procedure ShowAllSQLFiles;
  public
    cUbicacionEmpresa, cNombreServidor: String;
  end;

var ViewDatabaseUpdate: TViewDatabaseUpdate;

implementation

uses System.Types, System.IOUtils,
     IBX.IBScript,
     DM,
     Globales;

{$R *.DFM}

procedure TViewDatabaseUpdate.MostrarActualizacionActual;
//var Q :TIBSQL;
begin
   //Q := TIBSQL.Create(nil);
   //Q.Database := WUtilEmpresas.BDMinima; {This is a problem, because WUtilEmpresa was not still created}
   //Q.SQL.Add('SELECT * FROM UPDATE_DB');
   //try
   //   Q.ExecQuery;
   //   lVersion.Caption := '(Última actualización: ' + Q.FieldByName('ULTIMAACTUALIZACION').AsString + ')';
   //finally
   //   Q.Free;
   //end;
end;

procedure TViewDatabaseUpdate.ShowAllSQLFiles;
var LList         :TStringDynArray;
    i             :Integer;
    LSearchOption :TSearchOption;
begin
   { Only current folder, not subfolders }
   LSearchOption := TSearchOption.soTopDirectoryOnly;

   try
     { For files use GetFiles method }
     LList := TDirectory.GetFiles(Config.AppFolder, '*.SQL', LSearchOption);
   except
     { Catch the possible exceptions }
     MessageDlg('Incorrect path or search mask', mtError, [mbOK], 0);
     Exit;
   end;

   { Clear previous results }
   FileListBox.Clear;

   for i := 0 to Length(LList) - 1 do begin
      FileListBox.Items.Add(ExtractFileName(LList[i]));
   end;
end;

procedure TViewDatabaseUpdate.BtnAcceptClick(Sender: TObject);
var IBScript :TIBScript;
begin
   if FileListBox.ItemIndex <> -1 then begin
      IBScript := TIBScript.Create(nil);
      try
        IBScript.Database := DMRef.BDContab;
        IBScript.Script.LoadFromFile(Config.AppFolder+'\'+FileListBox.Items[FileListBox.ItemIndex]);
        try
           IBScript.ExecuteScript;
           ShowMessage('Script SQL ejecutado correctamente');
           if IBScript.Transaction.Active then begin
              IBScript.Transaction.Commit;
           end;
        except
           ShowMessage('El Script SQL se ha ejectuado con ERRORES!!!!!');
        end;
      finally
         IBScript.Free;
      end;
   end;
end;

procedure TViewDatabaseUpdate.FormShow(Sender: TObject);
begin
   //MostrarActualizacionActual;
   ShowAllSQLFiles;
end;

procedure TViewDatabaseUpdate.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

end.
