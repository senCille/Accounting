unit UEfectosComerciales;

interface

uses Buttons, Classes, comctrls, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, Grids, IBX.IBDatabase, IBX.IBSQL, jpeg, Mask, Messages, StdCtrls, SysUtils,
     WinProcs, WinTypes,
     UEfectosComercialesModel;

     (*Está pendiente en el combo situacion, hacer que muestre los valores de la izquierda y guarde los de la derecha
     Items.Strings = (
          'PENDIENTE'#9'N'
          'REMESADO'#9'B'
          'COBRADO'#9'C'
          'DEVUELTO'#9'D'
          'PAGADO'#9'P'
          'ACEPTADO'#9'A'
          'VENCIDO'#9'V') *)
     
type
  TWEfectosComerciales = class(TForm)
    SFichero: TDataSource;
    QFicheroEfectos: TClientDataSet;
    QFicheroEfectosSCTAEFECTOSCOMERCIALES: TStringField;
    QFicheroEfectosSITUACION: TStringField;
    QFicheroEfectosFECHAVTOS: TDateTimeField;
    QFicheroEfectosIMPORTEVTOS: TFloatField;
    QFicheroEfectosIMPORTERIESGO: TFloatField;
    QFicheroEfectosFECHARIESGO: TDateTimeField;
    QFicheroEfectosSCTAEFECTOSDESCONTADOS: TStringField;
    QFicheroEfectosSCTADEUDASDESCUENTOS: TStringField;
    QFicheroEfectosID_CONCEPTOS_RIESGO: TVarBytesField;
    QFicheroEfectosID_CONCEPTOS: TVarBytesField;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnProcess: TButton;
    Shape1: TShape;
    lTitulo: TLabel;
    GroupBox2: TGroupBox;
    Datos: TGroupBox;
    Label7: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    eSituacion: TDBComboBox;
    eSubctaEfectosComerciales: TDBLookupComboBox;
    eDescSubctaEfectosComerciales: TDBLookupComboBox;
    eDescConcepto: TDBLookupComboBox;
    eConcepto: TDBLookupComboBox;
    CheckBoxModificarVtos: TCheckBox;
    eImporte: TDBEdit;
    eFechaVtos: TDBEdit;
    GroupBox1: TGroupBox;
    Label81: TLabel;
    Label82: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBoxAsientoRiesgo: TCheckBox;
    eDescSctaEfectosDescontados: TDBLookupComboBox;
    eSctaEfectosDescontados: TDBLookupComboBox;
    eDescSctaDeudasDescuentos: TDBLookupComboBox;
    eSctaDeudasDescuentos: TDBLookupComboBox;
    eImporteRiesgo: TDBEdit;
    eFechaRiesgo: TDBEdit;
    DBLookupCombo1: TDBLookupComboBox;
    DBLookupCombo2: TDBLookupComboBox;
    procedure BtnProcessClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FModel :TEfectosComercialesModel;
  public
    FFechaVencimiento :TDateTime;
    FFechaEmision     :TDateTime;
    FFactura          :string;
    FSubcuenta        :string;
    FTotalImporte     :Double;
  end;

var WEfectosComerciales: TWEfectosComerciales;

implementation

uses DM, DMConta, Globales, UCarteraEfectos, UEspere;
{$R *.DFM}

procedure TWEfectosComerciales.FormCreate(Sender: TObject);
begin
   FModel := TEfectosComercialesModel.Create(DMRef.BDContab);
   Caption := '';

   FSubcuenta        := '';
   FTotalImporte     := 0;
   FFactura          := '';
   FFechaEmision     := 0;
   FFechaVencimiento := 0;
   QFicheroEfectos.CreateDataset;
   QFicheroEfectos.Open;
   QFicheroEfectos.Append;

   QFicheroEfectosSCTAEFECTOSCOMERCIALES.AsString := DMRef.QParametrosSCTAEFECTOSCOMERCIALES.AsString;
   QFicheroEfectosID_CONCEPTOS.AsString           := DMRef.QParametrosCTOEFECTOSCOMERCIALES.AsString;
   QFicheroEfectosSITUACION.AsString              := 'A';   // Aceptado
   QFicheroEfectosFECHAVTOS.AsDateTime            := Date;
   QFicheroEfectosIMPORTEVTOS.AsFloat             := FTotalImporte;

   QFicheroEfectosIMPORTERIESGO.AsFloat           := FTotalImporte;
   QFicheroEfectosFECHARIESGO.AsDateTime          := Date;
   QFicheroEfectosSCTAEFECTOSDESCONTADOS.AsString := DMRef.QParametrosSCTAEFECTDESCONTADOS.AsString;
   QFicheroEfectosSCTADEUDASDESCUENTOS.AsString   := DMRef.QParametrosSCTADEUDASDESCUENTOS.AsString;
   QFicheroEfectosID_CONCEPTOS_RIESGO.AsString    := DMRef.QParametrosCTODEUDASDESCUENTOS.AsString;
end;

procedure TWEfectosComerciales.FormDestroy(Sender: TObject);
begin
   FModel.Free;
end;

procedure TWEfectosComerciales.BtnProcessClick(Sender: TObject);
var
   Asiento, AsientoRiesgo: Integer;

   procedure GenerarAsientoSaldarSubcta;
   var cComentario :string;
       Q :TIBSQL;
   begin
      Asiento := DMContaRef.ObtenerNumeroAsiento;
      Q := TIBSQL.Create(nil);
      try
         Q.Close;
         Q.Database := DMRef.BDContab;
         Q.SQL.Clear;
         Q.SQL.Add('select descripcion from subctas where subcuenta=:subcuenta');
         Q.ParamByName('SUBCUENTA').AsString := FSubcuenta;
         Q.ExecQuery;
         cComentario := Q.FieldByName('descripcion').AsString;

         Q.Close;
         Q.SQL.Clear;
         Q.SQL.Add('INSERT INTO DIARIO');
         Q.SQL.Add('   (APUNTE, ASIENTO, CONTRAPARTIDA, DEBEHABER,');
         Q.SQL.Add('    FECHA, IMPORTE, MONEDA, NUMEROFACTURA, SUBCUENTA,');
         Q.SQL.Add('    ID_CONCEPTOS,COMENTARIO)');
         Q.SQL.Add('VALUES');
         Q.SQL.Add('   (:APUNTE, :ASIENTO, :CONTRAPARTIDA, :DEBEHABER,');
         Q.SQL.Add('    :FECHA, :IMPORTE, :MONEDA, :NUMEROFACTURA, :SUBCUENTA,');
         Q.SQL.Add('    :ID_CONCEPTOS,:COMENTARIO)');

         // Apunte 1
         Q.Close;
         Q.ParamByName('APUNTE').AsInteger       := 1;
         Q.ParamByName('ASIENTO').AsInteger      := Asiento;
         Q.ParamByName('FECHA').AsDateTime       := QFicheroEfectosFECHAVTOS.AsDateTime;
         Q.ParamByName('IMPORTE').AsDouble       := QFicheroEfectosIMPORTEVTOS.AsFloat;
         Q.ParamByName('MONEDA').AsString        := 'E';
         Q.ParamByName('NUMEROFACTURA').AsString := FFactura;
         Q.ParamByName('ID_CONCEPTOS').AsString  := QFicheroEfectosID_CONCEPTOS.AsString;
         Q.ParamByName('SUBCUENTA').AsString     := QFicheroEfectosSCTAEFECTOSCOMERCIALES.AsString;
         Q.ParamByName('CONTRAPARTIDA').AsString := FSubcuenta;
         Q.ParamByName('DEBEHABER').AsString     := 'D';
         Q.ParamByName('COMENTARIO').AsString    := cComentario;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;

         // Apunte 2
         Q.Close;
         Q.ParamByName('APUNTE').AsInteger       := 2;
         Q.ParamByName('ASIENTO').AsInteger      := Asiento;
         Q.ParamByName('FECHA').AsDateTime       := QFicheroEfectosFECHAVTOS.AsDateTime;
         Q.ParamByName('IMPORTE').AsDouble       := QFicheroEfectosIMPORTEVTOS.AsFloat;
         Q.ParamByName('MONEDA').AsString        := 'E';
         Q.ParamByName('NUMEROFACTURA').AsString := FFactura;
         Q.ParamByName('ID_CONCEPTOS').AsString  := QFicheroEfectosID_CONCEPTOS.AsString;
         Q.ParamByName('SUBCUENTA').AsString     := FSubcuenta;
         Q.ParamByName('CONTRAPARTIDA').AsString := QFicheroEfectosSCTAEFECTOSCOMERCIALES.AsString;
         Q.ParamByName('DEBEHABER').AsString     := 'H';
         Q.ParamByName('COMENTARIO').AsString    := cComentario;

         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      finally
         Q.Free;
      end;
   end;

   procedure ModificarVencimientos;
   var i :Integer;
   begin
      {$Message Warn 'This is pendant. This Screen don't works without this part'}
      (*for i := 0 to WCarteraEfectos.Rejilla.SelectedList.Count - 1 do begin
         WCarteraEfectos.QFichero.GotoBookmark(WCarteraEfectos.Rejilla.SelectedList.Items[i]);
         WCarteraEfectos.QFichero.Edit;
         WCarteraEfectos.QFicheroSUBCUENTA.AsString := QFicheroEfectosSCTAEFECTOSCOMERCIALES.AsString;
         WCarteraEfectos.QFicheroSITUACION.AsString := QFicheroEfectosSITUACION.AsString;
         WCarteraEfectos.QFichero.Post;
         WCarteraEfectos.QFichero.Transaction.CommitRetaining;
      end;*)

      GenerarAsientoSaldarSubcta;
   end;

   procedure GenerarAsientoRiesgo;
   var Q :TIBSQL;
   begin
      AsientoRiesgo := DMContaRef.ObtenerNumeroAsiento;
      Q := TIBSQL.Create(nil);
      try
         Q.Database := DMRef.BDContab;
         Q.SQL.Add('INSERT INTO DIARIO');
         Q.SQL.Add('   (APUNTE, ASIENTO, CONTRAPARTIDA, DEBEHABER,');
         Q.SQL.Add('    FECHA, IMPORTE, MONEDA, NUMEROFACTURA, SUBCUENTA,');
         Q.SQL.Add('    ID_CONCEPTOS)');
         Q.SQL.Add('VALUES');
         Q.SQL.Add('   (:APUNTE, :ASIENTO, :CONTRAPARTIDA, :DEBEHABER,');
         Q.SQL.Add('    :FECHA, :IMPORTE, :MONEDA, :NUMEROFACTURA, :SUBCUENTA,');
         Q.SQL.Add('    :ID_CONCEPTOS)');

         // Apunte 1
         Q.Close;
         Q.ParamByName('APUNTE').AsInteger       := 1;
         Q.ParamByName('ASIENTO').AsInteger      := AsientoRiesgo;
         Q.ParamByName('FECHA').AsDateTime       := QFicheroEfectosFECHARIESGO.AsDateTime;
         Q.ParamByName('IMPORTE').AsDouble       := QFicheroEfectosIMPORTERIESGO.AsFloat;
         Q.ParamByName('MONEDA').AsString        := 'E';
         Q.ParamByName('NUMEROFACTURA').AsString := FFactura;
         Q.ParamByName('ID_CONCEPTOS').AsString  := QFicheroEfectosID_CONCEPTOS_RIESGO.AsString;
         Q.ParamByName('SUBCUENTA').AsString     := QFicheroEfectosSCTAEFECTOSDESCONTADOS.AsString;
         Q.ParamByName('CONTRAPARTIDA').AsString := QFicheroEfectosSCTADEUDASDESCUENTOS.AsString;
         Q.ParamByName('DEBEHABER').AsString     := 'D';
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;

         // Apunte 2
         Q.Close;
         Q.ParamByName('APUNTE').AsInteger       := 2;
         Q.ParamByName('ASIENTO').AsInteger      := AsientoRiesgo;
         Q.ParamByName('FECHA').AsDateTime       := QFicheroEfectosFECHARIESGO.AsDateTime;
         Q.ParamByName('IMPORTE').AsDouble       := QFicheroEfectosIMPORTERIESGO.AsFloat;
         Q.ParamByName('MONEDA').AsString        := 'E';
         Q.ParamByName('NUMEROFACTURA').AsString := FFactura;
         Q.ParamByName('ID_CONCEPTOS').AsString  := QFicheroEfectosID_CONCEPTOS_RIESGO.AsString;
         Q.ParamByName('SUBCUENTA').AsString     := QFicheroEfectosSCTADEUDASDESCUENTOS.AsString;
         Q.ParamByName('CONTRAPARTIDA').AsString := QFicheroEfectosSCTAEFECTOSDESCONTADOS.AsString;
         Q.ParamByName('DEBEHABER').AsString     := 'H';
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      finally
         Q.Free;
      end;
   end;

   procedure GenerarNuevoVencimiento;
   var DescConcepto :string;
       Q :TIBSQL;
   begin
      Q := TIBSQL.Create(nil);
      try
         Q.Database := DMRef.BDContab;
         Q.SQL.Add('SELECT DESCRIPCION FROM CONCEPTOS WHERE ID_CONCEPTOS = :ID_CONCEPTOS');
         Q.ParamByName('ID_CONCEPTOS').AsString := QFicheroEfectosID_CONCEPTOS_RIESGO.AsString;
         Q.ExecQuery;
         DescConcepto := Q.FieldByName('DESCRIPCION').AsString;

         Q.Close;
         Q.SQL.Clear;
         Q.SQL.Add('INSERT INTO CARTERAEFECTOS');
         Q.SQL.Add('   (SUBCUENTA, SITUACION, SUBCTABANCO, CONCEPTO, FEMISION,');
         Q.SQL.Add('    FASIENTO, IMPORTE, FVENCIMIENTO, ASIENTORIESGO)');
         Q.SQL.Add('VALUES');
         Q.SQL.Add('   (:SUBCUENTA, :SITUACION, :SUBCTABANCO, :CONCEPTO, :FEMISION,');
         Q.SQL.Add('    :FASIENTO, :IMPORTE, :FVENCIMIENTO, :ASIENTORIESGO)');

         Q.ParamByName('SUBCUENTA').AsString      := QFicheroEfectosSCTAEFECTOSDESCONTADOS.AsString;
         Q.ParamByName('SITUACION').AsString      := 'B';
         Q.ParamByName('SUBCTABANCO').AsString    := QFicheroEfectosSCTADEUDASDESCUENTOS.AsString;
         Q.ParamByName('CONCEPTO').AsString       := DescConcepto;
         Q.ParamByName('FEMISION').AsDateTime     := FFechaEmision;
         Q.ParamByName('FASIENTO').AsDateTime     := QFicheroEfectosFECHARIESGO.AsDateTime;
         Q.ParamByName('IMPORTE').AsFloat         := QFicheroEfectosIMPORTERIESGO.AsFloat;
         Q.ParamByName('FVENCIMIENTO').AsDateTime := FFechaVencimiento;
         Q.ParamByName('ASIENTORIESGO').AsInteger := AsientoRiesgo;

         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      finally
         Q.Free;
      end;
   end;

begin
   Perform(wm_NextDlgCtl, 0, 0);

   Asiento       := 0;
   AsientoRiesgo := 0;


   if CheckBoxModificarVtos.Checked then  begin
      if QFicheroEfectosSCTAEFECTOSCOMERCIALES.AsString = '' then begin
         eSubctaEfectosComerciales.SetFocus;
         DatabaseError('La subcuenta de efectos comerciales está en blanco.');
      end;
      if QFicheroEfectosID_CONCEPTOS.AsString = '' then begin
         eConcepto.SetFocus;
         DatabaseError('El concepto está en blanco.');
      end;
      if QFicheroEfectosSITUACION.AsString = '' then begin
         eSituacion.SetFocus;
         DatabaseError('La situación está en blanco.');
      end;
      if QFicheroEfectosFECHAVTOS.IsNull then begin
         eFechaVtos.SetFocus;
         DatabaseError('La fecha de asiento está en blanco.');
      end;
   end;

   if CheckBoxAsientoRiesgo.Checked then  begin
      if QFicheroEfectosSCTAEFECTOSDESCONTADOS.AsString = '' then begin
         eSctaEfectosDescontados.SetFocus;
         DatabaseError('La subcuenta de efectos descontados está en blanco.');
      end;
      if QFicheroEfectosSCTADEUDASDESCUENTOS.AsString = '' then begin
         eSctaDeudasDescuentos.SetFocus;
         DatabaseError('La subcuenta de deudas por descuentos está en blanco.');
      end;
      if QFicheroEfectosFECHARIESGO.IsNull then begin
         eFechaRiesgo.SetFocus;
         DatabaseError('La fecha de asiento está en blanco.');
      end;
   end;


   // Modificar vencimientos
   if CheckBoxModificarVtos.Checked then begin
      ModificarVencimientos;
   end;

   // Asiento de riesgo
   if CheckBoxAsientoRiesgo.Checked then begin
      GenerarAsientoRiesgo;
      GenerarNuevoVencimiento;
   end;

   if CheckBoxModificarVtos.Checked and not CheckBoxAsientoRiesgo.Checked then begin
      MessageDlg('Generado asiento nº ' + FormatFloat('###,###,###', Asiento), mtInformation, [mbOK], 0);
   end else
   if CheckBoxAsientoRiesgo.Checked and not CheckBoxModificarVtos.Checked then begin
      MessageDlg('Generado asiento nº ' + FormatFloat('###,###,###', AsientoRiesgo), mtInformation, [mbOK], 0);
   end else
   if CheckBoxAsientoRiesgo.Checked and CheckBoxModificarVtos.Checked then begin
      MessageDlg('Generados asientos nº ' + FormatFloat('###,###,###', Asiento) + ' y ' +
         FormatFloat('###,###,###', AsientoRiesgo), mtInformation, [mbOK], 0);
   end;

   Close;
end;

procedure TWEfectosComerciales.FormShow(Sender: TObject);
begin
   eSubctaEfectosComerciales.SetFocus;
end;

procedure TWEfectosComerciales.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F9: begin
         BtnProcess.Click;
      end;
   end;
end;

end.
