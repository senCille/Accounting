unit UPlanContable;

interface
uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     IBX.IBCustomDataSet, IBX.IBQuery, Mask, Messages, StdCtrls, SysUtils, Windows, frxClass, frxDBSet, frxExportPDF;
type
  TWPlanContable = class(TForm)
    lTitulo: TLabel;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    BtnAccept: TButton;
    QFichero: TClientDataSet;
    SFichero: TDataSource;
    gTipoInforme: TRadioGroup;
    QTitulos: TIBQuery;
    QGrupos: TIBQuery;
    QCuentas: TIBQuery;
    QFicheroGRUPO: TStringField;
    QFicheroCUENTA: TStringField;
    QFicheroTITULO: TStringField;
    QFicheroDESCTITULO: TStringField;
    QFicheroDESCGRUPO: TStringField;
    QFicheroDESCCUENTA: TStringField;
    QFicheroDESCLISTADO: TStringField;
    FastReport: TfrxReport;
    PDFExport: TfrxPDFExport;
    ReportDBLInk: TfrxDBDataset;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    procedure CrearFichero;
  public
  end;

var WPlanContable: TWPlanContable;

implementation
uses DM, DMConta, Globales;
{$R *.DFM}

procedure TWPlanContable.CrearFichero;
begin
   QFichero.Active := False;
   QFichero.FieldDefs.Clear;
   QFichero.FieldDefs.Add('GRUPO', ftString, 3, False);
   QFichero.FieldDefs.Add('CUENTA', ftString, 3, False);
   QFichero.FieldDefs.Add('TITULO', ftString, 2, False);
   QFichero.FieldDefs.Add('DESCGRUPO', ftString, 50, False);
   QFichero.FieldDefs.Add('DESCCUENTA', ftString, 50, False);
   QFichero.FieldDefs.Add('DESCTITULO', ftString, 50, False);
   QFichero.FieldDefs.Add('DESCLISTADO', ftString, 100, False);
   QFichero.CreateDataSet;
   QFichero.Active := True;

   QFichero.IndexDefs.Add('', '', []);
   QFichero.IndexDefs.Add('TITULO', 'TITULO;GRUPO;CUENTA', []);
end;

procedure TWPlanContable.FormCreate(Sender: TObject);
begin
   gTipoInforme.ItemIndex := 0;
   QTitulos.Close;
   QTitulos.SQL.Clear;
   QTitulos.SQL.Add('SELECT TITULO, DESCRIPCION FROM TITULOS');
   QTitulos.SQL.Add('WHERE TITULO = :TITULO');

   QGrupos.Close;
   QGrupos.SQL.Clear;
   QGrupos.SQL.Add('SELECT GRUPO, DESCRIPCION FROM GRUPOS');
   QGrupos.SQL.Add('WHERE GRUPO = :GRUPO');

   QCuentas.Close;
   QCuentas.SQL.Clear;
   QCuentas.SQL.Add('SELECT CUENTA, DESCRIPCION, GRUPO1, GRUPO2, TIPOCUENTA');
   QCuentas.SQL.Add('FROM CUENTAS ORDER BY CUENTA');

   CrearFichero;
end;

procedure TWPlanContable.BtnAcceptClick(Sender: TObject);
var
   Grupo1, Grupo2: String;
begin
   // Primero vaciar el fichero
   QFichero.EmptyDataSet;
   QFichero.IndexName := '';

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);


   if gTipoInforme.ItemIndex = 0 { Balance de situación } then begin
      QCuentas.Close;
      QCuentas.Open;
      while not QCuentas.EOF do begin
         Grupo1 := QCuentas.FieldByName('GRUPO1').AsString;
         Grupo2 := QCuentas.FieldByName('GRUPO2').AsString;
         if (Copy(Grupo1, 1, 1) = 'A') or (Copy(Grupo1, 1, 1) = 'P') then   begin
            QFichero.Insert;
            QFicheroGRUPO.AsString      := Grupo1;
            QFicheroCUENTA.AsString     := QCuentas.FieldByName('CUENTA').AsString;
            QFicheroDESCCUENTA.AsString := QCuentas.FieldByName('DESCRIPCION').AsString;
            QFichero.Post;
         end;
         if (Copy(Grupo2, 1, 1) = 'A') or (Copy(Grupo2, 1, 1) = 'P') then   begin
            QFichero.Insert;
            QFicheroGRUPO.AsString      := Grupo2;
            QFicheroCUENTA.AsString     := QCuentas.FieldByName('CUENTA').AsString;
            QFicheroDESCCUENTA.AsString := QCuentas.FieldByName('DESCRIPCION').AsString;
            QFichero.Post;
         end;
         QCuentas.Next;
      end;
   end
   else begin  { Cuenta de pérdidas y ganancias }
      QCuentas.Close;
      QCuentas.Open;
      while not QCuentas.EOF do begin
         Grupo1 := QCuentas.FieldByName('GRUPO1').AsString;
         Grupo2 := QCuentas.FieldByName('GRUPO2').AsString;
         if (Copy(Grupo1, 1, 1) = 'D') or (Copy(Grupo1, 1, 1) = 'H') then   begin
            QFichero.Insert;
            QFicheroGRUPO.AsString      := Grupo1;
            QFicheroCUENTA.AsString     := QCuentas.FieldByName('CUENTA').AsString;
            QFicheroDESCCUENTA.AsString := QCuentas.FieldByName('DESCRIPCION').AsString;
            QFichero.Post;
         end;
         if (Copy(Grupo2, 1, 1) = 'D') or (Copy(Grupo2, 1, 1) = 'H') then   begin
            QFichero.Insert;
            QFicheroGRUPO.AsString      := Grupo2;
            QFicheroCUENTA.AsString     := QCuentas.FieldByName('CUENTA').AsString;
            QFicheroDESCCUENTA.AsString := QCuentas.FieldByName('DESCRIPCION').AsString;
            QFichero.Post;
         end;
         QCuentas.Next;
      end;
   end;

   QFichero.First;
   while not QFichero.EOF do begin
      QFichero.Edit;

      QGrupos.Close;
      QGrupos.ParamByName('GRUPO').AsString := QFicheroGRUPO.AsString;
      QGrupos.Open;

      if not QGrupos.EOF then   begin
         QFicheroDESCGRUPO.AsString := QGrupos.FieldByName('DESCRIPCION').AsString;
      end;

      QTitulos.Close;
      QTitulos.ParamByName('TITULO').AsString := Copy(QFicheroGRUPO.AsString, 1, 2);
      QTitulos.Open;

      if not QTitulos.EOF then   begin
         QFicheroTITULO.AsString     := QTitulos.FieldByName('TITULO').AsString;
         QFicheroDESCTITULO.AsString := QTitulos.FieldByName('DESCRIPCION').AsString;
      end;

      if gTipoInforme.ItemIndex = 0 then   begin
         QFicheroDESCLISTADO.AsString := 'Listado Plan Contable : BALANCE DE SITUACIÓN';
      end
      else begin
         QFicheroDESCLISTADO.AsString := 'Listado Plan Contable : CUENTA PÉRDIDAS Y GANANCIAS';
      end;

      QFichero.Post;
      QFichero.Next;
   end;

   QFichero.IndexName := 'TITULO';
   QFichero.First;



   PDFExport.Author          := 'senCille Accounting';
   PDFExport.ShowDialog      := False;
   PDFExport.FileName        := 'Plan Contable.pdf';
   PDFExport.OpenAfterExport := True;

   FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
   FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

   FastReport.PrepareReport(True);
   FastReport.Export(PDFExport);
end;

procedure TWPlanContable.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

end.
