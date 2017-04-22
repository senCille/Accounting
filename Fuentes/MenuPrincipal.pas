unit MenuPrincipal;

interface

uses Windows, Menus, AppEvnts, ImgList, Controls, Buttons, ExtCtrls, Graphics, Classes, Forms, SysUtils,
     DB, jpeg, System.ImageList;
     
type
  TFormPrincipal = class(TForm)
    ImageList: TImageList;
    ApplicationEvents: TApplicationEvents;
    Panel1: TPanel;
    BtnCuentas: TSpeedButton;
    BtnSubCuentas: TSpeedButton;
    BtnCargaAsientos: TSpeedButton;
    BtnCargaNominas: TSpeedButton;
    BtnListadoAsientos: TSpeedButton;
    BtnListadoMayor: TSpeedButton;
    BtnCargaFacturasCompra: TSpeedButton;
    BtnCargaFacturasVenta: TSpeedButton;
    BtnCargaSimplificada: TSpeedButton;
    BtnCargaCobrosPagos: TSpeedButton;
    MenuPrincipal: TMainMenu;
    MenuItemMaestros: TMenuItem;
    MenuItemTiposDiario: TMenuItem;
    MenuItemFormasPago: TMenuItem;
    MenuItemUsuarios: TMenuItem;
    MenuItemComerciales: TMenuItem;
    MenuItemConceptos: TMenuItem;
    MenuItemProvincias: TMenuItem;
    MenuItemPaises: TMenuItem;
    MenuItemSalir: TMenuItem;
    MenuItemTitulos: TMenuItem;
    MenuItemTraspasoDatos: TMenuItem;
    MenuItemActualizacionDB: TMenuItem;
    MenuItemVentana: TMenuItem;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MenuItemGruposClick(Sender: TObject);
    procedure MenuItemProvinciasClick(Sender: TObject);
    procedure MenuItemPaisesClick(Sender: TObject);
    procedure MenuItemConceptosClick(Sender: TObject);
    procedure MenuItemUsuariosClick(Sender: TObject);
    procedure MenuItemTitulosClick(Sender: TObject);
    procedure MenuItemCuentasCuentasClick(Sender: TObject);
    procedure MenuItemSubCuentasClick(Sender: TObject);
    procedure MenuItemListadoAsientosClick(Sender: TObject);
    procedure MenuItemMayorClick(Sender: TObject);
    procedure MenuItemGeneralClick(Sender: TObject);
    procedure MenuItemRecalculoSaldosClick(Sender: TObject);
    procedure MenuItemTraspasoApuntesEntreCuentasClick(Sender: TObject);
    procedure MenuItemProcesoAutomatizadoClick(Sender: TObject);
    procedure MenuItemModelo300Click(Sender: TObject);
    procedure MenuItemLibroFacturasEmitidasClick(Sender: TObject);
    procedure MenuItemLibroFacturasRecibidasClick(Sender: TObject);
    procedure MenuItemOperacionesTerceros347Click(Sender: TObject);
    procedure MenuItemSumasYSaldosClick(Sender: TObject);
    procedure MenuItemSituacionClick(Sender: TObject);
    procedure MenuItemPerdidasYGananciasClick(Sender: TObject);
    procedure MenuItemFacturasCompraClick(Sender: TObject);
    procedure MenuItemCargaSimplificadaClick(Sender: TObject);
    procedure MenuItemCargaAsientosClick(Sender: TObject);
    procedure MenuItemTraspasoDatosClick(Sender: TObject);
    procedure MenuItemBorradoGeneralAsientosClick(Sender: TObject);
    procedure MenuItemPunteoAutomaticoAsientos(Sender: TObject);
    procedure MenuItemAmortizacionesClick(Sender: TObject);
    procedure MenuItemCarteraEfectosClick(Sender: TObject);
    procedure MenuItemCuentasAnaliticasClick(Sender: TObject);
    procedure MenuItemControlEmpresasClick(Sender: TObject);
    procedure MenuItemLibroFacturasBienesInversion(Sender: TObject);
    procedure MenuItemOperacionesCEEClick(Sender: TObject);
    procedure MenuItemEnlaceContableClick(Sender: TObject);
    procedure MenuItemFacturasVentaClick(Sender: TObject);
    procedure MenuItemNominasClick(Sender: TObject);
    procedure MenuItemIRPF110Click(Sender: TObject);
    procedure MenuItemImpuestoSociedades202Click(Sender: TObject);
    procedure MenuItemCopiaAsientosEntreEmpresas(Sender: TObject);
    procedure MenuItemAcumuladosClick(Sender: TObject);
    procedure MenuItemExplotacionClick(Sender: TObject);
    procedure MenuItemTiposDiarioClick(Sender: TObject);
    procedure MenuItemComercialesClick(Sender: TObject);
    procedure MenuItemDelegacionesClick(Sender: TObject);
    procedure MenuItemDepartamentosClick(Sender: TObject);
    procedure MenuItemSeccionesClick(Sender: TObject);
    procedure MenuItemProyectosClick(Sender: TObject);
    procedure MenuItemFormasPagoClick(Sender: TObject);
    procedure MenuItemIRPF115Click(Sender: TObject);
    procedure MenuItemImpresionPlanContableClick(Sender: TObject);
    procedure MenuItemImpresionPlanAnaliticaClick(Sender: TObject);
    procedure MenuItemCobrosPagosClick(Sender: TObject);
    procedure MenuItemFacturacionClick(Sender: TObject);
    procedure MenuItemImportacionClick(Sender: TObject);
    procedure MenuItemSalirClick(Sender: TObject);
    procedure MenuItemActualizacionDBClick(Sender: TObject);
    procedure MenuItemAcercaDeClick(Sender: TObject);
    procedure MenuItemContabilidadClick(Sender: TObject);
   private
   public
     RejillaActiva :Word;
   end;

var FormPrincipal   :TFormPrincipal;
    totalPaginas :Double;

implementation

uses Dialogs, General, Globales, DM, DMConta, DMControl, Registry, UtilesMDIForms,
     IBX.IB, ShellApi, UAmortizaciones, UAnaliticas, UBalAcumulados, UBalExplotacion, UBorradoDiario,
     UCargaApuntes, UCargaCobrosPagos, UCargaRapidaFacturas, UCargaRapidaNominas, UCarteraEfectos,
     UCierreEjercicio, UComerciales, UConceptos, UCopiaAsientos, UCuentas, UDelegaciones, UDepartamentos,
     UDiario, UEmpresas, UEnlaceContable, UEspere, UFiltro347, UFiltroBalances, UFiltroLibroFacturasEmitidas,
     UFiltroListadosAsientos, UFiltroListadosMayor, UFiltroSitPgGg, UFormasPago, UGrupos, UImportacion,
     UIrpf110, UIrpf115, UISoc202, Login, UPaises, UParametrizacion, UParametrizacionFacturacion,
     UPlanAnalico, UPlanContable, Proyectos, UPunteoDiario, URecalculoSaldos,
     USecciones, USubCuentas, UTiposDiario, UTitulos, UTraspasoApuntes, UTraspasoDatos, UUsuarios,
     Splash, UActualizacionBD;
     
{$R *.DFM}

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
   Config.AppFolder    := ExtractFilePath(Application.ExeName);
   if not DirectoryExists(Config.ImagesFolder) then begin
      raise Exception.Create('No existe el directorio : '+Config.ImagesFolder);
   end;

   if DMControlRef.QControlPEDIR_CLAVE.AsString <> 'N' then begin
      if not TFormLogin.MuestraModal then Application.Terminate;
      try FormSplash := TFormSplash.Create(nil);
          FormSplash.ActivarTemporizador;
          FormSplash.ShowModal;
          FormSplash.Update;
      finally FormSplash.Free;
      end;
   end;

   WindowState := wsMaximized;

   { Este valor indica a AbrirEmpresa un modo de funcionamiento. }
   DMControlRef.AbrirEmpresa(Config.ActiveID_ENTERPRISE);
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
   Self.Caption := Space(15) + Config.ActiveDS_ENTERPRISE + Space(15) + '-' + space(5) +
      'senCille ACCOUNTING SMEs Ver 0.0 -alfa-';
end;

procedure TFormPrincipal.ApplicationEventsException(Sender: TObject; E: Exception);
var Mensaje  :string;
    Busca    :string;
    Posicion :Cardinal;
    M        :Char;
    B        :Char;
begin
   if E is EInOutError then begin
      Config.AbortedProcess := True;
   end
   else begin
      Mensaje := E.Message;
      if (E is EibInterbaseError) and (EibInterbaseError(E).sqlCode = -803) then begin
         Mensaje := 'El registro que intenta introducir ya existe con ese código.';
      end;

      if (E is EibInterbaseError) and (EibInterbaseError(E).sqlCode = -836) then begin
         Busca := #10;
         M     := Mensaje[1];
         B     := Busca[1];
         //This function comes from stBase of TurboPower. Search(M, Length(Mensaje), B, Length(Busca), Posicion);
         Mensaje := Copy(Mensaje, Posicion + 2, Length(Mensaje));
      end;

      MessageDlg(Mensaje, mtInformation, [mbOK], 0);
   end;
end;

procedure TFormPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   CanClose := MessageDlg('¿Desea finalizar la aplicación?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
   if CanClose then begin
     try
        DMContaRef.Free;
        DMRef.Free;
     except
        {if there is any problem closing the Datasets, we still need exit the program}
     end;
   end;
end;

procedure TFormPrincipal.MenuItemSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFormPrincipal.MenuItemAcercaDeClick(Sender: TObject);
begin
   ShellExecute(handle, 'open', PChar('http://sencille.es'), nil, nil, SW_MAXIMIZE);
end;

procedure TFormPrincipal.MenuItemContabilidadClick(Sender: TObject);
begin
   ShellExecute(handle, 'open', PChar('http://sencille.es/ayuda/contabilidad'), nil, nil, SW_MAXIMIZE);
end;

{XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX}

procedure TFormPrincipal.MenuItemGruposClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WGRUPOS') then Exit;
   InsertMDIForm(Self, TWGrupos);
end;

procedure TFormPrincipal.MenuItemProvinciasClick(Sender: TObject);
begin
   {if not DmControlRef.AccesoUsuario(Config.IdUser, 'WPROVINCIAS') then Exit;
   InsertMDIForm(Self, TFormProvincias);}
end;

procedure TFormPrincipal.MenuItemPaisesClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WPAISES') then Exit;
   InsertMDIForm(Self, TWPaises);
end;

procedure TFormPrincipal.MenuItemConceptosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCONCEPTOS') then Exit;
   InsertMDIForm(Self, TWConceptos);
end;

procedure TFormPrincipal.MenuItemUsuariosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WUSUARIOS') then Exit;
   InsertMDIForm(Self, TWUsuarios);
end;

procedure TFormPrincipal.MenuItemTitulosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WTITULOS') then Exit;
   InsertMDIForm(Self, TWTitulos);
end;

procedure TFormPrincipal.MenuItemCuentasCuentasClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCUENTAS') then Exit;
   InsertMDIForm(Self, TWCuentas);
end;

procedure TFormPrincipal.MenuItemSubCuentasClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WSUBCUENTAS') then Exit;
   InsertMDIForm(Self, TWSubcuentas);
end;

procedure TFormPrincipal.MenuItemListadoAsientosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTROLISTADOSASIENTOS') then Exit;
   WFiltroListadosAsientos := TWFiltroListadosAsientos.Create(nil);
   try
      WFiltroListadosAsientos.TipoListado := INF_ASIENTOS;
      WFiltroListadosAsientos.ShowModal;
   finally
      FreeAndNil(WFiltroListadosAsientos);
   end;
end;

procedure TFormPrincipal.MenuItemMayorClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTROLISTADOSMAYOR') then Exit;
   WFiltroListadosMayor := TWFiltroListadosMayor.Create(nil);
   try
      WFiltroListadosMayor.TipoListado := INF_MAYOR;
      WFiltroListadosMayor.ShowModal;
   finally
      FreeAndNil(WFiltroListadosMayor);
   end;
end;

procedure TFormPrincipal.MenuItemGeneralClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WPARAMETRIZACION') then Exit;
   WParametrizacion := TWParametrizacion.Create(nil);
   try
      WParametrizacion.ShowModal;
   finally
      FreeAndNil(WParametrizacion);
   end;
end;

procedure TFormPrincipal.MenuItemFacturacionClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WPARAMETRIZACION') then Exit;
   WParametrizacionFacturacion := TWParametrizacionFacturacion.Create(nil);
   try
      WParametrizacionFacturacion.ShowModal;
   finally
      FreeAndNil(WParametrizacionFacturacion);
   end;
end;

procedure TFormPrincipal.MenuItemRecalculoSaldosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WRECALCULOSALDOS') then Exit;
   WRecalculoSaldos := TWRecalculoSaldos.Create(nil);
   try
      WRecalculoSaldos.ShowModal;
   finally
      FreeAndNil(WRecalculoSaldos);
   end;
end;

procedure TFormPrincipal.MenuItemTraspasoApuntesEntreCuentasClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WTRASPASOAPUNTES') then Exit;
   WTraspasoApuntes := TWTraspasoApuntes.Create(nil);
   try
      WTraspasoApuntes.ShowModal;
   finally
      FreeAndNil(WTraspasoApuntes);
   end;
end;

procedure TFormPrincipal.MenuItemProcesoAutomatizadoClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCIERREEJERCICIO') then Exit;
   WCierreEjercicio := TWCierreEjercicio.Create(nil);
   try
      WCierreEjercicio.ShowModal;
   finally
      FreeAndNil(WCierreEjercicio);
   end;
end;

procedure TFormPrincipal.MenuItemModelo300Click(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTROLIBROFACTEMITIDAS') then Exit;
   WFiltroLibroFactEmitidas := TWFiltroLibroFactEmitidas.Create(nil);
   try
      WFiltroLibroFactEmitidas.TipoListado := INF_MOD_300;
      WFiltroLibroFactEmitidas.ShowModal;
   finally
      WFiltroLibroFactEmitidas.Free;
   end;
end;

procedure TFormPrincipal.MenuItemLibroFacturasEmitidasClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTROLIBROFACTEMITIDAS') then Exit;
   WFiltroLibroFactEmitidas := TWFiltroLibroFactEmitidas.Create(nil);
   try
      WFiltroLibroFactEmitidas.TipoListado := INF_FACTURAS_EMITIDAS;
      WFiltroLibroFactEmitidas.ShowModal;
   finally
      WFiltroLibroFactEmitidas.Free;
   end;
end;

procedure TFormPrincipal.MenuItemLibroFacturasRecibidasClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTROLIBROFACTEMITIDAS') then Exit;
   WFiltroLibroFactEmitidas := TWFiltroLibroFactEmitidas.Create(nil);
   try
      WFiltroLibroFactEmitidas.TipoListado := INF_FACTURAS_RECIBIDAS;
      WFiltroLibroFactEmitidas.ShowModal;
   finally
      WFiltroLibroFactEmitidas.Free;
   end;
end;

procedure TFormPrincipal.MenuItemOperacionesTerceros347Click(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTRO347') then Exit;
   WFiltro347 := TWFiltro347.Create(nil);
   try
      WFiltro347.TipoListado := INF_MOD_347;
      WFiltro347.ShowModal;
   finally
      FreeAndNil(WFiltro347);
   end;
end;

procedure TFormPrincipal.MenuItemSumasYSaldosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTROBALANCES') then Exit;
   WFiltroBalances := TWFiltroBalances.Create(nil);
   try
      WFiltroBalances.TipoListado := INF_BALANCE_SUMAS_Y_SALDOS;
      WFiltroBalances.ShowModal;
   finally
      FreeAndNil(WFiltroBalances);
   end;
end;

procedure TFormPrincipal.MenuItemSituacionClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTROSITPGGG') then Exit;
   WFiltroSitPgGg := TWFiltroSitPgGg.Create(nil);
   try
      WFiltroSitPgGg.TipoListado := INF_BALANCE_SITUACION;
      WFiltroSitPgGg.ShowModal;
   finally
      FreeAndNil(WFiltroSitPgGg);
   end;
end;

procedure TFormPrincipal.MenuItemPerdidasYGananciasClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTROSITPGGG') then Exit;
   WFiltroSitPgGg := TWFiltroSitPgGg.Create(nil);
   try
      WFiltroSitPgGg.TipoListado := INF_BALANCE_PERDIDAS_Y_GANANCIAS;
      WFiltroSitPgGg.ShowModal;
   finally
      FreeAndNil(WFiltroSitPgGg);
   end;
end;

procedure TFormPrincipal.MenuItemFacturasCompraClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCARGARAPIDAFACTURAS') then Exit;
   WCargaRapidaFacturas := TWCargaRapidaFacturas.Create(nil);
   try
      WCargaRapidaFacturas.TipoCarga := CARGA_FACTURAS_COMPRA;
      WCargaRapidaFacturas.ShowModal;
   finally
      FreeAndNil(WCargaRapidaFacturas);
   end;
end;

procedure TFormPrincipal.MenuItemCargaSimplificadaClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCARGAAPUNTES') then Exit;
   WCargaApuntes := TWCargaApuntes.Create(nil);
   try
      WCargaApuntes.ShowModal;
   finally
      FreeAndNil(WCargaApuntes);
   end;
end;

procedure TFormPrincipal.MenuItemCargaAsientosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WDIARIO') then Exit;
   InsertMDIForm(Self, TWDiario);
end;

procedure TFormPrincipal.MenuItemTraspasoDatosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WTRASPASODATOS') then Exit;
   WTraspasoDatos := TWTraspasoDatos.Create(nil);
   try
      WTraspasoDatos.ShowModal;
   finally
      FreeAndNil(WTraspasoDatos);
   end;
end;

procedure TFormPrincipal.MenuItemBorradoGeneralAsientosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WBORRADODIARIO') then Exit;
   WBorradoDiario := TWBorradoDiario.Create(nil);
   try
      WBorradoDiario.ShowModal;
   finally
      FreeAndNil(WBorradoDiario);
   end;
end;

procedure TFormPrincipal.MenuItemPunteoAutomaticoAsientos(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WPUNTEODIARIO') then Exit;
   WPunteoDiario := TWPunteoDiario.Create(nil);
   try
      WPunteoDiario.ShowModal;
   finally
      FreeAndNil(WPunteoDiario);
   end;
end;

procedure TFormPrincipal.MenuItemAmortizacionesClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WAMORTIZACIONES') then Exit;
   WAmortizaciones := TWAmortizaciones.Create(nil);
   try
      WAmortizaciones.ShowModal;
   finally
      FreeAndNil(WAmortizaciones);
   end;
end;

procedure TFormPrincipal.MenuItemCarteraEfectosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCARTERAEFECTOS') then Exit;
   InsertMDIForm(Self, TWCarteraEfectos); {No está probado aún}
   //if not Assigned(WCarteraEfectos) then WCarteraEfectos := TWCarteraEfectos.Create(nil);
   //WCarteraEfectos.Show;
end;

procedure TFormPrincipal.MenuItemCuentasAnaliticasClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WANALITICAS') then Exit;
   InsertMDIForm(Self, TWAnaliticas);
end;

procedure TFormPrincipal.MenuItemControlEmpresasClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WEMPRESAS') then Exit;
   WEmpresas := TWEmpresas.Create(nil);
   try
      WEmpresas.ShowModal;
      FormShow(Self); {To change the caption of the program window}
   finally
      FreeAndNil(WEmpresas);
   end;
end;

procedure TFormPrincipal.MenuItemLibroFacturasBienesInversion(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTROLIBROFACTEMITIDAS') then Exit;
   WFiltroLibroFactEmitidas := TWFiltroLibroFactEmitidas.Create(nil);
   try
      WFiltroLibroFactEmitidas.TipoListado := INF_FACTURAS_BIENES;
      WFiltroLibroFactEmitidas.ShowModal;
   finally
      WFiltroLibroFactEmitidas.Free;
   end;
end;

procedure TFormPrincipal.MenuItemOperacionesCEEClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFILTRO347') then Exit;
   WFiltro347 := TWFiltro347.Create(nil);
   try
      WFiltro347.TipoListado := INF_MOD_349;
      WFiltro347.ShowModal;
   finally
      FreeAndNil(WFiltro347);
   end;
end;

procedure TFormPrincipal.MenuItemEnlaceContableClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WENLACECONTABLE') then Exit;
   WEnlaceContable := TWEnlaceContable.Create(nil);
   try
      WEnlaceContable.ShowModal;
   finally
      FreeAndNil(WEnlaceContable);
   end;
end;

procedure TFormPrincipal.MenuItemFacturasVentaClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCARGARAPIDAFACTURAS') then Exit;
   WCargaRapidaFacturas := TWCargaRapidaFacturas.Create(nil);
   try
      WCargaRapidaFacturas.TipoCarga := CARGA_FACTURAS_VENTA;
      WCargaRapidaFacturas.ShowModal;
   finally
      WCargaRapidaFacturas.Free;
   end;
end;

procedure TFormPrincipal.MenuItemNominasClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCARGARAPIDANOMINAS') then Exit;
   WCargaRapidaNominas := TWCargaRapidaNominas.Create(nil);
   try
      WCargaRapidaNominas.ShowModal;
   finally
      FreeAndNil(WCargaRapidaNominas);
   end;
end;

procedure TFormPrincipal.MenuItemIRPF110Click(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WIRPF110') then Exit;
   WIrpf110 := TWIrpf110.Create(nil);
   try
      WIrpf110.ShowModal;
   finally
      FreeAndNil(WIrpf110);
   end;
end;

procedure TFormPrincipal.MenuItemImpuestoSociedades202Click(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WISOC202') then Exit;
   WISoc202 := TWISoc202.Create(nil);
   try
      WISoc202.ShowModal;
   finally
      WISoc202.Free;
   end;
end;

procedure TFormPrincipal.MenuItemCopiaAsientosEntreEmpresas(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCOPIAASIENTOS') then Exit;
   WCopiaAsientos := TWCopiaAsientos.Create(nil);
   try
      WCopiaAsientos.ShowModal;
   finally
      FreeAndNil(WCopiaAsientos);
   end;
end;

procedure TFormPrincipal.MenuItemAcumuladosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WBALACUMULADOS') then Exit;
   WBalAcumulados := TWBalAcumulados.Create(nil);
   try
      WBalAcumulados.ShowModal;
   finally
      WBalAcumulados.Free;
   end;
end;

procedure TFormPrincipal.MenuItemExplotacionClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WBALEXPLOTACION') then Exit;
   WBalExplotacion := TWBalExplotacion.Create(nil);
   try
      WBalExplotacion.ShowModal;
   finally
      WBalExplotacion.Free;
   end;
end;

procedure TFormPrincipal.MenuItemTiposDiarioClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WTIPOSDIARIO') then Exit;
   InsertMDIForm(Self, TWTiposDiario);
end;

procedure TFormPrincipal.MenuItemComercialesClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCOMERCIALES') then Exit;
   InsertMDIForm(Self, TWComerciales);
end;

procedure TFormPrincipal.MenuItemDelegacionesClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WDELEGACIONES') then Exit;
   InsertMDIForm(Self, TWDelegaciones);
end;

procedure TFormPrincipal.MenuItemDepartamentosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WDEPARTAMENTOS') then Exit;
   InsertMDIForm(Self, TWDepartamentos);
end;

procedure TFormPrincipal.MenuItemSeccionesClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WSECCIONES') then Exit;
   InsertMDIForm(Self, TWSecciones);
end;

procedure TFormPrincipal.MenuItemProyectosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WPROYECTOS') then Exit;
   InsertMDIForm(Self, TWProyectos);
end;

procedure TFormPrincipal.MenuItemFormasPagoClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WFORMASPAGO') then Exit;
   InsertMDIForm(Self, TWFormasPago);
end;

procedure TFormPrincipal.MenuItemIRPF115Click(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WIRPF115') then Exit;
   WIrpf115 := TWIrpf115.Create(nil);
   try
      WIrpf115.ShowModal;
   finally
      WIrpf115.Free;
   end;
end;

procedure TFormPrincipal.MenuItemImpresionPlanContableClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WPLANCONTABLE') then Exit;
   WPlanContable := TWPlanContable.Create(nil);
   WPlanContable.ShowModal;
   FreeAndNil(WPlanContable);
end;

procedure TFormPrincipal.MenuItemImpresionPlanAnaliticaClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WPLANANALITICO') then Exit;
   WPlanAnalitico := TWPlanAnalitico.Create(nil);
   WPlanAnalitico.ShowModal;
   FreeAndNil(WPlanAnalitico);
end;

procedure TFormPrincipal.MenuItemCobrosPagosClick(Sender: TObject);
begin
   if not DmControlRef.AccesoUsuario(Config.IdUser, 'WCARGACOBROSPAGOS') then Exit;
   WCargaCobrosPagos := TWCargaCobrosPagos.Create(nil);
   try
      WCargaCobrosPagos.ShowModal;
   finally
      FreeAndNil(WCargaCobrosPagos);
   end;
end;

procedure TFormPrincipal.MenuItemImportacionClick(Sender: TObject);
begin
   WImportacion := TWImportacion.Create(nil);
   try
      WImportacion.ShowModal;
   finally
      WImportacion.Free;
   end;
end;

procedure TFormPrincipal.MenuItemActualizacionDBClick(Sender: TObject);
begin
   WActualizacionBD := TWActualizacionBD.Create(nil);
   try
      WActualizacionBD.ShowModal;
   finally
      FreeAndNil(WActualizacionBD);
   end;
end;

end.
