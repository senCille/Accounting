unit UFiltro347Model;

interface

uses
  SysUtils, Classes, CustomModel, IBX.IBDatabase, IBX.IBSQL, DB, IBX.IBCustomDataSet,
  DBClient, frxClass, frxDBSet, frxExportPDF,
  senCille.CommonTypes;

type
  TDataModuleFiltro347 = class(TDataModule)
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
    QInformesConta: TClientDataSet;
    QInformesContaFechaInicial: TDateTimeField;
    QInformesContaFecha: TDateTimeField;
    QInformesContaFechaFinal: TDateTimeField;
    QInformesContaAsiento: TIntegerField;
    QInformesContaApunte: TIntegerField;
    QInformesContaSubcuenta: TStringField;
    QInformesContaDescSubcuenta: TStringField;
    QInformesContaDescApunte: TStringField;
    QInformesContaContrapartida: TStringField;
    QInformesContaDebe: TFloatField;
    QInformesContaHaber: TFloatField;
    QInformesContaSaldo: TFloatField;
    QInformesContaFechaImpresion: TDateField;
    QInformesContaDebeHaber: TStringField;
    QInformesContaImporte: TFloatField;
    QInformesContaDescripcion: TStringField;
    QInformesContaFechaPrevista: TDateField;
    QInformesContaObservaciones: TStringField;
    QInformesContaNombreCliente: TStringField;
    QInformesContaID_Cliente: TIntegerField;
    QInformesContaNumLinea: TIntegerField;
    QInformesContaFactura: TStringField;
    QInformesContaNIF: TStringField;
    QInformesContaBaseImponible: TFloatField;
    QInformesContaCuotaIVA: TFloatField;
    QInformesContaTotalFactura: TFloatField;
    QInformesContaIVA: TFloatField;
    QInformesContaTitulo: TStringField;
    QInformesContaClienteProveedor: TStringField;
    QInformesContaProvincia: TStringField;
    QInformesContaImporteVentas: TFloatField;
    QInformesContaImporteCompras: TFloatField;
    QInformesContaTotalSumaDebe: TFloatField;
    QInformesContaTotalSumaHaber: TFloatField;
    QInformesContaTotalSumaSaldo: TFloatField;
    QInformesContaGasto: TIntegerField;
    QInformesContaBaseSinIVA: TFloatField;
    QInformesContaBaseConIVA: TFloatField;
    QInformesContaDescConcepto: TStringField;
    QInformesContaEjercicio: TIntegerField;
    QInformesContaDescPeriodo: TStringField;
    QInformesContaIngresos: TFloatField;
    QInformesContaGastos: TFloatField;
    QInformesContaRetenciones: TFloatField;
    QInformesContaMes: TIntegerField;
    QInformesContaTrimestre: TIntegerField;
    QInformesContaTotalBruto: TFloatField;
    QInformesContaTotalBruto16: TFloatField;
    QInformesContaTotalBruto0: TFloatField;
    QInformesContaBaseSinIVA16: TFloatField;
    QInformesContaBaseSinIVA0: TFloatField;
    QInformesContaBaseConIVA16: TFloatField;
    QInformesContaBaseConIVA0: TFloatField;
    QInformesContaCuotaIVA16: TFloatField;
    QInformesContaCuotaIVA0: TFloatField;
    QInformesContaRetenciones16: TFloatField;
    QInformesContaRetenciones0: TFloatField;
    QInformesContaTotalFactura16: TFloatField;
    QInformesContaTotalFactura0: TFloatField;
    QInformesContaDescInforme: TStringField;
    QInformesContaRecargo: TFloatField;
    QInformesContaCuotaRecargo: TFloatField;
    QInformesContaId_Conceptos: TStringField;
    QInformesContaCuenta_Analitica: TStringField;
    QInformesContaPUNTEO: TStringField;
    QInformesContaFSubcuenta: TStringField;
    QInformesContaFDescSubcuenta: TStringField;
    SInformesConta: TDataSource;
    procedure QInformesContaBeforeInsert(DataSet: TDataSet);
  private
  public
  end;

  {*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-}

  TFiltro347Model = class(TCustomModel)
  private
    DM :TDataModuleFiltro347;
    function Euros(nEuros: double; cGenero : string ): string;
  protected
  public
    constructor Create(ADB :TIBDatabase; Initialize :Boolean = True); override;
    destructor Destroy; override;
    procedure DoInitialize; override;
    function  DataModule :TDataModule;
    procedure Refresh;
    procedure LanzarInfModelo347(ACallBack               :TSimplyCallBack;
                                 TipoInforme             ,
                                 AsientoInicial          ,
                                 AsientoFinal            :Integer;
                                 FechaInicial            ,
                                 FechaFinal              :TDateTime;
                                 ImporteInicial          ,
                                 ImporteFinal            :Double;
                                 SeleccionPorSubcuenta   ,
                                 SeleccionPorDescripcion :Boolean;
                                 SubcuentaInicial        ,
                                 SubcuentaFinal          ,
                                 DescSubctaInicial       ,
                                 DescSubctaFinal         ,
                                 TipoConcepto            ,
                                 Tipo216                 :string;
                                 FechaImpresion          :TDateTime;
                                 GenerarCartas           ,
                                 GenerarDiskette         :Boolean;
                                 ExcluirProfesionales    :Boolean = False;
                                 Orden                   :string = 'S');
  end;

var
  DataModuleFiltro347: TDataModuleFiltro347;

implementation

uses System.Math, System.StrUtils,
     IBX.IBQuery,
     VCL.Forms, VCL.Dialogs,
     Tools, Processing, ccStr,
     Globales, DMControl, DM;

{$R *.dfm}

{ TFiltro347Model }

constructor TFiltro347Model.Create(ADB :TIBDatabase; Initialize :Boolean);
begin
   inherited;
   DM := TDataModuleFiltro347.Create(Application);
   if Initialize then DoInitialize;
end;

function TFiltro347Model.DataModule: TDataModule;
begin
   Result := DM;
end;

destructor TFiltro347Model.Destroy;
begin
   DM.Free;
   inherited;
end;

procedure TFiltro347Model.DoInitialize;
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

   DM.QInformesConta.Active := False;
   DM.QInformesConta.IndexDefs.Clear;
   DM.QInformesConta.IndexDefs.Add('SUBCUENTA'  , 'SUBCUENTA', []);
   DM.QInformesConta.IndexDefs.Add('DESCRIPCION', 'DESCSUBCUENTA', []);

   DM.QInformesConta.CreateDataSet;
   DM.QInformesConta.Active := True;
end;

procedure TFiltro347Model.Refresh;
begin

end;

function TFiltro347Model.Euros(nEuros: double; cGenero : string ): string;
const Y        = 'y ';
      F        = 'as ';
      M        = 'os ';
      MIL      = 'mil ';
      MILLON   = 'millón ';
      MILLONES = 'millones ';
      BILLON   = 'billón ';
      BILLONES = 'billones ';

var cNumero  :string;
    cTexto   :string;
    nGrupo   :Integer;
    aGrupos  :array[0..5] of string;
    aDecena  :array[1..10] of string;
    cUnidad  :string;
    cDecena  :string;
    cCentena :string;

begin { Carga de datos en aDecena }
      aDecena[ 1] := 'diez ';
      aDecena[ 2] := 'once ';
      aDecena[ 3] := 'doce ';
      aDecena[ 4] := 'trece ';
      aDecena[ 5] := 'catorce ';
      aDecena[ 6] := 'quince ';
      aDecena[ 7] := 'dieciseis ';
      aDecena[ 8] := 'diecisiete ';
      aDecena[ 9] := 'dieciocho ';
      aDecena[10] := 'diecinueve ';


   { Conversion a caracter del numero Justificando con 0 a la izquierda }
   cNumero := Trim(FloatToStrF(nEuros,ffFixed,10,2));
   cNumero := DupeString('0', 18-Length(cNumero)) + cNumero;

   { Confección de los grupos }
   for nGrupo:= 1 to 5 do begin
      aGrupos[5-nGrupo+1] := Copy(cNumero, (nGrupo-1)*3+1,3);
   end;

   aGrupos[0] := '0' + Copy(cNumero,17,2);

   { Proceso }
   cTexto:='';

   for nGrupo:=5 downto 0 do begin
       { Extraer cada una de las 3 cifras del grupo en curso }
       cCentena := Copy(aGrupos[nGrupo], 1, 1);
       cDecena  := Copy(aGrupos[nGrupo], 2, 1);
       cUnidad  := Copy(aGrupos[nGrupo], 3, 1);

       { Componer la cifra en letra del grupo en curso }

       { Centenas }
       case Strtoint(cCentena) + 1 of
          1: cTexto:=cTexto+'';
          2: if cDecena+cUnidad='00' then cTexto:=cTexto+'cien '
                                     else cTexto:=cTexto+'ciento ';
          3: begin
                cTexto:=cTexto+'doscient';
                if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                                  else cTexto:=cTexto+M;
             end;
          4: begin
                cTexto:=cTexto+'trescient';
                if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                                  else cTexto:=cTexto+M;
             end;

          5: begin
                cTexto:=cTexto+'cuatrocient';
                if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                                  else cTexto:=cTexto+M;
             end;
          6: begin
                cTexto:=cTexto+'quinient';
                if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                                  else cTexto:=cTexto+M;
             end;
          7: begin
                cTexto:=cTexto+'seiscient';
                if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                                  else cTexto:=cTexto+M;
             end;
          8: begin
                cTexto:=cTexto+'setecient';
                if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                                  else cTexto:=cTexto+M;
             end;
          9: begin
                cTexto:=cTexto+'ochocient';
                if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                                  else cTexto:=cTexto+M;
             end;
          10: begin
                cTexto:=cTexto+'novecient';
                if (nGrupo < 3) and (cGenero='F') then cTexto:=cTexto+F
                                                  else cTexto:=cTexto+M;
             end;
       end;

       { Decenas }
       case Strtoint(cDecena)+1 of
          1: cTexto := cTexto + '';
          2: if cUnidad = '0' then cTexto:=cTexto+'diez ';
          3: if cUnidad = '0' then cTexto:=cTexto+'veinte '
                              else cTexto:=cTexto+'veinti';
          4: begin
                cTexto:=cTexto+'treinta ';
                if cUnidad <> '0' then cTexto:=cTexto+Y;
             end;
          5: begin
                cTexto:=cTexto+'cuarenta ';
                if cUnidad <> '0' then cTexto:=cTexto+Y;
             end;
          6: begin
                cTexto:=cTexto+'cincuenta ';
                if cUnidad <> '0' then cTexto:=cTexto+Y;
             end;
          7: begin
                cTexto:=cTexto+'sesenta ';
                if cUnidad <> '0' then cTexto:=cTexto+Y;
             end;
          8: begin
                cTexto:=cTexto+'setenta ';
                if cUnidad <> '0' then cTexto:=cTexto+Y;
             end;
          9: begin
                cTexto:=cTexto+'ochenta ';
                if cUnidad <> '0' then cTexto:=cTexto+Y;
             end;
          10:begin
                 cTexto:=cTexto+'noventa ';
                 if cUnidad <> '0' then cTexto:=cTexto+Y;
             end;
       end;

       { Unidades }

       case Strtoint(cUnidad)+1 of
          1: if ((Trunc(nEuros)=0) and (nGrupo=1)) or
                ((nGrupo=0) and (aGrupos[0]='000')) then cTexto:=cTexto+'cero ';
          2: begin
             if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
             else begin
                if not ((aGrupos[nGrupo]='001') and ((nGrupo=2) or (nGrupo=4))) then
                   if nGrupo > 2 then cTexto := cTexto + 'un ' else
                   if cGenero='F' then cTexto:=cTexto+'una '
                                  else cTexto:=cTexto+'un ';
                end;
             end;

          3: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                            else cTexto:=cTexto+'dos ';

          4: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                            else cTexto:=cTexto+'tres ';

          5: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                            else cTexto:=cTexto+'cuatro ';

          6: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                            else cTexto:=cTexto+'cinco ';

          7: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                            else cTexto:=cTexto+'seis ';

          8: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                            else cTexto:=cTexto+'siete ';

          9: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                            else cTexto:=cTexto+'ocho ';

          10: if cDecena='1' then cTexto:=cTexto+aDecena[strtoint(cUnidad)+1]
                             else cTexto:=cTexto+'nueve ';
       end;

       { Conectores }
       case nGrupo of
          1: begin
                if Trunc(nEuros) = 1 then cTexto:=cTexto+'euro con '
                                     else cTexto:=cTexto+'euros con ';
             end;
          2: if strtoint(aGrupos[2])>0 then cTexto:=cTexto+MIL;
          3: begin
                if (strtoint(aGrupos[3])>0) or (strtoint(aGrupos[4]) >0 ) then
                   if strtoint(aGrupos[3])=1 then cTexto:=cTexto+MILLON
                                             else cTexto:=cTexto+MILLONES;
             end;
          4: if strtoint(aGrupos[4])>0 then cTexto:=cTexto+MIL;
          5: begin
                if strtoint(aGrupos[5])>0 then
                   if strtoint(aGrupos[5])=1 then cTexto:=cTexto+BILLON
                                             else cTexto:=cTexto+BILLONES;
             end;
       end;
   end;

   if aGrupos[0] = '001' then
     cTexto :=cTexto + 'céntimo'
   else
     cTexto :=cTexto + 'céntimos';

   Result := cTexto;
end;

procedure TFiltro347Model.LanzarInfModelo347(ACallBack               :TSimplyCallBack;
                                             TipoInforme             ,
                                             AsientoInicial          ,
                                             AsientoFinal            :Integer;
                                             FechaInicial            ,
                                             FechaFinal              :TDateTime;
                                             ImporteInicial          ,
                                             ImporteFinal            :Double;
                                             SeleccionPorSubcuenta   ,
                                             SeleccionPorDescripcion :Boolean;
                                             SubcuentaInicial        ,
                                             SubcuentaFinal          ,
                                             DescSubctaInicial       ,
                                             DescSubctaFinal         ,
                                             TipoConcepto            ,
                                             Tipo216                 :string;
                                             FechaImpresion          :TDateTime;
                                             GenerarCartas           ,
                                             GenerarDiskette         :Boolean;
                                             ExcluirProfesionales    :Boolean = False;
                                             Orden                   :string = 'S');
//var
   //Quitado por no estar utilizándose TCorreo: TTable;
   //FWord:   Variant;

   //Quitado por no estar utilizándoseprocedure CrearTablaCorreo;
   //Quitado por no estar utilizándosebegin
   //Quitado por no estar utilizándose   TCorreo := TTable.Create(nil);
   //Quitado por no estar utilizándose   TCorreo.Active       := False;
   //Quitado por no estar utilizándose   TCorreo.DatabaseName := DMControlRef.DataFolder; //'c:\'; //ExtractFileDir(Application.ExeName);
   //Quitado por no estar utilizándose   TCorreo.TableName    := 'Correo' + '.dbf';
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Subcuenta', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Nombre', ftstring, 100, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Direccion', ftstring, 85, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Poblacion', ftstring, 60, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('CodPostal', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Provincia', ftstring, 25, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Pesetas', ftstring, 150, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Banco', ftstring, 100, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Cheque', ftstring, 15, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('TotImporte', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha1', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha2', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha3', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha4', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha5', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha6', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha7', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha8', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha9', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Fecha10', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe1', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe2', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe3', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe4', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe5', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe6', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe7', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe8', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe9', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Importe10', ftstring, 14, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto1', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto2', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto3', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto4', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto5', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto6', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto7', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto8', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto9', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Texto10', ftstring, 40, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Ejercicio', ftstring, 4, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('Empresa', ftstring, 50, False);
   //Quitado por no estar utilizándose   TCorreo.FieldDefs.Add('FVencim', ftstring, 10, False);
   //Quitado por no estar utilizándose   TCorreo.CreateTable;
   //Quitado por no estar utilizándose   

var
   QApuntes          :TIBQuery;
   QProvincias       :TIBQuery;
   DSFichero         :TClientDataSet;
   InProgress        :TProcessingView;
   Subcuenta         :string;
   nImporte          :Double;
   F                 ,
   Fichero           :TextFile;
   Reg1              :string;
   Reg2              :string;
   cNomFile          :string;
   cEuro             :string;
   cEjer             :string;
   cCodProv          :string;
   cClave            :string;
   cImporte          :string;
   cLocal            :string;
   nImpCompras       :Double;
   nImpVentas        :Double;
   nCompras          :Integer;
   nVentas           :Integer;
   nPosComa          :Cardinal;
   cTexto            :array [0..50] of Char;
   cDescripcion      :array [0..50] of Char;
   Registro          :string;
   Year              :Word;
   Month             :Word;
   Day               :Word;
begin
   if GenerarDiskette and (TipoInforme = INF_MOD_347) then begin
      if Length(DMRef.QParametrosNIF.AsString) > 9 then begin
         DatabaseError('Error en longitud NIF de empresa.' + #13 +
            'Debe ser de 9 caracteres.');
      end;
   end;

   InProgress := InProgressView('Generando informe ...', True);
   try
      Config.AbortedProcess := False;

      nImpCompras := 0;
      nImpVentas  := 0;
      nCompras    := 0;
      nVentas     := 0;

      // Selección de datos de país
      QProvincias := TIBQuery.Create(nil);
      QProvincias.Database := DB;
      QProvincias.SQL.Add('SELECT CODIGO, NOMBRE FROM PROVINCIAS');
      QProvincias.SQL.Add('WHERE PROVINCIA = :PROVINCIA');
      QProvincias.Prepare;

      DSFichero := TClientDataset.Create(nil);
      DSFichero.Active := False;
      DSFichero.FieldDefs.Add('Cuenta', ftString, 10, False);
      DSFichero.FieldDefs.Add('Descripcion', ftString, 40, False);
      DSFichero.FieldDefs.Add('Arrendador', ftString, 1, False);
      DSFichero.FieldDefs.Add('NIF', ftString, 15, False);
      DSFichero.FieldDefs.Add('NIFEURO', ftString, 18, False);
      DSFichero.FieldDefs.Add('CodProv', ftString, 2, False);
      DSFichero.FieldDefs.Add('Ventas', ftFloat, 0, False);
      DSFichero.FieldDefs.Add('Compras', ftFloat, 0, False);
      DSFichero.FieldDefs.Add('Importe', ftFloat, 0, False);
      DSFichero.FieldDefs.Add('Direccion', ftString, 85, False);
      DSFichero.FieldDefs.Add('Poblacion', ftString, 60, False);
      DSFichero.FieldDefs.Add('CodPostal', ftString, 10, False);
      DSFichero.FieldDefs.Add('NombreProvincia', ftString, 25, False);
      DSFichero.FieldDefs.Add('TIPOCUENTA', ftString, 1, False);

      DSFichero.IndexDefs.Add('', 'cuenta', [ixPrimary]);
      DSFichero.IndexDefs.Add('NIF', 'NIF;TIPOCUENTA', []);
      DSFichero.CreateDataSet;
      DSFichero.Active := True;
      DSFichero.Append;

      DM.QInformesConta.EmptyDataSet;
      DM.QInformesConta.IndexName := 'SUBCUENTA';

      if subcuentafinal = '' then begin
         subcuentafinal := subcuentainicial;
      end;
      if subcuentainicial <> '' then begin
         if length(subcuentainicial) < Config.MaxLengthAccounts then begin
            subcuentainicial := TStrTools.BackChar(subcuentainicial, '0', Config.MaxLengthAccounts);
         end;
         if length(subcuentafinal) < Config.MaxLengthAccounts then begin
            subcuentafinal := TStrTools.Backchar(subcuentafinal, '9', Config.MaxLengthAccounts);
         end;
      end;

      if DescSubctaFinal = '' then  begin
         DescSubctaFinal := DescSubctaInicial;
      end;


      // Selección de asientos
      QApuntes := TIBQuery.Create(nil);
      try
         QApuntes.Database := DB;
         QApuntes.SQL.Add('SELECT D.SUBCUENTA, D.DEBEHABER,S.NIF,');
         QApuntes.SQL.Add(' T.TIPOCONTABILIDAD,T.TIPOCONCEPTO,D.MONEDA, D.IMPORTE,S.PROVINCIA, ');
         QApuntes.SQL.Add(' D.CUENTA_ANALITICA,S.PAIS,S.DESCRIPCION,C.TIPOCUENTA,S.ARRENDADOR,');
         QApuntes.SQL.Add(' S.DIRECCION, S.DIRECCION1, S.NUMERO, S.POBLACION, S.CODPOSTAL, S.PROFESIONAL');
         QApuntes.SQL.Add('FROM DIARIO D, CUENTAS C, SUBCTAS S,CONCEPTOS T');
         QApuntes.SQL.Add('WHERE SUBSTR(D.SUBCUENTA, 1, 3) = C.CUENTA ');
         QApuntes.SQL.Add('   AND D.SUBCUENTA=S.SUBCUENTA ');
         QApuntes.SQL.Add('   AND (C.TIPOCUENTA="C" OR C.TIPOCUENTA="P")');
         // Los profesionales no salen en el 347
         QApuntes.SQL.Add('AND D.ID_CONCEPTOS=T.ID_CONCEPTOS');
         if ExcluirProfesionales then begin
            QApuntes.SQL.Add('AND (S.PROFESIONAL IS NULL OR S.PROFESIONAL <> "S")');
         end;

         if Tipo216 = 'I' then begin        // Incluir tipo 216
            if TipoInforme = INF_MOD_347 then begin
               QApuntes.SQL.Add('AND (T.TIPOCONCEPTO="3" OR T.TIPOCONCEPTO = "2")');
            end // 347
            else begin
               QApuntes.SQL.Add('AND (T.TIPOCONCEPTO="9" OR T.TIPOCONCEPTO = "2")');
            end; // 349
         end
         else
         if Tipo216 = 'S' then    // Sólo tipo 216
         begin
            QApuntes.SQL.Add('AND T.TIPOCONCEPTO = "2"');
         end
         else begin // Excluir tipo 216
            if TipoInforme = INF_MOD_347 then begin
               QApuntes.SQL.Add('AND T.TIPOCONCEPTO="3"');
            end // 347
            else begin
               QApuntes.SQL.Add('AND T.TIPOCONCEPTO="9"');
            end; // 349
         end;

         QApuntes.SQL.Add('   AND D.ASIENTO >= :ASIENTOINICIAL AND D.ASIENTO <= :ASIENTOFINAL');
         QApuntes.SQL.Add('   AND D.FECHA >= :FECHAINICIAL AND D.FECHA <= :FECHAFINAL');

         if SeleccionPorSubcuenta then  begin
            if SubcuentaFinal <> '' then begin
               if SubcuentaInicial = '' then begin
                  QApuntes.SQL.Add('   AND (D.SUBCUENTA IS NULL OR (D.SUBCUENTA >= :SUBCUENTAINICIAL AND D.SUBCUENTA <= :SUBCUENTAFINAL))');
               end
               else begin
                  QApuntes.SQL.Add('   AND D.SUBCUENTA >= :SUBCUENTAINICIAL AND D.SUBCUENTA <= :SUBCUENTAFINAL');
               end;
            end;
         end;
         if SeleccionPorDescripcion then  begin
            if DescSubctaFinal <> '' then begin
               if DescSubctaInicial = '' then begin
                  QApuntes.SQL.Add('   AND (S.DESCRIPCION IS NULL OR (S.DESCRIPCION >= :DESCINICIAL AND S.DESCRIPCION <= :DESCFINAL))');
               end
               else begin
                  QApuntes.SQL.Add('   AND S.DESCRIPCION >= :DESCINICIAL AND S.DESCRIPCION <= :DESCFINAL');
               end;
            end;
         end;

         QApuntes.SQL.Add('ORDER BY D.SUBCUENTA, D.FECHA');

         // PARÁMETROS
         QApuntes.ParamByName('ASIENTOINICIAL').AsInteger := AsientoInicial;
         QApuntes.ParamByName('ASIENTOFINAL').AsInteger   := AsientoFinal;

         QApuntes.ParamByName('FECHAINICIAL').AsDateTime := FechaInicial;
         QApuntes.ParamByName('FECHAFINAL').AsDateTime   := FechaFinal;

         if SeleccionPorSubcuenta then  begin
            if SubcuentaFinal <> '' then begin
               QApuntes.ParamByName('SUBCUENTAINICIAL').AsString := SubcuentaInicial;
               QApuntes.ParamByName('SUBCUENTAFINAL').AsString   := SubcuentaFinal;
            end;
         end;
         if SeleccionPorDescripcion then  begin
            if DescSubctaFinal <> '' then begin
               QApuntes.ParamByName('DESCINICIAL').AsString := DescSubctaInicial;
               QApuntes.ParamByName('DESCFINAL').AsString   := DescSubctaFinal;
            end;
         end;

         QApuntes.Prepare;
         QApuntes.Open;

         try
            while not QApuntes.EOF do begin
               if (TipoConcepto <> 'T') and (QApuntes.FieldByName('TipoContabilidad').AsString <> TipoConcepto) then begin
                  QApuntes.Next;
                  Continue;
               end;
               // Seleccionar datos subcuenta de enlace 347
               Subcuenta := QApuntes.FieldByName('SUBCUENTA').AsString;
               // Chequear si existe la subcuenta en DSFichero
               DSFichero.First;
               if not DSFichero.FindKey([Subcuenta]) then begin
                  // Si tampoco existe una subcuenta con ese nif
                  // entonces si se da de alta.
                  // Si no tiene nif, se trata como subcuenta diferente hasta
                  // que el usuario le ponga su nif correspondiente, cuando vea el error
                  // en el listado.

                  DSFichero.indexname := 'NIF';
                  DSFichero.First;
                  if (IsEmpty(QApuntes.FieldByName('nif').AsString)) or
                     (not DSFichero.FindKey([QApuntes.FieldByName('nif').AsString, QApuntes.FieldByName('TIPOCUENTA').AsString])) then begin
                     DSFichero.Append;
                     DSFichero.Edit;
                     DSFichero.FieldByName('TIPOCUENTA').AsString  := QApuntes.FieldByName('TIPOCUENTA').AsString;
                     DSFichero.FieldByName('cuenta').AsString      := Subcuenta;
                     DSFichero.FieldByName('arrendador').AsString  := QApuntes.FieldByName('arrendador').AsString;
                     DSFichero.FieldByName('descripcion').AsString := QApuntes.FieldByName('Descripcion').AsString;
                     DSFichero.FieldByName('nif').AsString         := QApuntes.FieldByName('nif').AsString;
                     DSFichero.FieldByName('nifeuro').AsString     := QApuntes.FieldByName('pais').AsString + '-' + QApuntes.FieldByName('nif').AsString;
                     QProvincias.Close;
                     QProvincias.parambyname('provincia').AsString := QApuntes.FieldByName('Provincia').AsString;
                     QProvincias.Open;
                     DSFichero.FieldByName('CodProv').AsString         := QProvincias.FieldByName('codigo').AsString;
                     DSFichero.FieldByName('DIRECCION').AsString       := QApuntes.FieldByName('DIRECCION').AsString + ' ' + QApuntes.FieldByName('DIRECCION1').AsString + ', ' + QApuntes.FieldByName('NUMERO').AsString;
                     DSFichero.FieldByName('POBLACION').AsString       := QApuntes.FieldByName('POBLACION').AsString;
                     DSFichero.FieldByName('NOMBREPROVINCIA').AsString := QProvincias.FieldByName('NOMBRE').AsString;
                     DSFichero.FieldByName('CODPOSTAL').AsString       := QApuntes.FieldByName('CODPOSTAL').AsString;
                     DSFichero.Post;
                  end;
                  DSFichero.IndexName := '';
               end;

               // Ya esta situado DSFichero }
               DSFichero.Edit;
               if (QApuntes.FieldByName('DebeHaber').AsString = 'D') and (QApuntes.FieldByName('TipoCuenta').AsString = 'C') then begin
                  DSFichero.FieldByName('Ventas').AsFloat :=
                     RoundTo(DSFichero.FieldByName('Ventas').AsFloat + QApuntes.FieldByName('Importe').AsFloat, -2);


               end;
               if (QApuntes.FieldByName('DebeHaber').AsString = 'H') and (QApuntes.FieldByName('TipoCuenta').AsString = 'P') then
               begin
                  DSFichero.FieldByName('Compras').AsFloat :=
                     RoundTo(DSFichero.FieldByName('Compras').AsFloat + QApuntes.FieldByName('Importe').AsFloat, -2);
               end;
               DSFichero.Post;
               QApuntes.Next;
            end; // While
         except
            on E: Exception do begin
               QProvincias.Close;
               QProvincias.Free;
               DatabaseError(E.message);
            end;
         end;
      finally
         QApuntes.Free;
      end;

      if GenerarDiskette and (TipoInforme = INF_MOD_349) then begin
         // Generacion de fichero de enlace 349

         DecodeDate(DmRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime, Year, Month, Day);
         cEjer    := IntToStr(Year);
         cNomfile := 'OP349' + copy(cEjer, 3, 2) + '.TXT';

         DSFichero.First;
         while not DSFichero.EOF do begin
            if RoundTo(DSFichero.FieldByName('ventas').AsFloat, -2) > 0 then begin
               nImporte := DSFichero.FieldByName('ventas').AsFloat;
            end
            else begin
               nImporte := DSFichero.FieldByName('compras').AsFloat;
            end;
            if not ((nImporte >= ImporteInicial) and (nImporte <= ImporteFinal)) then begin
               DSFichero.Next;
               Continue;
            end;
            if RoundTo(DSFichero.FieldByName('ventas').AsFloat, -2) > 0 then begin
               nImpVentas := nImpVentas + nImporte;
               Inc(nVentas);
            end
            else begin
               nImpCompras := nImpCompras + nImporte;
               Inc(nCompras);
            end;
            DSFichero.Next;
         end;

         AssignFile(F, Config.AppFolder + '\' + cNomFile);
         Rewrite(F);

         cEuro := Trim(FloattostrF(RoundTo(nImpCompras + nImpVentas, -2), ffFixed, 15, 2));
         nPosComa := Pos(',', cEuro);
         cImporte := TStrTools.LeadChar(Copy(cEuro, 1, nPosComa - 1) +
            TStrTools.BackChar(Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', 15);

         // Primero Reg1 (Declarante)
         Reg1 := '1349' + cEjer + TStrTools.leadchar(Trim(DmRef.QParametrosNIF.AsString), '0', 9) + //9-17
            Copy(TStrTools.BackChar(Trim(UpperCase(DmRef.QParametrosNOMBREFISCAL.AsString)), ' ', 40),
            1, 40) + // 18-57
            'D' +    // 58 Tipo de soporte Disquete
                     // 59-67 (9) Telefono de Contacto
            TStrTools.Backchar(Copy(Trim(DmRef.QParametrosTELEFONO.AsString), 1, 9), ' ', 9) +
            // 68-107 (40) Apellidos y Nombre
            TStrTools.BackChar(copy(Trim(DmRef.QParametrosCONTACTO.AsString), 1, 40), ' ', 40) +
            DupeString(' ', 13) + // 108-120 (13)  Numero justificante de declaracion
            ' ' +  // 121 Declaracion complementaria
            ' ' +  // 122 Declaracion sustitutiva
            DupeString('0', 13) + // 123-135 (13) Numero de justificante de la declaracion anterior
            '0A';  //  136-137 .. Se pone por defecto Periodo anual

         Reg1 := Reg1 + TStrTools.LeadChar(IntToStr(nCompras + nVentas), '0', 9) +
            // 138-146 (9) Numero total de operadores tipo E
            cImporte +  // 147-161 Importe de las operaciones intracomunitarias
            DupeString('0', 9) +  // 162-170 Numero total de operadores rectificaciones (no se hace)
            DupeString('0', 15) + // 171-185 Importe de las operaciones rectificaciones (no se hace)
            DupeString(' ', 65); // 186-250

         Writeln(F, Reg1);
         if length(Reg1) <> 250 then  begin
            ShowMessage('Error en longitud Reg1 ' + IntToStr(Length(Reg1)));
            CloseFile(F);
            Exit;
         end;

         DSFichero.First;
         while not DSFichero.EOF do begin
            StrPCopy(cTexto, TStrTools.Padr(DSFichero.FieldByName('Descripcion').AsString, 40));
            {It's generating the disk file for the model 347}
            {Probably we don't need this functionality, by if yes we shall take into account the line commented.}
            //CharToOEM(cTexto, cDescripcion);

            if RoundTo(DSFichero.FieldByName('Compras').AsFloat, -2) > 0 then begin
               cEuro := Trim(FloatToStrF(RoundTo(DSFichero.FieldByName('Compras').AsFloat, -2), ffFixed, 13, 2));
               nPosComa := Pos(',', cEuro);
               cImporte := TStrTools.LeadChar(Copy(cEuro, 1, nPosComa - 1) +
                  TStrTools.BackChar(Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', 13);
            end
            else begin
               cEuro := Trim(FloattostrF(RoundTo(DSFichero.FieldByName('ventas').AsFloat, -2), ffFixed, 13, 2));
               nPosComa := Pos(',', cEuro);
               cImporte := TStrTools.LeadChar(Copy(cEuro, 1, nPosComa - 1) +
                  TStrTools.BackChar(Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', 13);
            end;

            // Un Reg2 por cada Operacion declarada
            Reg2 := '2349' + cEjer + TStrTools.LeadChar(Trim(DmRef.QParametrosNIF.AsString), '0', 9) +
               // 9-17 (9)
               DupeString(' ', 58) + // 18-75 En blanco
               Copy(Trim(DSFichero.FieldByName('NifEuro').AsString), 1, 2) + // 76-92 (17) Nif Operador comunitario
               TStrTools.Backchar(Trim(Copy(Trim(DSFichero.FieldByName('NifEuro').AsString), 4, 15)), ' ', 15) +
               Copy(cDescripcion, 1, 40) + // 93-132 (40) Razon social operador intracomunitario
               'E' +      // 133 Clave de Operacion
               cImporte + // 134-146 (13) Base Imponible
               DupeString(' ', 104);// 147-250 Blancos
            Writeln(F, Reg2);
            if length(Reg2) <> 250 then begin
               ShowMessage('Error en longitud Reg2 ' + IntToStr(Length(Reg2)));
               CloseFile(F);
               Exit;
            end;
            DSFichero.Next;
         end;
         CloseFile(F);
      end;

      if GenerarDiskette and (TipoInforme = INF_MOD_347) then begin
         // Generacion de fichero de enlace 347

         DecodeDate(DmRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime, Year, Month, Day);
         cEjer    := IntToStr(Year);
         cNomfile := 'OP347' + copy(cEjer, 3, 2) + '.TXT';

         DSFichero.First;
         while not DSFichero.EOF do begin
            if RoundTo(DSFichero.FieldByName('ventas').AsFloat, -2) > 0 then begin
               nImporte := DSFichero.FieldByName('ventas').AsFloat;
            end
            else begin
               nImporte := DSFichero.FieldByName('compras').AsFloat;
            end;
            if not ((nImporte >= ImporteInicial) and (nImporte <= ImporteFinal)) then begin
               DSFichero.Next;
               Continue;
            end;
            if RoundTo(DSFichero.FieldByName('ventas').AsFloat, -2) > 0 then begin
               nImpVentas := nImpVentas + nImporte;
               Inc(nVentas);
            end
            else begin
               nImpCompras := nImpCompras + nImporte;
               Inc(nCompras);
            end;
            DSFichero.Next;
         end;

         AssignFile(F, Config.AppFolder + '\' + cNomFile);
         Rewrite(F);

         // Situar provincias
         cCodProv := '00'; // Dejar asi de momento
         QProvincias.Close;
         QProvincias.parambyname('provincia').AsString := DmRef.QParametrosPROVINCIA.AsString;
         QProvincias.Open;
         cCodProv := TStrTools.leadchar(QProvincias.FieldByName('codigo').AsString, '0', 2);

         // Primero Reg1 (Declarante)
         Reg1 := '1347' + cEjer + TStrTools.leadchar(Trim(DmRef.QParametrosNIF.AsString), '0', 9) + //9-17
            Copy(TStrTools.BackChar(Trim(UpperCase(DmRef.QParametrosNOMBREFISCAL.AsString)), ' ', 40),
            1, 40); // 18-57
         // Cuantos con compras y ventas
         // Cambio

         cEuro := Trim(FloattostrF(RoundTo(nImpCompras + nImpVentas, -2), ffFixed, 15, 2));
         nPosComa := Pos(',', cEuro);
         cImporte := TStrTools.LeadChar(Copy(cEuro, 1, nPosComa - 1) + TStrTools.BackChar(
            Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', 15);

         Reg1 := Reg1 + 'D' + DupeString(' ', 77) + TStrTools.leadchar(IntToStr(nCompras + nVentas), '0', 9) +
            // 136-144 (9) t. op.compras y ventas
            cImporte + // 145-159 (15) t.imp.compras  y ventas
            TStrTools.leadchar('', '0', 9) + // 160-168 (9)  t.inmuebles
            TStrTools.leadchar('', '0', 15) + // 169-183 (15) t.imp.inmuebles
            DupeString(' ', 67); // Resto de valores no utilizados

         Writeln(F, Reg1);
         if length(Reg1) <> 250 then  begin
            ShowMessage('Error en longitud Reg1 ' + IntToStr(Length(Reg1)));
            CloseFile(F);
            Exit;
         end;

         DSFichero.First;
         while not DSFichero.EOF do begin
            if RoundTo(DSFichero.FieldByName('ventas').AsFloat, -2) > 0 then begin
               nImporte := DSFichero.FieldByName('ventas').AsFloat;
            end
            else begin
               nImporte := DSFichero.FieldByName('compras').AsFloat;
            end;
            if not ((nImporte >= ImporteInicial) and (nImporte <= ImporteFinal)) then begin
               DSFichero.Next;
               Continue;
            end;

            cLocal := ' ';
            if not IsEmpty(DSFichero.FieldByName('arrendador').AsString) then begin
               cLocal := 'X';
            end;

            // Un Reg2 por cada Operacion declarada
            Reg2 := '2347' + cEjer + TStrTools.leadchar(Trim(DmRef.QParametrosNIF.AsString), '0', 9);
            // 9-17 (9)
            // Clave de Operacion
            // Se considera que no puede tener compras y ventas a la vez
            // se hace en clave
            if RoundTo(DSFichero.FieldByName('Compras').AsFloat, -2) > 0 then begin
               cClave := 'A';
               cEuro  := Trim(FloattostrF(RoundTo(DSFichero.FieldByName('Compras').AsFloat, -2), ffFixed, 15, 2));
               nPosComa := Pos(',', cEuro);
               cImporte := TStrTools.LeadChar(Copy(cEuro, 1, nPosComa - 1) + TStrTools.BackChar(
                  Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', 15);
            end;

            if RoundTo(DSFichero.FieldByName('Ventas').AsFloat, -2) > 0 then begin
               cClave := 'B';
               cEuro  := Trim(FloattostrF(RoundTo(DSFichero.FieldByName('ventas').AsFloat, -2), ffFixed, 15, 2));
               nPosComa := Pos(',', cEuro);
               cImporte := TStrTools.LeadChar(Copy(cEuro, 1, nPosComa - 1) + TStrTools.BackChar(
                  Copy(cEuro, nPosComa + 1, 2), '0', 2), '0', 15);
            end;

            StrPCopy(cTexto, TStrTools.Padr(DSFichero.FieldByName('Descripcion').AsString, 40));
            {It's generating the disk file for the model 347}
            {Probably we don't need this functionality, by if yes we shall take into account the line commented.}
            //CharToOEM(cTexto, cDescripcion);

            Reg2 := Reg2 + TStrTools.leadchar(Trim(DSFichero.FieldByName('Nif').AsString), '0', 9) + // 18-26 (9)
               DupeString(' ', 9) + // 27-35 (9)
               copy(cDescripcion, 1, 40) + // 36-75 (40)
               'D'; // 76

            // Hay que diferenciar por:
            //   Residentes y No residentes con domicilio permanente
            //   No residentes sin domicilio permanente (99xxx)
            //            siendo xxx el codigo del pais de residencia


            Reg2 := Reg2 +     // 77-78 (2) codigo de provincia
               TStrTools.leadchar(DSFichero.FieldByName('codprov').AsString, '0', 2) + '000' + // 79-81 (3) codigo de pais
               cClave +  // 82
               cImporte + // 83-95 (13) importe de la operacion, parte entera
                         // 96-97 (2) importe de la operacion, parte decimal
               ' ' +     // (98) operacion de seguro
               cLocal +  // (99) arrendamiento local negocio
               DupeString(' ', 151); // (100-250) blancos

            Writeln(F, Reg2);
            if length(Reg2) <> 250 then begin
               ShowMessage('Subcuenta: ' + DSFichero.FieldByName('cuenta').AsString +
                  '. Error longitud NIF. Debe ser de 9 caracteres. (' + IntToStr(length(Reg2)) + ')');
               CloseFile(F);
               Exit;
            end;
            DSFichero.Next;
         end; // while
         CloseFile(F);
      end; // GenerarDiskette and (TipoInforme=INF_MOD_347) then

      DSFichero.IndexName := '';
      DSFichero.First;
      while not DSFichero.EOF do begin
         if RoundTo(DSFichero.FieldByName('ventas').AsFloat, -2) > 0 then begin
            nImporte := DSFichero.FieldByName('ventas').AsFloat;
         end
         else begin
            nImporte := DSFichero.FieldByName('compras').AsFloat;
         end;
         if ((nImporte >= ImporteInicial) and (nImporte <= ImporteFinal)) then begin
            DM.QInformesConta.Append;
            DM.QInformesConta.Edit;
            //  Almacenar la fecha inicial del filtro para incluirla en la descripción
            // del listado.
            DM.QInformesConta.FieldByName('FechaInicial').AsDateTime := FechaInicial;
            DM.QInformesConta.FieldByName('FechaFinal').AsDateTime   := FechaFinal;

            DM.QInformesConta.FieldByName('FechaImpresion').AsDateTime := FechaImpresion;

            DM.QInformesConta.FieldByName('SUBCUENTA').AsString     := DSFichero.FieldByName('cuenta').AsString;
            DM.QInformesConta.FieldByName('DESCSUBCUENTA').AsString := DSFichero.FieldByName('DESCRIPCION').AsString;
            if (TipoInforme = INF_MOD_347) then begin
               DM.QInformesConta.FieldByName('NIF').AsString := DSFichero.FieldByName('NIF').AsString;
            end
            else begin
               DM.QInformesConta.FieldByName('NIF').AsString := DSFichero.FieldByName('NIFeuro').AsString;
            end;
            DM.QInformesConta.FieldByName('PROVINCIA').AsString     := DSFichero.FieldByName('CODPROV').AsString;
            // if RoundTo(fieldbyname('ventas').asfloat, -2)>0 then
            DM.QInformesConta.FieldByName('IMPORTEVENTAS').AsFloat  := DSFichero.FieldByName('VENTAS').AsFloat;
            // else
            DM.QInformesConta.FieldByName('IMPORTECOMPRAS').AsFloat := DSFichero.FieldByName('COMPRAS').AsFloat;
            DM.QInformesConta.Post;
         end;
         DSFichero.Next;
      end; // while

      if GenerarCartas then begin
         //CrearTablaCorreo;
         AssignFile(Fichero, 'c:\enlace347.txt');
         Rewrite(Fichero);

         // Primero crear la cabecera del fichero la cual no se usa
         Registro := 'NOMBRE#SUBCUENTA#DIRECCION#POBLACION#CODPOSTAL#PROVINCIA#EJERCICIO#EMPRESA#TOTIMPORTE#EUROS';
         Writeln(Fichero, Registro);

         DSFichero.IndexName := '';
         DSFichero.First;
         while not DSFichero.EOF do begin
            if RoundTo(DSFichero.FieldByName('VENTAS').AsFloat, -3) > 0 then begin
               nImporte := DSFichero.FieldByName('VENTAS').AsFloat;
            end
            else begin
               nImporte := DSFichero.FieldByName('COMPRAS').AsFloat;
            end;
            if not ((nImporte >= ImporteInicial) and (nImporte <= ImporteFinal)) then begin
               DSFichero.Next;
               Continue;
            end;

            DecodeDate(DmRef.QParametrosFECHA_INICIO_EJERCICIO.AsDateTime, Year, Month, Day);

            Registro := DSFichero.FieldByName('DESCRIPCION'    ).AsString + '#'  +
                        DSFichero.FieldByName('CUENTA'         ).AsString + '#'  +
                        DSFichero.FieldByName('DIRECCION'      ).AsString + '#'  +
                        DSFichero.FieldByName('POBLACION'      ).AsString + ' #' +
                        DSFichero.FieldByName('CODPOSTAL'      ).AsString + ' #' +
                        DSFichero.FieldByName('NOMBREPROVINCIA').AsString + '#'  +
                        IntToStr(Year) + '#' +
                        DMRef.QParametrosNOMBREFISCAL.AsString + '#' +
                        Format('%.2n', [nImporte]) + '#' + UpperCase(Euros(nImporte, 'M'));

            Writeln(Fichero, Registro);
            DSFichero.Next;
         end;
         CloseFile(Fichero);
      end;

      QProvincias.Close;
      QProvincias.Free;
   finally
      InProgress.Free;
   end;

   {Esta funcionalidad queda de momento cancelada por su dependencia de la aplicación externa MS-Word.}
   {En un futuro se incluirá un informe, modificable por el usuario, que suplirá con creces esta funcionalidad}

   (*if GenerarCartas then begin
      Documento     := DMRef.QParametrosDOC347.AsString;
      Screen.Cursor := crHourGlass;
      try
         FWord := GetActiveOleObject('Word.Application');
      except
         FWord := CreateOleObject('Word.Application');
      end;

      FWord.Documents.Open(
         FileName := Documento,
         ConfirmConversions := False,
         ReadOnly := True, AddToRecentFiles := False, PasswordDocument := '',
         PasswordTemplate := '', Revert := False, WritePasswordDocument := '',
         WritePasswordTemplate := '', Format := wdOpenFormatAuto);

      FWord.ActiveDocument.MailMerge.MainDocumentType := 0;

      Screen.Cursor := crDefault;

      FWord.ActiveDocument.MailMerge.OpenDataSource(
         Name := 'c:\Enlace347.txt',
         ConfirmConversions := False, ReadOnly := False, LinkToSource := True,
         AddToRecentFiles := False, PasswordDocument := '', PasswordTemplate := '',
         WritePasswordDocument := '', WritePasswordTemplate := '', Revert := False,
         Format := wdOpenFormatAuto, Connection := '',
         SQLStatement := '', SQLStatement1 := '');

      if DMRef.QParametrosDOCIMPRIMIR.AsString = 'S' then begin
         FWord.activeDocument.MailMerge.Destination := wdSendToNewDocument;
         FWord.Visible := True;
      end
      else begin
         FWord.activeDocument.MailMerge.Destination := wdSendToPrinter;
      end;

      FWord.activeDocument.Mailmerge.MailAsAttachment       := False;
      FWord.activeDocument.Mailmerge.SuppressBlankLines     := True;
      FWord.activeDocument.Mailmerge.Datasource.FirstRecord := wdDefaultFirstRecord;
      FWord.activeDocument.Mailmerge.Datasource.LastRecord  := wdDefaultLastRecord;
      FWord.activeDocument.Mailmerge.Execute(Pause          := False);

      if DMRef.QParametrosDOCIMPRIMIR.AsString <> 'S' then begin
         FWord.ActiveDocument.Close(wdDoNotSaveChanges);
      end;

      MessageDlg('Impresión Finalizada', mtInformation, [mbOK], 0);
   end;*)

   if Orden = 'S' then begin
      DM.QInformesConta.IndexName := 'SUBCUENTA';
   end
   else begin
      DM.QInformesConta.IndexName := 'DESCRIPCION';
   end;

   DM.QInformesConta.First;

   if Assigned(ACallBack) then ACallBack;

   (*DM.PDFExport.Author          := 'senCille Accounting';
   DM.PDFExport.ShowDialog      := False;
   DM.PDFExport.OpenAfterExport := True;

   if TipoInforme = INF_MOD_347 then begin
      DM.PDFExport.FileName := 'OperaTer347.pdf';
      DM.FastReportOperaTer347.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportOperaTer347.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
      DM.FastReportOperaTer347.Variables['DESCRIPTION'    ] := ''''+'Desde la fecha ' + FormatDateTime('dd/mm/yyyy', FechaInicial) +
                                                                    ' hasta '         + FormatDateTime('dd/mm/yyyy', FechaFinal) +'''';
      DM.FastReportOperaTer347.Variables['ENTERPRISE_NAME'] := ''''+FormatDateTime('dd/mm/yyyy', FechaImpresion)+'''';
      DM.FastReportOperaTer347.PrepareReport(True);
      DM.FastReportOperaTer347.Export(DM.PDFExport);
   end
   else begin
      DM.PDFExport.FileName := 'OperaTer349.pdf';
      DM.FastReportOperaTer349.Variables['ENTERPRISE_NAME'] := ''''+DMRef.QParametrosNOMBREFISCAL.AsString+'''';
      DM.FastReportOperaTer349.Variables['USER_NAME'      ] := ''''+Config.LoggedUser+'''';
      DM.FastReportOperaTer349.Variables['DESCRIPTION'    ] := ''''+'Desde la fecha ' + FormatDateTime('dd/mm/yyyy', FechaInicial) +
                                                                    ' hasta '         + FormatDateTime('dd/mm/yyyy', FechaFinal) +'''';
      DM.FastReportOperaTer349.Variables['ENTERPRISE_NAME'] := ''''+FormatDateTime('dd/mm/yyyy', FechaImpresion)+'''';
      DM.FastReportOperaTer349.PrepareReport(True);
      DM.FastReportOperaTer349.Export(DM.PDFExport);
   end;*)

   DM.QInformesConta.EmptyDataSet;
   DM.QInformesConta.IndexName := '';

   DSFichero.Close;
   DSFichero.Free;

   DM.QInformesConta.EmptyDataSet;
end;

procedure TDataModuleFiltro347.QInformesContaBeforeInsert(
  DataSet: TDataSet);
begin
   Application.ProcessMessages;
   if Config.AbortedProcess then begin
      Config.AbortedProcess := False;
      DatabaseError('Proceso cancelado');
   end;
end;

end.
