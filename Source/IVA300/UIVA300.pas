unit UIVA300;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages,
     shellapi, StdCtrls, SysUtils, WinProcs, WinTypes,
     UIVA300Model;

type
  TWIva300 = class(TForm)
    Datos: TGroupBox;
    Label1: TLabel;
    QIVA300: TClientDataSet;
    SIVA300: TDataSource;
    GroupBoxFormaPago: TRadioGroup;
    EditEJERCICIO: TDBEdit;
    Label2: TLabel;
    EditPERIODO: TDBEdit;
    Label11: TLabel;
    EditRESULTADO: TDBEdit;
    Label12: TLabel;
    EditLIQUIDACION_32: TDBEdit;
    CheckBoxCopiaDeclarante: TCheckBox;
    CheckBoxTrimestral: TCheckBox;
    Label84: TLabel;
    EditCCC: TDBEdit;
    Label27: TLabel;
    EditLIQUIDACION_31: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnEdtErrores: TButton;
    BtnProcess: TButton;
    BtnEdtBorrador: TButton;
    Shape1: TShape;
    lTitulo: TLabel;
    PageControl1: TPageControl;
    TabSheetIVADeventado: TTabSheet;
    TabSheetIVADeducible: TTabSheet;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label24: TLabel;
    Label32: TLabel;
    GroupBox2: TGroupBox;
    EditBASE_01: TDBEdit;
    EditBASE_04: TDBEdit;
    EditBASE_07: TDBEdit;
    EditBASE_10: TDBEdit;
    EditBASE_13: TDBEdit;
    EditBASE_16: TDBEdit;
    EditBASE_19: TDBEdit;
    EditBASE_00: TDBEdit;
    EditBASE_216: TDBEdit;
    EditBASE_19SI: TDBEdit;
    GroupBox3: TGroupBox;
    EditTIPO_02: TDBEdit;
    EditTIPO_05: TDBEdit;
    EditTIPO_08: TDBEdit;
    EditTIPO_11: TDBEdit;
    EditTIPO_14: TDBEdit;
    EditTIPO_17: TDBEdit;
    EditTIPO_00: TDBEdit;
    GroupBox4: TGroupBox;
    EditCUOTA_03: TDBEdit;
    EditCUOTA_06: TDBEdit;
    EditCUOTA_09: TDBEdit;
    EditCUOTA_12: TDBEdit;
    EditCUOTA_15: TDBEdit;
    EditCUOTA_18: TDBEdit;
    EditCUOTA_20: TDBEdit;
    EditCUOTA_216: TDBEdit;
    EditCUOTA_20SI: TDBEdit;
    OvcDbNumericField21: TDBEdit;
    EditBASE_36: TDBEdit;
    EditBASE_37: TDBEdit;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    GroupBox8: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    EditDEDUCIBLE_22: TDBEdit;
    EditDEDUCIBLE_23: TDBEdit;
    EditDEDUCIBLE_24: TDBEdit;
    EditDEDUCIBLE_23BI: TDBEdit;
    EditDEDUCIBLE_24BI: TDBEdit;
    EditDEDUCIBLE_24SI: TDBEdit;
    EditTOTAL_DEDUCIBLE: TDBEdit;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    EditBASE_22TN: TDBEdit;
    EditBASE_22TR: TDBEdit;
    EditBASE_22TS: TDBEdit;
    EditCUOTA_22TN: TDBEdit;
    EditCUOTA_22TR: TDBEdit;
    EditCUOTA_22TS: TDBEdit;
    EditBASE_22TE: TDBEdit;
    fcGroupBox1: TGroupBox;
    Label30: TLabel;
    Label33: TLabel;
    EditBASE_22B: TDBEdit;
    EditCUOTA_22B: TDBEdit;
    QIVA300EJERCICIO: TIntegerField;
    QIVA300FECHAINICIAL: TDateTimeField;
    QIVA300FECHAFINAL: TDateTimeField;
    QIVA300PERIODO: TStringField;
    QIVA300BASE00: TFloatField;
    QIVA300BASE00NORMAL: TFloatField;
    QIVA300BASE00CEE: TFloatField;
    QIVA300BASE00INTERES: TFloatField;
    QIVA300BASE00EXPORTACION: TFloatField;
    QIVA300TIPO00: TFloatField;
    QIVA300BASE01: TFloatField;
    QIVA300TIPO02: TFloatField;
    QIVA300CUOTA03: TFloatField;
    QIVA300BASE04: TFloatField;
    QIVA300TIPO05: TFloatField;
    QIVA300CUOTA06: TFloatField;
    QIVA300BASE07: TFloatField;
    QIVA300TIPO08: TFloatField;
    QIVA300CUOTA09: TFloatField;
    QIVA300BASE10: TFloatField;
    QIVA300TIPO11: TFloatField;
    QIVA300CUOTA12: TFloatField;
    QIVA300BASE13: TFloatField;
    QIVA300TIPO14: TFloatField;
    QIVA300BASE16: TFloatField;
    QIVA300TIPO17: TFloatField;
    QIVA300CUOTA18: TFloatField;
    QIVA300BASE19: TFloatField;
    QIVA300BASE19SI: TFloatField;
    QIVA300CUOTA20: TFloatField;
    QIVA300CUOTA20SI: TFloatField;
    QIVA300BASE36: TFloatField;
    QIVA300BASE37: TFloatField;
    QIVA300BASEADQINT: TFloatField;
    QIVA300BASE216: TFloatField;
    QIVA300TOTALDEVENGADO: TFloatField;
    QIVA300DEDUCIBLE22: TFloatField;
    QIVA300CUOTA22B: TFloatField;
    QIVA300CUOTA22TN: TFloatField;
    QIVA300CUOTA22TR: TFloatField;
    QIVA300CUOTA22TS: TFloatField;
    QIVA300BASE22B: TFloatField;
    QIVA300BASE22TN: TFloatField;
    QIVA300BASE22TR: TFloatField;
    QIVA300BASE22TS: TFloatField;
    QIVA300BASE22TE: TFloatField;
    QIVA300DEDUCIBLE23: TFloatField;
    QIVA300DEDUCIBLE23BI: TFloatField;
    QIVA300DEDUCIBLE24: TFloatField;
    QIVA300DEDUCIBLE24BI: TFloatField;
    QIVA300DEDUCIBLE24SI: TFloatField;
    QIVA300DEDUCIBLE25: TFloatField;
    QIVA300DEDUCIBLE26: TFloatField;
    QIVA300TOTALDEDUCIBLE: TFloatField;
    QIVA300DIFERENCIA: TFloatField;
    QIVA300LIQUIDACION29: TFloatField;
    QIVA300LIQUIDACION30: TFloatField;
    QIVA300LIQUIDACION31: TFloatField;
    QIVA300LIQUIDACION32: TFloatField;
    QIVA300LIQUIDACION33: TFloatField;
    QIVA300RESULTADO: TFloatField;
    QIVA300COMPENSACION: TFloatField;
    QIVA300DEVOLUCION: TFloatField;
    QIVA300INGRESO: TFloatField;
    QIVA300FECHAIMPRESION: TDateTimeField;
    QIVA300OBSERVACIONES: TStringField;
    QIVA300CCC: TStringField;
    QIVA300CUOTA15: TFloatField;
    QIVA300CUOTA216: TFloatField;
    QIVA300CUOTAADQINT: TFloatField;
    procedure BtnProcessClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CalcularResultado(Sender: TObject);
    procedure BtnEdtErroresClick(Sender: TObject);
    procedure CheckBoxTrimestralClick(Sender: TObject);
    procedure BtnEdtBorradorClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TIVA300Model;
    function FormatoImporte(importe: Double; Longitud: Integer): String;
  public
  end;

var WIva300: TWIva300;

implementation

uses System.Math, System.DateUtils, System.StrUtils,
     DM, DMConta, Globales, Processing, ccStr;

{$R *.DFM}

procedure TWIva300.FormCreate(Sender: TObject);
begin
   FModel := TIVA300Model.Create(DMRef.BDContab);
   Self.Caption := '';

   QIVA300.Active := False;
   QIVA300.CreateDataSet;
   QIVA300.Active := True;
end;

procedure TWIva300.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWIva300.BtnProcessClick(Sender: TObject);
var F             :TextFile;
    Registro      :string;
    cProvincia    :string;
    nAsiento      :Integer;
    nApunte       :Integer;
    dFecha        :TDatetime;
    cNombreFiscal :string;
    cApellidos    :string;
    cNombre       :string;
    nPosComa      :Cardinal;
    Q             :TIBSQL;
    Q2            :TIBSQL;
begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);
   if QIVA300.State in dsEditModes then begin
      QIVA300.Post;
   end;

   if CheckBoxTrimestral.Checked then  begin
      if QIva300PERIODO.AsString = '1T' then begin
         dFecha := Encodedate(QIva300EJERCICIO.AsInteger, 3, 31);
      end else
      if QIva300PERIODO.AsString = '2T' then begin
         dFecha := Encodedate(QIva300EJERCICIO.AsInteger, 6, 30);
      end else
      if QIva300PERIODO.AsString = '3T' then begin
         dFecha := Encodedate(QIva300EJERCICIO.AsInteger, 9, 30);
      end
      else begin
         dFecha := Encodedate(QIva300EJERCICIO.AsInteger, 12, 31);
      end;

      nAsiento := DMContaRef.ObtenerNumeroAsiento;
      nApunte  := 1;

      Q := TIBSQL.Create(nil);
      Q.Database := DMRef.BDContab;
      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('INSERT INTO DIARIO (APUNTE, ASIENTO, CONTRAPARTIDA,');
      Q.SQL.Add('    DEBEHABER, FECHA, ID_CONCEPTOS, IMPORTE, MONEDA, SUBCUENTA)');
      Q.SQL.Add('VALUES (:APUNTE, :ASIENTO,:CONTRAPARTIDA,');
      Q.SQL.Add('    :DEBEHABER, :FECHA, :ID_CONCEPTOS,');
      Q.SQL.Add('    :IMPORTE, :MONEDA, :SUBCUENTA)');

      if RoundTo(QIva300CUOTA03.AsFloat, -2) <> 0 then begin
         Q.Close;
         Q.ParamByName('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         Q.ParamByName('asiento').AsInteger      := nAsiento;
         Q.ParamByName('Fecha').AsDateTime       := dFecha;
         Q.ParamByName('moneda').AsString        := 'E';
         Q.ParamByName('subcuenta').AsString     := DmRef.QParametrosSCTAIVANORMAL.AsString;
         Q.ParamByName('debehaber').AsString     := 'D';
         Q.ParamByName('importe').AsFloat        := QIva300CUOTA03.AsFloat;
         Q.ParamByName('id_conceptos').AsString  := DmRef.QParametrosCTOHACIVA.AsString;
         Q.ParamByName('contrapartida').AsString := DmRef.QParametrosSCTAHACIVA.AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      end;

      if RoundTo(QIva300CUOTA06.AsFloat, -2) <> 0 then begin
         Q.Close;
         Q.ParamByName('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         Q.ParamByName('asiento').AsInteger      := nAsiento;
         Q.ParamByName('Fecha').AsDateTime       := dFecha;
         Q.ParamByName('moneda').AsString        := 'E';
         Q.ParamByName('subcuenta').AsString     := DmRef.QParametrosSCTAIVAREDUCIDO.AsString;
         Q.ParamByName('debehaber').AsString     := 'D';
         Q.ParamByName('importe').AsFloat        := QIva300CUOTA06.AsFloat;
         Q.ParamByName('id_conceptos').AsString  := DmRef.QParametrosCTOHACIVA.AsString;
         Q.ParamByName('contrapartida').AsString := DmRef.QParametrosSCTAHACIVA.AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      end;

      if RoundTo(QIva300CUOTA09.AsFloat, -2) <> 0 then begin
         Q.Close;
         Q.ParamByName('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         Q.ParamByName('asiento').AsInteger      := nAsiento;
         Q.ParamByName('Fecha').AsDateTime       := dFecha;
         Q.ParamByName('moneda').AsString        := 'E';
         Q.ParamByName('subcuenta').AsString     := DmRef.QParametrosSCTAIVASUPER.AsString;
         Q.ParamByName('debehaber').AsString     := 'D';
         Q.ParamByName('importe').AsFloat        := QIva300CUOTA09.AsFloat;
         Q.ParamByName('id_conceptos').AsString  := DmRef.QParametrosCTOHACIVA.AsString;
         Q.ParamByName('contrapartida').AsString := DmRef.QParametrosSCTAHACIVA.AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      end;

      if RoundTo(QIva300CUOTA12.AsFloat, -2) <> 0 then begin
         Q.Close;
         Q.ParamByName('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         Q.ParamByName('asiento').AsInteger      := nAsiento;
         Q.ParamByName('Fecha').AsDateTime       := dFecha;
         Q.ParamByName('moneda').AsString        := 'E';
         Q.ParamByName('subcuenta').AsString     := DmRef.QParametrosSCTARECNORMAL.AsString;
         Q.ParamByName('debehaber').AsString     := 'D';
         Q.ParamByName('importe').AsFloat        := QIva300CUOTA12.AsFloat;
         Q.ParamByName('id_conceptos').AsString  := DmRef.QParametrosCTOHACIVA.AsString;
         Q.ParamByName('contrapartida').AsString := DmRef.QParametrosSCTAHACIVA.AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      end;

      if RoundTo(QIVA300CUOTA15.AsFloat, -2) <> 0 then begin
         Q.Close;
         Q.ParamByName('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         Q.ParamByName('asiento').AsInteger      := nAsiento;
         Q.ParamByName('Fecha').AsDateTime       := dFecha;
         Q.ParamByName('moneda').AsString        := 'E';
         Q.ParamByName('subcuenta').AsString     := DmRef.QParametrosSCTARECREDUCIDO.AsString;
         Q.ParamByName('debehaber').AsString     := 'D';
         Q.ParamByName('importe').AsFloat        := QIVA300CUOTA15.AsFloat;
         Q.ParamByName('id_conceptos').AsString  := DmRef.QParametrosCTOHACIVA.AsString;
         Q.ParamByName('contrapartida').AsString := DmRef.QParametrosSCTAHACIVA.AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      end;

      if RoundTo(QIVA300CUOTA18.AsFloat, -2) <> 0 then begin
         Q.Close;
         Q.ParamByName('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         Q.ParamByName('asiento').AsInteger      := nAsiento;
         Q.ParamByName('Fecha').AsDateTime       := dFecha;
         Q.ParamByName('moneda').AsString        := 'E';
         Q.ParamByName('subcuenta').AsString     := DmRef.QParametrosSCTARECSUPER.AsString;
         Q.ParamByName('debehaber').AsString     := 'D';
         Q.ParamByName('importe').AsFloat        := QIVA300CUOTA18.AsFloat;
         Q.ParamByName('id_conceptos').AsString  := DmRef.QParametrosCTOHACIVA.AsString;
         Q.ParamByName('contrapartida').AsString := DmRef.QParametrosSCTAHACIVA.AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      end;

      Q.SQL.Clear;
      Q.SQL.Add('INSERT INTO DIARIO (APUNTE, ASIENTO,');
      Q.SQL.Add('    DEBEHABER, FECHA, ID_CONCEPTOS, IMPORTE, MONEDA, SUBCUENTA)');
      Q.SQL.Add('VALUES (:APUNTE, :ASIENTO,');
      Q.SQL.Add('    :DEBEHABER, :FECHA, :ID_CONCEPTOS,');
      Q.SQL.Add('    :IMPORTE, :MONEDA, :SUBCUENTA)');

      if RoundTo(QIVA300CUOTA22TN.AsFloat, -2) <> 0 then begin
         Q.Close;
         Q.ParamByName('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         Q.ParamByName('asiento').AsInteger     := nAsiento;
         Q.ParamByName('Fecha').AsDateTime      := dFecha;
         Q.ParamByName('moneda').AsString       := 'E';
         Q.ParamByName('subcuenta').AsString    := DmRef.QParametrosSCTAIVACNORMAL.AsString;
         Q.ParamByName('debehaber').AsString    := 'H';
         Q.ParamByName('importe').AsFloat       := QIVA300CUOTA22TN.AsFloat;
         Q.ParamByName('id_conceptos').AsString := DmRef.QParametrosCTOHACIVA.AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      end;

      if RoundTo(QIVA300CUOTA22TR.AsFloat, -2) <> 0 then begin
         Q.Close;
         Q.ParamByName('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         Q.ParamByName('asiento').AsInteger     := nAsiento;
         Q.ParamByName('Fecha').AsDateTime      := dFecha;
         Q.ParamByName('moneda').AsString       := 'E';
         Q.ParamByName('subcuenta').AsString    := DmRef.QParametrosSCTAIVACREDUCIDO.AsString;
         Q.ParamByName('debehaber').AsString    := 'H';
         Q.ParamByName('importe').AsFloat       := QIVA300CUOTA22TR.AsFloat;
         Q.ParamByName('id_conceptos').AsString := DmRef.QParametrosCTOHACIVA.AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      end;

      if RoundTo(QIVA300CUOTA22TS.AsFloat, -2) <> 0 then begin
         Q.Close;
         Q.ParamByName('Apunte').AsInteger := nApunte;
         Inc(nApunte);
         Q.ParamByName('asiento').AsInteger     := nAsiento;
         Q.ParamByName('Fecha').AsDateTime      := dFecha;
         Q.ParamByName('moneda').AsString       := 'E';
         Q.ParamByName('subcuenta').AsString    := DmRef.QParametrosSCTAIVACSUPER.AsString;
         Q.ParamByName('debehaber').AsString    := 'H';
         Q.ParamByName('importe').AsFloat       := QIVA300CUOTA22TS.AsFloat;
         Q.ParamByName('id_conceptos').AsString := DmRef.QParametrosCTOHACIVA.AsString;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      end;

      // Ultimo
      Q.Close;
      Q.ParamByName('Apunte').AsInteger      := nApunte;
      Q.ParamByName('asiento').AsInteger     := nAsiento;
      Q.ParamByName('Fecha').AsDateTime      := dFecha;
      Q.ParamByName('moneda').AsString       := 'E';
      Q.ParamByName('subcuenta').AsString    := DmRef.QParametrosSCTAHACIVA.AsString;
      Q.ParamByName('debehaber').AsString    := 'H';
      Q.ParamByName('importe').AsFloat       := QIVA300RESULTADO.AsFloat;
      Q.ParamByName('id_conceptos').AsString := DmRef.QParametrosCTOHACIVA.AsString;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;

      MessageDlg('Generado asiento nº ' + FormatFloat('###,###,###', nAsiento), mtInformation, [mbOK], 0);

      BtnProcess.Caption         := 'Imprimir';
      CheckBoxTrimestral.Checked := False;
   end
   else begin
      // Buscar provincia
      Q2 := TIBSQL.Create(nil);
      try
         Q2.Database := DMRef.BDContab;
         Q2.SQL.Add('SELECT NOMBRE FROM PROVINCIAS');
         Q2.SQL.Add('WHERE PROVINCIA=:PROVINCIA');
         Q2.ParamByName('provincia').AsString := DmRef.QParametrosPROVINCIA.AsString;
         Q2.ExecQuery;
         cProvincia := Q2.FieldByName('nombre').AsString;
      finally
         Q2.Free;
      end;

      // Preparacion registro a imprimir por impresora de Hacienda
      AssignFile(F, Config.AppFolder + 'Hacienda\Entrada.txt');
      Rewrite(F);
      Registro      := '300' +                // Modelo 300
         '01' +                 // Pagina 01
         ' ' +                  // Indicador pag. complementaria
         ' ' +                  // Tipo de declaracion
         // Codigo de administracion  (5)
         TStrTools.BackChar(DmRef.QParametrosCODADMON.AsString, '0', 5) +
         TStrTools.LeadChar(Copy(Trim(DmRef.QParametrosNIF.AsString), 1, 9), '0', 9) +
         // Nif de 9 posiciones
         DupeString(' ', 4);             // Letras de la etiqueta
         // Si es persona fisica es obligatorio poner el campo de nombre
         // Se pondra una coma para separar el nombre de los apellidos (Formato: Apellidos, Nombre)
      cNombreFiscal := Trim(Uppercase(DmRef.QParametrosNOMBREFISCAL.AsString));
      nPosComa := Pos(',', cNombreFiscal);
      if DmRef.QParametrosTIPOEMPRESA.AsString = 'F' then // Persona fisica
      begin
         // Apellidos o Razón Social (30)
         cApellidos := TStrTools.Backchar(copy(cNombreFiscal, 1, nPoscoma - 1), ' ', 30);
         // Nombre (15)
         cNombre    := TStrTools.Backchar(Trim(copy(cNombreFiscal, nPoscoma + 1, 15)), ' ', 15);
         Registro   := Registro + cApellidos + cNombre;
      end
      else begin  // Empresa
         Registro := Registro +
            // Apellidos o Razón Social (30)
            TStrTools.Backchar(copy(Trim(Uppercase(DmRef.QParametrosNOMBREFISCAL.AsString)),
            1, 30), ' ', 30) + TStrTools.Backchar(
            copy(Trim(UpperCase(DmRef.QParametrosNOMBREFISCAL.AsString)), 31, 15), ' ', 15);
      end;

      Registro := Registro +
         // Sigla Via   (2)
         TStrTools.Backchar(DmRef.QParametrosSIGLAVIA.AsString, ' ', 2) +
         // Nombre de via publica  (17)
         TStrTools.Backchar(copy(Trim(UpperCase(DmRef.QParametrosDIRECCION.AsString)),
         1, 17), ' ', 17) +
         // Numero (4)
         TStrTools.BackChar(DmRef.QParametrosNUMEROCALLE.AsString, ' ', 4) +
         // Escalera  (2)
         TStrTools.BackChar(DmRef.QParametrosESCALERA.AsString, ' ', 2) +
         // Piso (2)
         TStrTools.BackChar(DmRef.QParametrosPISO.AsString, ' ', 2) +
         // Puerta (2)
         TStrTools.BackChar(DmRef.QParametrosPUERTA.AsString, ' ', 2) +
         // Cod. Postal
         TStrTools.Leadchar(copy(Trim(DmRef.QParametrosCODPOSTAL.AsString), 1, 5), '0', 5) +
         // Municipio
         TStrTools.Backchar(copy(Trim(Uppercase(DmRef.QParametrosPOBLACION.AsString)),
         1, 20), ' ', 20) +
         // Provincia
         TStrTools.Backchar(Uppercase(copy(Trim(cProvincia), 1, 15)), ' ', 15) +
         // Telefono
         TStrTools.Backchar(copy(Trim(DmRef.QParametrosTELEFONO.AsString), 1, 9), ' ', 9);
      // Textos en mayusculas <------------------------------------ OJO -------->

      //             Showmessage('Ejercicio: '+IntToStr(Length(Registro)));
      Registro := Registro + TStrTools.LeadChar(QIVA300EJERCICIO.AsString, '0', 4) +
         // Ejercicio
         TStrTools.BackChar(QIVA300PERIODO.AsString, ' ', 2);    // Periodo
         //  Showmessage('Casilla 01: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Gen. Base Imponible [01]
         FormatoImporte(QIVA300BASE01.AsFloat, 13);
      //  Showmessage('Casilla 02: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Gen. Tipo % [02]
         FormatoImporte(QIVA300TIPO02.AsFloat, 4) +
         // Iva Devengado R.Gen. Cuota  [03]
         FormatoImporte(QIVA300CUOTA03.AsFloat, 13);
      //   Showmessage('Casilla 04: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Gen. Base Imponible [04]
         FormatoImporte(QIVA300BASE04.AsFloat, 13);
      //   Showmessage(FormatoImporte(QIVA300Base04.asfloat,13));
      //   Showmessage('Casilla 05: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Gen. Tipo % [05]
         FormatoImporte(QIVA300TIPO05.AsFloat, 4) +
         // Iva Devengado R.Gen. Cuota  [06]
         FormatoImporte(QIVA300CUOTA06.AsFloat, 13) +
         // Iva Devengado R.Gen. Base Imponible [07]
         FormatoImporte(QIVA300BASE07.AsFloat, 13) +
         // Iva Devengado R.Gen. Tipo % [08]
         FormatoImporte(QIVA300TIPO08.AsFloat, 4);
      //      Showmessage('Casilla 09: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Gen. Cuota  [09]
         FormatoImporte(QIVA300CUOTA09.AsFloat, 13) +
         // Iva Devengado R.Equ. Base Imponible [10]
         FormatoImporte(QIVA300BASE10.AsFloat, 13) +
         // Iva Devengado R.Equ. Tipo % [11]
         FormatoImporte(QIVA300TIPO11.AsFloat, 3) +
         // Iva Devengado R.Equ. Cuota  [12]
         FormatoImporte(QIVA300CUOTA12.AsFloat, 13);
      //    Showmessage('Casilla 13: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Equ. Base Imponible [13]
         FormatoImporte(QIVA300BASE13.AsFloat, 13) +
         // Iva Devengado R.Equ. Tipo % [14]
         FormatoImporte(QIVA300TIPO14.AsFloat, 3);
      //     Showmessage('Casilla 15: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Equ. Cuota  [15]
         FormatoImporte(QIVA300CUOTA15.AsFloat, 13);
      //     Showmessage('Casilla 16: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Equ. Base Imponible [16]
         FormatoImporte(QIVA300BASE16.AsFloat, 13);
      //    Showmessage('Casilla 17: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Equ. Tipo % [17]
         FormatoImporte(QIVA300TIPO17.AsFloat, 3);
      // Showmessage(FormatoImporte(QIVA300Tipo17.asfloat,3));

      //Showmessage('Casilla 18: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Iva Devengado R.Equ. Cuota  [18]
         FormatoImporte(QIVA300CUOTA18.AsFloat, 13) +
         // Iva Devengado Adq. Intra. Base Imponible [19]
         FormatoImporte(QIVA300BASE19.AsFloat, 13) +
         // Iva Devengado Adq. Intra. Base Imponible [19] S.I.
         FormatoImporte(QIVA300BASE19SI.AsFloat, 13) +
         // Iva Devengado Adq. Intra. Cuota  [20]
         FormatoImporte(QIVA300CUOTA20.AsFloat, 13) +
         // Iva Devengado Adq. Intra. Cuota  [20] S.I.
         FormatoImporte(QIVA300CUOTA20SI.AsFloat, 13) +
         // Iva Devengado Total Cuota Devengada [21]
         FormatoImporte(QIVA300TOTALDEVENGADO.AsFloat, 13) +
         // Iva Deducible por cuotas soportadas en op. interiores [22]
         FormatoImporte(QIVA300DEDUCIBLE22.AsFloat, 13) +
         // Iva Deducible por cuotas satisfechas importaciones [23]
         FormatoImporte(QIVA300DEDUCIBLE23.AsFloat, 13) +
         // Iva Deducible por cuotas satisfechas importaciones [23] Bienes Inversion
         FormatoImporte(QIVA300DEDUCIBLE23BI.AsFloat, 13) +
         // Iva Deducible por adq. intra.[24]
         FormatoImporte(QIVA300DEDUCIBLE24.AsFloat, 13) +
         // Iva Deducible por adq. intra.[24] Bienes Inversión
         FormatoImporte(QIVA300DEDUCIBLE24BI.AsFloat, 13) +
         // Iva Deducible por adq. intra.[24] Servicios Inversión
         FormatoImporte(QIVA300DEDUCIBLE24SI.AsFloat, 13) +
         // Iva Deducible Reg. Agrario [25]
         FormatoImporte(QIVA300DEDUCIBLE25.AsFloat, 13) +
         // Iva Deducible Regula. Inversiones [26]
         FormatoImporte(QIVA300DEDUCIBLE26.AsFloat, 13) +
         // Iva Deducible Total a Deducir [27]
         FormatoImporte(QIVA300TOTALDEDUCIBLE.AsFloat, 13) +
         // Liquidacion. Diferencia [28]
         FormatoImporte(QIVA300DIFERENCIA.AsFloat, 13) +
         // Liquidacion. Atribuible a la Adm. Estado % [29]
         FormatoImporte(QIVA300LIQUIDACION29.AsFloat, 5) +
         // Liquidacion. Atribuible a la Adm. Estado [30]
         FormatoImporte(QIVA300LIQUIDACION30.AsFloat, 13) +
         // Liquidacion. Cuotas a compenzar de periodos anteriores [31]
         FormatoImporte(QIVA300LIQUIDACION31.AsFloat, 13) +
         // Liquidacion. Entregas intracomunitarias [32]
         FormatoImporte(QIVA300LIQUIDACION32.AsFloat, 13) +
         // Liquidacion. Exclusivamente tributacion conjunta estado y dip. forales [33]
         FormatoImporte(QIVA300LIQUIDACION33.AsFloat, 13) +
         // Liquidacion. Resultado [34]
         FormatoImporte(QIVA300RESULTADO.AsFloat, 13) +
         // Compensacion. Importe a compensar si resulta negativo el resultado
         FormatoImporte(QIVA300COMPENSACION.AsFloat, 13) +
         // Devolucion. Importe
         FormatoImporte(QIVA300DEVOLUCION.AsFloat, 13);

      //  Showmessage('Dev. CCC: '+IntToStr(Length(Registro)));

      if RoundTo(QIVA300INGRESO.AsFloat, -2) > 0 then begin
         Registro := Registro +
            // Devolucion. CCC Entidad
            TStrTools.LeadChar(DupeString(' ', 4), ' ', 4) +
            // Devolucion. CCC Oficina
            TStrTools.LeadChar(DupeString(' ', 4), ' ', 4) +
            // Devolucion. CCC DC
            TStrTools.LeadChar(DupeString(' ', 2), ' ', 2) +
            // Devolucion. CCC Cuenta
            TStrTools.LeadChar(DupeString(' ', 10), ' ', 10);
      end
      else begin
         Registro := Registro +
            // Devolucion. CCC Entidad
            TStrTools.LeadChar(Copy(QIVA300CCC.AsString, 1, 4), ' ', 4) +
            // Devolucion. CCC Oficina
            TStrTools.LeadChar(Copy(QIVA300CCC.AsString, 6, 4), ' ', 4) +
            // Devolucion. CCC DC
            TStrTools.LeadChar(Copy(QIVA300CCC.AsString, 11, 2), ' ', 2) +
            // Devolucion. CCC Cuenta
            TStrTools.LeadChar(Copy(QIVA300CCC.AsString, 14, 10), ' ', 10);
      end;

      // Ingreso. Forma de pago, efectivo (1)
      // Ingreso. Forma de pago, adeudo en cuenta (1)
      if GroupBoxFormaPago.ItemIndex = 1 then begin
         Registro := Registro + 'X ';
      end
      else begin
         Registro := Registro + ' X';
      end;

      Registro := Registro +
         // Ingreso. Importe
         FormatoImporte(QIVA300INGRESO.AsFloat, 13);

      if (RoundTo(QIVA300INGRESO.AsFloat, -2) > 0) and
         (GroupBoxFormaPago.ItemIndex = 0) then begin
         Registro := Registro +
            // Ingreso. CCC Entidad
            TStrTools.LeadChar(Copy(QIVA300CCC.AsString, 1, 4), ' ', 4) +
            // Ingreso. CCC Oficina
            TStrTools.LeadChar(Copy(QIVA300CCC.AsString, 6, 4), ' ', 4) +
            // Ingreso. CCC DC
            TStrTools.LeadChar(Copy(QIVA300CCC.AsString, 11, 2), ' ', 2) +
            // Ingreso. CCC Cuenta
            TStrTools.LeadChar(Copy(QIVA300CCC.AsString, 14, 10), ' ', 10);
      end
      else begin
         Registro := Registro +
            // Ingreso. CCC Entidad
            TStrTools.LeadChar(DupeString(' ', 4), ' ', 4) +
            // Ingreso. CCC Oficina
            TStrTools.LeadChar(DupeString(' ', 4), ' ', 4) +
            // Ingreso. CCC DC
            TStrTools.LeadChar(DupeString(' ', 2), ' ', 2) +
            // Ingreso. CCC Cuenta
            TStrTools.LeadChar(DupeString(' ', 10), ' ', 10);
      end;
      //Showmessage('Persona Contacto: '+IntToStr(Length(Registro)));

      Registro := Registro +
         // Persona de contacto
         TStrTools.BackChar(Uppercase(Trim(Copy(DmRef.QParametrosCONTACTO.AsString, 1, 100))), ' ', 100) +
         // Telefono de contacto
         TStrTools.BackChar(DupeString(' ', 9), ' ', 9);

      //Showmessage('Observaciones: '+IntToStr(Length(Registro)));
      Registro := Registro +
         // Observaciones
         TStrTools.BackChar(Uppercase(Trim(Copy(QIVA300OBSERVACIONES.AsString, 1, 350))),
         ' ', 350) +
         // Firma. dia
         TStrTools.Leadchar(IntToStr(DayOf(QIVA300FECHAIMPRESION.AsDateTime)), '0', 2) +
         // Firma. mes
         TStrTools.BackChar(Uppercase(Trim(FormatDateTime('mmmm', QIVA300FECHAIMPRESION.AsDateTime))),
         ' ', 10);
      // Firma. año
      // Showmessage('Año: '+IntToStr(Length(Registro)));
      Registro := Registro + TStrTools.Leadchar(
         Copy(IntToStr(YearOf(QIVA300FECHAIMPRESION.AsDateTime)), 1, 4), '0', 4);
      // Fin de Registro
      //Showmessage('Final: '+IntToStr(Length(Registro)));

      Writeln(F, Registro);
      CloseFile(F);

      // Impresion modelo IVA 300
      if CheckBoxCopiaDeclarante.Checked then begin
         ShellExecute(Application.handle, 'open', PChar(Config.AppFolder + '\hacienda\ejecutar2.bat'), nil, nil, SW_HIDE);
      end
      else begin
         ShellExecute(Application.handle, 'open', PChar(Config.AppFolder + '\hacienda\ejecutar.bat'), nil, nil, SW_HIDE);
      end;

      if Length(Registro) <> 1087 then begin
         MessageDlg('El fichero no es correcto. Consulte al soporte técnico.', mtInformation, [mbOK], 0);
      end
      else begin
         MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
      end;
   end;
   Datos.Update;
   // Close;
end;

procedure TWIva300.FormShow(Sender: TObject);
begin
   QIVA300.Edit;
   QIVA300CCC.AsString := DMRef.QParametrosCCC.AsString;
end;

procedure TWIva300.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

function TWIva300.FormatoImporte(Importe: Double; Longitud: Integer): String;
var
   cEuro:    String;
   nPosComa: Cardinal;
begin
   cEuro := Trim(FloattostrF(RoundTo(importe, -2), ffFixed, Longitud, 2));
   nPosComa := Pos(',', cEuro);
   if RoundTo(Importe, -2) < 0 then  begin
      Result := 'N' + TStrTools.LeadChar(Copy(cEuro, 2, nPosComa - 2) +
         TStrTools.BackChar(Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', Longitud - 1);
   end
   else begin
      Result := TStrTools.LeadChar(Copy(cEuro, 1, nPosComa - 1) + TStrTools.BackChar(Copy(cEuro, nPosComa + 1, 2), '0', 2),
         '0', Longitud);
   end;
   if longitud < Length(Result) then begin
      Result := Copy(Result, 1, Longitud);
   end;
end;

procedure TWIva300.CalcularResultado(Sender: TObject);
begin
   if not (QIVA300.State in dsEditModes) then QIVA300.Edit;

   QIVA300TOTALDEVENGADO.AsFloat :=
      RoundTo(QIVA300CUOTA03.AsFloat + QIVA300CUOTA06.AsFloat +
              QIVA300CUOTA09.AsFloat + QIVA300CUOTA12.AsFloat +
              QIVA300CUOTA15.AsFloat + QIVA300CUOTA18.AsFloat +
              QIVA300CUOTA20.AsFloat + QIVA300CUOTA216.AsFloat, -2);

   QIVA300TOTALDEDUCIBLE.AsFloat :=
      RoundTo(QIVA300DEDUCIBLE22.AsFloat   + QIVA300DEDUCIBLE23.AsFloat +
              QIVA300DEDUCIBLE23BI.AsFloat + QIVA300DEDUCIBLE24.AsFloat +
              QIVA300DEDUCIBLE24BI.AsFloat + QIVA300DEDUCIBLE24SI.AsFloat +
              QIVA300CUOTA216.AsFloat, -2);

   QIVA300DIFERENCIA.AsFloat     :=
      RoundTo(QIVA300TOTALDEVENGADO.AsFloat - QIVA300TOTALDEDUCIBLE.AsFloat, -2);

   QIVA300RESULTADO.AsFloat      :=  QIVA300DIFERENCIA.AsFloat - QIVA300LIQUIDACION31.AsFloat;

   if RoundTo(QIVA300RESULTADO.AsFloat, -2) > 0 then begin
      QIVA300INGRESO.AsFloat    := QIVA300RESULTADO.AsFloat;
      QIVA300DEVOLUCION.AsFloat := 0;
   end
   else begin
      QIVA300DEVOLUCION.AsFloat := QIVA300RESULTADO.AsFloat;
      QIVA300INGRESO.AsFloat    := 0;
   end;
end;

procedure TWIva300.BtnEdtErroresClick(Sender: TObject);
begin
   if fileexists(Config.AppFolder + 'hacienda\errores.txt') then  begin
      ShellExecute(Application.handle, 'open',
         PChar(Config.AppFolder + '\hacienda\errores.txt'), nil, nil, SW_SHOWNORMAL);
   end
   else begin
      DatabaseError('No hay errores a visualizar.');
   end;
end;

procedure TWIva300.CheckBoxTrimestralClick(Sender: TObject);
begin
   if CheckBoxTrimestral.Checked then begin
      BtnProcess.Caption := 'Generar';
   end
   else begin
      BtnProcess.Caption := 'Imprimir';
   end;
end;

procedure TWIva300.BtnEdtBorradorClick(Sender: TObject);
begin
   FModel.PrintDashModel300(QIVA300);
end;

end.
