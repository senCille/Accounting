unit UParametrizacionFacturacion;

interface

uses Buttons, Windows, SysUtils, Messages, DB, ExtCtrls, StdCtrls,
     DBCtrls, Controls, Graphics, Classes, Forms, IBX.IBCustomDataSet,
     FormHandler, ComCtrls, Mask;

type
  TWParametrizacionFacturacion = class(TForm)
    Label2: TLabel;
    Shape1: TShape;
    DSFichero: TDataSource;
    BtnAccept: TButton;
    BtnCancel: TButton;
    Label89: TLabel;
    QSubCuentas: TIBDataSet;
    QSubCuentasSUBCUENTA: TIBStringField;
    QSubCuentasDESCRIPCION: TIBStringField;
    QSubCuentasABREVIATURA: TIBStringField;
    SSubCuentas: TDataSource;
    BtnDefaultValues: TButton;
    QConceptos: TIBDataSet;
    IBStringField42: TIBStringField;
    IBStringField41: TIBStringField;
    IBStringField43: TIBStringField;
    SConceptos: TDataSource;
    BtnModify: TButton;
    PageControl1: TPageControl;
    TabSheetSales: TTabSheet;
    PageControl2: TPageControl;
    TabSheetRegimGeneral: TTabSheet;
    TabSheetSurcharge: TTabSheet;
    TabSheetPurchases: TTabSheet;
    TabSheetEffectDossier: TTabSheet;
    TabSheetOthers: TTabSheet;
    GroupBox9: TGroupBox;
    Label8: TLabel;
    Label13: TLabel;
    Label58: TLabel;
    Label66: TLabel;
    DBText24: TDBText;
    DBText25: TDBText;
    CBSUBCUENTA24: TDBLookupComboBox;
    DBLookupCombo86: TDBLookupComboBox;
    DBLookupCombo88: TDBLookupComboBox;
    CBSUBCUENTA25: TDBLookupComboBox;
    DBLookupCombo90: TDBLookupComboBox;
    DBLookupCombo92: TDBLookupComboBox;
    GroupBox10: TGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    DBText26: TDBText;
    DBText27: TDBText;
    CBSUBCUENTA26: TDBLookupComboBox;
    DBLookupCombo94: TDBLookupComboBox;
    DBLookupCombo96: TDBLookupComboBox;
    CBSUBCUENTA27: TDBLookupComboBox;
    DBLookupCombo98: TDBLookupComboBox;
    DBLookupCombo100: TDBLookupComboBox;
    OvcDbNumericField1: TDBEdit;
    OvcDbNumericField2: TDBEdit;
    Label73: TLabel;
    Label75: TLabel;
    Label96: TLabel;
    DBText28: TDBText;
    Label101: TLabel;
    Label102: TLabel;
    DBText33: TDBText;
    Label103: TLabel;
    DBText34: TDBText;
    CBSUBCUENTA28: TDBLookupComboBox;
    DBLookupCombo118: TDBLookupComboBox;
    DBLookupCombo124: TDBLookupComboBox;
    CBSUBCUENTA35: TDBLookupComboBox;
    DBLookupCombo25: TDBLookupComboBox;
    CBSUBCUENTA40: TDBLookupComboBox;
    DBLookupCombo42: TDBLookupComboBox;
    DBLookupCombo27: TDBLookupComboBox;
    DBLookupCombo45: TDBLookupComboBox;
    Label9: TLabel;
    Label17: TLabel;
    Label37: TLabel;
    DBText23: TDBText;
    DBText31: TDBText;
    Label1: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label3: TLabel;
    DBText22: TDBText;
    DBLookupCombo17: TDBLookupComboBox;
    CBSUBCUENTA18: TDBLookupComboBox;
    DBLookupCombo53: TDBLookupComboBox;
    DBLookupCombo58: TDBLookupComboBox;
    CBSUBCUENTA39: TDBLookupComboBox;
    DBLookupCombo35: TDBLookupComboBox;
    CBSUBCUENTA30: TDBLookupComboBox;
    DBLookupCombo3: TDBLookupComboBox;
    CBSUBCUENTA31: TDBLookupComboBox;
    DBLookupCombo10: TDBLookupComboBox;
    DBLookupCombo16: TDBLookupComboBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBText20: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label31: TLabel;
    Label45: TLabel;
    Label83: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText21: TDBText;
    CBDESCSUBCUENTA15: TDBLookupComboBox;
    CBDESCSUBCUENTA14: TDBLookupComboBox;
    CBDESCSUBCUENTA13: TDBLookupComboBox;
    CBDESCSUBCUENTA12: TDBLookupComboBox;
    CBDESCSUBCUENTA11: TDBLookupComboBox;
    CBSUBCUENTA11: TDBLookupComboBox;
    CBSUBCUENTA12: TDBLookupComboBox;
    CBSUBCUENTA13: TDBLookupComboBox;
    CBSUBCUENTA14: TDBLookupComboBox;
    DBLookupCombo28: TDBLookupComboBox;
    eDescConcepto: TDBLookupComboBox;
    DBLookupCombo11: TDBLookupComboBox;
    DBLookupCombo30: TDBLookupComboBox;
    CBSUBCUENTA15: TDBLookupComboBox;
    DBLookupCombo13: TDBLookupComboBox;
    DBLookupCombo20: TDBLookupComboBox;
    DBLookupCombo24: TDBLookupComboBox;
    CBSUBCUENTA17: TDBLookupComboBox;
    DBLookupCombo38: TDBLookupComboBox;
    DBLookupCombo6: TDBLookupComboBox;
    DBLookupCombo12: TDBLookupComboBox;
    CBSUBCUENTA33: TDBLookupComboBox;
    DBLookupCombo21: TDBLookupComboBox;
    CBSUBCUENTA34: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBLookupCombo39: TDBLookupComboBox;
    DBLookupCombo40: TDBLookupComboBox;
    CBSUBCUENTA6: TDBLookupComboBox;
    DBLookupCombo43: TDBLookupComboBox;
    DBLookupCombo44: TDBLookupComboBox;
    CBSUBCUENTA9: TDBLookupComboBox;
    DBLookupCombo46: TDBLookupComboBox;
    DBLookupCombo47: TDBLookupComboBox;
    DBLookupCombo48: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label36: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBText12: TDBText;
    DBText13: TDBText;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    DBLookupCombo8: TDBLookupComboBox;
    DBLookupCombo22: TDBLookupComboBox;
    DBLookupCombo29: TDBLookupComboBox;
    CBSUBCUENTA10: TDBLookupComboBox;
    DBLookupCombo32: TDBLookupComboBox;
    CBSUBCUENTA16: TDBLookupComboBox;
    DBLookupCombo14: TDBLookupComboBox;
    CBSUBCUENTA36: TDBLookupComboBox;
    DBLookupCombo33: TDBLookupComboBox;
    CBSUBCUENTA37: TDBLookupComboBox;
    DBLookupCombo41: TDBLookupComboBox;
    CBSUBCUENTA38: TDBLookupComboBox;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label42: TLabel;
    Label47: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label95: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    CBDESCSUBCUENTA8: TDBLookupComboBox;
    CBDESCSUBCUENTA7: TDBLookupComboBox;
    eSubctaVentasCorredorDesc: TDBLookupComboBox;
    CBSUBCUENTA7: TDBLookupComboBox;
    CBSUBCUENTA8: TDBLookupComboBox;
    DBLookupCombo1: TDBLookupComboBox;
    DBLookupCombo2: TDBLookupComboBox;
    CBSUBCUENTA1: TDBLookupComboBox;
    DBLookupCombo4: TDBLookupComboBox;
    DBLookupCombo5: TDBLookupComboBox;
    CBSUBCUENTA2: TDBLookupComboBox;
    DBLookupCombo7: TDBLookupComboBox;
    DBLookupCombo9: TDBLookupComboBox;
    CBSUBCUENTA3: TDBLookupComboBox;
    DBLookupCombo15: TDBLookupComboBox;
    DBLookupCombo23: TDBLookupComboBox;
    CBSUBCUENTA4: TDBLookupComboBox;
    DBLookupCombo26: TDBLookupComboBox;
    DBLookupCombo34: TDBLookupComboBox;
    CBSUBCUENTA5: TDBLookupComboBox;
    DBLookupCombo36: TDBLookupComboBox;
    DBLookupCombo37: TDBLookupComboBox;
    CBSUBCUENTA32: TDBLookupComboBox;
    DBLookupCombo31: TDBLookupComboBox;
    Shape2: TShape;
    Shape3: TShape;
    procedure BtnNavCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnDefaultValuesClick(Sender: TObject);
    procedure BtnModifyClick(Sender: TObject);
  private
    FormManager :TccFormHandler;
    procedure InsertAccounts(ACD_ACCOUNT, ADS_ACCOUNT :string);
    procedure UpdateAccount(ACD_ACCOUNT, ADS_ACCOUNT :string);
    function  ExistsAccount(ACD_ACCOUNT :string):Boolean;
    function  CheckAccount(ACD_ACCOUNT, ADS_ACCOUNT :string):string;
    {------}
    procedure InsertConcepts(ACD_CONCEPT, ADS_CONCEPT, ATYPE, ACLASS :string);
    function  ExistsConcept(ACD_CONCEPT :string):Boolean;
    procedure CheckConcept(ACD_CONCEPT, ADS_CONCEPT, ATYPE, ACLASS :string);
  public
  end;

var WParametrizacionFacturacion: TWParametrizacionFacturacion;

implementation

uses System.UITypes, VCL.Dialogs,
     IBX.IBQuery,
     Tools, DM;

{$R *.DFM}

procedure TWParametrizacionFacturacion.BtnNavCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TWParametrizacionFacturacion.FormCreate(Sender: TObject);
begin
   FormManager := TccFormHandler.Create(Self);

   PageControl2.ActivePage := TabSheetRegimGeneral;
   PageControl1.ActivePage := TabSheetSales;

   ActivateTransactions(Self, DMRef.BDContab);

   QSubCuentas.Database := DMRef.BDContab;
   QSubCuentas.Open;

   QConceptos.Database := DMRef.BDContab;
   QConceptos.Open;

   FormManager.AddComp(BtnAccept.Name             , fmEdit  );
   FormManager.AddComp(BtnCancel.Name             , fmEdit  );
   FormManager.AddComp(BtnModify.Name             , fmBrowse);
   FormManager.AddComp(BtnDefaultValues.Name      , fmEdit  );

   FormManager.AddComp(CBSUBCUENTA1.Name             , fmEdit);
   FormManager.AddComp(CBSUBCUENTA2.Name             , fmEdit);
   FormManager.AddComp(CBSUBCUENTA3.Name             , fmEdit);
   FormManager.AddComp(CBSUBCUENTA4.Name             , fmEdit);
   FormManager.AddComp(CBSUBCUENTA5.Name             , fmEdit);
   FormManager.AddComp(CBSUBCUENTA7.Name             , fmEdit);
   FormManager.AddComp(CBSUBCUENTA6.Name             , fmEdit);
   FormManager.AddComp(CBSUBCUENTA8.Name             , fmEdit);
   FormManager.AddComp(CBSUBCUENTA9.Name             , fmEdit);
   FormManager.AddComp(CBSUBCUENTA10.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA11.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA12.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA13.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA14.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA15.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA16.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA17.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA18.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA24.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA25.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA26.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA27.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA28.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA30.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA31.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA32.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA33.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA34.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA35.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA36.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA37.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA38.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA39.Name            , fmEdit);
   FormManager.AddComp(CBSUBCUENTA40.Name            , fmEdit);
   FormManager.AddComp(CBDESCSUBCUENTA8.Name         , fmEdit);
   FormManager.AddComp(CBDESCSUBCUENTA7.Name         , fmEdit);
   FormManager.AddComp(CBDESCSUBCUENTA15.Name        , fmEdit);
   FormManager.AddComp(CBDESCSUBCUENTA14.Name        , fmEdit);
   FormManager.AddComp(CBDESCSUBCUENTA13.Name        , fmEdit);
   FormManager.AddComp(CBDESCSUBCUENTA12.Name        , fmEdit);
   FormManager.AddComp(CBDESCSUBCUENTA11.Name        , fmEdit);
   FormManager.AddComp(DBLookupCombo86.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo88.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo90.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo92.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo94.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo96.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo98.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo100.Name         , fmEdit);
   FormManager.AddComp(OvcDbNumericField1.Name       , fmEdit);
   FormManager.AddComp(OvcDbNumericField2.Name       , fmEdit);
   FormManager.AddComp(DBLookupCombo118.Name         , fmEdit);
   FormManager.AddComp(DBLookupCombo124.Name         , fmEdit);
   FormManager.AddComp(DBLookupCombo25.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo42.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo27.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo45.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo17.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo53.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo58.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo35.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo3.Name           , fmEdit);
   FormManager.AddComp(DBLookupCombo10.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo16.Name          , fmEdit);
   FormManager.AddComp(DBCheckBox2.Name              , fmEdit);
   FormManager.AddComp(DBCheckBox1.Name              , fmEdit);
   FormManager.AddComp(DBLookupCombo28.Name          , fmEdit);
   FormManager.AddComp(eDescConcepto.Name            , fmEdit);
   FormManager.AddComp(DBLookupCombo11.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo30.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo13.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo20.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo24.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo38.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo6.Name           , fmEdit);
   FormManager.AddComp(DBLookupCombo12.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo21.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo39.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo40.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo43.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo44.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo46.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo47.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo48.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo8.Name           , fmEdit);
   FormManager.AddComp(DBLookupCombo22.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo29.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo32.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo14.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo33.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo41.Name          , fmEdit);
   FormManager.AddComp(eSubctaVentasCorredorDesc.Name, fmEdit);
   FormManager.AddComp(DBLookupCombo1.Name           , fmEdit);
   FormManager.AddComp(DBLookupCombo2.Name           , fmEdit);
   FormManager.AddComp(DBLookupCombo4.Name           , fmEdit);
   FormManager.AddComp(DBLookupCombo5.Name           , fmEdit);
   FormManager.AddComp(DBLookupCombo7.Name           , fmEdit);
   FormManager.AddComp(DBLookupCombo9.Name           , fmEdit);
   FormManager.AddComp(DBLookupCombo15.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo23.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo26.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo34.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo36.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo37.Name          , fmEdit);
   FormManager.AddComp(DBLookupCombo31.Name          , fmEdit);

   FormManager.Mode := fmEdit;
   FormManager.Mode := fmBrowse;
end;

procedure TWParametrizacionFacturacion.FormShow(Sender: TObject);
begin
   DMRef.QParametros.Close;
   //DMRef.QParametros.Regenerar := True;
   DMRef.QParametros.Close;
   DMRef.QParametros.Open;
end;

procedure TWParametrizacionFacturacion.BtnModifyClick(Sender: TObject);
begin
   PageControl2.ActivePage := TabSheetRegimGeneral;
   PageControl1.ActivePage := TabSheetSales;

   DMRef.QParametros.Edit;
   FormManager.Mode := fmEdit;

   CBSUBCUENTA7.SetFocus;
end;

procedure TWParametrizacionFacturacion.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_ESCAPE: begin
         Key := 0;
         if DMRef.QParametros.State in dsEditModes then begin
            BtnCancel.Click;
         end;
      end;
      VK_F9: begin
         if DMRef.QParametros.State in dsEditModes then begin
            BtnAccept.Click;
         end;
      end;
   end;
end;

procedure TWParametrizacionFacturacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if DMRef.QParametros.State = dsBrowse then  begin
      FormManager.Free;
      Action := caFree;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWParametrizacionFacturacion.BtnAcceptClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   try
      DMRef.QParametros.Post;
      DMRef.QParametros.Transaction.CommitRetaining;
   except
      DatabaseError('Error al guardar los datos');
   end;
   FormManager.Mode := fmBrowse;
end;

procedure TWParametrizacionFacturacion.BtnCancelClick(Sender: TObject);
begin
   Perform(wm_NextDlgCtl, 0, 0);

   if not DMRef.QParametros.Modified then begin
      DMRef.QParametros.Cancel;
      FormManager.Mode := fmBrowse;
   end else
   if MessageDlg('¿Quiere anular las modificaciones realizadas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try    DMRef.QParametros.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      FormManager.Mode := fmBrowse;
   end;
end;

function TWParametrizacionFacturacion.ExistsAccount(ACD_ACCOUNT :string):Boolean;
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('SELECT COUNT(*) HOW_MANY         ');
      Q.SQL.ADD('FROM   SUBCTAS                   ');
      Q.SQL.ADD('WHERE  SUBCUENTA = :prmSUBCUENTA ');
      Q.ParamByName('prmSUBCUENTA').AsString := ACD_ACCOUNT;
      Q.Open;
      Result := Q.FieldByName('HOW_MANY').AsInteger > 0;
   finally
      Q.Free;
   end;
end;

procedure TWParametrizacionFacturacion.InsertAccounts(ACD_ACCOUNT, ADS_ACCOUNT :string);
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('INSERT INTO SUBCTAS (    SUBCUENTA,     DESCRIPCION, OBSOLETO)  ');
      Q.SQL.ADD('            VALUES  (:prmSUBCUENTA, :prmDESCRIPCION, ''N''   )  ');
      Q.ParamByName('prmSUBCUENTA'  ).AsString := ACD_ACCOUNT;
      Q.ParamByName('prmDESCRIPCION').AsString := ADS_ACCOUNT;
      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
end;

procedure TWParametrizacionFacturacion.UpdateAccount(ACD_ACCOUNT, ADS_ACCOUNT :string);
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('UPDATE SUBCTAS SET DESCRIPCION = :prmDESCRIPCION, ');
      Q.SQL.ADD('                   OBSOLETO    = ''N''            ');
      Q.SQL.ADD('WHERE SUBCUENTA = :prmSUBCUENTA                   ');
      Q.ParamByName('prmSUBCUENTA'  ).AsString := ACD_ACCOUNT;
      Q.ParamByName('prmDESCRIPCION').AsString := ADS_ACCOUNT;
      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
end;

function TWParametrizacionFacturacion.CheckAccount(ACD_ACCOUNT, ADS_ACCOUNT :string):string;
const zeros = '0000000000';
var Diff :Integer;
begin
   if Length(ACD_ACCOUNT) < DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger then begin
      Diff := DMRef.QParametrosLONGITUD_SUBCUENTAS.AsInteger - Length(ACD_ACCOUNT);
      Result := Copy(ACD_ACCOUNT, 1, 3)+ Copy(Zeros, 1, Diff) + Copy(ACD_ACCOUNT, 4, Length(ACD_ACCOUNT));
   end
   else Result := ACD_ACCOUNT;

   if not ExistsAccount(Result) then begin
      InsertAccounts(Result, ADS_ACCOUNT);
   end
   else UpdateAccount(Result, ADS_ACCOUNT);
end;

procedure TWParametrizacionFacturacion.InsertConcepts(ACD_CONCEPT, ADS_CONCEPT, ATYPE, ACLASS :string);
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('INSERT INTO CONCEPTS(    ID_CONCEPTOS,     DESCRIPCION,     TIPOCONTABILIDAD,     TIPOCONCEPTO,     OBSOLETO) ');
      Q.SQL.ADD('            VALUES  (:prmID_CONCEPTOS, :prmDESCRIPCION, :prmTIPOCONTABILIDAD, :prmTIPOCONCEPTO, :prmOBSOLETO) ');
      Q.ParamByName('prmID_CONCEPTOS'    ).AsString := ACD_CONCEPT;
      Q.ParamByName('prmDESCRIPCION'     ).AsString := ADS_CONCEPT;
      Q.ParamByName('prmTIPOCONTABILIDAD').AsString := ACLASS;
      Q.ParamByName('prmTIPOCONCEPTO'    ).AsString := ATYPE;
      Q.ParamByName('prmOBSOLETO'        ).AsString := 'N';
      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
   QSubCuentas.Refresh;
end;

function  TWParametrizacionFacturacion.ExistsConcept(ACD_CONCEPT :string):Boolean;
var Q :TIBQuery;
begin
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('SELECT COUNT(*) HOW_MANY             ');
      Q.SQL.ADD('FROM   CONCEPTOS                     ');
      Q.SQL.ADD('WHERE  ID_CONCEPTOS = :prmCD_CONCEPT ');
      Q.ParamByName('prmCD_CONCEPT').AsString := ACD_CONCEPT;
      Q.Open;
      Result := Q.FieldByName('HOW_MANY').AsInteger > 0;
   finally
      Q.Free;
   end;
end;

procedure TWParametrizacionFacturacion.CheckConcept(ACD_CONCEPT, ADS_CONCEPT, ATYPE, ACLASS :string);
begin
   if not ExistsConcept(ACD_CONCEPT) then begin
      InsertConcepts(ACD_CONCEPT, ADS_CONCEPT, ATYPE, ACLASS);
   end;
end;

procedure TWParametrizacionFacturacion.BtnDefaultValuesClick(Sender: TObject);
var Q :TIBQuery;
begin
   DMRef.QParametros.Post;;
   DMRef.QParametros.Transaction.CommitRetaining;
   
   CheckAccount('129001', 'PERDIDAS Y GANANCIAS'                          );
   CheckAccount('477021', 'IVA REPERCUTIDO AL 21%'                        );
   CheckAccount('477000', 'IVA REPERCUTIDO EXENTO'                        );
   CheckAccount('477060', 'IVA SOPORTADO UNIÓN EUROPEA'                   );
   CheckAccount('700000', 'VENTAS'                                        );
   CheckAccount('708000', 'DEVOLUCIÓN DE VENTAS O SIMILAR'                );
   CheckAccount('600000', 'COMPRAS'                                       );
   CheckAccount('477010', 'IVA REPERCUTIDO AL 10%'                        );
   CheckAccount('477004', 'IVA REPERCUTIDO AL 4%'                         );
   CheckAccount('472021', 'RECARGO SOPORTADO MERCAD. AL 21%'              );
   CheckAccount('472010', 'RECARGO SOPORTADO MERCAD. AL 10%'              );
   CheckAccount('472004', 'RECARGO SOPORTADO MERCAD. AL 4%'               );
   CheckAccount('477421', 'RECARGO DE EQUIVALENCIA DEL 21% (5.2%)'        );
   CheckAccount('477110', 'RECARGO DE EQUIVALENCIA DEL 10% (1.4%)'        );
   CheckAccount('477104', 'RECARGO DE EQUIVALENCIA DEL 4% (0.5%)'         );
   CheckAccount('430000', 'VENTAS'                                        );
   CheckAccount('570001', 'CAJA'                                          );
   CheckAccount('640000', 'SUELDOS Y SALARIOS'                            );
   CheckAccount('475002', 'H.P. ACREED. RETENC. PERSON.'                  );
   CheckAccount('475003', 'H.P. ACREED. RETENC. PROFES.'                  );
   CheckAccount('475004', 'H.P. ACREED. RETENC. ALQUILERES'               );
   CheckAccount('465000', 'REMUNERACIONES PENDIENTES DE PAGO NOMINA'      );
   CheckAccount('476001', 'SEG.SOCIAL'                                    );
   CheckAccount('642000', 'S.S.CARGO EMPRESA'                             );
   CheckAccount('400000', 'GENERICA DE COMPRAS'                           );
   CheckAccount('475001', 'H.P. ACREEDORA POR IVA'                        );
   CheckAccount('472000', 'IVA SOPORTADO EXENTO'                          );
   CheckAccount('472060', 'IVA SOPORTADO UNION EUROPEA'                   );
   CheckAccount('572000', 'BANCO GENERICO'                                );

   CheckConcept( '01',   'S/FRA.'              , '3', 'N');
   CheckConcept( '02',   'N/FRA.'              , '3', 'N');
   CheckConcept( '07',   'COBRO FACTURA'       , 'O', 'N');
   CheckConcept( '08',   'PAGO FACTURA'        , 'O', 'N');
   CheckConcept( '13',   'IVA TRIMESTRAL'      , 'O', 'N');
   CheckConcept( '14',   'VARIOS'              , 'O', 'N');
   CheckConcept( '32',   'SEGUROS SOCIALES MES', 'O', 'N');
   CheckConcept( '33',   'NOMINAS MES'         , 'O', 'N');
   CheckConcept( '50',   'IVA SOPORTADO'       , 'I', 'N');
   CheckConcept( '60',   'IVA REPERCUTIDO'     , 'I', 'N');
   CheckConcept( '90',   'CIERRE *E*'          , 'C', 'E');
   CheckConcept( '92',   'APERT. *E*'          , 'A', 'E');
   CheckConcept( '93',   'CIERRE *N*'          , 'C', 'N');
   CheckConcept( '95',   'APERT. *N*'          , 'A', 'N');
   CheckConcept( '99',   'CLAVE ESPECIAL'      , 'O', 'E');
   CheckConcept('001',   'S/FRA COMPRA CE'     , '3', 'N');
   CheckConcept('600',   'IVA REP.CE'          , 'I', 'N');

   Q := TIBQuery.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('UPDATE PARAMETROS SET                                          ');
      Q.SQL.Add('           CTO_REGULARIZACION             =   ''93''       ,   ');{CIERRE *N*, Cierre, Normal}
      Q.SQL.Add('           SUBCUENTA_CIERRE               =   ''129000001'',   ');{PERDIDAS Y GANANCIAS}
      Q.SQL.Add('           CTO_APERTURA                   =   ''95''       ,   ');{APERT. *N*, Apertura, Normal}
      Q.SQL.Add('           CTO_REGULARIZACION_ESP         =   ''90''       ,   ');{CIERRE *E*, Cierre, Especial}
      Q.SQL.Add('           CTO_APERTURA_ESP               =   ''92''       ,   ');{APERT. *E*, Apertura, Especial}
      Q.SQL.Add('           SCTAIVANORMAL                  =   ''477000021'',   ');{IVA REPERCUTIDO AL 21%}
      Q.SQL.Add('           SCTAIVAEXENTO                  =   ''477000000'',   ');{IVA REPERCUTIDO EXENTO}
      Q.SQL.Add('           SCTAIVAINTRA                   =   ''477000060'',   ');{IVA SOPORTADO UNIÓN EUROPEA}
      Q.SQL.Add('           SCTAVENTAS                     =   ''700000000'',   ');{VENTAS }
      Q.SQL.Add('           SCTADEVOLUCION                 =   ''708000000'',   ');{DEVOLUCIÓN DE VENTAS O SIMILAR}
      Q.SQL.Add('           CTOIVANORMAL                   =   ''60''       ,   ');{IVA REPERCUTIDO, IVA, Normal}
      Q.SQL.Add('           CTOIVAEXENTO                   =   ''60''       ,   ');{IVA REPERCUTIDO, IVA, Normal}
      Q.SQL.Add('           CTOIVAINTRA                    =   ''600''      ,   ');{IVA REP.CE,      IVA, Normal}
      Q.SQL.Add('           CTOVENTAS                      =   ''02''       ,   ');{N/FRA.         , 347, Normal}
      Q.SQL.Add('           CTODEVOLUCION                  =   ''02''       ,   ');{N/FRA.         , 347, Normal}
      Q.SQL.Add('           CTOCLIENTES                    =   ''02''       ,   ');{N/FRA.         , 347, Normal}
      Q.SQL.Add('           SCTADESCUENTO                  =   NULL         ,   ');
      Q.SQL.Add('           SCTACOMPRAS                    =   ''600000000'',   ');{COMPRAS}
      Q.SQL.Add('           CTODESCUENTO                   =   NULL         ,   ');
      Q.SQL.Add('           CTOCOMPRAS                     =   ''01''       ,   ');
      Q.SQL.Add('           SCTAIVAREDUCIDO                =   ''477000010'',   ');{IVA REPERCUTIDO AL 10%}
      Q.SQL.Add('           CTOIVAREDUCIDO                 =   ''60''       ,   ');{IVA REPERCUTIDO, IVA, Normal}
      Q.SQL.Add('           SCTAIVASUPER                   =   ''477000004'',   ');{IVA REPERCUTIDO AL 4%}
      Q.SQL.Add('           CTOIVASUPER                    =   ''60''       ,   ');{IVA REPERCUTIDO, IVA, Normal}
      Q.SQL.Add('           CTOPROVEEDORES                 =   ''01''       ,   ');{S/FRA,           347, Normal}
      Q.SQL.Add('           SCTAIVACNORMAL                 =   ''472000021'',   ');{RECARGO SOPORTADO MERCAD. AL 21%}
      Q.SQL.Add('           CTOIVACNORMAL                  =   ''50''       ,   ');{IVA SOPORTADO  , IVA, Normal}
      Q.SQL.Add('           SCTAIVACREDUCIDO               =   ''472000010'',   ');{RECARGO SOPORTADO MERCAD. AL 10%}
      Q.SQL.Add('           CTOIVACREDUCIDO                =   ''50''       ,   ');{IVA SOPORTADO  , IVA, Normal}
      Q.SQL.Add('           SCTAIVACSUPER                  =   ''472000004'',   ');{RECARGO SOPORTADO MERCAD. AL 4%}
      Q.SQL.Add('           CTOIVACSUPER                   =   ''50''       ,   ');{IVA SOPORTADO  , IVA, Normal}
      Q.SQL.Add('           SCTARECNORMAL                  =   ''477000421'',   ');{RECARGO DE EQUIVALENCIA DEL 21% (5.2%)}
      Q.SQL.Add('           CTORECNORMAL                   =   ''60''       ,   ');{IVA REPERCUTIDO, IVA, Normal}
      Q.SQL.Add('           SCTARECREDUCIDO                =   ''477000110'',   ');{RECARGO DE EQUIVALENCIA DEL 10% (1.4%)}
      Q.SQL.Add('           CTORECREDUCIDO                 =   ''60''       ,   ');{IVA REPERCUTIDO, IVA, Normal}
      Q.SQL.Add('           SCTARECSUPER                   =   ''477000104'',   ');{RECARGO DE EQUIVALENCIA DEL 4% (0.5%)}
      Q.SQL.Add('           CTORECSUPER                    =   ''60''       ,   ');{IVA REPERCUTIDO, IVA, Normal}
      Q.SQL.Add('           CTORECIBOVENTAS                =   ''02''       ,   ');{N/FRA.         , 347, Normal}
      Q.SQL.Add('           VGENERICA                      =   ''430000000'',   ');{VENTAS}
      Q.SQL.Add('           SUBCAJA                        =   ''570000001'',   ');{CAJA}
      Q.SQL.Add('           CTOCOBROF                      =   ''02''       ,   ');{N/FRA.         , 347, Normal}
      Q.SQL.Add('           CTONOME                        =   ''32''       ,   ');{SEGUROS SOCIALES MES, Otros, Normal}
      Q.SQL.Add('           CTONOMT                        =   ''33''       ,   ');{NOMINAS MES     , Otros, Normal}
      Q.SQL.Add('           SCTANOMSUELDO                  =   ''640000000'',   ');{SUELDOS Y SALARIOS}
      Q.SQL.Add('           SCTANOMIRPF                    =   ''475010001'',   ');{H.P. ACREED. RETENC. PERSON}
      Q.SQL.Add('           SCTANOMPAGO                    =   ''465000000'',   ');{REMUNERACIONES PENDIENTES DE PAGO NOMINA}
      Q.SQL.Add('           SCTANOMSSE                     =   ''476000001'',   ');{SEG.SOCIAL}
      Q.SQL.Add('           SCTANOMSST                     =   ''476000001'',   ');{SEG.SOCIAL}
      Q.SQL.Add('           SCTANOMCARGO                   =   ''642000000'',   ');{S.S.CARGO EMPRESA}
      Q.SQL.Add('           SCTADTOPPV                     =   ''430000000'',   ');{VENTAS}
      Q.SQL.Add('           SCTADTOPPC                     =   ''400000000'',   ');{GENERICA DE COMPRAS}
      Q.SQL.Add('           CTODTOPPV                      =   ''99''       ,   ');{CLAVE ESPECIAL, Otros, Especial}
      Q.SQL.Add('           CTODTOPPC                      =   ''99''       ,   ');{CLAVE ESPECIAL, Otros, Especial}
      Q.SQL.Add('           SCTARETPROF                    =   ''475010002'',   ');{H.P. ACREED. RETENC. PROFES.}
      Q.SQL.Add('           SCTARETARRE                    =   ''475010010'',   ');{H.P. ACREED. RETENC. ALQUILERES}
      Q.SQL.Add('           CTORETPROF                     =   ''01''       ,   ');{S/FRA,           347, Normal}
      Q.SQL.Add('           CTORETARRE                     =   ''14''       ,   ');{VARIOS           , Otros, Normal}
      Q.SQL.Add('           SCTAHACIVA                     =   ''475000001'',   ');{H.P. ACREEDORA POR IVA}
      Q.SQL.Add('           CTOHACIVA                      =   ''13''       ,   ');{IVA TRIMESTRAL   , Otros, Normal}
      Q.SQL.Add('           SCTAIVACEXENTO                 =   ''472000000'',   ');{IVA SOPORTADO EXENTO}
      Q.SQL.Add('           CTOIVACEXENTO                  =   ''50''       ,   ');{IVA SOPORTADO  , IVA, Normal}
      Q.SQL.Add('           CTOPAGOF                       =   ''01''       ,   ');{S/FRA,           347, Normal}
      Q.SQL.Add('           VGENERICAC                     =   ''400000000'',   ');{GENERICA DE COMPRAS}
      Q.SQL.Add('           SCTAEFECTDESCONTADOS           =   NULL         ,   ');
      Q.SQL.Add('           SCTADEUDASDESCUENTOS           =   NULL         ,   ');
      Q.SQL.Add('           CTOPROVINTRA                   =   ''001''      ,   ');{S/FRA COMPRA CE, 349, Normal}
      Q.SQL.Add('           SCTAIVAINTRADEDUCIBLE          =   ''472000060'',   ');{IVA SOPORTADO UNION EUROPEA}
      Q.SQL.Add('           SCTAIVACINTRADEDUCIBLE         =   ''472000060'',   ');{IVA SOPORTADO UNION EUROPEA}
      Q.SQL.Add('           SCTAIVACINTRAREPERCUTIDO       =   ''477000060'',   ');{IVA SOPORTADO UNIÓN EUROPEA}
      Q.SQL.Add('           SCTAGENINTRACOM                =   NULL         ,   ');
      Q.SQL.Add('           SCTAIVAEXENTOCEE               =   NULL         ,   ');
      Q.SQL.Add('           SCTAINTERESES                  =   NULL         ,   ');
      Q.SQL.Add('           SCTAEXPORTACIONES              =   ''477000000'',   ');{IVA REPERCUTIDO EXENTO}
      Q.SQL.Add('           SCTAOTRASREMUN                 =   NULL         ,   ');
      Q.SQL.Add('           SCTABANCO                      =   ''572000000'',   ');{BANCO GENERICO}
      Q.SQL.Add('           CTOCOBRO                       =   ''07''       ,   ');{COBRO FACTURA , Otros, Normal}
      Q.SQL.Add('           CTOPAGO                        =   ''08''       ,   ');{PAGO FACTURA  , Otros, Normal}
      Q.SQL.Add('           SCTAEFECTOSCOMERCIALES         =   NULL         ,   ');
      Q.SQL.Add('           CTOEFECTOSCOMERCIALES          =   NULL         ,   ');
      Q.SQL.Add('           CTODEUDASDESCUENTOS            =   NULL         ,   ');
      Q.SQL.Add('           SCTAREMESAEFECTOS              =   NULL         ,   ');
      Q.SQL.Add('           CTOREMESAEFECTOS               =   NULL             ');
      Q.SQL.Add(' WHERE ID_PARAMETROS = :prmID_PARAMETROS                       ');

      Q.ParamByName('prmID_PARAMETROS').AsString := DMRef.QParametrosID_PARAMETROS.AsString;

      Q.ExecSQL;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;

   QSubCuentas.Refresh;
   DMRef.QParametros.Refresh;

   DMRef.QParametros.Edit;
end;


end.
