unit UAmortizacionesModel;

interface

uses
  System.SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  DBClient, frxClass, frxDBSet, frxExportPDF, IBX.IBQuery;

type
  TDataModuleAmortizaciones = class(TDataModule)
    QSubCuentas: TIBDataSet;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    SSubcuentas: TDataSource;
    QEmpresas: TIBDataSet;
    QEmpresasNOMBRE: TIBStringField;
    QEmpresasCERRADA: TIBStringField;
    QEmpresasUBICACION: TIBStringField;
    QEmpresasID_EMPRESA: TIntegerField;
    QEmpresasULTIMA: TIBStringField;
    SEmpresas: TDataSource;
    DBEmpresa: TIBDatabase;
    Transaccion: TIBTransaction;
    QAnaliticas: TIBDataSet;
    SAnaliticas: TDataSource;
    QDelegaciones: TIBDataSet;
    SDelegaciones: TDataSource;
    QDepartamentos: TIBDataSet;
    SDepartamentos: TDataSource;
    QSecciones: TIBDataSet;
    SSecciones: TDataSource;
    QProyectos: TIBDataSet;
    SProyectos: TDataSource;
    QAnaliticasID_PROYECTO: TIBStringField;
    QAnaliticasID_SECCION: TIBStringField;
    QAnaliticasID_DEPARTAMENTO: TIBStringField;
    QAnaliticasID_DELEGACION: TIBStringField;
    QAnaliticasNOMBRE: TIBStringField;
    QAnaliticasCUENTA: TIBStringField;
    QDelegacionesID_DELEGACION: TIBStringField;
    QDelegacionesNOMBRE: TIBStringField;
    QDepartamentosID_DEPARTAMENTO: TIBStringField;
    QDepartamentosNOMBRE: TIBStringField;
    QSeccionesID_SECCION: TIBStringField;
    QSeccionesNOMBRE: TIBStringField;
    QProyectosID_PROYECTO: TIBStringField;
    QProyectosNOMBRE: TIBStringField;
    QConceptos: TIBDataSet;
    SConceptos: TDataSource;
    QConceptosID_CONCEPTOS: TIBStringField;
    QConceptosDESCRIPCION: TIBStringField;
    QTrabajos: TClientDataSet;
    QTrabajosTITULOLISTADO: TStringField;
    QTrabajosCENTROCOSTE: TStringField;
    QTrabajosSUBCUENTA: TStringField;
    QTrabajosINICIO: TFloatField;
    QTrabajosDESCRIPCION: TStringField;
    QTrabajosCONTRAPARTIDA: TStringField;
    QTrabajosIMPORTE: TFloatField;
    QTrabajosDEBEHABER: TStringField;
    QTrabajosMES1: TFloatField;
    QTrabajosMES2: TFloatField;
    QTrabajosMES3: TFloatField;
    QTrabajosMES4: TFloatField;
    QTrabajosMES5: TFloatField;
    QTrabajosMES6: TFloatField;
    QTrabajosMES7: TFloatField;
    QTrabajosMES8: TFloatField;
    QTrabajosMES9: TFloatField;
    QTrabajosMES10: TFloatField;
    QTrabajosMES11: TFloatField;
    QTrabajosMES12: TFloatField;
    QTrabajosSUMA: TFloatField;
    QTrabajosTOTAL: TFloatField;
    STrabajos: TDataSource;
    FastReportAmortizaciones: TfrxReport;
    PDFExport: TfrxPDFExport;
    Enlace1: TfrxDBDataset;
    QAmortizaciones: TIBQuery;
    QAmortizacionesSUBCUENTA: TIBStringField;
    QAmortizacionesDESCRIPCION: TIBStringField;
    QAmortizacionesCLASE: TFloatField;
    QAmortizacionesTIPOCUENTA: TIBStringField;
    QAmortizacionesFCOMPRA: TDateTimeField;
    QAmortizacionesFBAJA: TDateTimeField;
    QAmortizacionesFULTAMOR: TDateTimeField;
    QAmortizacionesVCOMPRA: TFloatField;
    QAmortizacionesVRESIDUAL: TFloatField;
    QAmortizacionesVAMOR: TFloatField;
    QAmortizacionesANUAL: TFloatField;
    QAmortizacionesVEJPINICIO: TFloatField;
    QAmortizacionesFINICIO: TDateTimeField;
    QAmortizacionesCENTROCOSTE: TIBStringField;
    QAmortizacionesFFINAMOR: TDateTimeField;
    QAmortizacionesSUBGASTO: TIBStringField;
    QAmortizacionesSUBAMOR: TIBStringField;
    QAmortizacionesPERIODO: TIBStringField;
    QAmortizacionesPROVEEDOR: TIBStringField;
    QAmortizacionesFACTURA: TIBStringField;
    QAmortizacionesVEJAINICIO: TFloatField;
    QAmortizacionesVEJPAMOR: TFloatField;
    QAmortizacionesVEJAAMOR: TFloatField;
    QAmortizacionesCalcVRESIDUAL: TFloatField;
    QAmortizacionesCalcVAMOR: TFloatField;
    QAmortizacionesCalcVEJPINICIO: TFloatField;
    QAmortizacionesCalcVEJAINICIO: TFloatField;
    QAmortizacionesCalcVEJPAMOR: TFloatField;
    QAmortizacionesCalcVEJAAMOR: TFloatField;
    QAmortizacionesCalcVCOMPRA: TFloatField;
    QAmortizacionesCalcVAMORTIZADO: TFloatField;
    SAmortizaciones: TDataSource;
    Enlace2: TfrxDBDataset;
    FastReportDetalleInmovilizado: TfrxReport;
    QModifica: TIBSQL;
    procedure QAmortizacionesCalcFields(DataSet: TDataSet);
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TAmortizacionesModel = class(TCustomModel)
  private
    DM :TDataModuleAmortizaciones;
    function GetNextNumeroAsiento: Integer;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure GenerarAsientosAmortizacion(AID_CONCEPTOS    :string;
                                          AFECHA           :TDateTime;
                                          ASUBCUENTA_DESDE :string;
                                          ASUBCUENTA_HASTA :string;
                                          ATipo            :Integer);
    procedure ReportDetalleInmovilizado;
    procedure GenerarDetalleInmovilizado(ASUBCUENTA_DESDE        :string;
                                                          ASUBCUENTA_HASTA        :string;
                                                          ATipoCuenta             :Integer;
                                                          AFechaIsNull            :Boolean;
                                                          AFECHA                  :TDateTime;
                                                          AFechaCompraDesdeIsNull :Boolean;
                                                          AFECHA_COMPRA_DESDE     :TDateTime;
                                                          AFechaCompraHastaIsNull :Boolean;
                                                          AFECHA_COMPRA_HASTA     :TDateTime;
                                                          AFechaUltDesdeIsNull    :Boolean;
                                                          AFECHA_ULT_DESDE        :TDateTime;
                                                          AFechaUltHastaIsNull    :Boolean;
                                                          AFECHA_ULT_HASTA        :TDateTime);
    procedure ReportAmortizaciones;
    procedure GenerarInformeAmortizacion(ASUBCUENTA_DESDE        :string;
                                         ASUBCUENTA_HASTA        :string;
                                         ATipoCuenta             :Integer;
                                         AFechaIsNull            :Boolean;
                                         AFECHA                  :TDateTime;
                                         AFechaCompraDesdeIsNull :Boolean;
                                         AFECHA_COMPRA_DESDE     :TDateTime;
                                         AFechaCompraHastaIsNull :Boolean;
                                         AFECHA_COMPRA_HASTA     :TDateTime;
                                         AFechaUltDesdeIsNull    :Boolean;
                                         AFECHA_ULT_DESDE        :TDateTime;
                                         AFechaUltHastaIsNull    :Boolean;
                                         AFECHA_ULT_HASTA        :TDateTime);
  end;

var
  DataModuleAmortizaciones: TDataModuleAmortizaciones;

implementation

uses System.Math, System.DateUtils, System.UITypes,
     VCL.Forms, VCL.Dialogs, VCL.Controls,
     DM, DMControl, Globales, Processing, ccStr;

{$R *.dfm}

{ TAmortizacionesModel }

constructor TAmortizacionesModel.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleAmortizaciones.Create(Application);
   if Initialize then DoInitialize;
end;

function TAmortizacionesModel.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TAmortizacionesModel.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TAmortizacionesModel.DoInitialize;
begin
   inherited;
   DM.QEmpresas.Database := DMControlRef.BDControl;
   //DM.QEmpresas.Transaction.Active := True;
   DM.QEmpresas.Open;

   DM.QSubCuentas.Database := DB;
   DM.QSubCuentas.ParamByName('prmLENGTH').AsInteger := Config.MaxLengthAccounts;
   DM.QSubCuentas.Open;

   DM.QAnaliticas.Database := DB;
   DM.QAnaliticas.Open;

   DM.QDelegaciones.Database := DB;
   DM.QDelegaciones.Open;

   DM.QDepartamentos.Database := DB;
   DM.QDepartamentos.Open;

   DM.QSecciones.Database := DB;
   DM.QSecciones.Open;

   DM.QProyectos.Database := DB;
   DM.QProyectos.Open;

   DM.QConceptos.Database := DB;
   DM.QConceptos.Open;

   DM.QTrabajos.IndexDefs.Clear;
   DM.QTrabajos.IndexDefs.Add('', 'SUBCUENTA;CENTROCOSTE', [ixPrimary]);
   DM.QTrabajos.IndexDefs.Add('DEBEHABER', 'DEBEHABER;SUBCUENTA', []);

   DM.QTrabajos.CreateDataSet;
   DM.QTrabajos.Active := True;

   DM.QAmortizaciones.Database := DB;
   DM.QAmortizaciones.Open;

   DM.QModifica.Database := DB;
end;

procedure TAmortizacionesModel.Refresh;
begin

end;

procedure TAmortizacionesModel.GenerarDetalleInmovilizado(ASUBCUENTA_DESDE        :string;
                                                          ASUBCUENTA_HASTA        :string;
                                                          ATipoCuenta             :Integer;
                                                          AFechaIsNull            :Boolean;
                                                          AFECHA                  :TDateTime;
                                                          AFechaCompraDesdeIsNull :Boolean;
                                                          AFECHA_COMPRA_DESDE     :TDateTime;
                                                          AFechaCompraHastaIsNull :Boolean;
                                                          AFECHA_COMPRA_HASTA     :TDateTime;
                                                          AFechaUltDesdeIsNull    :Boolean;
                                                          AFECHA_ULT_DESDE        :TDateTime;
                                                          AFechaUltHastaIsNull    :Boolean;
                                                          AFECHA_ULT_HASTA        :TDateTime);
var Subcuenta_Desde :string;
    Subcuenta_Hasta :string;
    InProgress :TProcessingView;
begin
   DM.QTrabajos.EmptyDataSet;

   InProgress := InProgressView('Generando informe ...');
   try
      subcuenta_desde := ASUBCUENTA_DESDE;
      subcuenta_hasta := ASUBCUENTA_DESDE;

      if subcuenta_hasta = '' then begin
         subcuenta_hasta := subcuenta_desde;
      end;

      if Length(subcuenta_desde) < Config.MaxLengthAccounts then begin
         subcuenta_desde := TStrTools.BackChar(subcuenta_desde, '0', Config.MaxLengthAccounts);
      end;
      if length(subcuenta_hasta) < Config.MaxLengthAccounts then begin
         subcuenta_hasta := TStrTools.Backchar(subcuenta_hasta, '9', Config.MaxLengthAccounts);
      end;

      DM.QAmortizaciones.Close;
      DM.QAmortizaciones.SQL.Clear;
      DM.QAmortizaciones.Database := DmRef.BDContab;
      DM.QAmortizaciones.SQL.Add('SELECT                                                         ');
      DM.QAmortizaciones.SQL.Add('    A.*, S.DESCRIPCION, C.TIPOCUENTA                           ');
      DM.QAmortizaciones.SQL.Add('FROM AMORTIZA A, CUENTAS C, SUBCTAS S                          ');
      DM.QAmortizaciones.SQL.Add('WHERE                                                          ');
      if ATipoCuenta = 0 then begin
         DM.QAmortizaciones.SQL.Add('  (C.TIPOCUENTA = "M" OR C.TIPOCUENTA = "I") AND             ');
      end else
      if ATipoCuenta = 1 then begin
         DM.QAmortizaciones.SQL.Add('  C.TIPOCUENTA = "M" AND                                     ');
      end
      else begin
         DM.QAmortizaciones.SQL.Add('  C.TIPOCUENTA = "I" AND                                     ');
      end;

      DM.QAmortizaciones.SQL.Add('    SUBSTR(A.SUBCUENTA, 1, 3) = C.CUENTA AND                   ');
      if Trim(ASUBCUENTA_DESDE) = '' then begin
         DM.QAmortizaciones.SQL.Add('  (A.SUBCUENTA IS NULL OR (A.SUBCUENTA >= :SUBCUENTA1 OR A.SUBCUENTA <= :SUBCUENTA2)) AND');
      end
      else begin
         DM.QAmortizaciones.SQL.Add('  A.SUBCUENTA >= :SUBCUENTA1 AND A.SUBCUENTA <= :SUBCUENTA2 AND');
      end;

      DM.QAmortizaciones.SQL.Add('    A.SUBCUENTA = S.SUBCUENTA                                  ');
      if not AFechaIsNull then begin
         DM.QAmortizaciones.SQL.Add('    AND (A.FBAJA IS NULL OR A.FBAJA <= :FECHA)               ');
      end;

      if AFechaCompraDesdeIsNull then begin
         DM.QAmortizaciones.SQL.Add('   AND (A.FCOMPRA IS NULL OR (A.FCOMPRA >= :FECHACOMPRADESDE AND A.FCOMPRA <= :FECHACOMPRAHASTA))');
      end
      else begin
         DM.QAmortizaciones.SQL.Add('   AND A.FCOMPRA >= :FECHACOMPRADESDE AND A.FCOMPRA <= :FECHACOMPRAHASTA');
      end;

      if AFechaUltDesdeIsNull then begin
         DM.QAmortizaciones.SQL.Add('   AND (A.FULTAMOR IS NULL OR (A.FULTAMOR >= :FECHAULTDESDE AND A.FULTAMOR <= :FECHAULTHASTA))');
      end
      else begin
         DM.QAmortizaciones.SQL.Add('   AND A.FULTAMOR >= :FECHAULTDESDE AND A.FULTAMOR <= :FECHAULTHASTA');
      end;

      DM.QAmortizaciones.SQL.Add('ORDER BY A.CLASE, A.SUBCUENTA                                  ');

      DM.QAmortizaciones.ParamByName('SUBCUENTA1').AsString := Subcuenta_desde;
      DM.QAmortizaciones.ParamByName('SUBCUENTA2').AsString := Subcuenta_hasta;
      if not AFechaIsNull then begin
         DM.QAmortizaciones.ParamByName('FECHA').AsDateTime := AFECHA;
      end;
      DM.QAmortizaciones.ParamByName('FECHACOMPRADESDE').AsDateTime := AFECHA_COMPRA_DESDE;
      DM.QAmortizaciones.ParamByName('FECHACOMPRAHASTA').AsDateTime := AFECHA_COMPRA_HASTA;
      DM.QAmortizaciones.ParamByName('FECHAULTDESDE').AsDateTime    := AFECHA_ULT_DESDE;
      DM.QAmortizaciones.ParamByName('FECHAULTHASTA').AsDateTime    := AFECHA_ULT_HASTA;

      DM.QAmortizaciones.Open;
   finally
      InProgress.Free;
   end;

   ReportDetalleInmovilizado;
   //FormPrincipal.LanzarListado('LDetalleInmovilizado.rtm', SAmortizaciones);
end;

procedure TAmortizacionesModel.ReportDetalleInmovilizado;
var Marca :TBookMark;
begin
   Marca := DM.QAmortizaciones.GetBookMark;
   DM.Enlace2.DataSet := DM.QAmortizaciones;

   DM.QAmortizaciones.DisableControls;
   try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      DM.PDFExport.FileName := 'DetalleInmovilizado.pdf';
      DM.FastReportDetalleInmovilizado.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportDetalleInmovilizado.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      {$Message Warn 'Pendant: complete the header with the dates and the user'}
      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.FastReportDetalleInmovilizado.PrepareReport(True);
      DM.FastReportDetalleInmovilizado.Export(DM.PDFExport);

      if not DM.QAmortizaciones.EOF then begin
         DM.QAmortizaciones.GotoBookMark(Marca);
         DM.QAmortizaciones.FreeBookMark(Marca);
      end;
   finally
      DM.QAmortizaciones.EnableControls;
   end;
end;

procedure TAmortizacionesModel.GenerarInformeAmortizacion(ASUBCUENTA_DESDE        :string;
                                                          ASUBCUENTA_HASTA        :string;
                                                          ATipoCuenta             :Integer;
                                                          AFechaIsNull            :Boolean;
                                                          AFECHA                  :TDateTime;
                                                          AFechaCompraDesdeIsNull :Boolean;
                                                          AFECHA_COMPRA_DESDE     :TDateTime;
                                                          AFechaCompraHastaIsNull :Boolean;
                                                          AFECHA_COMPRA_HASTA     :TDateTime;
                                                          AFechaUltDesdeIsNull    :Boolean;
                                                          AFECHA_ULT_DESDE        :TDateTime;
                                                          AFechaUltHastaIsNull    :Boolean;
                                                          AFECHA_ULT_HASTA        :TDateTime);

var Subcuenta_desde :string;
    Subcuenta_Hasta :string;
    InProgress      :TProcessingView;
    Importe         :Double;
    Fecha           :TDateTime;
    Ejercicio       :Integer;
begin
   DM.QTrabajos.EmptyDataSet;
   DM.QTrabajos.IndexName := '';

   InProgress := InProgressView('Generando informe ...');
   try
      subcuenta_desde := ASUBCUENTA_DESDE;
      subcuenta_hasta := ASUBCUENTA_HASTA;

      if subcuenta_hasta = '' then begin
         subcuenta_hasta := subcuenta_desde;
      end;

      if length(subcuenta_desde) < Config.MaxLengthAccounts then begin
         subcuenta_desde := TStrTools.BackChar(subcuenta_desde, '0', Config.MaxLengthAccounts);
      end;
      if length(subcuenta_hasta) < Config.MaxLengthAccounts then begin
         subcuenta_hasta := TStrTools.Backchar(subcuenta_hasta, '9', Config.MaxLengthAccounts);
      end;

      DM.QAmortizaciones.Close;
      DM.QAmortizaciones.SQL.Clear;
      DM.QAmortizaciones.Database := DB;
      DM.QAmortizaciones.SQL.Add('SELECT                                                         ');
      DM.QAmortizaciones.SQL.Add('    A.*, S.DESCRIPCION, C.TIPOCUENTA                           ');
      DM.QAmortizaciones.SQL.Add('FROM AMORTIZA A, CUENTAS C, SUBCTAS S                          ');
      DM.QAmortizaciones.SQL.Add('WHERE                                                          ');
      if ATipoCuenta = 0 then begin
         DM.QAmortizaciones.SQL.Add('  (C.TIPOCUENTA = "M" OR C.TIPOCUENTA = "I") AND             ');
      end else
      if ATipoCuenta = 1 then begin
         DM.QAmortizaciones.SQL.Add('  C.TIPOCUENTA = "M" AND                                     ');
      end
      else begin
         DM.QAmortizaciones.SQL.Add('  C.TIPOCUENTA = "I" AND                                     ');
      end;

      DM.QAmortizaciones.SQL.Add('    SUBSTR(A.SUBCUENTA, 1, 3) = C.CUENTA AND                   ');
      if Trim(ASUBCUENTA_DESDE) = '' then begin
         DM.QAmortizaciones.SQL.Add('  (A.SUBCUENTA IS NULL OR (A.SUBCUENTA >= :SUBCUENTA1 OR A.SUBCUENTA <= :SUBCUENTA2)) AND');
      end
      else begin
         DM.QAmortizaciones.SQL.Add('  A.SUBCUENTA >= :SUBCUENTA1 AND A.SUBCUENTA <= :SUBCUENTA2 AND');
      end;
      DM.QAmortizaciones.SQL.Add('   A.SUBCUENTA = S.SUBCUENTA AND                                 ');
      DM.QAmortizaciones.SQL.Add('   A.VEJPAMOR <> 0 AND A.VAMOR <> 0 AND A.ANUAL <> 0             ');
      if not AFechaIsNull then begin
         DM.QAmortizaciones.SQL.Add('    AND (A.FBAJA IS NULL OR A.FBAJA <= :FECHA)               ');
      end;
      if not aFechaIsNull then begin
         DM.QAmortizaciones.SQL.Add('    AND (A.FBAJA IS NULL OR A.FBAJA <= :FECHA)               ');
      end;
      if AFechaCompraDesdeIsNull then begin
         DM.QAmortizaciones.SQL.Add('   AND (A.FCOMPRA IS NULL OR (A.FCOMPRA >= :FECHACOMPRADESDE AND A.FCOMPRA <= :FECHACOMPRAHASTA))');
      end
      else begin
         DM.QAmortizaciones.SQL.Add('   AND A.FCOMPRA >= :FECHACOMPRADESDE AND A.FCOMPRA <= :FECHACOMPRAHASTA');
      end;

      if AFechaUltDesdeIsNull then begin
         DM.QAmortizaciones.SQL.Add('   AND (A.FULTAMOR IS NULL OR (A.FULTAMOR >= :FECHAULTDESDE AND A.FULTAMOR <= :FECHAULTHASTA))');
      end
      else begin
         DM.QAmortizaciones.SQL.Add('   AND A.FULTAMOR >= :FECHAULTDESDE AND A.FULTAMOR <= :FECHAULTHASTA');
      end;

      DM.QAmortizaciones.SQL.Add('ORDER BY A.CLASE, A.SUBCUENTA                                  ');

      DM.QAmortizaciones.ParamByName('SUBCUENTA1').AsString := subcuenta_desde;
      DM.QAmortizaciones.ParamByName('SUBCUENTA2').AsString := subcuenta_hasta;
      if not AFechaIsNull then begin
         DM.QAmortizaciones.ParamByName('FECHA').AsDateTime := AFECHA;
      end;
      DM.QAmortizaciones.ParamByName('FECHACOMPRADESDE').AsDateTime := AFECHA_COMPRA_DESDE;
      DM.QAmortizaciones.ParamByName('FECHACOMPRAHASTA').AsDateTime := AFECHA_COMPRA_HASTA;
      DM.QAmortizaciones.ParamByName('FECHAULTDESDE').AsDateTime    := AFECHA_ULT_DESDE;
      DM.QAmortizaciones.ParamByName('FECHAULTHASTA').AsDateTime    := AFECHA_ULT_HASTA;

      DM.QAmortizaciones.Open;

      while not DM.QAmortizaciones.EOF do begin
         InProgress.ShowNext(Format('Procesando Amortizaciones %s : %s ', [DM.QAmortizacionesSUBCUENTA.AsString, DM.QAmortizacionesDESCRIPCION.AsString]));
         DM.QTrabajos.Append;
         DM.QTrabajosSUBCUENTA.AsString   := DM.QAmortizacionesSUBCUENTA.AsString;
         DM.QTrabajosDESCRIPCION.AsString := DM.QAmortizacionesDESCRIPCION.AsString;
         DM.QTrabajosINICIO.AsFloat       := DM.QAmortizacionesVEJPINICIO.AsFloat;
         Importe                          := RoundTo(DM.QAmortizacionesVAMOR.AsFloat / DM.QAmortizacionesANUAL.AsFloat, -0);
         DM.QTrabajosSUMA.AsFloat         := 0;
         DM.QTrabajosTOTAL.AsFloat        := DM.QTrabajosINICIO.AsFloat;

         Ejercicio := YearOf(AFECHA);

         DM.QTrabajosTITULOLISTADO.AsString := 'INFORME DE AMORTIZACIÓN DEL EJERCICIO ' + IntToStr(Ejercicio);

         // Mes 1
         Fecha := StrToDateTime('31/1/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJAAMOR.AsFloat then begin
               DM.QTrabajosMES1.AsFloat  := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES1.AsFloat  := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES1.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES1.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 2
         if IsLeapYear(Ejercicio) then begin
            Fecha := StrToDateTime('29/2/' + IntToStr(Ejercicio));
         end
         else begin
            Fecha := StrToDateTime('28/2/' + IntToStr(Ejercicio));
         end;
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES2.AsFloat  := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES2.AsFloat  := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES2.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES2.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 3
         Fecha := StrToDateTime('31/3/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES3.AsFloat  := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES3.AsFloat  := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES3.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES3.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 4
         Fecha := StrToDateTime('30/4/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES4.AsFloat  := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES4.AsFloat  := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES4.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES4.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 5
         Fecha := StrToDateTime('31/5/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES5.AsFloat  := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES5.AsFloat  := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES5.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES5.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 6
         Fecha := StrToDateTime('30/3/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES6.AsFloat  := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES6.AsFloat  := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES6.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES6.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 7
         Fecha := StrToDateTime('31/7/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES7.AsFloat  := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES7.AsFloat  := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES7.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES7.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 8
         Fecha := StrToDateTime('31/8/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES8.AsFloat  := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES8.AsFloat  := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES8.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES8.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 9
         Fecha := StrToDateTime('30/9/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES9.AsFloat  := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES9.AsFloat  := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES9.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES9.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 10
         Fecha := StrToDateTime('31/10/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES10.AsFloat := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES10.AsFloat := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES10.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES10.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 11
         Fecha := StrToDateTime('30/11/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES11.AsFloat := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES11.AsFloat := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES11.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES11.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         // Mes 12
         Fecha := StrToDateTime('31/12/' + IntToStr(Ejercicio));
         if (DM.QAmortizacionesFINICIO.AsDateTime > 0) and
            (DM.QAmortizacionesFINICIO.AsDateTime <= Fecha) then begin
            if (DM.QAmortizacionesFULTAMOR.AsDateTime > 0) and
               (DM.QAmortizacionesFULTAMOR.AsDateTime < Fecha) then begin
               DM.QAmortizaciones.Next;
               Continue;
            end;
            if Importe + DM.QTrabajosSUMA.AsFloat <= DM.QAmortizacionesVEJPAMOR.AsFloat then begin
               DM.QTrabajosMES12.AsFloat := Importe;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat + Importe;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + Importe;
            end
            else begin
               DM.QTrabajosMES12.AsFloat := DM.QAmortizacionesVEJPAMOR.AsFloat - DM.QTrabajosSUMA.AsFloat;
               DM.QTrabajosSUMA.AsFloat  := DM.QTrabajosSUMA.AsFloat  + DM.QTrabajosMES12.AsFloat;
               DM.QTrabajosTOTAL.AsFloat := DM.QTrabajosTOTAL.AsFloat + DM.QTrabajosMES12.AsFloat;
               DM.QTrabajos.Post;
               DM.QAmortizaciones.Next;
               Continue;
            end;
         end;

         DM.QTrabajos.Post;
         DM.QAmortizaciones.Next;
      end;

      // Conversión de importes
      DM.QTrabajos.First;
      while not DM.QTrabajos.EOF do begin
         DM.QTrabajos.Edit;
         DM.QTrabajosINICIO.AsFloat  := DM.QTrabajosINICIO.AsFloat ;
         DM.QTrabajosIMPORTE.AsFloat := DM.QTrabajosIMPORTE.AsFloat;
         DM.QTrabajosMes1.AsFloat    := DM.QTrabajosMES1.AsFloat   ;
         DM.QTrabajosMes2.AsFloat    := DM.QTrabajosMES2.AsFloat   ;
         DM.QTrabajosMes3.AsFloat    := DM.QTrabajosMES3.AsFloat   ;
         DM.QTrabajosMes4.AsFloat    := DM.QTrabajosMES4.AsFloat   ;
         DM.QTrabajosMes5.AsFloat    := DM.QTrabajosMES5.AsFloat   ;
         DM.QTrabajosMes6.AsFloat    := DM.QTrabajosMES6.AsFloat   ;
         DM.QTrabajosMes7.AsFloat    := DM.QTrabajosMES7.AsFloat   ;
         DM.QTrabajosMes8.AsFloat    := DM.QTrabajosMES8.AsFloat   ;
         DM.QTrabajosMes9.AsFloat    := DM.QTrabajosMES9.AsFloat   ;
         DM.QTrabajosMes10.AsFloat   := DM.QTrabajosMES10.AsFloat  ;
         DM.QTrabajosMes11.AsFloat   := DM.QTrabajosMES11.AsFloat  ;
         DM.QTrabajosMes12.AsFloat   := DM.QTrabajosMES12.AsFloat  ;
         DM.QTrabajosSUMA.AsFloat    := DM.QTrabajosSUMA.AsFloat   ;
         DM.QTrabajosTOTAL.AsFloat   := DM.QTrabajosTOTAL.AsFloat  ;
         DM.QTrabajos.Post;
         DM.QTrabajos.Next;
      end;
   finally
      InProgress.Free;
   end;

   ReportAmortizaciones;
end;

procedure TAmortizacionesModel.ReportAmortizaciones;
//var Marca :TBookMark;
begin
   //Marca := DM.QTrabajos.GetBookMark;
   //DM.Enlace1.DataSet := DM.QTrabajos;

   //DM.QTrabajos.DisableControls;
   //try
      DM.PDFExport.Author          := 'senCille Accounting';
      DM.PDFExport.ShowDialog      := False;
      DM.PDFExport.OpenAfterExport := True;

      DM.PDFExport.FileName := 'Amortizaciones.pdf';
      DM.FastReportAmortizaciones.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportAmortizaciones.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';

      {$Message Warn 'Pendant: complete the header with the dates and the user'}
      {Descripcion := 'Desde la fecha ' + FormatDateTime('dd/mm/yyyy',
                     DataSource.DataSet.FieldByName('FechaInicial').AsDateTime) + ' hasta ' +
                     FormatDateTime('dd/mm/yyyy', DataSource.DataSet.FieldByName('FechaFinal').AsDateTime);}

      DM.FastReportAmortizaciones.PrepareReport(True);
      DM.FastReportAmortizaciones.Export(DM.PDFExport);

   //   if not DM.QTrabajos.EOF then begin
   //      DM.QTrabajos.GotoBookMark(Marca);
   //      DM.QTrabajos.FreeBookMark(Marca);
   //   end;
   //finally
   //   DM.QTrabajos.EnableControls;
   //end;
end;

procedure TAmortizacionesModel.GenerarAsientosAmortizacion(AID_CONCEPTOS    :string;
                                                           AFECHA           :TDateTime;
                                                           ASUBCUENTA_DESDE :string;
                                                           ASUBCUENTA_HASTA :string;
                                                           ATipo            :Integer);
var InProgress      :TProcessingView;
    nApunte         :Integer;
    nImporte        :Double;
    dFecha          :TDateTime;
    nAsiento        :Integer;
    Subcuenta_desde ,
    Subcuenta_Hasta :string;
    Q               :TIBSQL;
begin
   if AID_CONCEPTOS = '' then begin
      DatabaseError('Debe seleccionar un concepto para la generacion de asientos');
   end;

   if MessageDlg('¿Confirma la generación de asientos automáticos?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;

   // Confirmar cierre de ejercicio
   if YearOf(DMRef.QParametrosFECHA_FIN_EJERCICIO.AsDateTime) <>
      YearOf(AFECHA) then begin
      DataBaseError('No puede generar asientos de amortizacion, mientras no cierre el ejercicio.');
   end;

   InProgress := InProgressView('Generando asientos ...');
   try

      subcuenta_desde := ASUBCUENTA_DESDE;
      subcuenta_hasta := ASUBCUENTA_HASTA;

      if subcuenta_hasta = '' then begin
         subcuenta_hasta := subcuenta_desde;
      end;

      if Length(subcuenta_desde) < Config.MaxLengthAccounts then begin
         Subcuenta_desde := TStrTools.BackChar(SubCuenta_DESDE, '0', Config.MaxLengthAccounts);
      end;

      if Length(subcuenta_hasta) < Config.MaxLengthAccounts then begin
         Subcuenta_hasta := TStrTools.Backchar(subcuenta_hasta, '9', Config.MaxLengthAccounts);
      end;


      DM.QTrabajos.EmptyDataSet;
      DM.QModifica.Close;
      DM.QModifica.SQL.Clear;
      DM.QModifica.SQL.Add('update amortiza set FUltAmor=:FUltAmor,VEjAInicio=:VEjAInicio,');
      DM.QModifica.SQL.Add(' vEjAAmor=:vEjAAmor where subcuenta=:subcuenta');
      DM.QModifica.Prepare;

      Q := TIBSQL.Create(nil);
      try
         Q.Close;
         Q.SQL.Clear;
         Q.Database := DB;
         Q.SQL.Add('select a.*,c.tipocuenta from amortiza a,cuentas c');
         Q.SQL.Add('where Substr(a.SUBCUENTA,1,3)=c.cuenta and ');
         Q.SQL.Add(' ((c.tipocuenta="M") or (c.tipocuenta="I"))');
         if (ASUBCUENTA_DESDE <> '') then begin
            Q.SQL.Add(' and subcuenta >= :subcuenta1 ');
            Q.SQL.Add(' and SUBCUENTA <= :SUBCUENTA2 ');
         end;

         if (ASUBCUENTA_DESDE <> '') then begin
            Q.Parambyname('Subcuenta1').AsString := Subcuenta_Desde;
            Q.Parambyname('Subcuenta2').AsString := Subcuenta_Hasta;
         end;

         Q.ExecQuery;

         while not Q.EOF do begin
            InProgress.ShowNext(Format('Procesando %s : %s ', [Q.FieldByName('SUBCUENTA').AsString, Q.FieldByName('CENTROCOSTE').AsString]));
            if (((ATipo = 1) and (Q.FieldByName('tipocuenta').AsString = 'I')) or
                ((ATipo = 2) and (Q.FieldByName('tipocuenta').AsString = 'M'))) then begin
               Q.Next;
               Continue;
            end;
            if (YearOf(Q.FieldByName('fbaja').AsDateTime) > 1990) and
               (Q.FieldByName('FBaja').AsDateTime <= AFECHA) then begin
               Q.Next;
               Continue;
            end;
            // chequeos propios de fecha
            dFecha := Q.FieldByName('FultAmor').AsDateTime + 28;

            // Fecha de compra y actualizacion de saldos
            if (dFecha <= AFECHA) and
               (RoundTo(Q.FieldByName('vEjAAmor').AsFloat, -2) > 0) and
               (Q.FieldByName('anual').AsInteger > 0) and
               (not (Trim(Q.FieldByName('SubGasto').AsString) = '')) and
               (not (Trim(Q.FieldByName('SubAmor').AsString)  = '')) then begin
               // subcuenta valida por fechas e importe
               nImporte := RoundTo(Q.FieldByName('vAmor').AsFloat / Q.FieldByName('anual').AsInteger, -2);

               // Ajuste del importe
               if (nImporte > Q.FieldByName('vEjAAmor').AsFloat) or
                  ((nImporte * 2) > Q.FieldByName('vEjAAmor').AsFloat) then begin
                  nImporte := RoundTo(Q.FieldByName('vEjAAmor').AsFloat, -2);
               end;

               DM.QModifica.Close;
               DM.QModifica.ParamByName('Subcuenta').AsString  := Q.FieldByName('subcuenta').AsString;
               DM.QModifica.ParamByName('FultAmor').AsDateTime := AFECHA;
               DM.QModifica.ParamByName('vEjAInicio').AsFloat  := RoundTo(Q.FieldByName('vEjAInicio').AsFloat + nImporte, -2);
               DM.QModifica.ParamByName('vEjAAmor').AsFloat    := RoundTo(Q.FieldByName('vEjAAmor').AsFloat - nImporte, -2);
               DM.QModifica.ExecQuery;
               DM.QModifica.Transaction.CommitRetaining;

               // grabacion de datos subcuenta de gasto
               if not DM.QTrabajos.FindKey([Q.FieldByName('SubGasto').AsString, Q.FieldByName('centrocoste').AsString]) then begin
                  DM.QTrabajos.Append;
               end;
               DM.QTrabajos.Edit;
               DM.QTrabajosCENTROCOSTE.AsString := Q.FieldByName('centrocoste').AsString;
               DM.QTrabajosSUBCUENTA.AsString   := Q.FieldByName('subgasto').AsString;
               DM.QTrabajosDEBEHABER.AsString   := 'D';
               DM.QTrabajosIMPORTE.AsFloat      := RoundTo(DM.QTrabajosIMPORTE.AsFloat + nImporte, -2);
               DM.QTrabajos.Post;

               // grabacion de datos subcuenta de amortizacion
               if not DM.QTrabajos.FindKey([Q.FieldByName('SubAmor').AsString, Q.FieldByName('centrocoste').AsString]) then begin
                  DM.QTrabajos.append;
               end;
               DM.QTrabajos.Edit;
               DM.QTrabajosCENTROCOSTE.AsString   := Q.FieldByName('CENTROCOSTE').AsString;
               DM.QTrabajosSUBCUENTA.AsString     := Q.FieldByName('SubAmor').AsString;
               DM.QTrabajosCONTRAPARTIDA.AsString := Q.FieldByName('SUBGASTO').AsString; // siempre la de gasto
               DM.QTrabajosDEBEHABER.AsString     := 'H';
               DM.QTrabajosIMPORTE.AsFloat        := RoundTo(DM.QTrabajosIMPORTE.AsFloat + nImporte, -2);
               DM.QTrabajos.Post;
            end;
            Q.Next;
         end; // while
         Q.Close;

         // generacion de asientos
         DM.QTrabajos.IndexName := 'DebeHaber';
         DM.QTrabajos.First;
         //cCoste:=fieldbyname('CentroCoste').asstring;
         nApunte  := 1;
         // Seleccionar asiento libre
         nAsiento := GetNextNumeroAsiento;
         while not DM.QTrabajos.EOF do begin
            Q.Close;
            Q.SQL.Clear;
            Q.SQL.Add(' INSERT INTO DIARIO (APUNTE,ASIENTO,DEBEHABER,');
            if (DM.QTrabajosCONTRAPARTIDA.AsString <> '') then begin
               Q.SQL.Add(' CONTRAPARTIDA,');
            end;
            if (DM.QTrabajosCENTROCOSTE.AsString <> '') then begin
               Q.SQL.Add(' CUENTA_ANALITICA,');
            end;
            Q.SQL.Add(' FECHA,IMPORTE,MONEDA,SUBCUENTA,ID_CONCEPTOS) ');
            Q.SQL.Add(' VALUES (:APUNTE,:ASIENTO,:DEBEHABER,');
            if (DM.QTrabajosCONTRAPARTIDA.AsString <> '') then begin
               Q.SQL.Add(' :CONTRAPARTIDA,');
            end;
            if (DM.QTrabajosCENTROCOSTE.AsString <> '') then begin
               Q.SQL.Add(' :CUENTA_ANALITICA,');
            end;
            Q.SQL.Add(' :FECHA,:IMPORTE,:MONEDA,:SUBCUENTA,:ID_CONCEPTOS)');
            Q.Params.ByName('ASIENTO').AsInteger     := nAsiento;
            Q.Params.ByName('APUNTE').AsInteger      := nApunte;
            Q.Params.ByName('ID_CONCEPTOS').AsString := AID_CONCEPTOS;
            Q.Params.ByName('SUBCUENTA').AsString    := DM.QTrabajosSUBCUENTA.AsString;
            Q.Params.ByName('DEBEHABER').AsString    := DM.QTrabajosDEBEHABER.AsString;
            Q.Params.ByName('FECHA').AsDateTime      := AFECHA;
            Q.Params.ByName('IMPORTE').AsFloat       := DM.QTrabajosIMPORTE.AsFloat;
            Q.Params.ByName('MONEDA').AsString       := 'E';
            if (DM.QTrabajosCONTRAPARTIDA.AsString <> '') then begin
               Q.Params.byname('CONTRAPARTIDA').AsString := DM.QTrabajosCONTRAPARTIDA.AsString;
            end;
            if (DM.QTrabajosCENTROCOSTE.AsString <> '') then begin
               Q.Params.byname('CUENTA_ANALITICA').AsString := DM.QTrabajosCENTROCOSTE.AsString;
            end;
            Q.ExecQuery;
            Q.Transaction.CommitRetaining;
            Inc(nApunte);
            DM.QTrabajos.Next;
         end; // while
      finally
         Q.Free;
      end;

      // Actualizacion de fechas
      DMRef.QParametros.Edit;
      DmRef.QParametrosFECHAAMORTIZACION.AsDateTime := AFECHA;
      DmRef.QParametros.Post;
      DmRef.QParametros.Transaction.CommitRetaining;
   finally
      InProgress.Free;
   end;
   
   MessageDlg('Generación de asientos finalizada correctamente', mtConfirmation, [mbOK], 0);
end;

procedure TDataModuleAmortizaciones.QAmortizacionesCalcFields(
  DataSet: TDataSet);
begin
   QAmortizacionesCalcVAMOR.AsFloat       := QAmortizacionesVAMOR.AsFloat     ;
   QAmortizacionesCalcVCOMPRA.AsFloat     := QAmortizacionesVCOMPRA.AsFloat   ;
   QAmortizacionesCalcVEJAAMOR.AsFloat    := QAmortizacionesVEJAAMOR.AsFloat  ;
   QAmortizacionesCalcVEJAINICIO.AsFloat  := QAmortizacionesVEJAINICIO.AsFloat;
   QAmortizacionesCalcVEJPAMOR.AsFloat    := QAmortizacionesVEJPAMOR.AsFloat  ;
   QAmortizacionesCalcVEJPINICIO.AsFloat  := QAmortizacionesVEJPINICIO.AsFloat;
   QAmortizacionesCalcVRESIDUAL.AsFloat   := QAmortizacionesVRESIDUAL.AsFloat ;
   QAmortizacionesCalcVAMORTIZADO.AsFloat := QAmortizacionesVEJPINICIO.AsFloat + QAmortizacionesVEJAINICIO.AsFloat;;
end;

function TAmortizacionesModel.GetNextNumeroAsiento: Integer;
var Q :TIBSQL;
begin
   Q := TIBSQL.Create(nil);
   Q.Database := DMRef.BDContab;
   Q.SQL.Add('EXECUTE PROCEDURE Dame_NumeroAsiento');
   try try Q.ExecQuery;
           Result := Q.FieldByName('ASIENTO').AsInteger;
       except Result := -1;
       end;
   finally Q.Free;
   end;
end;

end.
