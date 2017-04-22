unit UTitulos;

interface

uses Buttons, Classes, Controls, Dialogs, ExtCtrls, Forms, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBQuery,
     Messages, StdCtrls, SysUtils, WinProcs, WinTypes, DBClient, DB, IBX.IBDatabase, FormHandler,
     Mask, DBCtrls, DBGrids, frxClass, frxExportPDF, frxDBSet;

type
  TWTitulos = class(TForm)
    SFichero: TDataSource;
    QFichero: TIBDataSet;
    Transaccion: TIBTransaction;
    TbFiltro: TClientDataSet;
    sFiltro: TDataSource;
    QFicheroTITULO: TIBStringField;
    QFicheroDESCRIPCION: TIBStringField;
    QFicheroSUMA1: TIBStringField;
    QFicheroSUMA2: TIBStringField;
    QFicheroSUMA3: TIBStringField;
    QFicheroSUMA4: TIBStringField;
    QFicheroSUMA5: TIBStringField;
    QFicheroSUMA6: TIBStringField;
    QFicheroRESTA1: TIBStringField;
    QFicheroRESTA2: TIBStringField;
    QFicheroRESTA3: TIBStringField;
    QFicheroRESTA4: TIBStringField;
    QFicheroRESTA5: TIBStringField;
    QFicheroRESTA6: TIBStringField;
    QFicheroSUMA7: TIBStringField;
    QFicheroRESTA8: TIBStringField;
    QFicheroRESTA7: TIBStringField;
    QFicheroSUMA8: TIBStringField;
    QFicheroFormula: TStringField;
    Panel2: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    Panel3: TPanel;
    Panel1: TPanel;
    BtnAppend: TButton;
    BtnDelete: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    BtnRefresh: TButton;
    BtnReports: TButton;
    BtnModify: TButton;
    Panel4: TPanel;
    FiltroBuscar: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    FiltroBDescripcion: TDBEdit;
    FiltroBTitulo: TDBEdit;
    Datos: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    EditNombre: TDBEdit;
    EditCampoInicial: TDBEdit;
    EditSuma2: TDBEdit;
    EditSuma3: TDBEdit;
    EditSuma4: TDBEdit;
    EditSuma5: TDBEdit;
    EditSuma6: TDBEdit;
    EditResta1: TDBEdit;
    EditResta2: TDBEdit;
    EditResta3: TDBEdit;
    EditResta4: TDBEdit;
    EditResta5: TDBEdit;
    EditResta6: TDBEdit;
    EditSuma1: TDBEdit;
    EditSuma7: TDBEdit;
    EditSuma8: TDBEdit;
    EditResta7: TDBEdit;
    EditResta8: TDBEdit;
    Rejilla: TDBGrid;
    DBNavigator: TDBNavigator;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    FastReport: TfrxReport;
    procedure BtnAppendClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure RejillaDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String; AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LimpiarFiltro(Sender: TObject);
    procedure VerTabla(Sender: TObject);
    procedure BtnReportsClick(Sender: TObject);
    procedure QFicheroCalcFields(DataSet: TDataSet);
    procedure SoloSiAniadir(Sender: TObject);
  private
    FormManager :TccFormHandler;
    FCampoOrden :string;
    procedure CrearFiltro;
    procedure PrepararQuery;
    procedure RefrescarBD;
    function ExisteFormula(Formula: String): Boolean;
    procedure ComprobarFormula;
  public
  end;

var WTitulos: TWTitulos;

implementation

uses DM, DMControl, General, Globales;
{$R *.DFM}

procedure TWTitulos.FormCreate(Sender: TObject);
begin
   FormManager := TccFormHandler.Create(Self);

   ActivarTransacciones(Self);
   CrearFiltro;
   FCampoOrden := 'TITULO';
   PrepararQuery;

   FormManager.AddComp(BtnRefresh.Name         , fmBrowse);
   FormManager.AddComp(FiltroBTitulo.Name      , fmBrowse);
   FormManager.AddComp(FiltroBDescripcion.Name , fmBrowse);
   FormManager.AddComp(DBNavigator.Name        , fmBrowse);
   FormManager.AddComp(BtnAccept.Name          , fmEdit  );
   FormManager.AddComp(BtnCancel.Name          , fmEdit  );
   FormManager.AddComp(BtnAppend.Name          , fmBrowse);
   FormManager.AddComp(BtnModify.Name          , fmBrowse);
   FormManager.AddComp(BtnDelete.Name          , fmBrowse);
   FormManager.AddComp(BtnReports.Name         , fmBrowse);
   FormManager.AddComp(EditCampoInicial.Name   , fmEdit  );
   FormManager.AddComp(EditNombre.Name         , fmEdit  );
   FormManager.AddComp(EditSuma1.Name          , fmEdit  );
   FormManager.AddComp(EditSuma2.Name          , fmEdit  );
   FormManager.AddComp(EditSuma3.Name          , fmEdit  );
   FormManager.AddComp(EditSuma4.Name          , fmEdit  );
   FormManager.AddComp(EditSuma5.Name          , fmEdit  );
   FormManager.AddComp(EditSuma6.Name          , fmEdit  );
   FormManager.AddComp(EditSuma7.Name          , fmEdit  );
   FormManager.AddComp(EditSuma8.Name          , fmEdit  );
   FormManager.AddComp(EditResta1.Name         , fmEdit  );
   FormManager.AddComp(EditResta2.Name         , fmEdit  );
   FormManager.AddComp(EditResta3.Name         , fmEdit  );
   FormManager.AddComp(EditResta4.Name         , fmEdit  );
   FormManager.AddComp(EditResta5.Name         , fmEdit  );
   FormManager.AddComp(EditResta6.Name         , fmEdit  );
   FormManager.AddComp(EditResta7.Name         , fmEdit  );
   FormManager.AddComp(EditResta8.Name         , fmEdit  );
   FormManager.AddComp(Rejilla.Name            , fmBrowse);

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;


procedure TWTitulos.CrearFiltro;
begin
   TbFiltro.Active := False;
   TbFiltro.FieldDefs.Clear;
   TbFiltro.FieldDefs.Add('BTitulo', ftString, 2, False);
   TbFiltro.FieldDefs.Add('BDescripcion', ftstring, 50, False);
   TbFiltro.CreateDataSet;
   TbFiltro.Active := True;
   TbFiltro.Append;
   TbFiltro.FieldByName('BTitulo').AsString      := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWTitulos.PrepararQuery;
begin
   QFichero.DisableControls;
   QFichero.Close;
   QFichero.SelectSQL.Clear;
   QFichero.SelectSQL.Add('SELECT * FROM TITULOS');

   if TbFiltro.FieldByName('BTitulo').AsString <> '' then   begin
      QFichero.SelectSQL.Add(' WHERE UPPER(Titulo) LIKE UPPER(:Titulo) ');
   end
   else
   if TbFiltro.FieldByName('BDescripcion').AsString <> '' then   begin
      QFichero.SelectSQL.Add('where UPPER(Descripcion) like UPPER(:Descripcion)');
   end;

   if FCampoOrden <> '' then begin
      QFichero.SelectSQL.Add('ORDER BY ' + FCampoOrden);
   end;


   if TbFiltro.FieldByName('BTitulo').AsString <> '' then   begin
      QFichero.Params.byname('Titulo').AsString :=
         Copy(TbFiltro.FieldByName('BTitulo').AsString + '%', 1,
         TbFiltro.FieldByName('BTitulo').Size);
   end
   else
   if TbFiltro.FieldByName('BDescripcion').AsString <> '' then   begin
      QFichero.Params.byname('Descripcion').AsString :=
         Copy(TbFiltro.FieldByName('BDescripcion').AsString + '%', 1,
         TbFiltro.FieldByName('BDescripcion').Size);
   end;

   QFichero.Prepare;
   QFichero.Open;
   QFichero.EnableControls;
end;

procedure TWTitulos.RefrescarBD;
begin
end;

function TWTitulos.ExisteFormula(Formula: String): Boolean;
var Existe :Boolean;
    Q      :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      // Comprobar que existe el grupo
      Q.SQL.Add('SELECT GRUPO FROM GRUPOS WHERE GRUPO = :FORMULA');
      Q.ParamByName('FORMULA').AsString := Formula;
      Q.Open;
      Existe := not Q.EOF;

      if not Existe then begin
         Q.Close;
         Q.SQL.Clear;
         // Comprobar que existe el título
         Q.SQL.Add('SELECT TITULO FROM TITULOS WHERE TITULO = :FORMULA');
         Q.ParamByName('FORMULA').AsString := Copy(Formula, 1, 2);
         Q.Open;
         Existe := not Q.EOF;
      end;

   finally
      Q.Free;
   end;

   Result := Existe;
end;

procedure TWTitulos.ComprobarFormula;
begin
   // Sumas
   if (QFicheroSUMA1.AsString <> '') and not ExisteFormula(QFicheroSUMA1.AsString) then  begin
      EditSuma1.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroSUMA1.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroSUMA2.AsString <> '') and not ExisteFormula(QFicheroSUMA2.AsString) then  begin
      EditSuma2.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroSUMA2.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroSUMA3.AsString <> '') and not ExisteFormula(QFicheroSUMA3.AsString) then  begin
      EditSuma3.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroSUMA3.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroSUMA4.AsString <> '') and not ExisteFormula(QFicheroSUMA4.AsString) then  begin
      EditSuma4.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroSUMA4.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroSUMA5.AsString <> '') and not ExisteFormula(QFicheroSUMA5.AsString) then  begin
      EditSuma5.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroSUMA5.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroSUMA6.AsString <> '') and not ExisteFormula(QFicheroSUMA6.AsString) then  begin
      EditSuma6.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroSUMA6.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroSUMA7.AsString <> '') and not ExisteFormula(QFicheroSUMA7.AsString) then  begin
      EditSuma7.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroSUMA7.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroSUMA8.AsString <> '') and not ExisteFormula(QFicheroSUMA8.AsString) then  begin
      EditSuma8.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroSUMA8.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;

   // Restas
   if (QFicheroRESTA1.AsString <> '') and not ExisteFormula(QFicheroRESTA1.AsString) then  begin
      EditResta1.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroRESTA1.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroRESTA2.AsString <> '') and not ExisteFormula(QFicheroRESTA2.AsString) then  begin
      EditResta2.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroRESTA2.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroRESTA3.AsString <> '') and not ExisteFormula(QFicheroRESTA3.AsString) then  begin
      EditResta3.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroRESTA3.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroRESTA4.AsString <> '') and not ExisteFormula(QFicheroRESTA4.AsString) then  begin
      EditResta4.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroRESTA4.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroRESTA5.AsString <> '') and not ExisteFormula(QFicheroRESTA5.AsString) then  begin
      EditResta5.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroRESTA5.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroRESTA6.AsString <> '') and not ExisteFormula(QFicheroRESTA6.AsString) then  begin
      EditResta6.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroRESTA6.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroRESTA7.AsString <> '') and not ExisteFormula(QFicheroRESTA7.AsString) then  begin
      EditResta7.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroRESTA7.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
   if (QFicheroRESTA8.AsString <> '') and not ExisteFormula(QFicheroRESTA8.AsString) then  begin
      EditResta8.SetFocus;
      DatabaseError('El grupo o título ' + QFicheroRESTA8.AsString + ' no existe.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;
end;

procedure TWTitulos.BtnAppendClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), ANIADIR) then begin
      Exit;
   end;

   try
      QFichero.Insert;
   except
      DatabaseError('No se ha podido insertar un nuevo título.');
   end;
   EditCampoInicial.SetFocus;
   FormManager.Mode := fmEdit;
end;

procedure TWTitulos.BtnDeleteClick(Sender: TObject);
begin
   if not DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), BORRAR) then begin
      Exit;
   end;

   if QFichero.IsEmpty then Exit;
   
   if MessageDlg('¿Desea borrar este título?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      QFichero.Delete;
      QFichero.Transaction.CommitRetaining;
      RefrescarBD;
   end;
end;

procedure TWTitulos.BtnReportsClick(Sender: TObject);
begin
   if DmControlRef.PermisoUsuario(Config.IdUser, UpperCase(Self.Name), IMPRESION) then begin
      BtnRefresh.Click;
      PDFExport.Author          := 'senCille Accounting';
      PDFExport.ShowDialog      := False;
      PDFExport.FileName        := 'Titulos.pdf';
      PDFExport.OpenAfterExport := True;

      FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      FastReport.PrepareReport(True);
      FastReport.Export(PDFExport);
   end;
end;

procedure TWTitulos.BtnAcceptClick(Sender: TObject);
var
   ha_insertado: Boolean;
begin
   // Comprobamos si el usuario ha insertado un nuevo registro.
   ha_insertado := QFichero.State = dsInsert;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.FieldByName('Titulo').AsString = '' then  begin
      EditCampoInicial.SetFocus;
      DatabaseError('No se puede dejar el código del título en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;


   if QFichero.FieldByName('Descripcion').AsString = '' then  begin
      EditNombre.SetFocus;
      DatabaseError('No se puede dejar el nombre del título en blanco.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;

   ComprobarFormula;

   QFichero.Post;
   QFichero.Transaction.CommitRetaining;

   FormManager.Mode := fmBrowse;
   Rejilla.SetFocus;
   if ha_insertado then  begin
      if not (TbFiltro.State in dsEditModes) then begin
         TbFiltro.Edit;
      end;
      TbFiltro.FieldByName('BTitulo').AsString := QFicheroTitulo.AsString;
      PrepararQuery;
      LimpiarFiltro(Sender);
   end;
end;

procedure TWTitulos.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not QFichero.Modified then begin
      QFichero.Cancel;
      FormManager.Mode := fmBrowse;
      Exit;
   end;

   if MessageDlg('¿Quiere anula las modificaciones realizadas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

procedure TWTitulos.RejillaDblClick(Sender: TObject);
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

procedure TWTitulos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // Si pulsamos enter y el control actual no es un grid pasamos al siguiente
   // control
   if (Key = Chr(VK_RETURN)) then  begin
      // Comprobacion del filtro por codigo de provincia
      if (FiltroBTitulo.Focused) and (FiltroBTitulo.Text <> '') then   begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end

      // Comprobacion del filtro por nombre
      else
      if (FiltroBDescripcion.Focused) and (FiltroBDescripcion.Text <> '') then   begin
         key := #0;
         if tbFiltro.State in dsEditModes then begin
            tbFiltro.Post;
         end;
         PrepararQuery;
      end;
   end;
end;

procedure TWTitulos.FormShow(Sender: TObject);
begin
   FiltroBTitulo.SetFocus;
end;

procedure TWTitulos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         if QFichero.State in dsEditModes then begin
            BtnCancel.Click;
            Key := 0;
         end;
      end;
      VK_SPACE: begin
         if (ActiveControl <> FiltroBTitulo) and
            (ActiveControl <> FiltroBDescripcion) and not
            (QFichero.State in dsEditModes) then   begin
            Key := 0;
            RejillaDblClick(Self);
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

procedure TWTitulos.RejillaTitleButtonClick(Sender: TObject; AFieldName: String);
begin
   if (UpperCase(AFieldName) = 'TITULO') or (UpperCase(AFieldName) = 'DESCRIPCION') then  begin
      FCampoOrden := UpperCase(AFieldName);
      PrepararQuery;
   end;
   Rejilla.SetFocus;
end;

procedure TWTitulos.RejillaCalcTitleAttributes(Sender: TObject; AFieldName: String;
   AFont: TFont; ABrush: TBrush; var ATitleAlignment: TAlignment);
begin
   if (UpperCase(AFieldName) = UpperCase(FCampoOrden)) then  begin
      ABrush.Color := clBlue;
      AFont.Style  := [fsBold];
      AFont.Color  := clWhite;
   end;
end;

procedure TWTitulos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if QFichero.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWTitulos.LimpiarFiltro(Sender: TObject);
begin
   if not (TbFiltro.state in dseditmodes) then begin
      TbFiltro.edit;
   end;
   TbFiltro.FieldByName('BTitulo').AsString      := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
end;

procedure TWTitulos.VerTabla(Sender: TObject);
begin
   TbFiltro.Edit;
   TbFiltro.FieldByName('BTitulo').AsString      := '';
   TbFiltro.FieldByName('BDescripcion').AsString := '';
   TbFiltro.Post;
   PrepararQuery;
end;

procedure TWTitulos.QFicheroCalcFields(DataSet: TDataSet);
begin
   QFicheroFormula.AsString := Trim(QFicheroSuma1.AsString);
   if QficheroSuma2.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '+' + Trim(QFicheroSuma2.AsString);
   end;
   if QficheroSuma3.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '+' + Trim(QFicheroSuma3.AsString);
   end;
   if QficheroSuma4.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '+' + Trim(QFicheroSuma4.AsString);
   end;
   if QficheroSuma5.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '+' + Trim(QFicheroSuma5.AsString);
   end;
   if QficheroSuma6.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '+' + Trim(QFicheroSuma6.AsString);
   end;
   if QficheroSuma7.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '+' + Trim(QFicheroSuma7.AsString);
   end;
   if QficheroSuma8.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '+' + Trim(QFicheroSuma8.AsString);
   end;

   if QficheroResta1.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '-' + Trim(QFicheroResta1.AsString);
   end;
   if QficheroResta2.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '-' + Trim(QFicheroResta2.AsString);
   end;
   if QficheroResta3.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '-' + Trim(QFicheroResta3.AsString);
   end;
   if QficheroResta4.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '-' + Trim(QFicheroResta4.AsString);
   end;
   if QficheroResta5.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '-' + Trim(QFicheroResta5.AsString);
   end;
   if QficheroResta6.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '-' + Trim(QFicheroResta6.AsString);
   end;
   if QficheroResta7.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '-' + Trim(QFicheroResta7.AsString);
   end;
   if QficheroResta8.AsString <> '' then   begin
      QFicheroFormula.AsString := QFicheroFormula.AsString + '-' + Trim(QFicheroResta8.AsString);
   end;
end;

procedure TWTitulos.SoloSiAniadir(Sender: TObject);
begin
   if (QFichero.State <> dsInsert) then begin
      Perform(wm_NextDlgCtl, 0, 0);
   end;
end;

end.
