program scAccounting;









































































































































uses
  Vcl.Forms,
  DM in 'Fuentes\DM.pas' {DMRef: TDataModule},
  DMConta in 'Fuentes\DMConta.pas' {DMContaRef: TDataModule},
  DMControl in 'Fuentes\DMControl.pas' {DMControlRef: TDataModule},
  General in 'Fuentes\General.pas',
  Globales in 'Fuentes\Globales.pas',
  Login in 'Fuentes\Login.pas' {FormLogin},
  MenuPrincipal in 'Fuentes\MenuPrincipal.pas' {FormPrincipal},
  Proyectos in 'Fuentes\Proyectos.pas' {WProyectos},
  Splash in 'Fuentes\Splash.pas' {FormSplash},
  UActualizacionBD in 'Fuentes\UActualizacionBD.pas' {WActualizacionBD},
  UAnaliticas in 'Fuentes\UAnaliticas.pas' {WAnaliticas},
  UCierreEjercicio in 'Fuentes\UCierreEjercicio.pas' {WCierreEjercicio},
  UComerciales in 'Fuentes\UComerciales.pas' {WComerciales},
  UConceptos in 'Fuentes\UConceptos.pas' {WConceptos},
  UCuentas in 'Fuentes\UCuentas.pas' {WCuentas},
  UDelegaciones in 'Fuentes\UDelegaciones.pas' {WDelegaciones},
  UDepartamentos in 'Fuentes\UDepartamentos.pas' {WDepartamentos},
  UDetalleIVA in 'Fuentes\UDetalleIVA.pas' {WDetalleIVA},
  UEmpresas in 'Fuentes\UEmpresas.pas' {WEmpresas},
  UEnlaceContable in 'Fuentes\UEnlaceContable.pas' {WEnlaceContable},
  UEspere in 'Fuentes\UEspere.pas' {WEspere},
  UFormasPago in 'Fuentes\UFormasPago.pas' {WFormasPago},
  UGeneracionAsiento in 'Fuentes\UGeneracionAsiento.pas' {WGeneracionAsiento},
  UGrupos in 'Fuentes\UGrupos.pas' {WGrupos},
  UImportacion in 'Fuentes\UImportacion.pas' {WImportacion},
  UAmortizaciones in 'Fuentes\Amortizaciones\UAmortizaciones.pas' {WAmortizaciones},
  UAmortizacionesModel in 'Fuentes\Amortizaciones\UAmortizacionesModel.pas' {DataModuleAmortizaciones: TDataModule},
  UBalAcumulados in 'Fuentes\BalAcumulados\UBalAcumulados.pas',
  UBalAcumuladosModel in 'Fuentes\BalAcumulados\UBalAcumuladosModel.pas',
  UBalExplotacion in 'Fuentes\BalExplotacion\UBalExplotacion.pas',
  UBalExplotacionModel in 'Fuentes\BalExplotacion\UBalExplotacionModel.pas',
  UBorradoDiario in 'Fuentes\BorradoDiario\UBorradoDiario.pas',
  UBorradoDiarioModel in 'Fuentes\BorradoDiario\UBorradoDiarioModel.pas',
  UCargaApuntes in 'Fuentes\CargaApuntes\UCargaApuntes.pas',
  UCargaApuntesModel in 'Fuentes\CargaApuntes\UCargaApuntesModel.pas',
  UCargaAsiento in 'Fuentes\CargaAsientos\UCargaAsiento.pas',
  UCargaAsientoModel in 'Fuentes\CargaAsientos\UCargaAsientoModel.pas',
  UEditApunte in 'Fuentes\CargaAsientos\UEditApunte.pas',
  UCargaCobrosPagos in 'Fuentes\CargaCobrosPagos\UCargaCobrosPagos.pas',
  UCargaCobrosPagosModel in 'Fuentes\CargaCobrosPagos\UCargaCobrosPagosModel.pas',
  UCargaRapidaFacturas in 'Fuentes\CargaRapidaFacturas\UCargaRapidaFacturas.pas',
  UCargaRapidaFacturasModel in 'Fuentes\CargaRapidaFacturas\UCargaRapidaFacturasModel.pas',
  UEditLineaIVA in 'Fuentes\CargaRapidaFacturas\UEditLineaIVA.pas',
  UCargaRapidaNominas in 'Fuentes\CargaRapidaNominas\UCargaRapidaNominas.pas',
  UCargaRapidaNominasModel in 'Fuentes\CargaRapidaNominas\UCargaRapidaNominasModel.pas',
  UEditEmpleado in 'Fuentes\CargaRapidaNominas\UEditEmpleado.pas',
  UCarteraEfectos in 'Fuentes\CarteraEfectos\UCarteraEfectos.pas',
  UCarteraEfectosModel in 'Fuentes\CarteraEfectos\UCarteraEfectosModel.pas',
  UCopiaAsientos in 'Fuentes\CopiaAsientos\UCopiaAsientos.pas',
  UCopiaAsientosModel in 'Fuentes\CopiaAsientos\UCopiaAsientosModel.pas',
  UDiario in 'Fuentes\Diario\UDiario.pas',
  UDiarioModel in 'Fuentes\Diario\UDiarioModel.pas',
  UEfectosComerciales in 'Fuentes\EfectosComerciales\UEfectosComerciales.pas',
  UEfectosComercialesModel in 'Fuentes\EfectosComerciales\UEfectosComercialesModel.pas',
  UFiltro347 in 'Fuentes\Filtro347\UFiltro347.pas',
  UFiltro347Model in 'Fuentes\Filtro347\UFiltro347Model.pas',
  UFiltroBalances in 'Fuentes\FiltroBalances\UFiltroBalances.pas',
  UFiltroBalancesModel in 'Fuentes\FiltroBalances\UFiltroBalancesModel.pas',
  UFiltroLibroFacturasEmitidas in 'Fuentes\FiltroLibroFacturasEmitidas\UFiltroLibroFacturasEmitidas.pas',
  UFiltroLibroFacturasEmitidasModel in 'Fuentes\FiltroLibroFacturasEmitidas\UFiltroLibroFacturasEmitidasModel.pas',
  UFiltroMayorSubcuenta in 'Fuentes\FiltroMayorSubcuenta\UFiltroMayorSubcuenta.pas',
  UFiltroMayorSubcuentaModel in 'Fuentes\FiltroMayorSubcuenta\UFiltroMayorSubcuentaModel.pas',
  UFiltroSitPgGg in 'Fuentes\FiltroSitPgGg\UFiltroSitPgGg.pas',
  UFiltroSitPgGgModel in 'Fuentes\FiltroSitPgGg\UFiltroSitPgGgModel.pas',
  ccChildForm in 'Fuentes\icenet\ccChildForm.pas',
  ccDBIntegrity in 'Fuentes\icenet\ccDBIntegrity.pas',
  ccStr in 'Fuentes\icenet\ccStr.pas',
  CustomModel in 'Fuentes\icenet\CustomModel.pas',
  FormHandler in 'Fuentes\icenet\FormHandler.pas',
  UtilesMDIForms in 'Fuentes\icenet\UtilesMDIForms.pas',
  SQLConnect in 'Fuentes\icenet\SQLConnect.pas',
  UIrpf110 in 'Fuentes\IRPF110\UIrpf110.pas',
  UIRPF110Model in 'Fuentes\IRPF110\UIRPF110Model.pas',
  UIrpf115 in 'Fuentes\IRPF115\UIrpf115.pas',
  UIRPF115Model in 'Fuentes\IRPF115\UIRPF115Model.pas',
  UISoc202 in 'Fuentes\ISoc202\UISoc202.pas',
  UISoc202Model in 'Fuentes\ISoc202\UISoc202Model.pas',
  UIVA300 in 'Fuentes\IVA300\UIVA300.pas',
  UIVA300Model in 'Fuentes\IVA300\UIVA300Model.pas',
  UParametrizacion in 'Fuentes\Parametrizacion\UParametrizacion.pas',
  UParametrizacionModel in 'Fuentes\Parametrizacion\UParametrizacionModel.pas',
  URecalculoSaldos in 'Fuentes\RecalculoSaldos\URecalculoSaldos.pas',
  URecalculoSaldosModel in 'Fuentes\RecalculoSaldos\URecalculoSaldosModel.pas',
  UFiltroListadosAsientos in 'Fuentes\UFiltroListadosAsientos\UFiltroListadosAsientos.pas',
  UFiltroListadosAsientosModel in 'Fuentes\UFiltroListadosAsientos\UFiltroListadosAsientosModel.pas',
  UFiltroListadosMayor in 'Fuentes\UFiltroListadosMayor\UFiltroListadosMayor.pas',
  UFiltroListadosMayorModel in 'Fuentes\UFiltroListadosMayor\UFiltroListadosMayorModel.pas',
  UNuevaSubcuenta in 'Fuentes\UNuevaSubcuenta.pas',
  USituacionEfecto in 'Fuentes\USituacionEfecto.pas',
  UVencimientos in 'Fuentes\UVencimientos.pas',
  UUtilEmpresas in 'Fuentes\UUtilEmpresas.pas',
  UPaises in 'Fuentes\UPaises.pas',
  UParametrizacionFacturacion in 'Fuentes\UParametrizacionFacturacion.pas',
  UPlanAnalico in 'Fuentes\UPlanAnalico.pas',
  UPlanContable in 'Fuentes\UPlanContable.pas',
  UPunteoDiario in 'Fuentes\UPunteoDiario.pas',
  USecciones in 'Fuentes\USecciones.pas',
  USubCuentas in 'Fuentes\USubCuentas.pas',
  UTiposDiario in 'Fuentes\UTiposDiario.pas',
  UTitulos in 'Fuentes\UTitulos.pas',
  UTraspasoApuntes in 'Fuentes\UTraspasoApuntes.pas',
  UTraspasoDatos in 'Fuentes\UTraspasoDatos.pas',
  UUsuarios in 'Fuentes\UUsuarios.pas',
  Tools in 'Fuentes\icenet\Tools.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMControlRef, DMControlRef);
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
