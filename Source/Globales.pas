unit Globales;

interface

//uses OnGuard;

type
   TModoArranque     = (INSERCION, MODIFICACION, DUPLICAR, CONSULTA, MODIFICACION_INFORME, COBRO_FACTURA, PAGO_FACTURA);
   TOperacionEfectos = (GENERAR_ASIENTO, IMPRIMIR_CARTA);
   TPermiso          = (ANIADIR, MODIFICAR, BORRAR, IMPRESION);

const
   //------------------------------------------------------------------------------
   FOLDER_IMAGES_NAME  = 'Images';
   FOLDER_REPORTS_NAME = 'Reports';
   gcBtn               = 'Boton.bmp';
   gcBtnBlanco         = 'BotonBlanco.bmp';
   //------------------------------------------------------------------------------
   // Informes
   INF_ASIENTOS                     =  9;
   INF_MAYOR                        = 10;
   INF_FACTURAS_EMITIDAS            = 48;
   INF_FACTURAS_RECIBIDAS           = 49;
   INF_FACTURAS_BIENES              = 50;
   INF_MOD_300                      = 20;
   INF_MOD_347                      = 21;
   INF_MOD_349                      = 22;
   INF_BALANCE_SUMAS_Y_SALDOS       = 23;
   INF_BALANCE_SITUACION            = 24;
   INF_BALANCE_PERDIDAS_Y_GANANCIAS = 25;
   INF_GASTOS                       = 26;
   INF_BALANCE_INGRESOS_GASTOS      = 30;
   //------------------------------------------------------------------------------
   // Constantes para la carga de asientos
   CARGA_ASIENTOS_SIMPLIFICADA = 0;
   CARGA_ASIENTOS_GASTOS       = 1;
   CARGA_FACTURAS_COMPRA       = 2;
   CARGA_PROVISION             = 3;
   CARGA_PAGO                  = 4;
   CARGA_COBRO_FACTURA         = 5;
   CARGA_DEVOLUCION_PROVISION  = 6;
   CARGA_FACTURAS_VENTA        = 7;

   // Constantes para el tipo de asiento
   ASIENTO_GENERAL         = 0;
   ASIENTO_FACTURA_COMPRA  = 1;
   ASIENTO_FACTURA_VENTA   = 2;
   ASIENTO_NOMINA          = 3;
   ASIENTO_SSOCIAL_EMPRESA = 4;

type
   TConfig = record
      AppFolder           :string;
      ReportsFolder       :string;
      LoggedUser          :string;
      IdUser              :Integer;
      MaxLengthAccounts   :Integer;
      {--------------------------}
      ActiveDBName        :string;
      ActiveServerRoot    :string;
      BDEDataFolder       :string;
      {--------------------------}
      ActiveID_ENTERPRISE :Integer;
      ActiveDS_BUSINESS   :string;
      ActiveDS_ENTERPRISE :string;
      ActiveWithSurcharge :Boolean;
      ImagesFolder        :string;  {When delete this Config items, we can delete too the folder in the disk.}
      (**)ReportCurrency :string;   {This is the next candidate to be eliminated from the program}
      TipoConta          :string;
      FormatoOficial     :Boolean;
      AbortedProcess     :Boolean;
   end;

var
   Config :TConfig;
   
implementation


end.
