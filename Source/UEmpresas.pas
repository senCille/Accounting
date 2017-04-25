unit UEmpresas;

interface
uses SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms, Dialogs, Grids, DB,
     StdCtrls, Buttons, ExtCtrls, DBCtrls, DBClient, IBX.IBDatabase, IBX.IBCustomDataSet,
     Mask, IBX.IBSQL, frxClass, frxExportPDF, frxDBSet, FormHandler, DBGrids;

type
  TWEmpresas = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroCERRADA: TIBStringField;
    QFicheroUBICACION: TIBStringField;
    QFicheroNOMBRE: TIBStringField;
    QFicheroID_EMPRESA: TIntegerField;
    QFicheroULTIMA: TIBStringField;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    Panel2: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    Panel1: TPanel;
    BtnAppend: TButton;
    BtnDelete: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    BtnRefresh: TButton;
    BtnReport: TButton;
    BtnModify: TButton;
    BtnDuplicate: TButton;
    BtnCopy: TButton;
    BtnSelect: TButton;
    BtnTools: TButton;
    DBNavigator: TDBNavigator;
    Panel4: TPanel;
    FiltroBuscar: TGroupBox;
    Label4: TLabel;
    EditBNombre: TDBEdit;
    Datos: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    EditNombre: TDBEdit;
    EditUbicacion: TDBEdit;
    CheckBoxCLOSED: TDBCheckBox;
    DataGrid: TDBGrid;
    FastReport: TfrxReport;
    procedure BtnAppendClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var action: TCloseaction);
    procedure LimpiarFiltro(Sender: TObject);
    procedure VerTabla(Sender: TObject);
    procedure BtnReportClick(Sender: TObject);
    procedure BtnCopyClick(Sender: TObject);
    procedure QFicheroNewRecord(DataSet: TDataSet);
    procedure EditNombreExit(Sender: TObject);
    procedure BtnSelectClick(Sender: TObject);
    procedure BtnDuplicateClick(Sender: TObject);
    procedure BtnToolsClick(Sender: TObject);
    procedure BtnModifyClick(Sender: TObject);
    procedure DataGridDblClick(Sender: TObject);
    procedure DataGridTitleClick(Column: TColumn);
  private
    FormManager :TccFormHandler;
    FCampoOrden :string;
    procedure CrearFiltro;
    procedure PrepararQuery;
  public
    lDuplicado          :Boolean;
    cUbicacionDuplicado :string;
  end;

var WEmpresas: TWEmpresas;

implementation

uses DM, DMConta, DMControl, Tools, Globales, Processing, UUtilEmpresas;

{$R *.DFM}

procedure TWEmpresas.FormCreate(Sender: TObject);
begin
   lDuplicado := False;
   ActivateTransactions(Self, DMRef.BDContab);
   CrearFiltro;
   FCampoOrden := 'NOMBRE';
   PrepararQuery;

   FormManager := TccFormHandler.Create(Self);
   FormManager.AddComp(DBNavigator.Name   , fmBrowse);
   FormManager.AddComp(DataGrid.Name      , fmBrowse);
   FormManager.AddComp(BtnRefresh.Name    , fmBrowse);
   FormManager.AddComp(BtnAppend.Name     , fmBrowse);
   FormManager.AddComp(BtnModify.Name     , fmBrowse);
   FormManager.AddComp(BtnDelete.Name     , fmBrowse);
   FormManager.AddComp(BtnReport.Name     , fmBrowse);
   FormManager.AddComp(BtnDuplicate.Name  , fmBrowse);
   FormManager.AddComp(BtnCopy.Name       , fmBrowse);
   FormManager.AddComp(BtnTools.Name      , fmBrowse);
   FormManager.AddComp(BtnAccept.Name     , fmEdit  );
   FormManager.AddComp(BtnCancel.Name     , fmEdit  );
   FormManager.AddComp(BtnSelect.Name     , fmBrowse);

   FormManager.AddComp(EditBNombre.Name   , fmBrowse);
   FormManager.AddComp(EditNombre.Name    , fmEdit  );
   FormManager.AddComp(EditUbicacion.Name , fmEdit  );
   FormManager.AddComp(CheckBoxCLOSED.Name, fmEdit  );

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;      

procedure TWEmpresas.CrearFiltro;
begin
   TBFiltro.Active := False;
   TBFiltro.FieldDefs.Clear;
   TBFiltro.FieldDefs.Add('BNombre', ftstring, 25, False);
   TBFiltro.CreateDataSet;
   TBFiltro.Active := True;
   TBFiltro.Append;
   TBFiltro.FieldByName('BNombre').AsString := '';
end;

procedure TWEmpresas.PrepararQuery;
begin
   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM empresas');

   if TbFiltro.FieldByName('BNombre').AsString <> '' then   begin
      QFichero.SelectSQL.Add('where UPPER(NOMBRE) like UPPER(:NOMBRE)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;


   if TbFiltro.FieldByName('BNombre').AsString <> '' then   begin
      QFichero.Params.byname('nombre').AsString := Copy(TbFiltro.FieldByName('BNombre').AsString + '%', 1,
                                                        TbFiltro.FieldByName('BNombre').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;

   while not QFichero.EOF do begin
      if QFichero.FieldByName('ID_EMPRESA').AsInteger = Config.ActiveID_ENTERPRISE then begin
         Break;
      end
      else begin
         QFichero.Next;
      end;
   end;

   QFichero.EnableControls;
end;

procedure TWEmpresas.BtnAppendClick(Sender: TObject);
var cUbicacion :string;
    i          :Word;
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   cUbicacion := Trim(QFicheroUbicacion.AsString);
   for i := Length(cUbicacion) downto 0 do begin
      if cUbicacion[i] = '\' then begin
         Break;
      end;
   end;
   cUbicacion := Copy(cUbicacion, 1, i);
   EditNombre.SetFocus;
   QFichero.Insert;
   QficheroUbicacion.AsString := cUbicacion;
   FormManager.Mode := fmEdit;
end;

procedure TWEmpresas.BtnDeleteClick(Sender: TObject);
var
   cUbicacion, cNombreBD: String;
   nLong, i: Integer;
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then begin
      if MessageDlg('¿Desea borrar esta empresa?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         try
            cUbicacion := Trim(QFicheroUbicacion.AsString);
            nLong      := Length(cUbicacion);
            for i := nLong downto 0 do begin
               if cUbicacion[i] = '\' then begin
                  break;
               end;
            end;
            cNombreBd := Copy(cUbicacion, i + 1, nLong - i);
            QFichero.Delete;
            QFichero.Transaction.CommitRetaining;
            // Borrar la base de datos actual
            (*CopiaDB.Operation := fopDelete;
            CopiaDB.SourceFiles.Clear;
            CopiaDB.SourceFiles.Add(Config.AppFolder + 'datos\' + cNombreBD);
            CopiaDB.Execute;*)
         except
            DatabaseError('No se ha podido borrar la empresa seleccionada.' + #13 +
                          'Tiene asientos en el diario con ese concepto');
         end;
      end;
   end;
end;

procedure TWEmpresas.BtnReportClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Empresas.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+'Dato no disponible en este contexto'+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWEmpresas.BtnAcceptClick(Sender: TObject);
var ha_insertado :Boolean;
    cUbicacion   :string;
    cNombreBD    :string;
    cNombreBDDup :string;
    nLong        :Integer;
    i            :Integer;
    Q            :TIBSQL;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('Nombre').AsString = '' then  begin
      EditNombre.SetFocus;
      DatabaseError('No se puede dejar el nombre de la empresa en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;

   // Si está añadiendo verificar que no existe otra con el mismo nombre
   if ha_insertado then  begin
      Q := TIBSql.Create(nil);
      try
         Q.Database := DmControlRef.bdcontrol;
         Q.SQL.Add('SELECT COUNT(*) AS CUANTOS FROM EMPRESAS WHERE UPPER(NOMBRE)=UPPER(:NOMBRE)');
         Q.ParamByName('NOMBRE').AsString := QFicheroNombre.AsString;
         Q.ExecQuery;
         if (Q.FieldByName('CUANTOS').AsInteger > 0) then   begin
            EditNombre.SetFocus;
            DatabaseError('El nombre de esta empresa ya existe.' + #13 + 'Por favor, revise los datos de entrada.');
         end;
      finally
         Q.Free;
      end;
   end;

   QFichero.Post;
   QFichero.Transaction.CommitRetaining;
   if ha_insertado then  begin
      cUbicacion := QFicheroUbicacion.AsString;
      nLong      := Length(cUbicacion);
      for i := nLong downto 0 do begin
         if cUbicacion[i] = '\' then begin
            break;
         end;
      end;
      cNombreBd := Copy(cUbicacion, i + 1, nLong - i);

      if lDuplicado then   begin
         nLong := Length(cUbicacionDuplicado);
         for i := nLong downto 0 do begin
            if cUbicacionDuplicado[i] = '\' then begin
               break;
            end;
         end;
         cNombreBdDup := Copy(cUbicacionDuplicado, i + 1, nLong - i);
      end;

      // Copiar la actual sobre la de copia
      (*CopiaDB.Operation := fopCopy;
      CopiaDB.SourceFiles.Clear;
      //Destination := gvDirectorio+'datos';
      if lDuplicado then   begin
         CopiaDB.SourceFiles.Add(Config.AppFolder + 'datos\' + cNombreBDDup + '=' + Config.AppFolder + 'datos\' + cNombreBD);
      end
      //Add(cNombreBDDup+'='+cNombreBD)
      else begin
         CopiaDB.SourceFiles.Add(Config.AppFolder + 'datos\BD_Modelo.ib=' + Config.AppFolder + 'datos\' + cNombreBD);
      end;
      CopiaDB.Execute;*)
   end;

   FormManager.Mode := fmBrowse;
   DataGrid.SetFocus;
   if ha_insertado then  begin
      if not (TbFiltro.State in dsEditModes) then begin
         TbFiltro.Edit;
      end;
      TbFiltro.FieldByName('BNombre').AsString := QFicheroNombre.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;
   lDuplicado := False;
end;

procedure TWEmpresas.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);
   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;

   if MessageDlg('¿Quiere anular las modificaciones realizadas a este concepto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWEmpresas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = Chr(VK_RETURN)) then  begin
      if (EditBNombre.Focused) and (EditBNombre.Text <> '') then   begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWEmpresas.FormShow(Sender: TObject);
begin
   EditBNombre.SetFocus;
end;

procedure TWEmpresas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            BtnCancel.Click;
            Key := 0;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> EditBNombre) and not
            (QFichero.State in dsEditModes) then   begin
            Key := 0;
            BtnModify.Click;
         end;
      end;
      VK_F4: begin
         if not (QFichero.State in dsEditModes) then begin
            BtnAppend.Click;
         end;
      end;
      VK_F9: begin
         if QFichero.State in dsEditModes then begin
            BtnAccept.Click;
         end;
      end;
      VK_F12: begin
         if not (QFichero.State in dsEditModes) then begin
            VerTabla(Sender);
         end;
      end;
   end;
end;

procedure TWEmpresas.FormClose(Sender: TObject; var action: TCloseaction);
begin
   if QFichero.State = dsBrowse then  begin
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWEmpresas.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BNombre').AsString := '';
end;

procedure TWEmpresas.VerTabla(Sender: TObject);
begin
   TbFiltro.Edit;
   TbFiltro.FieldByName('BNombre').AsString := '';
   TbFiltro.Post;
   PrepararQuery;
end;

procedure TWEmpresas.BtnCopyClick(Sender: TObject);
var cNombreEmpresa :string;
    cUbicacion     :string;
    cServidor      :string;
    cNombreBd      :string;
    nLong          :Integer;
    i              :Integer;
    lInsertar      :Boolean;
    Q              :TIBSQL;
begin
   if MessageDlg('¿Quiere hacer una copia de la empresa ' + Trim(QficheroNombre.AsString) + ' ?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      cNombreEmpresa := Trim(QFicheroNombre.AsString) + ' copia ';
      Q := TIBSql.Create(nil);
      try
         Q.Database := DmControlRef.bdcontrol;
         Q.SQL.Add('SELECT COUNT(*) AS CUANTOS FROM EMPRESAS WHERE UPPER(NOMBRE)=UPPER(:NOMBRE)');
         Q.ParamByName('NOMBRE').AsString := cNombreEmpresa;
         Q.ExecQuery;
         lInsertar := not (Q.FieldByName('CUANTOS').AsInteger > 0);
      finally
         Q.Free;
      end;

      cUbicacion := Trim(QFichero.FieldByName('ubicacion').AsString);
      cServidor  := Trim(QFichero.FieldByName('servidor').AsString);
      nLong      := Length(cUbicacion);
      if lInsertar then   begin
         QFichero.Insert;
         QFichero.Edit;
         QFichero.FieldByName('nombre').AsString    := cNombreEmpresa;
         QFichero.FieldByName('ubicacion').AsString := Copy(cUbicacion, 1, nLong - 4) + 'copia.ib';
         QFichero.FieldByName('servidor').AsString  := cServidor;
         QFichero.post;
         QFichero.Transaction.CommitRetaining;
      end;

      for i := nLong downto 0 do begin
         if cUbicacion[i] = '\' then begin
            break;
         end;
      end;
      cNombreBd := Copy(cUbicacion, i + 1, nLong - i);
      nLong     := Length(cNombreBD);
      // Copiar la actual sobre la de copia
      (*CopiaDB.Operation := fopCopy;
      CopiaDB.SourceFiles.Clear;
      CopiaDB.Destination := Config.AppFolder + 'datos';
      //Add(cNombreBD+'='+Copy(cNombreBD,1,nLong-4)+'copia.gdb');
      CopiaDB.SourceFiles.Add(Config.AppFolder + 'datos\' + cNombreBD + '=' + Config.AppFolder + 'datos\' + Copy(cNombreBD, 1, nLong - 4) + 'copia.ib');
      CopiaDB.Execute;*)
   end;
end;

procedure TWEmpresas.QFicheroNewRecord(DataSet: TDataSet);
begin
   QFicheroCerrada.AsString := 'N';
end;

procedure TWEmpresas.EditNombreExit(Sender: TObject);
var
   cUbicacion: String;
   i:          Word;
begin
   if (QFichero.State = dsInsert) then begin
      cUbicacion := Trim(QficheroUbicacion.AsString);
      for i := length(cUbicacion) downto 0 do begin
         if cUbicacion[i] = '\' then begin
            break;
         end;
      end;
      cUbicacion := Copy(cUbicacion, 1, i);
      QFicheroUbicacion.AsString := cUbicacion + Trim(QFicheroNombre.AsString) + '.ib';
   end;
end;

procedure TWEmpresas.BtnSelectClick(Sender: TObject);
begin
   DMControlRef.AbrirEmpresa(QFicheroID_EMPRESA.AsInteger);
   Close;
end;

procedure TWEmpresas.BtnDuplicateClick(Sender: TObject);
var cUbicacion :string;
    cNombre    :string;
    i          :Word;
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   if MessageDlg('¿Quiere hacer un duplicado de la empresa ' + Trim(QficheroNombre.AsString) + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      cNombre             := Trim(QFicheroNombre.AsString   );
      cUbicacionDuplicado := Trim(QFicheroUbicacion.AsString);
      lDuplicado          := True;
      cUbicacion          := Trim(QficheroUbicacion.AsString);
      cNombre             := Trim(QficheroNombre.AsString);
      for i := Length(cUbicacion) downto 0 do begin
         if cUbicacion[i] = '\' then begin
            break;
         end;
      end;
      cUbicacion        := Copy(cUbicacion, 1, i);
      EditNombre.SetFocus;
      QFichero.Insert;
      QficheroNombre.AsString    := cNombre + ' duplicado';
      QficheroUbicacion.AsString := cUbicacion + Trim(QficheroNombre.AsString) + '.ib';
      FormManager.Mode := fmEdit;
   end;
end;

procedure TWEmpresas.BtnToolsClick(Sender: TObject);
begin
   WUtilEmpresas := TWUtilEmpresas.Create(nil);
   try
      WUtilEmpresas.lbNombreEmpresa.Caption := 'Base de Datos actual: ' + Trim(QFicheroNombre.AsString);
      WUtilEmpresas.cUbicacionEmpresa       := Trim(QFicheroUbicacion.AsString);
      WUtilEmpresas.ShowModal;
   finally
      WUtilEmpresas.Free;
   end;
end;

procedure TWEmpresas.BtnModifyClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), MODIFICAR) then begin
      Exit;
   end;

   if not QFichero.IsEmpty then  begin
      try QFichero.Edit;
      except MessageDlg('No se puede editar el registro seleccionado.', mtInformation, [mbOK], 0);
      end;
      FormManager.Mode := fmEdit;
      EditNombre.SetFocus;
   end;
end;

procedure TWEmpresas.DataGridDblClick(Sender: TObject);
begin
   BtnModify.Click;
end;

procedure TWEmpresas.DataGridTitleClick(Column: TColumn);
begin
   if (UpperCase(Column.FieldName) = 'NOMBRE') then  begin
      FCampoOrden := UpperCase(Column.FieldName);
      PrepararQuery;
   end;
   DataGrid.SetFocus;
end;

end.
