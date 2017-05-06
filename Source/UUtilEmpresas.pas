unit UUtilEmpresas;

interface
uses SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms, Dialogs, Grids, DB,
     StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, IBX.IBDatabase, IBX.IBSQL, ComCtrls, IBX.IBServices;

type
  TWUtilEmpresas = class(TForm)
    Datos: TGroupBox;
    Shape1: TShape;
    lTitulo: TLabel;
    BtnAccept: TButton;
    lbNombreEmpresa: TLabel;
    IBBackup: TIBBackupService;
    IBRestore: TIBRestoreService;
    Memo1: TMemo;
    RGOperacion: TRadioGroup;
    Label1: TLabel;
    BDMinima: TIBDatabase;
    Transaccion: TIBTransaction;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  public
    cUbicacionEmpresa, cNombreServidor: String;
  end;

var WUtilEmpresas: TWUtilEmpresas;

implementation

uses System.UITypes,
     DM, Globales, UActualizacionBD, Processing;

{$R *.DFM}

procedure TWUtilEmpresas.BtnAcceptClick(Sender: TObject);
var InProgress       :TProcessingView;
    cUbicacionBackup :string;
    i                :Word;
    Q                :TIBSQL;
begin
   if (RgOperacion.ItemIndex <> 3)  or (RgOperacion.ItemIndex <> 4) then Exit;

   if MessageDlg('¿Esta seguro de dejar la empresa con Plan Contable mínimo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;

   InProgress := InProgressView('');
   try
      case RgOperacion.ItemIndex of
         0: InProgress.Text := 'Exportando Base Datos ...';
         1: InProgress.Text := 'Importando Base Datos ...';
         2: InProgress.Text := 'Reorganización Base Datos ...';
         3: InProgress.Text := 'Plan contable mínimo ...';
         4: InProgress.Text := 'Actualización Base Datos ...';
      end;

      if RgOperacion.ItemIndex = 0 then begin
         if Trim(cNombreServidor) = '' then begin
            IBBackup.ServerName := 'local';
            IBBackup.Protocol   := Local;
         end
         else begin
            IBBackup.ServerName := cNombreServidor;
            IBBackup.Protocol   := TCP;
         end;

         IBBackup.LoginPrompt := False;
         IBBackup.Params.Add('user_name=sysdba');
         IBBackup.Params.Add('password=masterkey');
         IBBackup.Active := True;
         try
            IBBackup.Verbose      := True;
            IBBackup.Options      := [IgnoreLimbo];
            IBBackup.DatabaseName := cUbicacionEmpresa;
            for i := Length(IBBackup.Databasename) downto 0 do begin
               if IBBackup.DatabaseName[i] = '.' then begin
                  Break;
               end;
            end;
            cUbicacionBackup := Copy(IBBackup.Databasename, 1, i) + 'gbk';
            IBBackup.BackupFile.Clear;
            IBBackup.BackupFile.add(cUbicacionBackup);
            IBBackup.ServiceStart;
            while not IBBackup.EOF do begin
               Memo1.Lines.Add(IBBackup.GetNextLine);
            end;
         finally
            IBBackup.Active := False;
            MessageDlg('Exportacion finalizada correctamente', mtInformation, [mbOK], 0);
         end;
      end
      else
      if RgOperacion.ItemIndex = 1 then begin
         if Trim(cNombreServidor) = '' then begin
            IBRestore.ServerName := 'local';
            IBRestore.Protocol   := local;
         end
         else begin
            IBRestore.ServerName := cNombreServidor;
            IBRestore.Protocol   := TCP;
         end;
         IBRestore.LoginPrompt := False;
         IBRestore.Params.Add('user_name=sysdba');
         IBRestore.Params.Add('password=masterkey');
         IBRestore.Active := True;
         try
            IBRestore.Verbose     := True;
            IBRestore.Options     := [Replace];
            IBRestore.PageBuffers := 3000;
            IBRestore.PageSize    := 8192;
            IBRestore.DatabaseName.Clear;
            IBRestore.DatabaseName.add(cUbicacionEmpresa);
            for i := Length(cUbicacionEmpresa) downto 0 do begin
               if cUbicacionEmpresa[i] = '.' then begin
                  Break;
               end;
            end;
            cUbicacionBackup := Copy(cUbicacionEmpresa, 1, i) + 'gbk';
            IBRestore.BackupFile.Clear;
            IBRestore.BackupFile.Add(cUbicacionBackup);
            IBRestore.ServiceStart;
            while not IBRestore.EOF do begin
               Memo1.Lines.Add(IBRestore.GetNextLine);
            end;
         finally
            IBRestore.Active := False;
            MessageDlg('Importacion finalizada correctamente', mtInformation, [mbOK], 0);
         end;
      end
      else
      if RgOperacion.ItemIndex = 2 then begin
         if Trim(cNombreServidor) = '' then begin
            IBBackup.ServerName := 'local';
            IBBackup.Protocol   := local;
         end
         else begin
            IBBackup.ServerName := cNombreServidor;
            IBBackup.Protocol   := TCP;
         end;
         IBBackup.LoginPrompt := False;
         IBBackup.Params.Add('user_name=sysdba');
         IBBackup.Params.Add('password=masterkey');
         IBBackup.Active := True;
         try
            IBBackup.Verbose      := True;
            IBBackup.Options      := [IgnoreLimbo];
            IBBackup.DatabaseName := cUbicacionEmpresa;
            for i := Length(IBBackup.Databasename) downto 0 do begin
               if IBBackup.DatabaseName[i] = '.' then begin
                  Break;
               end;
            end;
            cUbicacionBackup := Copy(IBBackup.Databasename, 1, i) + 'gbk';
            IBBackup.BackupFile.Clear;
            IBBackup.BackupFile.add(cUbicacionBackup);
            IBBackup.ServiceStart;
            while not IBBackup.EOF do begin
               Memo1.Lines.Add(IBBackup.GetNextLine);
            end;
         finally
            IBBackup.Active := False;
         end;

         if Trim(cNombreServidor) = '' then begin
            IBRestore.ServerName := 'local';
            IBRestore.Protocol   := local;
         end
         else begin
            IBRestore.ServerName := cNombreServidor;
            IBRestore.Protocol   := TCP;
         end;

         IBRestore.LoginPrompt := False;
         IBRestore.Params.Add('user_name=sysdba');
         IBRestore.Params.Add('password=masterkey');
         IBRestore.Active := True;
         try
            IBRestore.Verbose     := True;
            IBRestore.Options     := [Replace];
            IBRestore.PageBuffers := 3000;
            IBRestore.PageSize    := 8192;
            IBRestore.DatabaseName.Clear;
            IBRestore.DatabaseName.add(cUbicacionEmpresa);
            for i := Length(cUbicacionEmpresa) downto 0 do begin
               if cUbicacionEmpresa[i] = '.' then begin
                  Break;
               end;
            end;
            cUbicacionBackup := Copy(cUbicacionEmpresa, 1, i) + 'gbk';
            IBRestore.BackupFile.Clear;
            IBRestore.BackupFile.add(cUbicacionBackup);
            IBRestore.ServiceStart;
            while not IBRestore.EOF do begin
               Memo1.Lines.Add(IBRestore.GetNextLine);
            end;
         finally
            IBRestore.Active := False;
            MessageDlg('Reorganización finalizada correctamente', mtInformation, [mbOK], 0);
         end;
      end
      else
      if RgOperacion.ItemIndex = 3 then begin
         // Abrir Database y transaction
         Transaccion.Active := False;
         try
            BDMinima.Connected := False;
            BDMinima.Params.Clear;
            BDMinima.Params.Add('user_name=SYSDBA');
            BDMinima.Params.Add('password=masterkey');
            if Trim(cNombreServidor) = '' then begin
               BDMinima.DatabaseName := cUbicacionEmpresa;
            end
            else begin
               BDMinima.DatabaseName := Trim(cNombreServidor) + ':' + Trim(cUbicacionEmpresa);
            end;
            BDMinima.Connected := True;
         finally
            Transaccion.Active := True;
         end;

         Q := TIBSQL.Create(nil);
         try
            Q.Database := BdMinima;
            Q.SQL.Add('Execute procedure Inicializar_BD_Minima');
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;
         finally
            Q.Free;
         end;
         Transaccion.Active := False;
         BdMinima.Connected := False;
         MessageDlg('Plan contable mínimo finalizado correctamente', mtInformation, [mbOK], 0);
      end else
      if RgOperacion.ItemIndex = 4 { Actualización BD} then begin
         Transaccion.Active := False;
         try
            BDMinima.Connected := False;
            BDMinima.Params.Clear;
            BDMinima.Params.Add('user_name=SYSDBA');
            BDMinima.Params.Add('password=masterkey');
            if Trim(cNombreServidor) = '' then begin
               BDMinima.DatabaseName := cUbicacionEmpresa;
            end
            else begin
               BDMinima.DatabaseName := Trim(cNombreServidor) + ':' + Trim(cUbicacionEmpresa);
            end;
            BDMinima.Connected := True;
         finally
            Transaccion.Active := True;
         end;
         
         WActualizacionBD := TWActualizacionBD.Create(nil);
         try
            WActualizacionBD.ShowModal;
         finally
            FreeAndNil(WActualizacionBD);
         end;

         Transaccion.active := False;
         BdMinima.connected := False;
      end;
   finally
      InProgress.Free;
   end;
end;

procedure TWUtilEmpresas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

end.
