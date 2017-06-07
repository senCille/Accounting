unit EnterpriseTools;

interface
uses SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls, Forms, Dialogs, Grids, DB,
     StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, IBX.IBDatabase, IBX.IBSQL, ComCtrls, IBX.IBServices, Vcl.ButtonGroup;

type
  TWUtilEmpresas = class(TForm)
    Datos: TGroupBox;
    Memo1: TMemo;
    FlowPanel1: TFlowPanel;
    PanelFixVATEntries: TPanel;
    StaticText1: TStaticText;
    PanelPlanContableMinimo: TPanel;
    StaticText2: TStaticText;
    PanelBottom: TPanel;
    BtnAccept: TButton;
    PanelUp: TPanel;
    lTitulo: TLabel;
    Panel1: TPanel;
    LabelEnterpriseName: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    procedure BtnAcceptClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PanelFixVATEntriesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PanelFixVATEntriesClick(Sender: TObject);
    procedure PanelPlanContableMinimoClick(Sender: TObject);
  private
  public
    cUbicacionEmpresa, cNombreServidor: String;
  end;

var WUtilEmpresas: TWUtilEmpresas;

implementation

uses System.UITypes,
     IBX.IBScript,
     DM, Globales, Processing;

{$R *.DFM}

procedure TWUtilEmpresas.BtnAcceptClick(Sender: TObject);
var InProgress       :TProcessingView;
    cUbicacionBackup :string;
    i                :Word;
    Q                :TIBSQL;
begin
   InProgress := InProgressView('');
   try
      (*case RgOperacion.ItemIndex of
         0: InProgress.Text := 'Exportando Base Datos ...';
         1: InProgress.Text := 'Importando Base Datos ...';
         2: InProgress.Text := 'Reorganización Base Datos ...';
         3:begin
            InProgress.Text := 'Plan contable mínimo ...';
         end;
         4: InProgress.Text := 'Actualización Base Datos ...';
      end;*)
   finally
      InProgress.Free;
   end;
end;

procedure TWUtilEmpresas.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnAccept.Click;
      end;
   end;
end;


procedure TWUtilEmpresas.PanelFixVATEntriesClick(Sender: TObject);
begin
   ShowMessage('PanelFixVATEntries Clicked');
end;

procedure TWUtilEmpresas.PanelFixVATEntriesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   PanelFixVATEntries.BevelOuter      := bvLowered;
   PanelPlanContableMinimo.BevelOuter := bvLowered;

   if Sender = PanelFixVATEntries      then PanelFixVATEntries.BevelOuter      := bvRaised;
   if Sender = PanelPlanContableMinimo then PanelPlanContableMinimo.BevelOuter := bvRaised;
end;

procedure TWUtilEmpresas.PanelPlanContableMinimoClick(Sender: TObject);
var Script :TIBScript;
begin
   {Plan Contable Mínimo}
   if MessageDlg('¿Esta seguro de dejar la empresa con Plan Contable mínimo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
   Script := TIBScript.Create(nil);
   try
      Script.Database := DMRef.BDContab;
      Script.Script.Add('/* Deactivate Triggers  */                                ');
      Script.Script.Add('UPDATE rdb$triggers SET rdb$trigger_inactive = 1          ');
      Script.Script.Add('WHERE UPPER(rdb$relation_name)=''DIARIO'';                ');
      Script.Script.Add('                                                          ');
      Script.Script.Add('DELETE FROM DIARIO;                                       ');
      Script.Script.Add('                                                          ');
      Script.Script.Add('/* Activate again the triggers  */                        ');
      Script.Script.Add('UPDATE rdb$triggers SET rdb$trigger_inactive = 0          ');
      Script.Script.Add('WHERE UPPER(rdb$relation_name)=''DIARIO'';                ');
      Script.Script.Add('                                                          ');
      Script.Script.Add('DELETE FROM CARTERAEFECTOS;                               ');
      Script.Script.Add('DELETE FROM AMORTIZA;                                     ');
      Script.Script.Add('                                                          ');
      Script.Script.Add('/* Reset Sales and Acumulates of accounts */              ');
      Script.Script.Add('UPDATE CUENTAS                                            ');
      Script.Script.Add('SET SUMADB=0, SUMAHB=0,                                   ');
      Script.Script.Add('    ACUDB01 = 0, ACUDB02 = 0, ACUDB03 = 0, ACUDB04 = 0,   ');
      Script.Script.Add('    ACUDB05 = 0, ACUDB06 = 0, ACUDB07 = 0, ACUDB08 = 0,   ');
      Script.Script.Add('    ACUDB09 = 0, ACUDB10 = 0, ACUDB11 = 0, ACUDB12 = 0,   ');
      Script.Script.Add('    ACUHB01 = 0, ACUHB02 = 0, ACUHB03 = 0, ACUHB04 = 0,   ');
      Script.Script.Add('    ACUHB05 = 0, ACUHB06 = 0, ACUHB07 = 0, ACUHB08 = 0,   ');
      Script.Script.Add('    ACUHB09 = 0, ACUHB10 = 0, ACUHB11 = 0, ACUHB12 = 0,   ');
      Script.Script.Add('    ANTDB = 0, ANTHB = 0,                                 ');
      Script.Script.Add('    ANTDB01 = 0, ANTDB02 = 0, ANTDB03 = 0, ANTDB04 = 0,   ');
      Script.Script.Add('    ANTDB05 = 0, ANTDB06 = 0, ANTDB07 = 0, ANTDB08 = 0,   ');
      Script.Script.Add('    ANTDB09 = 0, ANTDB10 = 0, ANTDB11 = 0, ANTDB12 = 0,   ');
      Script.Script.Add('    ANTHB01 = 0, ANTHB02 = 0, ANTHB03 = 0, ANTHB04 = 0,   ');
      Script.Script.Add('    ANTHB05 = 0, ANTHB06 = 0, ANTHB07 = 0, ANTHB08 = 0,   ');
      Script.Script.Add('    ANTHB09 = 0, ANTHB10 = 0, ANTHB11 = 0, ANTHB12 = 0;   ');
      Script.Script.Add('                                                          ');
      Script.Script.Add('/* Reset Sales of Accounts */                             ');
      Script.Script.Add('UPDATE SUBCTAS                                            ');
      Script.Script.Add('SET SUMADB = 0, SUMAHB = 0,                               ');
      Script.Script.Add('    ACUDB01 = 0, ACUDB02 = 0, ACUDB03 = 0, ACUDB04 = 0,   ');
      Script.Script.Add('    ACUDB05 = 0, ACUDB06 = 0, ACUDB07 = 0, ACUDB08 = 0,   ');
      Script.Script.Add('    ACUDB09 = 0, ACUDB10 = 0, ACUDB11 = 0, ACUDB12 = 0,   ');
      Script.Script.Add('    ACUHB01 = 0, ACUHB02 = 0, ACUHB03 = 0, ACUHB04 = 0,   ');
      Script.Script.Add('    ACUHB05 = 0, ACUHB06 = 0, ACUHB07 = 0, ACUHB08 = 0,   ');
      Script.Script.Add('    ACUHB09 = 0, ACUHB10 = 0, ACUHB11 = 0, ACUHB12 = 0,   ');
      Script.Script.Add('    ANTDB = 0, ANTHB = 0,                                 ');
      Script.Script.Add('    ANTDB01 = 0, ANTDB02 = 0, ANTDB03 = 0, ANTDB04 = 0,   ');
      Script.Script.Add('    ANTDB05 = 0, ANTDB06 = 0, ANTDB07 = 0, ANTDB08 = 0,   ');
      Script.Script.Add('    ANTDB09 = 0, ANTDB10 = 0, ANTDB11 = 0, ANTDB12 = 0,   ');
      Script.Script.Add('    ANTHB01 = 0, ANTHB02 = 0, ANTHB03 = 0, ANTHB04 = 0,   ');
      Script.Script.Add('    ANTHB05 = 0, ANTHB06 = 0, ANTHB07 = 0, ANTHB08 = 0,   ');
      Script.Script.Add('    ANTHB09 = 0, ANTHB10 = 0, ANTHB11 = 0, ANTHB12 = 0,   ');
      Script.Script.Add('    PRES01 = 0, PRES02 = 0, PRES03 = 0, PRES04 = 0,       ');
      Script.Script.Add('    PRES05 = 0, PRES06 = 0, PRES07 = 0, PRES08 = 0,       ');
      Script.Script.Add('    PRES09 = 0, PRES10 = 0, PRES11 = 0, PRES12 = 0,       ');
      Script.Script.Add('    PRESTOT = 0;                                          ');
      Script.ExecuteScript;
   finally
      Script.Free;
   end;
   MessageDlg('Plan contable mínimo finalizado correctamente', mtInformation, [mbOK], 0);
end;

end.
