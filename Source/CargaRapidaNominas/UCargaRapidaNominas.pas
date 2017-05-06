unit UCargaRapidaNominas;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, Forms, Globales, Graphics, Grids,
     IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils, variants,
     WinProcs, WinTypes, ComCtrls, DBGrids,
     UCargaRapidaNominasModel, UEditEmpleado;

type
  TWCargaRapidaNominas = class(TForm)
    SFichero: TDataSource;
    QFichero: TClientDataSet;
    Transaccion: TIBTransaction;
    SMovimientos: TDataSource;
    QMovimientos: TIBDataSet;
    QMovimientosASIENTO: TIntegerField;
    QMovimientosAPUNTE: TSmallintField;
    QMovimientosFECHA: TDateTimeField;
    QMovimientosSUBCUENTA: TIBStringField;
    QMovimientosID_CONCEPTOS: TIBStringField;
    QMovimientosDescComentario: TStringField;
    QMovimientosDEBEHABER: TIBStringField;
    QMovimientosIMPORTE: TFloatField;
    QMovimientosCONTRAPARTIDA: TIBStringField;
    QMovimientosCOMENTARIO: TIBStringField;
    QMovimientosNUMEROFACTURA: TIBStringField;
    QMovimientosCUENTA_ANALITICA: TIBStringField;
    QMovimientosDESCCONCEPTO: TIBStringField;
    QMovimientosDESCSUBCUENTA: TIBStringField;
    SEmpleados: TDataSource;
    QEmpleados: TClientDataSet;
    QEmpleadosNOMINA: TFloatField;
    QEmpleadosIRPF:  TFloatField;
    QEmpleadosSSOCIAL: TFloatField;
    QEmpleadosNETO: TFloatField;
    QEmpleadosSUBCUENTA: TStringField;
    QEmpleadosDESCRIPCION: TStringField;
    QMovimientosABREVIATURA: TIBStringField;
    QEmpleadosN: TStringField;
    QMovimientosEJERCICIO: TIntegerField;
    QMovimientosSERIE: TIBStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnEdtSubcuenta: TButton;
    BtnEdtGuardar: TButton;
    Shape1: TShape;
    lTitulo: TLabel;
    PageControl1: TPageControl;
    TabSheetAsientos: TTabSheet;
    TabSheetLastMoves: TTabSheet;
    GroupBox8: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label50: TLabel;
    Label7: TLabel;
    ComboBoxDS_CONCEPTO_NOME: TDBLookupComboBox;
    ComboCD_SUBCUENTA_SSEMPRESA: TDBLookupComboBox;
    ComboDS_SUBCUENTA_SSEMPRESA: TDBLookupComboBox;
    ComboCS_SUBCUENTA_SSSEMPRESA: TDBLookupComboBox;
    ComboDS_SUBCUENTA_SSSEMPRESA: TDBLookupComboBox;
    EditEMPRESA: TDBEdit;
    ComboBoxCD_CONCEPTO_NOME: TDBLookupComboBox;
    GroupBox7: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label3: TLabel;
    ComboCD_SUBCUENTA_SALARIOS: TDBLookupComboBox;
    ComboDS_SUBCUENTA_SALARIOS: TDBLookupComboBox;
    ComboCD_SUBCUENTA_SS: TDBLookupComboBox;
    ComboDS_SUBCUENTA_SS: TDBLookupComboBox;
    ComboCD_SUBCUENTA_IRPF: TDBLookupComboBox;
    ComboDS_SUBCUENTA_IRPF: TDBLookupComboBox;
    ComboBoxCD_CONCEPTO: TDBLookupComboBox;
    ComboBoxDS_CONCEPTO: TDBLookupComboBox;
    ComboCD_SUBCUENTA_OTRAS: TDBLookupComboBox;
    ComboDS_SUBCUENTA_OTRAS: TDBLookupComboBox;
    Datos: TGroupBox;
    Panel3: TPanel;
    BtnReset: TButton;
    BtnDelete: TButton;
    BtnNew: TButton;
    Panel4: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label17: TLabel;
    EditFECHA: TDBEdit;
    EditCOMENTARIO: TDBEdit;
    ComboBoxCD_ANALITICA: TDBLookupComboBox;
    ComboBoxDS_ANALITICA: TDBLookupComboBox;
    Panel5: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    BtnEdtModificar: TButton;
    BtnEdtBorrarMovim: TButton;
    BtnEdtMayor: TButton;
    DBGridMoves: TDBGrid;
    QFicheroSCTANOMSUELDO: TStringField;
    QFicheroSCTAOTRAS: TStringField;
    QFicheroSCTANOMSST: TStringField;
    QFicheroSCTANOMIRPF: TStringField;
    QFicheroCTONOMT: TStringField;
    QFicheroSCTANOMCARGO: TStringField;
    QFicheroSCTANOMSSE: TStringField;
    QFicheroCTONOME: TStringField;
    QFicheroIMPEMPRESA: TFloatField;
    QFicheroFECHA: TDateField;
    QFicheroCUENTA_ANALITICA: TStringField;
    QFicheroCOMENTARIO: TStringField;
    BtnModify: TButton;
    DBGridEmpleados: TDBGrid;
    procedure BtnEdtGuardarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QMovimientosCalcFields(DataSet: TDataSet);
    procedure BtnEdtBorrarMovimClick(Sender: TObject);
    procedure BtnEdtSubcuentaClick(Sender: TObject);
    procedure GridEdtEmpleadosCellChanged(Sender: TObject);
    procedure BtnEdtRestablecerClick(Sender: TObject);
    procedure BtnEdtBorrarEmpleadoClick(Sender: TObject);
    procedure QEmpleadosCalcFields(DataSet: TDataSet);
    procedure BtnEdtAniadirClick(Sender: TObject);
    procedure BtnEdtModificarClick(Sender: TObject);
    procedure BtnEdtMayorClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridMovesDblClick(Sender: TObject);
    procedure DBGridMovesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGridMovesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnModifyClick(Sender: TObject);
  private
    FModel           :TCargaRapidaNominasModel;
    FEditEmpleado    :TWEditEmpleado;
    FColorActual     :TColor;
    FAsientoAnterior :Integer;

    procedure OnShowWEditEmpleado(Sender: TObject);
    function DatosEmpleadosValidos: Boolean;
    procedure InicializarFichero_QFichero;
    procedure InicializarFichero_QEmpleados;
    procedure InicializarModoArranque;
    procedure PrepararQuery;
    procedure RellenarAsientoEmpresa;
    procedure RellenarNominasEmpleados;
    procedure BorrarAsiento(Asiento: Integer);
    procedure BorrarNominas(Asiento: Integer);
  public
    FModoArranque: TModoArranque;
    FAsientoNomina, FAsientoEmpresa: Integer;
  end;

var WCargaRapidaNominas: TWCargaRapidaNominas;

implementation

uses System.UITypes, System.Math,
     DM, DMConta, Tools, UFiltroListadosMayorModel, UCargaAsiento, UFiltroMayorSubcuenta, UNuevaSubcuenta;

{$R *.DFM}

procedure TWCargaRapidaNominas.FormCreate(Sender: TObject);
begin
   FModel := TCargaRapidaNominasModel.Create(DMRef.BDContab);
   Caption := '';

   ActivateTransactions(Self, DMRef.BDContab);

   { Crear  Fichero }
   QFichero.CreateDataSet;
   QFichero.Active := True;
   QFichero.Append;

   QEmpleados.CreateDataSet;
   QEmpleados.Active := True;

   QEmpleados.Append;
   QEmpleados.Post;

   QEmpleadosNOMINA.DisplayFormat  := '###,###,###.##';
   QEmpleadosIRPF.DisplayFormat    := '###,###,###.##';
   QEmpleadosSSOCIAL.DisplayFormat := '###,###,###.##';
   QEmpleadosNETO.DisplayFormat    := '###,###,###.##';

   {----------}

   PrepararQuery;

   // Búsqueda subcuenta
   (*if DMRef.QParametrosBUSQUEDA_SUBCTAS.AsString = 'D' then  begin
      eSubcuenta.TabStop := False;

      Pos1 := eSubctaSueldosSalarios.Left;
      eDescSubctaSueldosSalarios.Left := Pos1;
      eDescSubctaSS.Left := Pos1;
      eDescSubctaGastoSSEmpresa.Left := Pos1;
      eDescSubctaSSEmpresa.Left := Pos1;

      eSubctaSueldosSalarios.Left := eSubctaSueldosSalarios.Left + eDescSubctaSueldosSalarios.Width;
      eSubctaSS.Left        := eSubctaSS.Left + eDescSubctaSueldosSalarios.Width;
      eSubctaGastoSSEmpresa.Left := eSubctaGastoSSEmpresa.Left + eDescSubctaSueldosSalarios.Width;
      eSubctaSSEmpresa.Left := eSubctaSSEmpresa.Left + eDescSubctaSueldosSalarios.Width;

      eSubctaSueldosSalarios.TabStop := False;
      eSubctaSS.TabStop        := False;
      eSubctaGastoSSEmpresa.TabStop := False;
      eSubctaSSEmpresa.TabStop := False;

      Pos1 := eSubctaIRPF.Left;
      eDescSubctaIRPF.Left := Pos1;
      eDescSubctaOtras.Left := Pos1;
      eSubctaIRPF.Left := eSubctaIRPF.Left + eDescSubctaIRPF.Width;
      eSubctaOtras.Left := eSubctaOtras.Left + eDescSubctaOtras.Width;
      eSubctaIRPF.TabStop := False;
      eSubctaOtras.TabStop := False;
   end;*)
end;

procedure TWCargaRapidaNominas.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

function TWCargaRapidaNominas.DatosEmpleadosValidos: Boolean;
var Msg       :string;
    Confirmar :Boolean;
begin
   // Msg contendrá la información a presentar al usuario sobre los datos
   // que ha de introducir antes de guardar el registro.
   Msg       := '';
   Result    := True;
   Confirmar := True;

   if QEmpleados.State in dsEditModes then begin
      QEmpleados.Post;
   end;

   QEmpleados.DisableControls;
   QEmpleados.First;

   while not QEmpleados.EOF do begin
      if RoundTo(QEmpleadosNETO.AsFloat, -2) < 0 then begin
         Msg := 'El importe neto no puede ser negativo.';
      end;

      // Si los datos especificados no son válidos, presentar mensaje de error.
      if Trim(Msg) <> '' then begin
         QEmpleados.EnableControls;
         DBGridEmpleados.SetFocus;
         Result := False;
         DatabaseError(Msg);
      end;

      if (RoundTo(QEmpleadosNOMINA.AsFloat, -2) = 0) and Confirmar then
      begin
         if MessageDlg('¿Desea generar también las nóminas con importe cero?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
            QEmpleados.EnableControls;
            Result := False;
            Exit;
         end;

         Confirmar := False;
      end;

      if (QEmpleadosN.AsString <> 'S') and
         IsEmpty(QFicheroSCTAOTRAS.AsString) then begin
         QEmpleados.EnableControls;
         Result := False;
         MessageDlg('No se puede dejar en blanco la subcuenta de otras remuneraciones.', mtInformation, [mbOK], 0);
         Exit;
      end;

      QEmpleados.Next;
   end;

   QEmpleados.First;
   QEmpleados.EnableControls;
end;

procedure TWCargaRapidaNominas.InicializarFichero_QFichero;
begin
   QFichero.Edit;
   QFicheroFECHA.AsDateTime       := Date;
   QFicheroSCTANOMSUELDO.AsString := DmRef.QParametrosSCTANOMSUELDO.AsString;
   QFicheroSCTAOTRAS.AsString     := DMRef.QParametrosSCTAOTRASREMUN.AsString;
   QFicheroSCTANOMSST.AsString    := DmRef.QParametrosSCTANOMSST.AsString;
   QFicheroSCTANOMIRPF.AsString   := DmRef.QParametrosSCTANOMIRPF.AsString;
   QFicheroCTONOMT.AsString       := DmRef.QParametrosCTONOMT.AsString;
   QFicheroSCTANOMCARGO.AsString  := DmRef.QParametrosSCTANOMCARGO.AsString;
   QFicheroSCTANOMSSE.AsString    := DmRef.QParametrosSCTANOMSSE.AsString;
   QFicheroCTONOME.AsString       := DmRef.QParametrosCTONOME.AsString;
   QFichero.Post;
end;

procedure TWCargaRapidaNominas.InicializarFichero_QEmpleados;
var Q :TIBSQL;
begin
   QEmpleados.EmptyDataSet;
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('SELECT SUBCUENTA, DESCRIPCION FROM SUBCTAS_NOMINAS');
      Q.SQL.Add('WHERE SUBCUENTA <> :SUBCUENTA');
      Q.SQL.Add('ORDER BY SUBCUENTA');
      Q.ParamByName('SUBCUENTA').AsString := DMRef.QParametrosSCTANOMPAGO.AsString;
      Q.ExecQuery;

      if Q.EOF then begin
         Q.Close;
         Q.SQL.Clear;
         Q.SQL.Add('SELECT SUBCUENTA, DESCRIPCION FROM SUBCTAS_NOMINAS');
         Q.SQL.Add('ORDER BY SUBCUENTA');
         Q.ExecQuery;
      end;

      while not Q.EOF do begin
         QEmpleados.Append;
         QEmpleadosSUBCUENTA.AsString   := Q.FieldByName('SUBCUENTA').AsString;
         QEmpleadosDESCRIPCION.AsString := Q.FieldByName('DESCRIPCION').AsString;
         QEmpleadosN.AsString           := 'S';
         QEmpleados.Post;
         Q.Next;
      end;

      Q.Close;
   finally
      Q.Free;
   end;

   QEmpleados.First;
   QEmpleados.Edit;
end;

procedure TWCargaRapidaNominas.InicializarModoArranque;
begin
   InicializarFichero_QFichero;

   if FModoArranque = INSERCION then  begin
      InicializarFichero_QEmpleados;
   end
   else begin
      RellenarAsientoEmpresa;
      RellenarNominasEmpleados;
   end;
end;

procedure TWCargaRapidaNominas.PrepararQuery;
var
   Asiento: Integer;
begin
   Asiento := DMRef.ObtenerValor('GEN_ID(ASIENTO, 0)', 'RDB$DATABASE', '');
   QMovimientos.DisableControls;
   QMovimientos.Close;
   QMovimientos.SelectSQL.Clear;
   QMovimientos.Transaction.active := True;
   QMovimientos.SelectSQL.Add('SELECT');
   QMovimientos.SelectSQL.Add('   D.ASIENTO,D.APUNTE,D.FECHA,D.SUBCUENTA,D.ID_CONCEPTOS, D.DEBEHABER,');
   QMovimientos.SelectSQL.Add('   D.CONTRAPARTIDA,D.COMENTARIO,D.NUMEROFACTURA,D.CUENTA_ANALITICA,D.SERIE, D.EJERCICIO,');
   QMovimientos.SelectSQL.Add('   C.DESCRIPCION DESCCONCEPTO, S.DESCRIPCION DESCSUBCUENTA,D.IMPORTE,S.ABREVIATURA');
   QMovimientos.SelectSQL.Add('FROM DIARIO D, CONCEPTOS C, SUBCTAS S');
   QMovimientos.SelectSQL.Add('WHERE');
   QMovimientos.SelectSQL.Add('   D.ASIENTO >= :ASIENTO1 AND D.ASIENTO <= :ASIENTO2 AND');
   QMovimientos.SelectSQL.Add('   D.ID_CONCEPTOS = C.ID_CONCEPTOS AND');
   QMovimientos.SelectSQL.Add('   D.SUBCUENTA = S.SUBCUENTA');
   QMovimientos.SelectSQL.Add('ORDER BY D.ASIENTO, D.APUNTE');
   QMovimientos.Params.ByName('ASIENTO1').AsInteger := Asiento - 30;
   QMovimientos.Params.ByName('ASIENTO2').AsInteger := Asiento;
   QMovimientos.Prepare;
   QMovimientos.EnableControls;
   QMovimientos.Open;
   QMovimientos.Last;
end;

procedure TWCargaRapidaNominas.RellenarAsientoEmpresa;
var Q :TIBQuery;
begin
   if FAsientoEmpresa <> 0 then  begin
      Q := TIBQuery.Create(nil);
      try
         Q.Database := DMRef.BDContab;
         Q.SQL.Add('SELECT * FROM DIARIO WHERE ASIENTO = :ASIENTO ORDER BY APUNTE');
         Q.ParamByName('ASIENTO').AsInteger := FAsientoEmpresa;
         Q.Open;

         if not Q.EOF then begin
            if not (QFichero.State in dsEditModes) then QFichero.Edit;
            QFicheroFECHA.AsDateTime           := Q.FieldByName('FECHA').AsDateTime;
            QFicheroCOMENTARIO.AsString        := Q.FieldByName('COMENTARIO').AsString;
            QFicheroCUENTA_ANALITICA.AsVariant := Q.FieldByName('CUENTA_ANALITICA').AsVariant;
            QFicheroSCTANOMCARGO.AsString      := Q.FieldByName('SUBCUENTA').AsString;
            QFicheroSCTANOMSSE.AsString        := Q.FieldByName('CONTRAPARTIDA').AsString;
            QFicheroIMPEMPRESA.AsFloat         := Q.FieldByName('IMPORTE').AsFloat;
            QFicheroCTONOME.AsString           := Q.FieldByName('ID_CONCEPTOS').AsString;
         end;
      finally
         Q.Free;
      end;
   end;
end;

procedure TWCargaRapidaNominas.RellenarNominasEmpleados;
var Q :TIBQuery;
begin
   QEmpleados.EmptyDataSet;
   Q := TIBQuery.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('SELECT * FROM DIARIO WHERE ASIENTO = :ASIENTO ORDER BY APUNTE');
      Q.ParamByName('ASIENTO').AsInteger := FAsientoNomina;
      Q.Open;

      while not Q.EOF do begin
         if not (QFichero.State in dsEditModes) then QFichero.Edit;
         QFicheroFECHA.AsDateTime           := Q.FieldByName('FECHA').AsDateTime;
         QFicheroCOMENTARIO.AsString        := Q.FieldByName('COMENTARIO').AsString;
         QFicheroCUENTA_ANALITICA.AsVariant := Q.FieldByName('CUENTA_ANALITICA').AsVariant;
         if Q.FieldByName('APUNTE').AsInteger = 1 then begin
            QFicheroSCTANOMSUELDO.AsString := Q.FieldByName('SUBCUENTA').AsString;
         end else
         if Q.FieldByName('APUNTE').AsInteger = 2 then begin
            QFicheroSCTANOMSST.AsString := Q.FieldByName('SUBCUENTA').AsString;
         end else
         if Q.FieldByName('APUNTE').AsInteger = 3 then begin
            QFicheroSCTANOMIRPF.AsString := Q.FieldByName('SUBCUENTA').AsString;
         end;
         QFicheroCTONOMT.AsString := Q.FieldByName('ID_CONCEPTOS').AsString;

         Q.Next;
      end;

      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('SELECT * FROM NOMINAS WHERE ASIENTO = :ASIENTO');
      Q.SQL.Add('ORDER BY SUBCUENTA');
      Q.ParamByName('ASIENTO').AsInteger := FAsientoNomina;
      Q.Open;

      while not Q.EOF do begin
         QEmpleados.Append;
         QEmpleadosSUBCUENTA.AsString := Q.FieldByName('SUBCUENTA').AsString;
         QEmpleadosNOMINA.AsFloat     := Q.FieldByName('NOMINA').AsFloat;
         QEmpleadosIRPF.AsFloat       := Q.FieldByName('IRPF').AsFloat;
         QEmpleadosNETO.AsFloat       := Q.FieldByName('NETO').AsFloat;
         QEmpleadosSSOCIAL.AsFloat    := Q.FieldByName('SSOCIAL').AsFloat;
         if Q.FieldByName('NOMINA_EMPLEADO').IsNull or
            (Q.FieldByName('NOMINA_EMPLEADO').AsString = 'S') then begin
            QEmpleadosN.AsString := 'S';
         end
         else begin
            QEmpleadosN.AsString := 'N';
         end;
         QEmpleados.Post;

         Q.Next;
      end;

   finally
      Q.Free;
   end;

   QEmpleados.First;
   QEmpleados.Edit;
end;

procedure TWCargaRapidaNominas.BorrarAsiento(Asiento: Integer);
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('DELETE FROM DIARIO WHERE ASIENTO = :ASIENTO');
      Q.ParamByName('ASIENTO').AsInteger := Asiento;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
end;

procedure TWCargaRapidaNominas.BorrarNominas(Asiento: Integer);
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   try
      Q.Database := DMRef.BDContab;
      Q.SQL.Add('DELETE FROM NOMINAS WHERE ASIENTO = :ASIENTO');
      Q.ParamByName('ASIENTO').AsInteger := Asiento;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
   finally
      Q.Free;
   end;
end;

procedure TWCargaRapidaNominas.BtnEdtGuardarClick(Sender: TObject);
var Msg                   :string;
    nAsiento              ,
    nAsientoEmpresa       ,
    nApunte               :Integer;
    SumaNomina            ,
    SumaRemuneraciones    ,
    SumaIRPF              ,
    SumaSS                ,
    TotImporte            :Double;
    QNominas              :TIBSQL;
    HayOtrasRemuneraciones:Boolean;
    Q                     :TIBSQL;
begin
   PageControl1.Pages[0].Show;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   // Msg contendrá la información a presentar al usuario sobre los datos
   // que ha de introducir antes de guardar el registro.
   Msg := '';

   if QFicheroFECHA.IsNull then begin
      Msg := Msg + 'No se puede dejar la fecha en blanco.' + #13;
   end
   else
   if not DMContaRef.FechaAsientoPerteneceEjercicio(QFicheroFECHA.AsDateTime) then begin
      if MessageDlg('La fecha de asiento no pertenece al ejercicio actual.' + #13 +
         '¿Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
   end;

   if IsEmpty(QFicheroSCTANOMSUELDO.AsString) then begin
      Msg := Msg + 'No se puede dejar en blanco la subcuenta de sueldos y salarios.' + #13;
   end;
   if IsEmpty(QFicheroSCTANOMSST.AsString) then begin
      Msg := Msg + 'No se puede dejar en blanco la subcuenta de seg. social asiento trabajador.' + #13;
   end;
   if IsEmpty(QFicheroSCTANOMIRPF.AsString) then begin
      Msg := Msg + 'No se puede dejar en blanco la subcuenta de Hacienda IRPF.' + #13;
   end;
   if IsEmpty(QFicheroSCTANOMCARGO.AsString) then begin
      Msg := Msg + 'No se puede dejar en blanco la subcuenta de gastos seg. Social Empresa.' + #13;
   end;
   if IsEmpty(QFicheroSCTANOMSSE.AsString) then begin
      Msg := Msg + 'No se puede dejar en blanco la subcuenta de Seg. Social en asiento Empresa.' + #13;
   end;
   if IsEmpty(QFicheroCTONOMT.AsString) then begin
      Msg := Msg + 'No se puede dejar en blanco el concepto del asiento del trabajador.' + #13;
   end;
   if IsEmpty(QFicheroCTONOME.AsString) then begin
      Msg := Msg + 'No se puede dejar en blanco el concepto del asiento de la empresa.' + #13;
   end;

   if QEmpleados.State in dsEditModes then begin
      QEmpleados.Post;
   end;
   QEmpleados.First;
   if QEmpleados.EOF then  begin
      DBGridEmpleados.SetFocus;
      Msg := Msg + 'No se ha introducido ninguna subcuenta de nómina.' + #13;
   end;

   // Si los datos especificados no son válidos, presentar mensaje de error.
   if Trim(Msg) <> '' then  begin
      Msg := Msg + 'Por favor, revise los datos de entrada.';
      PageControl1.Pages[0].Show;
      EditFECHA.SetFocus;
      DatabaseError(Msg);
   end;

   if RoundTo(QFicheroIMPEMPRESA.AsFloat, -2) = 0 then begin
      if MessageDlg('No se ha indicado el importe del asiento de la empresa.' + #13 +
         'Se generará únicamente el asiento de nómina.' + #13 +
         '¿Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
   end;

   if not DatosEmpleadosValidos then begin
      Exit;
   end;

   // Asiento de nómina
   if FAsientoNomina = 0 then begin
      nAsiento := DMContaRef.ObtenerNumeroAsiento;
   end
   else begin
      nAsiento := FAsientoNomina;
   end;

   // Asiento de Empresa
   if RoundTo(QFicheroIMPEMPRESA.AsFloat, -2) <> 0 then  begin
      if FAsientoEmpresa = 0 then begin
         nAsientoEmpresa := DMContaRef.ObtenerNumeroAsiento;
      end
      else begin
         nAsientoEmpresa := FAsientoEmpresa;
      end;
   end
   else begin
      nAsientoEmpresa := 0;
   end;

   // Si estamos en modo modificación, borrar los asientos antes de grabar
   if FModoArranque = MODIFICACION then  begin
      BorrarAsiento(nAsiento);
      BorrarNominas(nAsiento);
      if nAsientoEmpresa <> 0 then begin
         BorrarAsiento(nAsientoEmpresa);
      end;
   end;

   // Inserción de nóminas
   QNominas := TIBSQL.Create(nil);
   QNominas.Close;
   QNominas.Database := DMRef.BDContab;
   QNominas.SQL.Clear;
   QNominas.SQL.Add('INSERT INTO NOMINAS (ASIENTO, NOMINA, IRPF, SSOCIAL, NETO, SUBCUENTA, NOMINA_EMPLEADO)');
   QNominas.SQL.Add('VALUES');
   QNominas.SQL.Add('(:ASIENTO, :NOMINA, :IRPF, :SSOCIAL, :NETO, :SUBCUENTA, :NOMINA_EMPLEADO)');

   // Grabar asientos
   Q := TIBSql.Create(nil);
   try
      Q.Database := DmRef.BDContab;
      Q.SQL.Add('insert into diario(tipoasiento, asientonomina, asiento,apunte,id_conceptos,');
      if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         Q.SQL.Add('comentario,');
      end;
      if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
         Q.SQL.Add('cuenta_analitica,');
      end;
      Q.SQL.Add(' subcuenta, contrapartida, debehaber, fecha, importe, moneda)');
      Q.SQL.Add(' values (:tipoasiento, :asientonomina, :asiento,:apunte,:id_conceptos,');
      if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         Q.SQL.Add(':comentario,');
      end;
      if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
         Q.SQL.Add(':CUENTA_ANALITICA,');
      end;
      Q.SQL.Add(' :subcuenta, :contrapartida, :debehaber, :fecha, :importe, :moneda)');

      SumaNomina         := 0;
      SumaRemuneraciones := 0;
      SumaIRPF           := 0;
      SumaSS             := 0;
      TotImporte         := 0;

      HayOtrasRemuneraciones := False;

      QEmpleados.First;
      while not QEmpleados.EOF do begin
         if QEmpleadosN.AsString = 'S' then    // Apunte de nómina
         begin
            SumaNomina := SumaNomina + QEmpleadosNOMINA.AsFloat;
            TotImporte := TotImporte + (QEmpleadosNOMINA.AsFloat -
               QEmpleadosIRPF.AsFloat -
               QEmpleadosSSOCIAL.AsFloat);
         end
         else    // Apunte otras remuneraciones
         begin
            HayOtrasRemuneraciones := True;
            SumaRemuneraciones     := SumaRemuneraciones + QEmpleadosNOMINA.AsFloat;
         end;

         SumaIRPF := SumaIRPF + QEmpleadosIRPF.AsFloat;
         SumaSS   := SumaSS + QEmpleadosSSOCIAL.AsFloat;

         QNominas.Close;
         QNominas.ParamByName('ASIENTO').AsInteger  := nAsiento;
         QNominas.ParamByName('NOMINA').AsDouble    := QEmpleadosNOMINA.AsFloat;
         QNominas.ParamByName('IRPF').AsDouble      := QEmpleadosIRPF.AsFloat;
         QNominas.ParamByName('SSOCIAL').AsDouble   := QEmpleadosSSOCIAL.AsFloat;
         QNominas.ParamByName('NETO').AsDouble      := QEmpleadosNETO.AsFloat;
         QNominas.ParamByName('SUBCUENTA').AsString := QEmpleadosSUBCUENTA.AsString;
         QNominas.ParamByName('NOMINA_EMPLEADO').AsString := QEmpleadosN.AsString;
         QNominas.ExecQuery;
         QNominas.Transaction.CommitRetaining;

         QEmpleados.Next;
      end;
      QEmpleados.First;


      // Apunte 1
      Q.ParamByName('TIPOASIENTO').AsInteger   := ASIENTO_NOMINA;
      Q.ParamByName('ASIENTONOMINA').AsInteger := nAsientoEmpresa;
      Q.parambyname('asiento').AsInteger       := nAsiento;
      Q.parambyname('apunte').AsInteger        := 1;
      if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
      end;
      Q.parambyname('debehaber').AsString      := 'D';
      Q.parambyname('subcuenta').AsString      := QFicheroSCTANOMSUELDO.AsString;
      Q.parambyname('contrapartida').AsVariant := null;
      Q.parambyname('fecha').AsDateTime        := QFicheroFECHA.AsDateTime;
      Q.parambyname('importe').AsFloat         := SumaNomina;
      Q.parambyname('moneda').AsString         := 'E';
      Q.parambyname('id_conceptos').AsString   := QFicheroCTONOMT.AsString;
      if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
         Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
      end;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
      // Final Apunte 1

      // Apunte 2
      Q.ParamByName('TIPOASIENTO').AsInteger   := ASIENTO_NOMINA;
      Q.ParamByName('ASIENTONOMINA').AsInteger := nAsientoEmpresa;
      Q.parambyname('asiento').AsInteger       := nAsiento;
      Q.parambyname('apunte').AsInteger        := 2;
      if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
      end;
      Q.parambyname('debehaber').AsString     := 'H';
      Q.parambyname('subcuenta').AsString     := QFicheroSCTANOMSST.AsString;
      Q.parambyname('contrapartida').AsString := QFicheroSCTANOMSUELDO.AsString;
      Q.parambyname('fecha').AsDateTime       := QFicheroFECHA.AsDateTime;
      Q.parambyname('importe').AsFloat        := SumaSS;
      Q.parambyname('moneda').AsString        := 'E';
      Q.parambyname('id_conceptos').AsString  := QFicheroCTONOMT.AsString;
      if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
         Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
      end;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
      // Final Apunte 2

      // Apunte 3
      Q.ParamByName('TIPOASIENTO').AsInteger   := ASIENTO_NOMINA;
      Q.ParamByName('ASIENTONOMINA').AsInteger := nAsientoEmpresa;
      Q.parambyname('asiento').AsInteger       := nAsiento;
      Q.parambyname('apunte').AsInteger        := 3;
      if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
         Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
      end;
      Q.parambyname('debehaber').AsString     := 'H';
      Q.parambyname('subcuenta').AsString     := QFicheroSCTANOMIRPF.AsString;
      Q.parambyname('contrapartida').AsString := QFicheroSCTANOMSUELDO.AsString;
      Q.parambyname('fecha').AsDateTime       := QFicheroFECHA.AsDateTime;
      Q.parambyname('importe').AsFloat        := SumaIRPF;
      Q.parambyname('moneda').AsString        := 'E';
      Q.parambyname('id_conceptos').AsString  := QFicheroCTONOMT.AsString;
      if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
         Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
      end;
      Q.ExecQuery;
      Q.Transaction.CommitRetaining;
      // Final Apunte 3

      // Generar apuntes de nóminas por cada EMPLEADO
      if DMRef.QParametrosASIENTO_NOMINA_INDIVIDUAL.AsString = 'S' then begin
         nApunte := 4;
         QEmpleados.First;
         while not QEmpleados.EOF do begin
            // Generar apunte de EMPLEADO
            Q.ParamByName('TIPOASIENTO').AsInteger   := ASIENTO_NOMINA;
            Q.ParamByName('ASIENTONOMINA').AsInteger := nAsientoEmpresa;
            Q.parambyname('asiento').AsInteger       := nAsiento;
            Q.parambyname('apunte').AsInteger        := nApunte;
            if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
               Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
            end;
            Q.parambyname('debehaber').AsString := 'H';
            Q.parambyname('subcuenta').AsString := QEmpleadosSUBCUENTA.AsString;

            if QEmpleadosN.AsString = 'S' then    // Apunte de nómina
            begin
               Q.parambyname('contrapartida').AsString := QFicheroSCTANOMSUELDO.AsString;
            end
            else    // Apunte otras remuneraciones
            begin
               Q.ParamByName('CONTRAPARTIDA').AsString := QFicheroSCTAOTRAS.AsString;
            end;
            Q.parambyname('fecha').AsDateTime      := QFicheroFECHA.AsDateTime;
            Q.parambyname('importe').AsFloat       :=
               QEmpleadosNOMINA.AsFloat - QEmpleadosIRPF.AsFloat -
               QEmpleadosSSOCIAL.AsFloat;
            Q.parambyname('moneda').AsString       := 'E';
            Q.parambyname('id_conceptos').AsString := QFicheroCTONOMT.AsString;
            if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
               Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
            end;
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;
            Inc(nApunte);

            QEmpleados.Next;
         end;
      end
      // Generar apunte global
      else begin
         // Apunte de pago nóminas
         Q.ParamByName('TIPOASIENTO').AsInteger   := ASIENTO_NOMINA;
         Q.ParamByName('ASIENTONOMINA').AsInteger := nAsientoEmpresa;
         Q.parambyname('asiento').AsInteger       := nAsiento;
         Q.parambyname('apunte').AsInteger        := 4;
         if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
            Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
         end;
         Q.parambyname('debehaber').AsString     := 'H';
         Q.parambyname('subcuenta').AsString     := DMRef.QParametrosSCTANOMPAGO.AsString;
         Q.parambyname('contrapartida').AsString := QFicheroSCTANOMSUELDO.AsString;
         Q.parambyname('fecha').AsDateTime       := QFicheroFECHA.AsDateTime;
         Q.parambyname('importe').AsFloat        := TotImporte;
         Q.parambyname('moneda').AsString        := 'E';
         Q.parambyname('id_conceptos').AsString  := QFicheroCTONOMT.AsString;
         if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
            Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
         end;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;

         // Apuntes otras remuneraciones
         nApunte := 5;
         QEmpleados.First;
         while not QEmpleados.EOF do begin
            if QEmpleadosN.AsString = 'N' then begin
               Q.ParamByName('TIPOASIENTO').AsInteger   := ASIENTO_NOMINA;
               Q.ParamByName('ASIENTONOMINA').AsInteger := nAsientoEmpresa;
               Q.parambyname('asiento').AsInteger       := nAsiento;
               Q.parambyname('apunte').AsInteger        := nApunte;
               if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
                  Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
               end;
               Q.parambyname('debehaber').AsString     := 'H';
               Q.parambyname('subcuenta').AsString     := QEmpleadosSUBCUENTA.AsString;
               Q.parambyname('contrapartida').AsString := QFicheroSCTAOTRAS.AsString;
               Q.parambyname('fecha').AsDateTime       := QFicheroFECHA.AsDateTime;
               Q.parambyname('importe').AsFloat        :=
                  QEmpleadosNOMINA.AsFloat - QEmpleadosIRPF.AsFloat -
                  QEmpleadosSSOCIAL.AsFloat;
               Q.parambyname('moneda').AsString        := 'E';
               Q.parambyname('id_conceptos').AsString  := QFicheroCTONOMT.AsString;
               if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
                  Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
               end;
               Q.ExecQuery;
               Q.Transaction.CommitRetaining;
            end;
            QEmpleados.Next;
         end;
         QEmpleados.First;
      end;


      if HayOtrasRemuneraciones then begin
         // Apunte Gasto otras Remuneraciones
         Q.ParamByName('TIPOASIENTO').AsInteger   := ASIENTO_NOMINA;
         Q.ParamByName('ASIENTONOMINA').AsInteger := nAsientoEmpresa;
         Q.parambyname('asiento').AsInteger       := nAsiento;
         Q.parambyname('apunte').AsInteger        := nApunte;
         if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
            Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
         end;
         Q.parambyname('debehaber').AsString      := 'D';
         Q.parambyname('subcuenta').AsString      := QFicheroSCTAOTRAS.AsString;
         Q.parambyname('contrapartida').AsVariant := null;
         Q.parambyname('fecha').AsDateTime        := QFicheroFECHA.AsDateTime;
         Q.parambyname('importe').AsFloat         := SumaRemuneraciones;
         Q.parambyname('moneda').AsString         := 'E';
         Q.parambyname('id_conceptos').AsString   := QFicheroCTONOMT.AsString;
         if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
            Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
         end;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
         // Final Apunte remuneraciones
      end;


      // ASIENTO SEG. SOCIAL
      if RoundTo(QFicheroIMPEMPRESA.AsFloat, -2) <> 0 then begin
         // Apunte 1
         Q.ParamByName('TIPOASIENTO').AsInteger   := ASIENTO_SSOCIAL_EMPRESA;
         Q.ParamByName('ASIENTONOMINA').AsInteger := nAsiento;
         Q.parambyname('asiento').AsInteger       := nAsientoEmpresa;
         Q.parambyname('apunte').AsInteger        := 1;
         if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
            Q.parambyname('comentario').AsString :=
               Trim(QFicheroCOMENTARIO.AsString);
         end;
         Q.parambyname('debehaber').AsString     := 'D';
         Q.parambyname('subcuenta').AsString     := QFicheroSCTANOMCARGO.AsString;
         Q.parambyname('contrapartida').AsString := QFicheroSCTANOMSSE.AsString;
         Q.parambyname('fecha').AsDateTime       := QFicheroFECHA.AsDateTime;
         Q.parambyname('importe').AsFloat        := QFicheroIMPEMPRESA.AsFloat;
         Q.parambyname('moneda').AsString        := 'E';
         Q.parambyname('id_conceptos').AsString  := QFicheroCTONOME.AsString;
         if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
            Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
         end;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
         // Final Apunte 1

         // Apunte 2
         Q.ParamByName('TIPOASIENTO').AsInteger   := ASIENTO_SSOCIAL_EMPRESA;
         Q.ParamByName('ASIENTONOMINA').AsInteger := nAsiento;
         Q.parambyname('asiento').AsInteger       := nAsientoEmpresa;
         Q.parambyname('apunte').AsInteger        := 2;
         if not IsEmpty(QFicheroCOMENTARIO.AsString) then begin
            Q.parambyname('comentario').AsString := Trim(QFicheroCOMENTARIO.AsString);
         end;
         Q.parambyname('debehaber').AsString     := 'H';
         Q.parambyname('fecha').AsDateTime       := QFicheroFECHA.AsDateTime;
         Q.parambyname('importe').AsFloat        := QFicheroIMPEMPRESA.AsFloat;
         Q.parambyname('moneda').AsString        := 'E';
         Q.parambyname('subcuenta').AsString     := QFicheroSCTANOMSSE.AsString;
         Q.parambyname('contrapartida').AsString := QFicheroSCTANOMCARGO.AsString;
         Q.parambyname('id_conceptos').AsString  := QFicheroCTONOME.AsString;
         if not IsEmpty(QFicheroCUENTA_ANALITICA.AsString) then begin
            Q.parambyname('CUENTA_ANALITICA').AsString := Trim(QFicheroCUENTA_ANALITICA.AsString);
         end;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
         // Final Apunte 2
      end;

   finally
      Q.Free;
   end;

   QNominas.Close;
   QNominas.Free;


   // Asientos grabados
   if RoundTo(QFicheroIMPEMPRESA.AsFloat, -2) = 0 then begin
      MessageDlg('Se ha grabado el asiento ' + FormatFloat('###,###,###', nAsiento), mtInformation, [mbOK], 0);
   end
   else begin
      MessageDlg('Se ha grabado el asiento ' + FormatFloat('###,###,###', nAsiento) + ' y el ' + FormatFloat('###,###,###', nAsientoEmpresa), mtInformation, [mbOK], 0);
   end;

   // Si estamos en modo inserción, inicializar controles para un nuevo asiento.
   if FModoArranque = INSERCION then  begin
      QFichero.Edit;
      QFichero.FieldByName('SCTANOMSUELDO').AsString    := DmRef.QParametrosSCTANOMSUELDO.AsString;
      QFichero.FieldByName('SCTAOTRAS').AsString        := DmRef.QParametrosSCTAOTRASREMUN.AsString;
      QFichero.FieldByName('SCTANOMSST').AsString       := DmRef.QParametrosSCTANOMSST.AsString;
      QFichero.FieldByName('SCTANOMIRPF').AsString      := DmRef.QParametrosSCTANOMIRPF.AsString;
      QFichero.FieldByName('CTONOMT').AsString          := DmRef.QParametrosCTONOMT.AsString;
      QFichero.FieldByName('SCTANOMCARGO').AsString     := DmRef.QParametrosSCTANOMCARGO.AsString;
      QFichero.FieldByName('SCTANOMSSE').AsString       := DmRef.QParametrosSCTANOMSSE.AsString;
      QFicheroCTONOME.AsString                          := DmRef.QParametrosCTONOME.AsString;
      QFichero.Post;
      InicializarFichero_QEmpleados;

      PrepararQuery;
   end
   else begin
      Self.Close;
   end;
end;

procedure TWCargaRapidaNominas.BtnEdtBorrarMovimClick(Sender: TObject);
var Q :TIBSQL;
begin
   if not QMovimientos.IsEmpty then begin
      if DMContaRef.AsientoBloqueado(QMovimientosFECHA.AsDateTime) then begin
         DatabaseError('No se puede borrar un asiento bloqueado.');
      end;

      if MessageDlg('¿Desea borrar el asiento ' + FormatFloat('###,###,###', QMovimientosASIENTO.AsInteger) +
         ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         Q := TIBSQL.Create(nil);
         try
            Q.Database := DMRef.BDContab;
            Q.SQL.Add('delete from diario where asiento=:asiento');
            Q.ParamByName('asiento').AsInteger := QMovimientosASIENTO.AsInteger;
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;
         finally
            Q.Free;
         end;
         PrepararQuery;
      end;
   end;
   PageControl1.Update;
end;

procedure TWCargaRapidaNominas.FormShow(Sender: TObject);
begin
   InicializarModoArranque;

   PageControl1.Pages[0].Show;
   EditFECHA.SetFocus;
end;

procedure TWCargaRapidaNominas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnEdtGuardar.Click;
      end;
   end;
end;

procedure TWCargaRapidaNominas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (QFichero.Modified) and (MessageDlg('Ha hecho modificaciones. ¿Quiere salir?',
               mtConfirmation, [mbYes, mbNo], 0) = mrNo) then Abort
end;

procedure TWCargaRapidaNominas.QMovimientosCalcFields(DataSet: TDataSet);
begin
   QMovimientosDESCCOMENTARIO.AsString :=
         DMContaRef.GetDescripcionApunte(QMovimientosDESCCONCEPTO.AsString,
                                         QMovimientosNUMEROFACTURA.AsString,
                                         QMovimientosSERIE.AsString,
                                         QMovimientosEJERCICIO.AsInteger,
                                         QMovimientosCOMENTARIO.AsString,
                                         QMovimientosABREVIATURA.AsString);
end;

procedure TWCargaRapidaNominas.BtnEdtSubcuentaClick(Sender: TObject);
begin
   WNuevaSubcuenta := TWNuevaSubcuenta.Create(nil);
   try
      WNuevaSubcuenta.ShowModal;
   finally
      FreeAndNil(WNuevaSubcuenta);
   end;
   PageControl1.Update;
end;

procedure TWCargaRapidaNominas.GridEdtEmpleadosCellChanged(Sender: TObject);
begin
   if QEmpleados.State in dsEditModes then begin
      QEmpleados.OnCalcFields(nil);
   end;
end;

procedure TWCargaRapidaNominas.BtnEdtRestablecerClick(Sender: TObject);
begin
   if MessageDlg('¿Desea inicializar el asiento de nóminas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      QFichero.Edit;
      QFicheroSCTANOMSUELDO.AsString := DmRef.QParametrosSCTANOMSUELDO.AsString;
      QFicheroSCTAOTRAS.AsString     := DmRef.QParametrosSCTAOTRASREMUN.AsString;
      QFicheroSCTANOMSST.AsString    := DmRef.QParametrosSCTANOMSST.AsString;
      QFicheroSCTANOMIRPF.AsString   := DmRef.QParametrosSCTANOMIRPF.AsString;
      QFicheroCTONOMT.AsString       := DmRef.QParametrosCTONOMT.AsString;
      QFicheroSCTANOMCARGO.AsString  := DmRef.QParametrosSCTANOMCARGO.AsString;
      QFicheroSCTANOMSSE.AsString    := DmRef.QParametrosSCTANOMSSE.AsString;
      QFicheroCTONOME.AsString       := DmRef.QParametrosCTONOME.AsString;
      QFichero.Post;
      InicializarFichero_QEmpleados;
   end;
end;

procedure TWCargaRapidaNominas.BtnEdtBorrarEmpleadoClick(Sender: TObject);
begin
   if not QEmpleados.IsEmpty then begin
      if MessageDlg('¿Desea borrar la nómina seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         QEmpleados.Delete;
      end;
   end;
end;

procedure TWCargaRapidaNominas.QEmpleadosCalcFields(DataSet: TDataSet);
begin
   QEmpleadosNETO.AsFloat := RoundTo(QEmpleadosNOMINA.AsFloat -
      QEmpleadosIRPF.AsFloat - QEmpleadosSSOCIAL.AsFloat, -2);
end;

procedure TWCargaRapidaNominas.OnShowWEditEmpleado(Sender: TObject);
begin
   FEditEmpleado.ComboBoxCD_SUBCUENTA.SetFocus;
end;

procedure TWCargaRapidaNominas.BtnEdtAniadirClick(Sender: TObject);
begin
   FEditEmpleado := TWEditEmpleado.Create(nil);
   try
      FEditEmpleado.Model := FModel;
      FEditEmpleado.OnShow := OnShowWEditEmpleado;
      FEditEmpleado.QFichero.Append;
      if FEditEmpleado.ShowModal = mrOK then begin
         QEmpleados.Append;
         QEmpleadosSUBCUENTA.AsString   := FEditEmpleado.QFicheroSUBCUENTA.AsString;
         QEmpleadosDESCRIPCION.AsString := FEditEmpleado.QFicheroDESCRIPCION.AsString;
         QEmpleadosNOMINA.AsFloat       := FEditEmpleado.QFicheroNOMINA.AsFloat;
         QEmpleadosIRPF.AsFloat         := FEditEmpleado.QFicheroIRPF.AsFloat;
         QEmpleadosSSOCIAL.AsFloat      := FEditEmpleado.QFicheroSSOCIAL.AsFloat;
         QEmpleadosNETO.AsFloat         := FEditEmpleado.QFicheroNETO.AsFloat;
         QEmpleadosN.AsString           := 'S';
         QEmpleados.Post;
      end;
   finally
      FreeAndNil(FEditEmpleado);
   end;
end;

procedure TWCargaRapidaNominas.BtnModifyClick(Sender: TObject);
begin
   FEditEmpleado := TWEditEmpleado.Create(nil);
   try
      FEditEmpleado.Model := FModel;
      FEditEmpleado.OnShow := OnShowWEditEmpleado;
      FEditEmpleado.QFichero.Append;
      if not QEmpleadosSUBCUENTA.IsNull then FEditEmpleado.QFicheroSUBCUENTA.AsString := QEmpleadosSUBCUENTA.AsString;
      if not QEmpleadosNOMINA.IsNull    then FEditEmpleado.QFicheroNOMINA.AsFloat     := QEmpleadosNOMINA.AsFloat    ;
      if not QEmpleadosIRPF.IsNull      then FEditEmpleado.QFicheroIRPF.AsFloat       := QEmpleadosIRPF.AsFloat      ;
      if not QEmpleadosSSOCIAL.IsNull   then FEditEmpleado.QFicheroSSOCIAL.AsFloat    := QEmpleadosSSOCIAL.AsFloat   ;
      if not QEmpleadosNETO.IsNull      then FEditEmpleado.QFicheroNETO.AsFloat       := QEmpleadosNETO.AsFloat      ;
      if not QEmpleadosN.IsNull         then FEditEmpleado.QFicheroN.AsString         := QEmpleadosN.AsString        ;
      if FEditEmpleado.ShowModal = mrOK then begin
         QEmpleados.Edit;
         QEmpleadosSUBCUENTA.AsString := FEditEmpleado.QFicheroSUBCUENTA.AsString;
         QEmpleadosNOMINA.AsFloat     := FEditEmpleado.QFicheroNOMINA.AsFloat;
         QEmpleadosIRPF.AsFloat       := FEditEmpleado.QFicheroIRPF.AsFloat;
         QEmpleadosSSOCIAL.AsFloat    := FEditEmpleado.QFicheroSSOCIAL.AsFloat;
         QEmpleadosNETO.AsFloat       := FEditEmpleado.QFicheroNETO.AsFloat;
         QEmpleadosN.AsString         := FEditEmpleado.QFicheroN.AsString;
         QEmpleados.Post;
      end;
   finally
      FreeAndNil(FEditEmpleado);
   end;
end;

procedure TWCargaRapidaNominas.BtnEdtModificarClick(Sender: TObject);
var Asiento: Integer;
begin
   if not QMovimientos.IsEmpty then begin
      if DMContaRef.AsientoBloqueado(QMovimientosFECHA.AsDateTime) then begin
         DatabaseError('No se puede modificar un asiento bloqueado.');
      end;

      WCargaAsiento := TWCargaAsiento.Create(nil);
      try
         WCargaAsiento.FModoArranque := Modificacion;
         Asiento := QMovimientosASIENTO.AsInteger;
         WCargaAsiento.FAsiento := Asiento;
         WCargaAsiento.ShowModal;
      finally
         FreeAndNil(WCargaAsiento);
      end;

      PrepararQuery;

      QMovimientos.DisableControls;
      QMovimientos.First;
      while not QMovimientos.EOF do begin
         if QMovimientosASIENTO.AsInteger = Asiento then begin
            Break;
         end;
         QMovimientos.Next;
      end;
      QMovimientos.EnableControls;
   end;

   PageControl1.Update;
end;

procedure TWCargaRapidaNominas.BtnEdtMayorClick(Sender: TObject);
var LMayorModel :TFiltroListadosMayorModel;
begin
   if DMRef.QParametrosMOSTRAR_FILTRO_MAYOR.AsString = 'S' then  begin
      WFiltroMayorSubcuenta := TWFiltroMayorSubcuenta.Create(nil);
      try
         WFiltroMayorSubcuenta.FSubcuenta := QMovimientosSUBCUENTA.AsString;
         WFiltroMayorSubcuenta.ShowModal;
      finally
         FreeAndNil(WFiltroMayorSubcuenta);
      end;
   end
   else begin
      // Primero vaciar el fichero
      DMContaRef.QInformesConta.EmptyDataset;

      Config.SetAccountingType('T');
      LMayorModel := TFiltroListadosMayorModel.Create(DMRef.BDContab);
      try
         LMayorModel.LanzarInfMayor(True,
                                    False,
                                    QMovimientosSUBCUENTA.AsString,
                                    QMovimientosSUBCUENTA.AsString,
                                    '',
                                    '',
                                    DMRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime,
                                    DMRef.QParametrosFECHA_FIN_EJERCICIO.AsDateTime,
                                    Date,
                                    'T',
                                    '',
                                    '',
                                    '',
                                    '',
                                    '',
                                    '',
                                    '',
                                    '');
      finally
         LMayorModel.Free;
      end;
   end;

   PageControl1.Update;
end;

procedure TWCargaRapidaNominas.DBGridMovesDblClick(Sender: TObject);
begin
   BtnEdtModificar.Click;
end;

procedure TWCargaRapidaNominas.DBGridMovesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   FAsientoAnterior := QMovimientosASIENTO.AsInteger;
   DBGridMoves.Refresh;
end;

procedure TWCargaRapidaNominas.DBGridMovesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if QMovimientosASIENTO.AsInteger <> FAsientoAnterior then begin
      FAsientoAnterior := QMovimientosASIENTO.AsInteger;
      if FColorActual = $00EDFBFC then FColorActual := $00D9D1C0
                                  else FColorActual := $00EDFBFC;
   end;

   if State * [gdFixed, gdSelected] = [] then begin
      DBGridMoves.Canvas.Brush.Color := FColorActual;
      DBGridMoves.DefaultDrawColumnCell(Rect, DataCol, Column, State);
   end;
end;

end.
