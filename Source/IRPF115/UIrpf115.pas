unit UIrpf115;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, WinProcs, WinTypes,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, shellapi, StdCtrls, SysUtils,
     UIRPF115Model;

type
  TWIrpf115 = class(TForm)
    Datos: TGroupBox;
    Label1: TLabel;
    QIrpf115: TClientDataSet;
    sIrpf115: TDataSource;
    GroupBoxFormaPago: TRadioGroup;
    EditEJERCICIO: TDBEdit;
    Label2: TLabel;
    EditPERIODO: TDBEdit;
    ChecBoxDeclarante: TCheckBox;
    Label7: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    GroupBox12: TGroupBox;
    Label25: TLabel;
    EditLIQUIDACION_03: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    EditINGRESO: TDBEdit;
    Label3: TLabel;
    EditPERCEPTOR_1: TDBEdit;
    Label4: TLabel;
    EditLIQUIDACION_02: TDBEdit;
    Label5: TLabel;
    EditLIQUIDACION_04: TDBEdit;
    Label84: TLabel;
    EditCCC: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnEdtErrores: TButton;
    BtnEdtProcesar: TButton;
    Shape1: TShape;
    lTitulo: TLabel;
    QIrpf115EJERCICIO: TIntegerField;
    QIrpf115PERIODO: TStringField;
    QIrpf115LIQUIDACION_01: TIntegerField;
    QIrpf115LIQUIDACION_02: TFloatField;
    QIrpf115LIQUIDACION_03: TFloatField;
    QIrpf115LIQUIDACION_04: TFloatField;
    QIrpf115INGRESO: TFloatField;
    QIrpf115FECHA_IMPRESION: TDateField;
    QIrpf115FECHA_DESDE: TDateField;
    QIrpf115FECHA_HASTA: TDateField;
    QIrpf115CCC: TStringField;
    procedure BtnEdtProcesarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnEdtErroresClick(Sender: TObject);
    procedure CalcularIngreso(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TIRPF115Model;
    function FormatoImporte(importe: Double; Longitud: Integer): String;
  public
    nSumaSueldoD :Double;
    nSumaIrpfD   :Double;
    nSumaIrpfH   :Double;
  end;

var WIrpf115: TWIrpf115;

implementation

uses System.Math, System.DateUtils, System.StrUtils, System.UITypes,
     DM, Globales, Processing, ccStr;

{$R *.DFM}

procedure TWIrpf115.FormCreate(Sender: TObject);
begin
   FModel := TIRPF115Model.Create(DMRef.BDContab);
   Self.Caption := '';

   QIRPF115.CreateDataSet;
   QIRPF115.Active := True;
   QIRPF115.Append;
   QIrpf115FECHA_IMPRESION.AsDateTime := Date;
   QIrpf115FECHA_DESDE.AsDateTime     := Date;
   QIrpf115FECHA_HASTA.AsDateTime     := Date;
   QIrpf115EJERCICIO.AsInteger        := YearOf(date);
        if (MonthOf(Date) >= 1) and (MonthOf(Date) <= 3) then QIrpf115PERIODO.AsString := '1T'
   else if (MonthOf(Date) >= 4) and (MonthOf(Date) <= 6) then QIrpf115PERIODO.AsString := '2T'
   else if (MonthOf(Date) >= 7) and (MonthOf(Date) <= 9) then QIrpf115PERIODO.AsString := '3T'
   else QIrpf115PERIODO.AsString := '4T';

   QIrpf115CCC.AsString := DMRef.QParametrosCCC.AsString;
end;

procedure TWIrpf115.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWIrpf115.BtnEdtProcesarClick(Sender: TObject);
var F:          TextFile;
    Registro:   String;
    cProvincia: String;
    cNombreFiscal, cApellidos, cNombre: String;
    nPosComa:   Cardinal;
    Q           :TIBSQL;
begin

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);
   if QIrpf115.State in dsEditModes then begin
      QIrpf115.Post;
   end;

   // Buscar provincia
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('SELECT NOMBRE FROM PROVINCIAS');
      Q.SQL.Add('WHERE PROVINCIA=:PROVINCIA');
      Q.ParamByName('provincia').AsString := DmRef.QParametrosPROVINCIA.AsString;
      Q.ExecQuery;
      cProvincia := Q.FieldByName('nombre').AsString;
   finally
      Q.Free;
   end;

   // Preparacion registro a imprimir por impresor de Hacienda
   AssignFile(F, Config.AppFolder + 'Hacienda\Entrada.txt');
   Rewrite(F);
   Registro      := '115' +                // Modelo 115
      '01' +                 // Pagina 01
      ' ' +                  // Indicador pag. complementaria
      ' ' +                  // Tipo de declaracion
      // Codigo de administracion  (5)
      TStrTools.BackChar(DmRef.QParametrosCODADMON.AsString, '0', 5) +
      TStrTools.LeadChar(Copy(Trim(DmRef.QParametrosNIF.AsString), 1, 9), '0', 9) +
      // Nif de 9 posiciones
      DupeString(' ', 4); // Letras de la etiqueta
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
         TStrTools.Backchar(copy(
         Trim(Uppercase(DmRef.QParametrosNOMBREFISCAL.AsString)), 1, 30), ' ', 30) +
         TStrTools.Backchar(copy(
         Trim(UpperCase(DmRef.QParametrosNOMBREFISCAL.AsString)), 31, 15), ' ', 15);
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
      // Telefono
      TStrTools.Backchar(copy(Trim(DmRef.QParametrosTELEFONO.AsString), 1, 9), ' ', 9) +
      // Municipio
      TStrTools.Backchar(copy(Trim(Uppercase(DmRef.QParametrosPOBLACION.AsString)),
      1, 20), ' ', 20) +
      // Provincia
      TStrTools.Backchar(Uppercase(copy(Trim(cProvincia), 1, 15)), ' ', 15) +
      // Cod. Postal
      TStrTools.Leadchar(copy(Trim(DmRef.QParametrosCODPOSTAL.AsString), 1, 5), '0', 5) +
      // Textos en mayusculas <------------------------------------ OJO -------->
      TStrTools.LeadChar(QIrpf115EJERCICIO.AsString, '0', 4) +  // Ejercicio
      TStrTools.BackChar(QIrpf115PERIODO.AsString, ' ', 2) +    // Periodo
      // Dinerarios Nº Perceptores [01]
      TStrTools.LeadChar(Trim(QIrpf115LIQUIDACION_01.AsString), '0', 6) +
      // Base Retenciones e ingresos a cuenta [02]
      FormatoImporte(QIrpf115LIQUIDACION_02.AsFloat, 13) +
      // Importe Retenciones  [03]
      FormatoImporte(QIrpf115LIQUIDACION_03.AsFloat, 13) +
      // A Deducir [04]
      FormatoImporte(QIrpf115LIQUIDACION_04.AsFloat, 13) +
      // Resultado a ingresar  [05]
      FormatoImporte(QIrpf115INGRESO.AsFloat, 13) +
      // Complementaria.  Cod. electronico declaracion anterior
      TStrTools.BackChar(' ', ' ', 16) +
      // Complementaria.  Nº de justificante
      TStrTools.BackChar(' ', ' ', 13) +
      // Persona de contacto
      TStrTools.BackChar(Uppercase(Trim(Copy(DmRef.QParametrosCONTACTO.AsString, 1, 100))), ' ', 100) +
      // Telefono de contacto
      TStrTools.BackChar(DupeString(' ', 9), ' ', 9) +
      // Observaciones
      TStrTools.BackChar(' ', ' ', 350);

   // Ingreso. Forma de pago, efectivo (1)
   // Ingreso. Forma de pago, adeudo en cuenta (1)
   if GroupBoxFormaPago.ItemIndex = 1 then begin
      Registro := Registro + 'X ';
   end
   else begin
      Registro := Registro + ' X';
   end;

   // Importe del ingreso 
   Registro := Registro + FormatoImporte(
      QIrpf115INGRESO.AsFloat, 13) +
      // Ingreso. CCC Entidad
      TStrTools.LeadChar(Copy(QIrpf115CCC.AsString, 1, 4), ' ', 4) +
      // Ingreso. CCC Oficina
      TStrTools.LeadChar(Copy(QIrpf115CCC.AsString, 6, 4), ' ', 4) +
      // Ingreso. CCC DC
      TStrTools.LeadChar(Copy(QIrpf115CCC.AsString, 11, 2), ' ', 2) +
      // Ingreso. CCC Cuenta
      TStrTools.LeadChar(Copy(QIrpf115CCC.AsString, 14, 10), ' ', 10) +
      // Firma. dia
      TStrTools.Leadchar(IntToStr(DayOf(QIrpf115FECHA_IMPRESION.AsDateTime)), '0', 2) +
      // Firma. mes
      TStrTools.BackChar(Uppercase(Trim(FormatDateTime('mmmm', QIrpf115FECHA_IMPRESION.AsDateTime))),
      ' ', 10) +
      // Firma. año
      TStrTools.Leadchar(copy(IntToStr(YearOf(QIrpf115FECHA_IMPRESION.AsDateTime)), 1, 4), '0', 4);
   // Fin de Registro
   // Showmessage(IntToStr(Length(Registro)));

   Writeln(F, Registro);
   CloseFile(F);

   // Impresion modelo IVA 115
   if ChecBoxDeclarante.Checked then  begin
      ShellExecute(Application.handle, 'open',
         PChar(Config.AppFolder + '\hacienda\ejecutar2.bat'), nil, nil, SW_HIDE);
   end
   else begin
      ShellExecute(Application.handle, 'open',
         PChar(Config.AppFolder + '\hacienda\ejecutar.bat'), nil, nil, SW_HIDE);
   end;

   MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
   Datos.Update;
   // Close;
end;

procedure TWIrpf115.FormShow(Sender: TObject);
begin
   EditEJERCICIO.SetFocus;
end;

procedure TWIrpf115.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnEdtProcesar.Click;
      end;
   end;
end;

procedure TWIrpf115.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

function TWIrpf115.FormatoImporte(Importe: Double; Longitud: Integer): String;
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
end;

procedure TWIrpf115.BtnEdtErroresClick(Sender: TObject);
begin
   if fileexists(Config.AppFolder + 'hacienda\errores.txt') then  begin
      ShellExecute(Application.handle, 'open',
         PChar(Config.AppFolder + '\hacienda\errores.txt'), nil, nil, SW_SHOWNORMAL);
   end
   else begin
      DatabaseError('No hay errores a visualizar.');
   end;
end;

procedure TWIrpf115.CalcularIngreso(Sender: TObject);
begin
   if not (QIRPF115.State in dsEditModes) then begin
      QIRPF115.Edit;
   end;

   QIrpf115INGRESO.AsFloat := QIrpf115LIQUIDACION_03.AsFloat - QIrpf115LIQUIDACION_04.AsFloat;
end;

end.
