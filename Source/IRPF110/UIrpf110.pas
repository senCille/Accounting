unit UIrpf110;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, SysUtils, WinTypes,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, shellapi, StdCtrls, WinProcs,
     UIRPF110Model;

type
  TWIrpf110 = class(TForm)
    Datos: TGroupBox;
    Label1: TLabel;
    QIrpf110: TClientDataSet;
    sIrpf110: TDataSource;
    GroupBoxFormapago: TRadioGroup;
    EditEJERCICIO: TDBEdit;
    Label2: TLabel;
    EditPERIODO: TDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    EditLIQUIDACION_01: TDBEdit;
    EditLIQUIDACION_02: TDBEdit;
    EditLIQUIDACION_03: TDBEdit;
    CheckBoxDeclarante: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    EditFECHA_IMPRIMIR: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditLIQUIDACION_04: TDBEdit;
    EditLIQUIDACION_05: TDBEdit;
    EditLIQUIDACION_06: TDBEdit;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditLIQUIDACION_07: TDBEdit;
    EditLIQUIDACION_08: TDBEdit;
    EditLIQUIDACION_09: TDBEdit;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EditLIQUIDACION_10: TDBEdit;
    EditLIQUIDACION_11: TDBEdit;
    EditLIQUIDACION_12: TDBEdit;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EditLIQUIDACION_13: TDBEdit;
    EditLIQUIDACION_14: TDBEdit;
    EditLIQUIDACION_15: TDBEdit;
    GroupBox9: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EditLIQUIDACION_16: TDBEdit;
    EditLIQUIDACION_17: TDBEdit;
    EditLIQUIDACION_18: TDBEdit;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    EditLIQUIDACION_19: TDBEdit;
    EditLIQUIDACION_20: TDBEdit;
    EditLIQUIDACION_21: TDBEdit;
    GroupBox12: TGroupBox;
    Label25: TLabel;
    EditLIQUIDACION_22: TDBEdit;
    Label26: TLabel;
    EditLIQUIDACION_23: TDBEdit;
    Label27: TLabel;
    EditLIQUIDACION_24: TDBEdit;
    Label28: TLabel;
    EditFECHA_DESDE: TDBEdit;
    Label29: TLabel;
    EditFECHA_HASTA: TDBEdit;
    Label84: TLabel;
    EditCCC: TDBEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnedtCalcular: TButton;
    BtnEdtErrores: TButton;
    BtnEdtProcesar: TButton;
    Shape1: TShape;
    lTitulo: TLabel;
    QIrpf110EJERCICIO: TIntegerField;
    QIrpf110PERIODO: TStringField;
    QIrpf110LIQUIDACION_01: TIntegerField;
    QIrpf110LIQUIDACION_02: TFloatField;
    QIrpf110LIQUIDACION_03: TFloatField;
    QIrpf110LIQUIDACION_04: TIntegerField;
    QIrpf110LIQUIDACION_05: TFloatField;
    QIrpf110LIQUIDACION_06: TFloatField;
    QIrpf110LIQUIDACION_07: TIntegerField;
    QIrpf110LIQUIDACION_08: TFloatField;
    QIrpf110LIQUIDACION_09: TFloatField;
    QIrpf110LIQUIDACION_10: TIntegerField;
    QIrpf110LIQUIDACION_11: TFloatField;
    QIrpf110LIQUIDACION_12: TFloatField;
    QIrpf110LIQUIDACION_13: TIntegerField;
    QIrpf110LIQUIDACION_14: TFloatField;
    QIrpf110LIQUIDACION_15: TFloatField;
    QIrpf110LIQUIDACION_16: TIntegerField;
    QIrpf110LIQUIDACION_17: TFloatField;
    QIrpf110LIQUIDACION_18: TFloatField;
    QIrpf110LIQUIDACION_19: TIntegerField;
    QIrpf110LIQUIDACION_20: TFloatField;
    QIrpf110LIQUIDACION_21: TFloatField;
    QIrpf110LIQUIDACION_22: TFloatField;
    QIrpf110LIQUIDACION_23: TFloatField;
    QIrpf110LIQUIDACION_24: TFloatField;
    QIrpf110INGRESO: TFloatField;
    QIrpf110FECHA_IMPRESION: TDateField;
    QIrpf110FECHA_DESDE: TDateField;
    QIrpf110FECHA_HASTA: TDateField;
    QIrpf110CCC: TStringField;
    procedure BtnEdtProcesarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CalcularResultado(Sender: TObject);
    procedure BtnEdtErroresClick(Sender: TObject);
    procedure CalcularOtro(Sender: TObject);
    procedure BtnedtCalcularClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TIRPF110Model;
    function FormatoImporte(importe: Double; Longitud: Integer): String;
    procedure CalcularSaldos(FechaIni, FechaFin: TDatetime);
  public
    nSumaSueldoD     :Double;
    nSumaIrpfD       :Double;
    nSumaIrpfH       :Double;
    nSumaRendimActiv :Double;
    nSumaRetenActiv  :Double;
  end;

var WIrpf110: TWIrpf110;

implementation

uses DM, General, Globales, UEspere, ccStr, Math;

{$R *.DFM}

procedure TWIrpf110.FormCreate(Sender: TObject);
begin
   FModel := TIRPF110Model.Create(DMRef.BDContab);
   Self.Caption := '';

   QIrpf110.CreateDataSet;
   QIrpf110.Active := True;
   QIrpf110.Append;
   QIrpf110FECHA_IMPRESION.AsDateTime := Date;
   QIrpf110FECHA_DESDE.AsDateTime     := Date;
   QIrpf110FECHA_HASTA.AsDateTime     := Date;
   QIrpf110EJERCICIO.AsInteger        := Year(date);
        if (Month(Date) >= 1) and (Month(Date) <= 3) then QIrpf110PERIODO.AsString := '1T'
   else if (Month(Date) >= 4) and (Month(Date) <= 6) then QIrpf110PERIODO.AsString := '2T'
   else if (Month(Date) >= 7) and (Month(Date) <= 9) then QIrpf110PERIODO.AsString := '3T'
   else QIrpf110PERIODO.AsString := '4T';
   QIrpf110CCC.AsString := DMRef.QParametrosCCC.AsString;
end;

procedure TWIrpf110.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWIrpf110.BtnEdtProcesarClick(Sender: TObject);
var Q             :TIBSQL;
    F             :TextFile;
    Registro      :string;
    cProvincia    :string;
    cNombreFiscal :string;
    cApellidos    :string;
    cNombre       :string;
    nPosComa      :Cardinal;
begin

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);
   if QIrpf110.State in dsEditModes then begin
      QIrpf110.Post;
   end;

   // Buscar provincia
   Q := TIBSQL.Create(nil);
   try
      Q.Close;
      Q.SQL.Clear;
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('SELECT NOMBRE FROM PROVINCIAS');
      Q.SQL.Add('WHERE PROVINCIA=:PROVINCIA');
      Q.Parambyname('provincia').AsString := DmRef.QParametrosPROVINCIA.AsString;
      Q.ExecQuery;
      cProvincia := Q.FieldByName('nombre').AsString;
      Q.Close;
   finally
      Q.Free;
   end;

   // Preparacion registro a imprimir por impresor de Hacienda
   AssignFile(F, Config.AppFolder + 'Hacienda\Entrada.txt');
   Rewrite(F);
   Registro := '110' +                // Modelo 110
      '01' +                          // Pagina 01
      ' ';                            // Indicador pag. complementaria

   // Tipo de declaracion
   if RoundTo(QIrpf110LIQUIDACION_24.AsFloat, -2) > 0 then begin
      Registro := Registro + ' ';
   end
   else begin
      Registro := Registro + 'N';
   end;

   Registro := Registro +
      // Codigo de administracion  (5)
      TStrTools.BackChar(DmRef.QParametrosCODADMON.AsString, '0', 5) +
      TStrTools.LeadChar(Copy(Trim(DmRef.QParametrosNIF.AsString), 1, 9), '0', 9) +
      // Nif de 9 posiciones
      space(4);             // Letras de la etiqueta

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
      // Cod. Postal
      TStrTools.Leadchar(copy(Trim(DmRef.QParametrosCODPOSTAL.AsString), 1, 5), '0', 5) +
      // Municipio
      TStrTools.Backchar(copy(Trim(Uppercase(DmRef.QParametrosPOBLACION.AsString)),
      1, 20), ' ', 20) +
      // Provincia
      TStrTools.Backchar(Uppercase(copy(Trim(cProvincia), 1, 15)), ' ', 15) +
      // Telefono
      TStrTools.Backchar(copy(Trim(DmRef.QParametrosTELEFONO.AsString), 1, 9), ' ', 9) +
      // Textos en mayusculas <------------------------------------ OJO -------->
      TStrTools.LeadChar(QIrpf110EJERCICIO.AsString, '0', 4) +  // Ejercicio
      TStrTools.BackChar(QIrpf110PERIODO.AsString, ' ', 2) +    // Periodo
      // Dinerarios Nº Perceptores [01]
      TStrTools.LeadChar(Trim(QIrpf110LIQUIDACION_01.AsString), '0', 6) +
      // Dinerarios  Importe Percepciones [02]
      FormatoImporte(QIrpf110LIQUIDACION_02.AsFloat, 13) +
      // Dinerarios  Importe Retenciones  [03]
      FormatoImporte(QIrpf110LIQUIDACION_03.AsFloat, 13) +
      // En Especie Nº Perceptores [04]
      TStrTools.LeadChar(Trim(QIrpf110LIQUIDACION_04.AsString), '0', 6) +
      // En Especie  Importe Percepciones [05]
      FormatoImporte(QIrpf110LIQUIDACION_05.AsFloat, 13) +
      // En Especie Importe Retenciones  [06]
      FormatoImporte(QIrpf110LIQUIDACION_06.AsFloat, 13) +
      // Act. Economicas Dinerarios Nº Perceptores [07]
      TStrTools.LeadChar(Trim(QIrpf110LIQUIDACION_07.AsString), '0', 6) +
      // Act. Economicas  Dinerarios Importe Percepciones [08]
      FormatoImporte(QIrpf110LIQUIDACION_08.AsFloat, 13) +
      // Act. Economicas Dinerarios Importe Retenciones  [09]
      FormatoImporte(QIrpf110LIQUIDACION_09.AsFloat, 13) +
      // Act. Economicas En Especie Nº Perceptores [10]
      TStrTools.LeadChar(Trim(QIrpf110LIQUIDACION_10.AsString), '0', 6) +
      // Act. Economicas En especie Importe Percepciones [11]
      FormatoImporte(QIrpf110LIQUIDACION_11.AsFloat, 13) +
      // Act. Economicas En especie Importe ing. a cuenta  [12]
      FormatoImporte(QIrpf110LIQUIDACION_12.AsFloat, 13) +
      // Premios Dinerarios Nº Perceptores [13]
      TStrTools.LeadChar(Trim(QIrpf110LIQUIDACION_13.AsString), '0', 6) +
      // Premios Dinerarios Importe Percepciones [14]
      FormatoImporte(QIrpf110LIQUIDACION_14.AsFloat, 13) +
      // Premios Dinerarios Importe Retenciones  [15]
      FormatoImporte(QIrpf110LIQUIDACION_15.AsFloat, 13) +
      // Premios En Especie Nº Perceptores [16]
      TStrTools.LeadChar(Trim(QIrpf110LIQUIDACION_16.AsString), '0', 6) +
      // Premios En especie Importe Percepciones [17]
      FormatoImporte(QIrpf110LIQUIDACION_17.AsFloat, 13) +
      // Premios En especie Importe ing. a cuenta  [18]
      FormatoImporte(QIrpf110LIQUIDACION_18.AsFloat, 13) +
      // Derechos imagen Nº Perceptores [19]
      TStrTools.LeadChar(Trim(QIrpf110LIQUIDACION_19.AsString), '0', 6) +
      // Derechos imagen Contraprestaciones [20]
      FormatoImporte(QIrpf110LIQUIDACION_20.AsFloat, 13) +
      // Derechos imagen Importe ingresos a cuenta  [21]
      FormatoImporte(QIrpf110LIQUIDACION_21.AsFloat, 13) +
      // Suma Retenciones e ingresos a cuenta  [22]
      FormatoImporte(QIrpf110LIQUIDACION_22.AsFloat, 13) +
      // Total a deducir  [23]
      FormatoImporte(QIrpf110LIQUIDACION_23.AsFloat, 13) +
      // Resultado a ingresar  [24]
      FormatoImporte(QIrpf110LIQUIDACION_24.AsFloat, 13) +
      // Importe del ingreso
      FormatoImporte(QIrpf110INGRESO.AsFloat, 13);

   // Ingreso. Forma de pago, efectivo (1)
   // Ingreso. Forma de pago, adeudo en cuenta (1)
   if RoundTo(QIrpf110LIQUIDACION_24.AsFloat, -2) < 0 then
   begin
      Registro := Registro + space(2);
   end
   else begin
      if GroupBoxFormaPago.ItemIndex = 1 then begin
         Registro := Registro + 'X ';
      end
      else begin
         Registro := Registro + ' X';
      end;
   end;
   if (RoundTo(QIrpf110INGRESO.AsFloat, -2) > 0) and
      (GroupBoxFormaPago.ItemIndex = 0) then begin
      Registro := Registro +
         // Ingreso. CCC Entidad
         TStrTools.LeadChar(Copy(QIrpf110CCC.AsString, 1, 4), ' ', 4) +
         // Ingreso. CCC Oficina
         TStrTools.LeadChar(Copy(QIrpf110CCC.AsString, 6, 4), ' ', 4) +
         // Ingreso. CCC DC
         TStrTools.LeadChar(Copy(QIrpf110CCC.AsString, 11, 2), ' ', 2) +
         // Ingreso. CCC Cuenta
         TStrTools.LeadChar(Copy(QIrpf110CCC.AsString, 14, 10), ' ', 10);
   end
   else begin
      Registro := Registro +
         // Ingreso. CCC Entidad
         TStrTools.LeadChar(space(4), ' ', 4) +
         // Ingreso. CCC Oficina
         TStrTools.LeadChar(space(4), ' ', 4) +
         // Ingreso. CCC DC
         TStrTools.LeadChar(space(2), ' ', 2) +
         // Ingreso. CCC Cuenta
         TStrTools.LeadChar(space(10), ' ', 10);
   end;

   Registro := Registro +
      // Complementaria.  Cod. electronico declaracion anterior
      TStrTools.BackChar(' ', ' ', 16) +
      // Complementaria.  Nº de justificante
      TStrTools.BackChar(' ', ' ', 13) +
      // Persona de contacto
      TStrTools.BackChar(Uppercase(Trim(Copy(DmRef.QParametrosCONTACTO.AsString, 1, 100))),
      ' ', 100) +
      // Telefono de contacto
      TStrTools.BackChar(space(9), ' ', 9) +
      // Observaciones
      TStrTools.BackChar(' ', ' ', 350) +
      // Firma Localidad
      TStrTools.BackChar(Uppercase(Trim(Copy(DmRef.QParametrosPOBLACION.AsString, 1, 16))),
      ' ', 16) +
      // Firma. dia
      TStrTools.Leadchar(IntToStr(Day(QIrpf110FECHA_IMPRESION.AsDateTime)), '0', 2) +
      // Firma. mes
      TStrTools.BackChar(Uppercase(Trim(CMonth(QIrpf110FECHA_IMPRESION.AsDateTime))),
      ' ', 10) +
      // Firma. año
      TStrTools.Leadchar(copy(IntToStr(year(QIrpf110FECHA_IMPRESION.AsDateTime)), 1, 4), '0', 4);
   // Fin de Registro
   // Showmessage(IntToStr(Length(Registro)));

   Writeln(F, Registro);
   CloseFile(F);

   // Impresion modelo IVA 110
   if CheckBoxDeclarante.Checked then  begin
      ShellExecute(Application.handle, 'open',
         PChar(Config.AppFolder + '\hacienda\ejecutar2.bat'), nil, nil, SW_HIDE);
   end
   else begin
      ShellExecute(Application.handle, 'open',
         PChar(Config.AppFolder + '\hacienda\ejecutar.bat'), nil, nil, SW_HIDE);
   end;

   MessageDlg('Proceso finalizado correctamente', mtInformation, [mbOK], 0);
   Datos.Update;
end;

procedure TWIrpf110.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnEdtProcesar.Click;
      end;
   end;
end;

function TWIrpf110.FormatoImporte(Importe: Double; Longitud: Integer): String;
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
      Result := TStrTools.LeadChar(Copy(cEuro, 1, nPosComa - 1) + TStrTools.BackChar(Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', Longitud);
   end;

end;

procedure TWIrpf110.CalcularResultado(Sender: TObject);
begin
   if not (QIrpf110.State in dsEditModes) then begin
      QIrpf110.Edit;
   end;
   QIrpf110.FieldByName('Liquidacion22').AsFloat :=
      RoundTo(QIrpf110LIQUIDACION_03.AsFloat +
              QIrpf110LIQUIDACION_06.AsFloat +
              QIrpf110LIQUIDACION_09.AsFloat +
              QIrpf110LIQUIDACION_12.AsFloat +
              QIrpf110LIQUIDACION_15.AsFloat +
              QIrpf110LIQUIDACION_18.AsFloat +
              QIrpf110LIQUIDACION_21.AsFloat, -2);

   QIrpf110LIQUIDACION_24.AsFloat := RoundTo(QIrpf110LIQUIDACION_22.AsFloat - QIrpf110LIQUIDACION_23.AsFloat, -2);
   if RoundTo(QIrpf110LIQUIDACION_24.AsFloat, -2) > 0 then begin
      QIrpf110INGRESO.AsFloat := RoundTo(QIrpf110LIQUIDACION_24.AsFloat, -2);
   end
   else begin
      QIrpf110INGRESO.AsFloat := 0;
   end;
end;

procedure TWIrpf110.BtnEdtErroresClick(Sender: TObject);
begin
   if fileexists(Config.AppFolder + 'hacienda\errores.txt') then  begin
      ShellExecute(Application.handle, 'open',
         PChar(Config.AppFolder + '\hacienda\errores.txt'), nil, nil, SW_SHOWNORMAL);
   end
   else begin
      DatabaseError('No hay errores a visualizar.');
   end;
end;

procedure TWIrpf110.CalcularOtro(Sender: TObject);
begin
   if not (QIrpf110.State in dsEditModes) then begin
      QIrpf110.Edit;
   end;
   QIrpf110LIQUIDACION_24.AsFloat := RoundTo(QIrpf110LIQUIDACION_22.AsFloat - QIrpf110LIQUIDACION_23.AsFloat, -2);
end;

procedure TWIrpf110.CalcularSaldos(FechaIni, FechaFin: TDatetime);
var Q :TIBSQL;
begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);
   EditLIQUIDACION_01.SetFocus;
   // Calcular importes del trimestre
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('select sum(importe) as suma from diario where subcuenta=:subcuenta and debehaber="D"');
      Q.SQL.Add(' and Fecha>=:FechaIni and Fecha<=:FechaFin');
      Q.parambyname('FechaIni').AsDateTime := FechaIni;
      Q.parambyname('FechaFin').AsDateTime := FechaFin;
      Q.parambyname('Subcuenta').AsString  := DmRef.QParametrosSCTANOMSUELDO.AsString;
      Q.Execquery;
      nSumasueldoD := Q.FieldByName('suma').AsFloat;
      Q.Close;
      Q.SQL.Clear;
      // No se puede contar el asiento de apertura
      Q.SQL.Add('select sum(importe) as suma from diario d,Conceptos T ');
      Q.SQL.Add('where d.subcuenta=:subcuenta and d.debehaber="H"');
      Q.SQL.Add(' and d.Fecha>=:FechaIni and d.Fecha<=:FechaFin ');
      Q.SQL.Add('AND D.ID_CONCEPTOS=T.ID_CONCEPTOS AND T.TIPOCONCEPTO<>"A" ');
      Q.SQL.Add('AND D.ID_CONCEPTOS=:ID_CONCEPTOS');
      Q.parambyname('FechaIni').AsDateTime   := FechaIni;
      Q.parambyname('FechaFin').AsDateTime   := FechaFin;
      Q.parambyname('Subcuenta').AsString    := DmRef.QParametrosSCTANOMIRPF.AsString;
      Q.ParamByName('ID_CONCEPTOS').AsString := DmRef.QParametrosCTONOMT.AsString;
      Q.Execquery;
      nSumaIrpfH := Q.FieldByName('suma').AsFloat;

      // Rendimientos de las actividades económicas: IMP. PERCEPCIONES
      Q.Close;
      Q.SQL.Clear;
      Q.Database := DmRef.BDContab;
      Q.SQL.Add('SELECT SUM(D.IMPORTE) AS SUMA FROM DIARIO D, CUENTAS C1, CUENTAS C2,Conceptos T');
      Q.SQL.Add('WHERE');
      Q.SQL.Add('   C1.TIPOCUENTA = "A" AND');
      Q.SQL.Add('   C2.TIPOCUENTA = "P" AND');
      Q.SQL.Add('   D.DEBEHABER = "D" AND');
      Q.SQL.Add('   D.ID_CONCEPTOS=T.ID_CONCEPTOS AND T.TIPOCONCEPTO<>"A" AND');
      Q.SQL.Add('   D.FECHA >= :FECHAINI AND D.FECHA <= :FECHAFIN AND');
      Q.SQL.Add('   SUBSTR(D.SUBCUENTA, 1, 3) = C1.CUENTA AND');
      Q.SQL.Add('   SUBSTR(D.CONTRAPARTIDA, 1, 3) = C2.CUENTA AND');
      Q.SQL.Add('   D.ASIENTO IN (SELECT D2.ASIENTO FROM DIARIO D2');
      Q.SQL.Add('                 WHERE D2.ASIENTO = D.ASIENTO AND');
      Q.SQL.Add('                       D2.SUBCUENTA = :SUBCUENTA)');
      Q.ParamByName('FECHAINI').AsDateTime := FechaIni;
      Q.ParamByName('FECHAFIN').AsDateTime := FechaFin;
      Q.ParamByName('SUBCUENTA').AsString  := DMRef.QParametrosSCTARETPROF.AsString;
      Q.ExecQuery;
      nSumaRendimActiv := Q.FieldByName('SUMA').AsFloat;

      // Rendimientos de las actividades económicas: IMP. RETENCIONES
      Q.Close;
      Q.SQL.Clear;
      Q.Database := DmRef.BDContab;
      Q.SQL.Add('SELECT SUM(D.IMPORTE) AS SUMA FROM DIARIO D,Conceptos T');
      Q.SQL.Add('WHERE');
      Q.SQL.Add('   D.SUBCUENTA = :SUBCUENTA AND');
      Q.SQL.Add('   D.DEBEHABER = "H" AND');
      Q.SQL.Add('   D.ID_CONCEPTOS=T.ID_CONCEPTOS AND T.TIPOCONCEPTO<>"A" AND');
      Q.SQL.Add('   D.FECHA >= :FECHAINI AND D.FECHA <= :FECHAFIN AND');
      Q.SQL.Add('   D.ASIENTO IN (SELECT D2.ASIENTO FROM DIARIO D2, CUENTAS C1');
      Q.SQL.Add('                 WHERE D2.ASIENTO = D.ASIENTO AND');
      Q.SQL.Add('                       C1.TIPOCUENTA = "P" AND');
      Q.SQL.Add('                       SUBSTR(D2.SUBCUENTA, 1, 3) = C1.CUENTA)');
      Q.ParamByName('FECHAINI').AsDateTime := FechaIni;
      Q.ParamByName('FECHAFIN').AsDateTime := FechaFin;
      Q.ParamByName('SUBCUENTA').AsString  := DMRef.QParametrosSCTARETPROF.AsString;
      Q.ExecQuery;
      nSumaRetenActiv := Q.FieldByName('SUMA').AsFloat;
   finally
      Q.Free;
   end;

   if not (QIrpf110.State in dsEditModes) then begin
      QIrpf110.Edit;
   end;
   QIrpf110LIQUIDACION_02.AsFloat := RoundTo(nSumaSueldoD    , -2);
   QIrpf110LIQUIDACION_03.AsFloat := RoundTo(nSumaIrpfH      , -2);
   QIrpf110LIQUIDACION_08.AsFloat := RoundTo(nSumaRendimActiv, -2);
   QIrpf110LIQUIDACION_09.AsFloat := RoundTo(nSumaRetenActiv , -2);

   QIrpf110EJERCICIO.AsInteger := Year(FechaIni);
   if (month(FechaIni) >= 1) and (month(FechaIni) <= 3) then begin
      QIrpf110PERIODO.AsString := '1T';
   end
   else
   if (month(FechaIni) >= 4) and (month(FechaIni) <= 6) then begin
      QIrpf110periodo.AsString := '2T';
   end
   else
   if (month(FechaIni) >= 7) and (month(FechaIni) <= 9) then begin
      QIrpf110periodo.AsString := '3T';
   end
   else begin
      QIrpf110periodo.AsString := '4T';
   end;

   CalcularResultado(nil);
end;

procedure TWIrpf110.BtnedtCalcularClick(Sender: TObject);
begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);
   if QIrpf110.State in dseditmodes then begin
      QIrpf110.Post;
   end;
   CalcularSaldos(QIrpf110FECHA_DESDE.AsDateTime, QIrpf110FECHA_HASTA.AsDateTime);

end;

end.
