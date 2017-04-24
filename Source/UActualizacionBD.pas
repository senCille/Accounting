unit UActualizacionBD;

interface
uses SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms, Dialogs, Grids, DB,
     StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, IBX.IBDatabase, IBX.IBSQL, ComCtrls, IBX.IBServices;

type
  TWActualizacionBD = class(TForm)
    Datos: TGroupBox;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnAccept: TButton;
    Label1: TLabel;
    FileListBox: TListBox;
    DriveComboBox1: TComboBox;
    DirectoryListBox: TListBox;
    eFichero: TEdit;
    lVersion: TLabel;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure MostrarActualizacionActual;
  public
    cUbicacionEmpresa, cNombreServidor: String;
  end;

var WActualizacionBD: TWActualizacionBD;

implementation

uses Globales, UUTilEmpresas;

{$R *.DFM}

procedure TWActualizacionBD.MostrarActualizacionActual;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   Q.Database := WUtilEmpresas.BDMinima; {This is a problem, because WUtilEmpresa was not still created}
   Q.SQL.Add('SELECT * FROM UPDATE_DB');
   try
      Q.ExecQuery;
      lVersion.Caption := '(Última actualización: ' + Q.FieldByName('ULTIMAACTUALIZACION').AsString + ')';
   finally
      Q.Free;
   end;
end;

procedure TWActualizacionBD.BtnAcceptClick(Sender: TObject);
begin  {$Message Warn 'Falta de instalar el Componente TIBScript. Este código está comentado hasta entonces.'}
  (*if FileListBox.ItemIndex <> -1 then begin
    IBScript.Script.LoadFromFile(FileListBox.Items[FileListBox.ItemIndex]);
    IBScript.ExecuteScript;
    if IBScript.Transaction.Active then
      IBScript.Transaction.Commit;
    WPrincipal.MensajePrincipal.MensajeInformativo(
                      'Actualización "' + FileListBox.Items[FileListBox.ItemIndex] +
                      '" concluida con éxito.', Application.Title);
    Close;
  end;*)
end;

procedure TWActualizacionBD.FormShow(Sender: TObject);
begin
   MostrarActualizacionActual;
end;

procedure TWActualizacionBD.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

end.
