unit UPlanAnalico;

interface
uses Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Graphics,
     IBX.IBCustomDataSet, IBX.IBQuery, Mask, Messages, StdCtrls, SysUtils, Windows, frxClass, frxExportPDF, frxDBSet;

type
  TWPlanAnalitico = class(TForm)
    lTitulo: TLabel;
    Shape1: TShape;
    BtnAccept: TButton;
    QFichero: TClientDataSet;
    SFichero: TDataSource;
    QAnaliticas: TIBQuery;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBoxCD_ANALITICA: TDBLookupComboBox;
    ComboBoxDelegacion: TDBLookupComboBox;
    ComboBoxDepartamento: TDBLookupComboBox;
    ComboBoxSeccion: TDBLookupComboBox;
    ComboBoxProyecto: TDBLookupComboBox;
    ComboBoxDS_ANALITICA: TDBLookupComboBox;
    QFicheroCUENTA:   TStringField;
    QFicheroDESCCUENTA: TStringField;
    QFicheroID_PROYECTO: TStringField;
    QFicheroID_SECCION: TStringField;
    QFicheroID_DEPARTAMENTO: TStringField;
    QFicheroID_DELEGACION: TStringField;
    QFicheroDESCPROYECTO: TStringField;
    QFicheroDESCSECCION: TStringField;
    QFicheroDESCDEPARTAMENTO: TStringField;
    QFicheroDESCDELEGACION: TStringField;
    CDSFiltro: TClientDataSet;
    DSFiltro: TDataSource;
    QSeccion: TIBDataSet;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    SSeccion: TDataSource;
    ReportDBLInk: TfrxDBDataset;
    PDFExport: TfrxPDFExport;
    FastReport: TfrxReport;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    procedure CrearFichero;
    procedure CrearFiltro;
    procedure RellenarFichero;
  public
  end;

var WPlanAnalitico: TWPlanAnalitico;

implementation
uses DM, DMConta, Globales, DMControl;
{$R *.DFM}

procedure TWPlanAnalitico.CrearFichero;
begin
   QFichero.Active := False;
   QFichero.FieldDefs.Clear;
   QFichero.FieldDefs.Add('CUENTA', ftString, 10, False);
   QFichero.FieldDefs.Add('DESCCUENTA', ftString, 50, False);
   QFichero.FieldDefs.Add('ID_PROYECTO', ftString, 10, False);
   QFichero.FieldDefs.Add('ID_SECCION', ftString, 10, False);
   QFichero.FieldDefs.Add('ID_DEPARTAMENTO', ftString, 10, False);
   QFichero.FieldDefs.Add('ID_DELEGACION', ftString, 10, False);
   QFichero.FieldDefs.Add('DESCPROYECTO', ftString, 50, False);
   QFichero.FieldDefs.Add('DESCSECCION', ftString, 50, False);
   QFichero.FieldDefs.Add('DESCDEPARTAMENTO', ftString, 50, False);
   QFichero.FieldDefs.Add('DESCDELEGACION', ftString, 50, False);
   QFichero.CreateDataSet;
   QFichero.Active := True;

   QFichero.IndexDefs.Add('', '', []);
   QFichero.IndexDefs.Add('TITULO', 'TITULO;GRUPO;CUENTA', []);
end;

procedure TWPlanAnalitico.CrearFiltro;
begin
   CDSFiltro.Active := False;
   CDSFiltro.FieldDefs.Clear;
   CDSFiltro.FieldDefs.Add('CUENTA', ftString, 10, False);
   CDSFiltro.FieldDefs.Add('ID_DELEGACION', ftString, 10, False);
   CDSFiltro.FieldDefs.Add('ID_DEPARTAMENTO', ftString, 10, False);
   CDSFiltro.FieldDefs.Add('ID_SECCION', ftString, 10, False);
   CDSFiltro.FieldDefs.Add('ID_PROYECTO', ftString, 10, False);
   CDSFiltro.CreateDataSet;
   CDSFiltro.Active := True;
   CDSFiltro.Append;
end;

procedure TWPlanAnalitico.RellenarFichero;
begin
   QAnaliticas.Close;
   QAnaliticas.SQL.Clear;
   QAnaliticas.SQL.Add('SELECT A.*, P.NOMBRE DESCPROYECTO, S.NOMBRE DESCSECCION,     ');
   QAnaliticas.SQL.Add('       DEP.NOMBRE DESCDEPARTAMENTO, DEL.NOMBRE DESCDELEGACION');
   QAnaliticas.SQL.Add('FROM ANALITICAS A LEFT JOIN PROYECTO P                       ');
   QAnaliticas.SQL.Add('                  ON A.ID_PROYECTO = P.ID_PROYECTO           ');
   QAnaliticas.SQL.Add('                  LEFT JOIN SECCION S                        ');
   QAnaliticas.SQL.Add('                  ON A.ID_SECCION = S.ID_SECCION             ');
   QAnaliticas.SQL.Add('                  LEFT JOIN DEPARTAMENTO DEP                 ');
   QAnaliticas.SQL.Add('                  ON A.ID_DEPARTAMENTO = DEP.ID_DEPARTAMENTO ');
   QAnaliticas.SQL.Add('                  LEFT JOIN DELEGACION DEL                   ');
   QAnaliticas.SQL.Add('                  ON A.ID_DELEGACION = DEL.ID_DELEGACION     ');
   QAnaliticas.SQL.Add('WHERE NOT A.CUENTA IS NULL                                   ');

   if CDSFiltro.FieldByName('CUENTA').AsString <> '' then   begin
      QAnaliticas.SQL.Add('   AND A.CUENTA = :CUENTA');
   end;

   if CDSFiltro.FieldByName('ID_PROYECTO').AsString <> '' then   begin
      QAnaliticas.SQL.Add('   AND A.ID_PROYECTO = :ID_PROYECTO');
   end;

   if CDSFiltro.FieldByName('ID_SECCION').AsString <> '' then   begin
      QAnaliticas.SQL.Add('   AND A.ID_SECCION = :ID_SECCION');
   end;

   if CDSFiltro.FieldByName('ID_DEPARTAMENTO').AsString <> '' then   begin
      QAnaliticas.SQL.Add('   AND A.ID_DEPARTAMENTO = :ID_DEPARTAMENTO');
   end;

   if CDSFiltro.FieldByName('ID_DELEGACION').AsString <> '' then   begin
      QAnaliticas.SQL.Add('   AND A.ID_DELEGACION = :ID_DELEGACION');
   end;

   QAnaliticas.SQL.Add('ORDER BY A.CUENTA, A.ID_DELEGACION, A.ID_DEPARTAMENTO,       ');
   QAnaliticas.SQL.Add('         A.ID_SECCION, A.ID_PROYECTO                         ');

   if CDSFiltro.FieldByName('CUENTA').AsString <> '' then   begin
      QAnaliticas.ParamByName('CUENTA').AsString := CDSFiltro.FieldByName('CUENTA').AsString;
   end;

   if CDSFiltro.FieldByName('ID_PROYECTO').AsString <> '' then   begin
      QAnaliticas.ParamByName('ID_PROYECTO').AsString := CDSFiltro.FieldByName('ID_PROYECTO').AsString;
   end;

   if CDSFiltro.FieldByName('ID_SECCION').AsString <> '' then   begin
      QAnaliticas.ParamByName('ID_SECCION').AsString := CDSFiltro.FieldByName('ID_SECCION').AsString;
   end;

   if CDSFiltro.FieldByName('ID_DEPARTAMENTO').AsString <> '' then   begin
      QAnaliticas.ParamByName('ID_DEPARTAMENTO').AsString := CDSFiltro.FieldByName('ID_DEPARTAMENTO').AsString;
   end;

   if CDSFiltro.FieldByName('ID_DELEGACION').AsString <> '' then   begin
      QAnaliticas.ParamByName('ID_DELEGACION').AsString := CDSFiltro.FieldByName('ID_DELEGACION').AsString;
   end;

   QAnaliticas.Open;

   while not QAnaliticas.EOF do begin
      QFichero.Append;
      QFicheroCUENTA.AsString     := QAnaliticas.FieldByName('CUENTA').AsString;
      QFicheroDESCCUENTA.AsString := QAnaliticas.FieldByName('NOMBRE').AsString;
      if not QAnaliticas.FieldByName('ID_DELEGACION').IsNull then   begin
         QFicheroID_DELEGACION.AsString  := QAnaliticas.FieldByName('ID_DELEGACION').AsString;
         QFicheroDESCDELEGACION.AsString := QAnaliticas.FieldByName('DESCDELEGACION').AsString;
      end;
      if not QAnaliticas.FieldByName('ID_DEPARTAMENTO').IsNull then   begin
         QFicheroID_DEPARTAMENTO.AsString  := QAnaliticas.FieldByName('ID_DEPARTAMENTO').AsString;
         QFicheroDESCDEPARTAMENTO.AsString := QAnaliticas.FieldByName('DESCDEPARTAMENTO').AsString;
      end;
      if not QAnaliticas.FieldByName('ID_PROYECTO').IsNull then   begin
         QFicheroID_PROYECTO.AsString  := QAnaliticas.FieldByName('ID_PROYECTO').AsString;
         QFicheroDESCPROYECTO.AsString := QAnaliticas.FieldByName('DESCPROYECTO').AsString;
      end;
      if not QAnaliticas.FieldByName('ID_SECCION').IsNull then   begin
         QFicheroID_SECCION.AsString  := QAnaliticas.FieldByName('ID_SECCION').AsString;
         QFicheroDESCSECCION.AsString := QAnaliticas.FieldByName('DESCSECCION').AsString;
      end;
      QFichero.Post;
      QAnaliticas.Next;
   end;

   QFichero.First;
end;

procedure TWPlanAnalitico.FormCreate(Sender: TObject);
begin
   CrearFiltro;
   CrearFichero;
end;

procedure TWPlanAnalitico.BtnAcceptClick(Sender: TObject);
begin
   QFichero.EmptyDataSet;
   Perform(wm_NextDlgCtl, 0, 0);
   RellenarFichero;

   PDFExport.Author          := 'senCille Accounting';
   PDFExport.ShowDialog      := False;
   PDFExport.FileName        := 'Plan Analitico.pdf';
   PDFExport.OpenAfterExport := True;

   FastReport.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
   FastReport.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

   FastReport.PrepareReport(True);
   FastReport.Export(PDFExport);
end;

procedure TWPlanAnalitico.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;

end.
