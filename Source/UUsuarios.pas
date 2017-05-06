unit UUsuarios;

interface

uses System.UITypes,
     WinAPI.Windows, WinAPI.Messages,
     VCL.Buttons, VCL.Forms,   DBClient, IBX.IBDatabase, DB, SysUtils, IBX.IBCustomDataSet,
     Grids, StdCtrls, Controls, ExtCtrls, Graphics, Classes, DBCtrls, Mask, DBGrids, ComCtrls,
     FormHandler;

type
  TWUsuarios = class(TForm)
    SUsuarios: TDataSource;
    QUsuarios: TIBDataSet;
    TransUsuarios: TIBTransaction;
    Shape1: TShape;
    PanelSombra: TPanel;
    QUsuariosID_USUARIO: TIntegerField;
    QUsuariosID_EMPRESA: TIntegerField;
    QUsuariosCLAVE: TIBStringField;
    QUsuariosNOMBRE: TIBStringField;
    QModulos: TIBDataSet;
    SModulos: TDataSource;
    QMantenimientos: TIBDataSet;
    SMantenimientos: TDataSource;
    QPermisos: TIBDataSet;
    TransPermisos: TIBTransaction;
    SPermisos: TDataSource;
    QModulosIDMODULO: TIntegerField;
    QModulosDESCRIPCION: TIBStringField;
    QMantenimientosIDMODULO: TIntegerField;
    QMantenimientosIDMANTENIMIENTO: TIntegerField;
    QMantenimientosDESCRIPCION: TIBStringField;
    QMantenimientosWINDOWNAME: TIBStringField;
    QMantenimientosPERMISOSESCRITURA: TIBStringField;
    QMantenimientosPERMISOIMPRESION: TIBStringField;
    QPermisosIDUSUARIO: TIntegerField;
    QPermisosIDMANTENIMIENTO: TIntegerField;
    QPermisosIDMODULO: TIntegerField;
    QPermisosANIADIR: TIBStringField;
    QPermisosMODIFICAR: TIBStringField;
    QPermisosBORRAR: TIBStringField;
    QPermisosIMPRESION: TIBStringField;
    Panel1: TPanel;
    BtnAccept: TButton;
    BtnCancel: TButton;
    BtnNew: TButton;
    BtnDesmarcar: TButton;
    BtnMarcar: TButton;
    BtnDelete: TButton;
    BtnModify: TButton;
    Panel2: TPanel;
    Label8: TLabel;
    DataGrid: TDBGrid;
    PageControl: TPageControl;
    TabDatos: TTabSheet;
    Label27: TLabel;
    Label9: TLabel;
    Label25: TLabel;
    ComboEmpresas: TDBLookupComboBox;
    EditClave: TDBEdit;
    EditUsuario: TDBEdit;
    TabPermisos: TTabSheet;
    procedure BtnNavAniadirClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure PermisosCalcNodeAttributes(TreeView: TfcCustomTreeView; Node: TfcTreeNode; State: TfcItemStates);
    //procedure PermisosToggleCheckbox(TreeView: TfcCustomTreeView; Node: TfcTreeNode);
    procedure PaginasPageChanged(Sender: TObject; Index: Integer);
    procedure QUsuariosAfterScroll(DataSet: TDataSet);
    procedure BtnMarcarClick(Sender: TObject);
    procedure BtnDesmarcarClick(Sender: TObject);
    procedure BtnModifyClick(Sender: TObject);
    procedure DataGridTitleClick(Column: TColumn);
  private
    FormManager :TccFormHandler;
    FCampoOrden :string;
    procedure GuardarPermisos;
    procedure MostrarPermisos;
    procedure PrepararQuery;
    procedure RefrescarBD;
    function Acceso_usuarios(codigo: String): Boolean;
  public
  protected
  end;

var WUsuarios: TWUsuarios;

const TabDatos    = 0;
      TabPermisos = 1;

implementation

uses Dialogs, Tools, Globales, DMControl, DM;

{$R *.DFM}

procedure TWUsuarios.FormCreate(Sender: TObject);
begin
   // activar transacciones
   (*for i := 0 to (ComponentCount - 1) do begin
      if (Components[i] is TibTransaction) then begin
         TibTransaction(Components[i]).Active := False;
         TibTransaction(Components[i]).Params.Clear;
         TibTransaction(Components[i]).Params.Add('Read_committed');
         TibTransaction(Components[i]).Params.Add('Rec_version');
         TibTransaction(Components[i]).Params.Add('Write');
         TibTransaction(Components[i]).Active := True;
      end;
   end;*)

   Self.Caption := '';
   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(BtnNew.Name                , fmBrowse);
   FormManager.AddComp(EditUSUARIO.Name           , fmEdit  );
   FormManager.AddComp(EditCLAVE.Name             , fmEdit  );
   FormManager.AddComp(ComboEmpresas.Name         , fmEdit  );
   FormManager.AddComp(BtnAccept.Name             , fmEdit  );
   FormManager.AddComp(BtnCancel.Name             , fmEdit  );
   FormManager.AddComp(BtnDelete.Name             , fmBrowse);
   FormManager.AddComp(BtnModify.Name             , fmBrowse);
   FormManager.AddComp(BtnMarcar.Name             , fmEdit  );
   FormManager.AddComp(BtnDesmarcar.Name          , fmEdit  );
   FormManager.AddComp(DataGrid.Name              , fmBrowse);

   ActivateTransactions(Self, DMRef.BDContab);

   FCampoOrden := 'NOMBRE';
   PrepararQuery;

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;

   QModulos.DisableControls;
   QModulos.Close;
   QModulos.Transaction.Active := True;
   QModulos.SelectSQL.Clear;
   QModulos.SelectSQL.Add('SELECT * FROM MODULOS ORDER BY IDMODULO');
   QModulos.Prepare;
   QModulos.EnableControls;
   QModulos.Open;

   QMantenimientos.DisableControls;
   QMantenimientos.Close;
   QMantenimientos.SelectSQL.Clear;
   QMantenimientos.Transaction.active := True;
   QMantenimientos.SelectSQL.Add('SELECT * FROM MANTENIMIENTOS WHERE IDMODULO = :IDMODULO');
   QMantenimientos.SelectSQL.Add('ORDER BY IDMODULO, IDMANTENIMIENTO');
   QMantenimientos.Prepare;
   QMantenimientos.EnableControls;
   QMantenimientos.Open;

   QPermisos.DisableControls;
   QPermisos.Close;
   QPermisos.SelectSQL.Clear;
   QPermisos.Transaction.active := True;
   QPermisos.SelectSQL.Add('SELECT * FROM PERMISOS_USUARIOS WHERE IDUSUARIO = :ID_USUARIO');
   QPermisos.SelectSQL.Add('ORDER BY IDMODULO, IDMANTENIMIENTO');
   QPermisos.Prepare;
   QPermisos.EnableControls;
   QPermisos.Open;
end;

function TWUsuarios.Acceso_Usuarios(codigo: String): Boolean;
begin
   Acceso_Usuarios := True;
end;

procedure TWUsuarios.GuardarPermisos;
var i :Integer;
begin
   QPermisos.Open;
   QPermisos.First;
   while not QPermisos.EOF do begin
      QPermisos.Delete;
   end;

   QModulos.Open;
   QModulos.First;
   I := 0;
   while not QModulos.EOF do begin
      QMantenimientos.Open;
      QMantenimientos.First;
      while not QMantenimientos.EOF do begin
         (*if (Permisos.Items[I].Level = 1) then begin
            if (Permisos.Items[I].Checked) then begin
               QPermisos.Insert;
               QPermisosIDUSUARIO.AsInteger   := QUsuariosID_USUARIO.AsInteger;
               QPermisosIDMODULO.Value        := QMantenimientosIDMODULO.Value;
               QPermisosIDMANTENIMIENTO.Value := QMantenimientosIDMANTENIMIENTO.Value;
               QPermisosANIADIR.AsString      := 'N';
               QPermisosMODIFICAR.AsString    := 'N';
               QPermisosBORRAR.AsString       := 'N';
               QPermisosIMPRESION.AsString    := 'N';

               if Permisos.Items[I].HasChildren then begin
                  if Permisos.Items[I].Count >= 3 then begin
                     // Añadir
                     if Permisos.Items[I + 1].Checked then begin
                        QPermisosANIADIR.AsString := 'S';
                     end;
                     // Modificar
                     if Permisos.Items[I + 2].Checked then begin
                        QPermisosMODIFICAR.AsString := 'S';
                     end;
                     // Borrar
                     if Permisos.Items[I + 3].Checked then begin
                        QPermisosBORRAR.AsString := 'S';
                     end;
                     // Impresión
                     if Permisos.Items[I].Count > 3 then begin
                        if Permisos.Items[I + 4].Checked then begin
                           QPermisosIMPRESION.AsString := 'S';
                        end;
                     end;
                  end
                  else begin
                     if Permisos.Items[I + 1].Checked then begin
                        QPermisosIMPRESION.AsString := 'S';
                     end;
                  end;
               end;

               QPermisos.Post;
               QPermisos.Transaction.CommitRetaining;
            end;

            if Permisos.Items[I].HasChildren then begin
               I := I + Permisos.Items[I].Count;
            end;

            QMantenimientos.Next;
         end;*)

         Inc(I);
      end;
      QMantenimientos.Close;
      QModulos.Next;
      Inc(I);
   end;
   QPermisos.Close;
end;

procedure TWUsuarios.MostrarPermisos;
var I, J:         Integer;
    TienePermiso: Boolean;
begin
   QPermisos.Open;
   QModulos.Open;
   QModulos.First;

   (*Permisos.Items.GetFirstNode;

   while Permisos.Items.Count > 0 do begin
      Permisos.Items.GetFirstNode.Delete;
   end;

   while not QModulos.EOF do begin
      Permisos.Items.Add(nil, QModulosDESCRIPCION.AsString);
      I := Permisos.Items.Count - 1;
      QMantenimientos.Open;
      QMantenimientos.First;
      while not QMantenimientos.EOF do begin
         TienePermiso := (not QPermisos.IsEmpty) and (QPermisosIDMODULO.Value =
            QMantenimientosIDMODULO.Value) and (QPermisosIDMANTENIMIENTO.Value =
            QMantenimientosIDMANTENIMIENTO.Value);
         Permisos.Items.AddChild(Permisos.Items[I], QMantenimientosDESCRIPCION.AsString).Checked :=
            TienePermiso;
         J := Permisos.Items.Count - 1;
         if QMantenimientosPERMISOSESCRITURA.AsString = 'S' then begin
            Permisos.Items.AddChild(Permisos.Items[J], 'Añadir').CheckboxType := tvctCheckBox;
            Permisos.Items.AddChild(Permisos.Items[J], 'Añadir').Checked      := TienePermiso and (QPermisosANIADIR.AsString = 'S');
            Permisos.Items.AddChild(Permisos.Items[J], 'Modificar').CheckboxType := tvctCheckBox;
            Permisos.Items.AddChild(Permisos.Items[J], 'Modificar').Checked      := TienePermiso and (QPermisosMODIFICAR.AsString = 'S');
            Permisos.Items.AddChild(Permisos.Items[J], 'Borrar').CheckboxType := tvctCheckBox;
            Permisos.Items.AddChild(Permisos.Items[J], 'Borrar').Checked      := TienePermiso and (QPermisosBORRAR.AsString = 'S');
         end;
         if QMantenimientosPERMISOIMPRESION.AsString = 'S' then begin
            Permisos.Items.AddChild(Permisos.Items[J], 'Impresión').CheckboxType := tvctCheckBox;
            Permisos.Items.AddChild(Permisos.Items[J], 'Impresión').Checked      := TienePermiso and (QPermisosIMPRESION.AsString = 'S');
         end;

         if TienePermiso then begin
            QPermisos.Next;
         end;
         QMantenimientos.Next;
      end;
      QMantenimientos.Close;
      QModulos.Next;
   end;*)
   QPermisos.Close;
end;

procedure TWUsuarios.PrepararQuery;
begin
   QUsuarios.DisableControls;
   QUsuarios.Close;
   QUsuarios.Transaction.Active := False;
   QUsuarios.Transaction.Params.Clear;
   QUsuarios.Transaction.Params.Add('Read_committed');
   QUsuarios.Transaction.Params.Add('Rec_Version');
   QUsuarios.Transaction.Active := True;

   QUsuarios.SelectSQL.Clear;
   QUsuarios.SelectSQL.Add('SELECT * FROM USUARIOS');
   QUsuarios.SelectSQL.Add('ORDER BY NOMBRE');
   QUsuarios.Prepare;
   QUsuarios.EnableControls;
   QUsuarios.Open;
end;

procedure TWUsuarios.RefrescarBD;
begin
   DMControlRef.QUsuarios.Close;
   DMControlRef.QUsuarios.Open;
end;

procedure TWUsuarios.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         if QUsuarios.State in dsEditModes then begin
            BtnCancel.Click;
         end;
      end;
      VK_F9: begin
         if QUsuarios.State in dsEditModes then begin
            BtnAccept.Click;
         end;
      end;
   end;
end;

procedure TWUsuarios.BtnNavAniadirClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   EditUsuario.SetFocus;
   try
      QUsuarios.Append;
   except
      DatabaseError('Error al intentar añadir un nuevo Usuario.');
   end;
   FormManager.Mode := fmEdit;
   PageControl.ActivePage := TabDatos;
   //PageControl.OnPageChanged(nil, TabDatos);
   EditUsuario.SetFocus;
end;

procedure TWUsuarios.BtnAcceptClick(Sender: TObject);
var
   Msg: String;
begin
   Perform(wm_NextDlgCtl, 0, 0);
   Msg := '';
   if QUsuariosNombre.Value = '' then begin
      Msg := Msg + 'No se puede dejar el nombre de usuario en blanco.' + #13;
   end;
   
   if Msg <> '' then begin
      MessageDlg(Msg, mtInformation, [mbOK], 0);
      EditUsuario.SetFocus;
      Exit;
   end;


   if QUsuarios.State = dsInsert then begin
      QUsuariosID_USUARIO.AsInteger := DmControlRef.ObtenerNumeroUsuario;
   end;

   QUsuarios.Post;
   QUsuarios.Transaction.CommitRetaining;
   GuardarPermisos;

   FormManager.Mode := fmBrowse;

   RefrescarBD;
   FormManager.Mode := fmBrowse;
   PageControl.ActivePage := TabDatos;
end;

procedure TWUsuarios.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QUsuarios.IsEmpty then begin
      Exit;
   end;

   if Acceso_Usuarios(QUsuariosNombre.Value) then begin
      if MessageDlg('¿Quiere borrar este usuario?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         try QUsuarios.Delete;
             QUsuarios.Transaction.CommitRetaining;
             RefrescarBD;
             EditUsuario.SetFocus;
             EditUsuario.Repaint;
         except DatabaseError('Error al borrar el Usuario.' + #13 + 'Puede tener datos asociados');
         end;
      end;
   end;

   EditUsuario.Visible := False;
   EditUsuario.Visible := True;
end;

procedure TWUsuarios.BtnCancelClick(Sender: TObject);
var Cancelar: Boolean;
begin
   Cancelar := True;
   if MessageDlg('¿Quiere cancelar los cambios realizados?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
      Cancelar := False;
      EditUsuario.Repaint;
   end;

   if cancelar then  begin
      try
         QUsuarios.Cancel;
         MostrarPermisos;
      except
         DatabaseError('Error al cancelar la operación.');
         EditUsuario.Repaint;
      end;
      FormManager.Mode := fmBrowse;
      PageControl.ActivePage := TabDatos;

      EditUsuario.SetFocus;
      //FiltroBUsuario.SetFocus;
   end;
end;

procedure TWUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QUsuarios.State = dsBrowse then begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

(*procedure TWUsuarios.PermisosCalcNodeAttributes(TreeView: TfcCustomTreeView; Node: TfcTreeNode; State: TfcItemStates);
begin
   Permisos.MultiSelectAttributes.Enabled := (QUsuarios.State in dsEditModes);

   if not (QUsuarios.State in dsEditModes) then begin
      if Node.Checked and not Node.Selected then begin
         Permisos.Canvas.Font.Color := clNavy;
      end;
   end;
end;*)

(*procedure TWUsuarios.PermisosToggleCheckbox(TreeView: TfcCustomTreeView; Node: TfcTreeNode);
var i :Integer;
begin
   if QUsuarios.State in dsEditModes then  begin
      if Node.HasChildren then begin
         for i := 0 to Node.Count - 1 do begin
            Node.Item[i].Checked := Node.Checked;
         end;
      end;
   end;
end;*)

procedure TWUsuarios.PaginasPageChanged(Sender: TObject; Index: Integer);
begin
   {This is still pendant of reprogrmation}
   BtnMarcar.Visible    := (Index = 1) and (QUsuarios.State in dsEditModes);
   BtnDesmarcar.Visible := BtnMarcar.Visible;
end;

procedure TWUsuarios.QUsuariosAfterScroll(DataSet: TDataSet);
begin
   MostrarPermisos;
end;

procedure TWUsuarios.BtnMarcarClick(Sender: TObject);
//var i :Integer;
begin
   (*for i := 0 to Permisos.Items.Count - 1 do begin
      Permisos.Items[i].Checked := True;
   end;*)
end;

procedure TWUsuarios.BtnDesmarcarClick(Sender: TObject);
//var i :Integer;
begin
   (*for i := 0 to Permisos.Items.Count - 1 do begin
      Permisos.Items[i].Checked := False;
   end;*)
end;

procedure TWUsuarios.BtnModifyClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QUsuarios.IsEmpty then  begin
      try QUsuarios.Edit;
          MostrarPermisos;
      except MessageDlg('No se puede editar el registro seleccionado.' + #13 + 'Puede estar en uso por otra persona.',
                         mtInformation, [mbOK], 0);
         EditUsuario.Repaint;
      end;
      FormManager.Mode := fmEdit;
      PageControl.ActivePage := TabDatos;
      //Paginas.OnPageChanged(nil, TabDatos);
      EditUsuario.SetFocus;
   end;
end;

procedure TWUsuarios.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'USUARIO') or (UpperCase(Column.FieldName) = 'NOMBRE') then  begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

end.
