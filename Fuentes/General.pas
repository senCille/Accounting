unit General;

interface

uses Buttons, Classes, ComCtrls, Controls, db, dbCtrls, Forms,
     IBX.IBCustomDataSet, StdCtrls, SysUtils;

type TModo        = (Naveg, Edita);
     TTipoMensaje = (UnBoton, DosBotones);

var MascaraImportes, MascaraImportesORPHEUS :string;

procedure PonerTipoConta(TipoConcepto: String);
procedure ActivarTransacciones(Ventana: TForm);
//procedure CargaImagenesMensaje(Mensaje: TMensaje);
//procedure CentrarPara1024(Ventana: TForm);

//procedure Modo(F :TForm; Modo :TModo);

procedure QueryRefresh(Query: TIBDataSet );
procedure QueryOpen(Query: TIBDataSet ; Select: string); 
//function RoundToDecimal(Value :Extended; Places :Integer; Bankers :Boolean):Extended;

  {-Rounds a real value to the specified number of decimal places}
{--- Funciones de clipper ---}
function Empty(prmCadena :string):Boolean;
function Year (prmDate :TDateTime):Integer;
function Month(prmDate :TDateTime):Integer;
function Day  (prmDate :TDateTime):Integer;
function Replicate(prmChar :Char; prmLength :Integer):string;
function PadR(prmString :string; prmLength :Integer):string;
function Space(prmLength :Integer):string;

function CMonth(prmDate :TDateTime):string;

implementation

uses Globales, IBX.IBDataBase, IBX.IBQuery, Math, Graphics, TypInfo, DM;


const gcClNaveg   = $00FFFCEA;
      gcclRejilla = $00EDFBFC;
      gcClRejillaDesplegable = $00D9D1C0;
      gcClFuente  = $00A93F3F;

procedure ActivarTransacciones(Ventana :TForm);
var i :Word;
begin
   for i := 0 to (Ventana.ComponentCount - 1) do begin
      if (Ventana.Components[i] is TibTransaction) then begin
         TibTransaction(Ventana.Components[i]).Active := False;
         TibTransaction(Ventana.Components[i]).Params.Clear;
         TibTransaction(Ventana.Components[i]).Params.Add('Read_committed');
         TibTransaction(Ventana.Components[i]).Params.Add('Rec_version');
         TibTransaction(Ventana.Components[i]).Params.Add('Write');
         {Next block was be added after change the name of the Database Component}
         if (TibTransaction(Ventana.Components[i]).DefaultDatabase = nil) then begin
           TibTransaction(Ventana.Components[i]).DefaultDatabase := DMRef.BDContab;
         end;
         TibTransaction(Ventana.Components[i]).Active := True;
      end;
   end;
end;

(*procedure CargaImagenesMensaje(Mensaje: TMensaje);
begin
   Mensaje.Imagenes.Fondo     := gvDirImagenes + 'FormErrores.bmp';
   Mensaje.Imagenes.Si_Arriba := gvDirImagenes + gcMnsBtnSi_Arriba;
   Mensaje.Imagenes.No_Arriba := gvDirImagenes + gcMnsBtnNo_Arriba;
   Mensaje.Imagenes.Ok_Arriba := gvDirImagenes + gcMnsBtnOk_Arriba;
end;*)

(*procedure CentrarPara1024;
begin
   Ventana.SetBounds(100, 125, Ventana.Width, Ventana.Height);
end;*)

procedure QueryRefresh(Query: TIBDataSet);
begin
   Query.Close;
   Query.Open;
end;

(*procedure Modo(F :TForm; Modo :TModo);
var i, j: Integer;
begin
   if F <> nil then begin
      case Modo of
         Edita: begin
            for i := 0 to (F.ComponentCount - 1) do begin
               if (F.Components[i] is TGroupBox) then begin
                  if UpperCase(Copy(TGroupBox(F.Components[i]).Name, 1, 6)) = 'FILTRO' then begin
                     TGroupBox(F.Components[i]).Cursor  := crNo;
                     TGroupBox(F.Components[i]).Enabled := False;
                  end;
               end else
               if (F.Components[i] is Tfctreeview) then begin
                  Tfctreeview(F.Components[i]).Color := clWhite;
               end else
               if (F.Components[i] is TSpeedButton) and
                  (UpperCase(Copy(TSpeedButton(F.Components[i]).Name, 1, 4)) <> 'PERM') then begin
                  TSpeedButton(F.Components[i]).Visible := False;
               end else
               if (F.Components[i] is TovcDbPictureField) then begin
                  if (UpperCase(Copy(TovcDbPictureField(F.Components[i]).Name, 1, 6)) <> 'FILTRO') then begin
                     TovcDbPictureField(F.Components[i]).Cursor     := crHandPoint;
                     TovcDbPictureField(F.Components[i]).Color      := clWhite;
                     TovcDbPictureField(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               {if (F.Components[i] is TDBEdit) then begin
                  if (UpperCase(Copy(TDBEdit(F.Components[i]).Name, 1, 6)) <> 'FILTRO') then begin
                     TDBEdit(F.Components[i]).Enabled    := False;
                     //TDBEdit(F.Components[i]).Font.Color := clBlack;
                  end;
               end else}
               if (F.Components[i] is TOvcNoteBook) then begin
                  for j := 0 to (TOvcNoteBook(F.Components[i]).PageCount - 1) do begin
                     TOvcNoteBook(F.Components[i]).Pages[j].PageVisible := TOvcNoteBook(F.Components[i]).Pages[j].Tag = 1;
                  end;
               end else
               if (F.Components[i] is TovcDbNumericField) then begin
                  if UpperCase(Copy(TovcDbNumericField(F.Components[i]).Name, 1, 6)) <>
                     'FILTRO' then begin
                     TovcDbNumericField(F.Components[i]).Cursor     := crHandPoint;
                     TovcDbNumericField(F.Components[i]).Color      := clWhite;
                     TovcDbNumericField(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               if (F.Components[i] is TovcDbSimpleField) then begin
                  if UpperCase(Copy(TovcDbSimpleField(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TovcDbSimpleField(F.Components[i]).Cursor     := crHandPoint;
                     TovcDbSimpleField(F.Components[i]).Color      := clWhite;
                     TovcDbSimpleField(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               if (F.Components[i] is TwwDBEdit) then begin
                  if Copy(TwwDBEdit(F.Components[i]).Name, 1, 8) = 'EditNEdt' then begin
                     TwwDBEdit(F.Components[i]).Visible := True;
                  end;
                  if UpperCase(Copy(TwwDBEdit(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TwwDBEdit(F.Components[i]).Cursor     := crHandPoint;
                     TwwDBEdit(F.Components[i]).Color      := clWhite;
                     TwwDBEdit(F.Components[i]).Font.Color := clBlack;
                  end;
               end
               else
               {if (F.Components[i] is TDBEdit) then begin
                  if UpperCase(Copy(TDBEdit(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TDBEdit(F.Components[i]).Cursor     := crHandPoint;
                     TDBEdit(F.Components[i]).Color      := clWhite;
                     TDBEdit(F.Components[i]).Font.Color := clBlack;
                  end;
               end else}
               if (F.Components[i] is TwwDBSpinEdit) then begin
                  TwwDBSpinEdit(F.Components[i]).Cursor     := crHandPoint;
                  TwwDBSpinEdit(F.Components[i]).Color      := clWhite;
                  TwwDBSpinEdit(F.Components[i]).Font.Color := clBlack;
               end else
               if (F.Components[i] is TwwDBLookUpCombo) then begin
                  if Copy(TwwDBLookupCombo(F.Components[i]).Name, 1, 8) = 'ComboEdt' then begin
                     TwwDBLookupCombo(F.Components[i]).Visible := True;
                  end;
                  if UpperCase(Copy(TwwDBLookUpCombo(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TwwDBLookupCombo(F.Components[i]).Cursor          := crHandPoint;
                     TwwDBLookupCombo(F.Components[i]).Color           := clWhite;
                     TwwDBLookupCombo(F.Components[i]).Grid.Color      := clWhite;
                     TwwDBLookupCombo(F.Components[i]).Font.Color      := clBlack;
                     TwwDBLookupCombo(F.Components[i]).Grid.Font.Color := clBlack;
                  end;
               end else
               if (F.Components[i] is TOvcPrinterComboBox) then begin
                  if UpperCase(Copy(TOvcPrinterComboBox(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TOvcPrinterComboBox(F.Components[i]).Cursor       := crHandPoint;
                     TOvcPrinterComboBox(F.Components[i]).Color        := clWhite;
                     TOvcPrinterComboBox(F.Components[i]).Font.Color   := clBlack;
                     TOvcPrinterComboBox(F.Components[i]).MRUListColor := clWhite;
                     TOvcPrinterComboBox(F.Components[i]).Enabled      := True;
                  end;
               end else
               if (F.Components[i] is TwwDBDateTimePicker) then begin
                  if UpperCase(Copy(TwwDBDateTimePicker(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TwwDBDateTimePicker(F.Components[i]).Cursor     := crHandPoint;
                     TwwDBDateTimePicker(F.Components[i]).Color      := clWhite;
                     TwwDBDateTimePicker(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               if (F.Components[i] is TOvcDBDateEdit) then begin
                  if UpperCase(Copy(TOvcDBDateEdit(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TOvcDBDateEdit(F.Components[i]).Cursor     := crHandPoint;
                     TOvcDBDateEdit(F.Components[i]).Color      := clWhite;
                     TOvcDBDateEdit(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               if (F.Components[i] is TwwDBLookUpComboDlg) then begin
                  if Copy(TwwDBLookupComboDlg(F.Components[i]).Name, 1, 8) = 'ComboEdt' then begin
                     TwwDBLookupComboDlg(F.Components[i]).Visible := True;
                  end;
                  if UpperCase(Copy(TwwDBLookUpComboDlg(F.Components[i]).Name, 1, 6)) <>
                     'FILTRO' then begin
                     TwwDBLookupComboDlg(F.Components[i]).Cursor          := crHandPoint;
                     TwwDBLookupComboDlg(F.Components[i]).Color           := clWhite;
                     TwwDBLookupComboDlg(F.Components[i]).Grid.Color      := clWhite;
                     TwwDBLookupComboDlg(F.Components[i]).Font.Color      := clBlack;
                     TwwDBLookupComboDlg(F.Components[i]).Grid.Font.Color := clBlack;
                     TwwDBLookUpComboDlg(F.Components[i]).AutoDropDown    := True;
                     TwwDBLookUpComboDlg(F.Components[i]).ShowButton      := True;
                  end;
               end else
               if (F.Components[i] is TwwDBComboBox) then begin
                  if Copy(TwwDBComboBox(F.Components[i]).Name, 1, 8) = 'ComboEdt' then begin
                     TwwDBComboBox(F.Components[i]).Visible := True;
                  end;
                  TwwDBComboBox(F.Components[i]).Cursor     := crHandPoint;
                  TwwDBComboBox(F.Components[i]).Color      := clWhite;
                  TwwDBComboBox(F.Components[i]).Font.Color := clBlack;
               end else
               if (F.Components[i] is TDBCheckBox) then begin
                  TDBCheckBox(F.Components[i]).Cursor := crHandPoint;
               end
               else
               if (F.Components[i] is TwwDBRichEdit) then begin
                  TwwDBRichEdit(F.Components[i]).Cursor     := crHandPoint;
                  TwwDBRichEdit(F.Components[i]).Color      := clWhite;
                  TwwDBRichEdit(F.Components[i]).Font.Color := clBlack;
               end
               else
               if (F.Components[i] is TDBMemo) then begin
                  TDBMemo(F.Components[i]).Cursor     := crHandPoint;
                  TDBMemo(F.Components[i]).Color      := clWhite;
                  TDBMemo(F.Components[i]).Font.Color := clBlack;
               end
               else
               //=========================
                     {IF (Components[i] IS TEsMenuButton) THEN BEGIN
                        IF Copy(TEsMenuButton(Components[i]).Name,1,6) = 'BtnEdt'
                           THEN TEsMenuButton(Components[i]).Visible := True
                           ELSE TEsMenuButton(Components[i]).Visible := False;
                     END ELSE}
               if (F.Components[i] is TLabel) then begin
                  if Copy(TLabel(F.Components[i]).Name, 1, 5) = 'LbNav' then begin
                     TLabel(F.Components[i]).Visible := False;
                  end;
                  if Copy(TLabel(F.Components[i]).Name, 1, 8) = 'LabelEdt' then begin
                     TLabel(F.Components[i]).Visible := True;
                  end;
               end else
               if (F.Components[i] is TCheckBox) then begin
                  if Copy(TCheckBox(F.Components[i]).Name, 1, 5) = 'CbNav' then begin
                     TCheckBox(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TAnimate) then begin
                  if Copy(TAnimate(F.Components[i]).Name, 1, 3) = 'Nav' then begin
                     TAnimate(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TfcImageBtn) then begin
                  if Copy(TfcImageBtn(F.Components[i]).Name, 1, 7) = 'BtnPerm' then begin
                     TfcImageBtn(F.Components[i]).Visible := True;
                  end else
                  if Copy(TfcImageBtn(F.Components[i]).Name, 1, 6) = 'BtnNav' then begin
                     TfcImageBtn(F.Components[i]).Visible := False;
                  end else
                  if Copy(TfcImageBtn(F.Components[i]).Name, 1, 6) = 'BtnEdt' then begin
                     TfcImageBtn(F.Components[i]).Visible := True;
                  end
                  else begin
                     TfcImageBtn(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TDBNavegadorNotarios) then begin
                  TDBNavegadorNotarios(F.Components[i]).Visible := False;
               end
               else
               if (F.Components[i] is TwwIncrementalSearch) then begin
                  TwwIncrementalSearch(F.Components[i]).Enabled := False;
                  TwwIncrementalSearch(F.Components[i]).Color   := $00C7C0AB;
               end else
               if (F.Components[i] is TwwDBGrid) then begin
                  if (Copy(TwwDBGrid(F.Components[i]).Name, 1, 7) = 'GridEdt') or
                     (Copy(TwwDBGrid(F.Components[i]).Name, 1, 8) = 'GridPerm') then begin
                     TwwDBGrid(F.Components[i]).Enabled         := True;
                     TwwDBGrid(F.Components[i]).Color           := gcClRejilla;
                     TwwDBGrid(F.Components[i]).Font.Color      := gcClFuente;
                     TwwDBGrid(F.Components[i]).FooterCellColor := gcClRejilla;
                  end
                  else begin
                     TwwDBGrid(F.Components[i]).Enabled := False;
                     TwwDBGrid(F.Components[i]).Color   := $00C7C0AB;
                  end;
               end else
               if (F.Components[i] is TwwKeyCombo) then begin
                  TwwKeyCombo(F.Components[i]).Enabled := False;
                  TwwKeyCombo(F.Components[i]).Color   := $00C7C0AB;
               end;
            end;
         end;
         //========================================================================================
         Naveg: begin
            for i := 0 to (F.ComponentCount - 1) do begin
               if (F.Components[i] is TGroupBox) then   begin
                  if UpperCase(Copy(TGroupBox(F.Components[i]).Name, 1, 6)) = 'FILTRO' then begin
                     TGroupBox(F.Components[i]).Cursor  := crHandPoint;
                     TGroupBox(F.Components[i]).Enabled := True;
                  end;
               end;
               if (F.Components[i] is TfcTreeView) then begin
                  Tfctreeview(F.Components[i]).Color := clInfoBk;
               end else
               if (F.Components[i] is TSpeedButton) then begin
                  TSpeedButton(F.Components[i]).Visible := True;
               end else
               if (F.Components[i] is TwwDBEdit) then begin
                  if (UpperCase(Copy(TwwDBEdit(F.Components[i]).Name, 1, 6)) <> 'FILTRO') and
                     (UpperCase(Copy(TwwDBEdit(F.Components[i]).Name, 1, 5)) <> 'EPERM') then begin
                     TwwDBEdit(F.Components[i]).Cursor     := crNo;
                     TwwDBEdit(F.Components[i]).Color      := gcClNaveg;
                     TwwDBEdit(F.Components[i]).Font.Color := clBlack;
                  end;
                  if Copy(TwwDBEdit(F.Components[i]).Name, 1, 8) = 'EditNEdt' then begin
                     TwwDBEdit(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TwwDBDateTimePicker) then begin
                  if (UpperCase(Copy(TwwDBDateTimePicker(F.Components[i]).Name, 1, 6)) <> 'FILTRO') and (UpperCase(
                     Copy(TwwDBDateTimePicker(F.Components[i]).Name, 1, 5)) <> 'EPERM') then begin
                     TwwDBDateTimePicker(F.Components[i]).Cursor     := crNo;
                     TwwDBDateTimePicker(F.Components[i]).Color      := gcClNaveg;
                     TwwDBDateTimePicker(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               {if (F.Components[i] is TDBEdit) then begin
                  if (UpperCase(Copy(TDBEdit(F.Components[i]).Name, 1, 6)) <> 'FILTRO') and
                     (UpperCase(Copy(TDBEdit(F.Components[i]).Name, 1, 5)) <> 'EPERM') then begin
                     TDBEdit(F.Components[i]).Cursor     := crNo;
                     TDBEdit(F.Components[i]).Color      := gcClNaveg;
                     TDBEdit(F.Components[i]).Font.Color := clBlack;
                  end;
               end else}
               if (F.Components[i] is TOvcNoteBook) then begin
                  for j := 0 to (TOvcNoteBook(F.Components[i]).PageCount - 1) do begin
                     TOvcNoteBook(F.Components[i]).Pages[j].PageVisible :=
                        TOvcNoteBook(F.Components[i]).Pages[j].Name <> 'PageOculta';
                  end;
               end else
               if (F.Components[i] is TOvcDbPictureField) then begin
                  if (UpperCase(Copy(TOvcDbPictureField(F.Components[i]).Name, 1, 6)) <> 'FILTRO') and (UpperCase(
                     Copy(TOvcDbPictureField(F.Components[i]).Name, 1, 5)) <> 'EPERM') then begin
                     TOvcDbPictureField(F.Components[i]).Cursor     := crNo;
                     TOvcDbPictureField(F.Components[i]).Color      := gcClNaveg;
                     TOvcDbPictureField(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               {if (F.Components[i] is TDBEdit) then begin
                  if (UpperCase(Copy(TDBEdit(F.Components[i]).Name, 1, 6)) <> 'FILTRO') and
                     (UpperCase(Copy(TDBEdit(F.Components[i]).Name, 1, 5)) <> 'EPERM') then begin
                     TDBEdit(F.Components[i]).Enabled     := True;
                  end;
               end else}
               if (F.Components[i] is TOvcDbNumericField) then begin
                  if (UpperCase(Copy(TOvcDbNumericField(F.Components[i]).Name, 1, 6)) <>
                     'FILTRO') and (UpperCase(
                     Copy(TOvcDbNumericField(F.Components[i]).Name, 1, 5)) <> 'EPERM') then begin
                     TOvcDbNumericField(F.Components[i]).Cursor     := crNo;
                     TOvcDbNumericField(F.Components[i]).Color      := gcClNaveg;
                     TOvcDbNumericField(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               if (F.Components[i] is TOvcDbSimpleField) then begin
                  if UpperCase(Copy(TOvcDBSimpleField(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TOvcDbSimpleField(F.Components[i]).Cursor     := crNo;
                     TOvcDbSimpleField(F.Components[i]).Color      := gcClNaveg;
                     TOvcDbSimpleField(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               if (F.Components[i] is TwwDBLookupCombo) then begin
                  if (UpperCase(Copy(TwwDBLookUpCombo(F.Components[i]).Name, 1, 6)) <> 'FILTRO') and (UpperCase(
                     Copy(TwwDBLookUpCombo(F.Components[i]).Name, 1, 5)) <> 'EPERM') then begin
                     TwwDBLookupCombo(F.Components[i]).Cursor          := crNo;
                     TwwDBLookupCombo(F.Components[i]).Color           := gcClNaveg;
                     TwwDBLookupCombo(F.Components[i]).Grid.Color      := gcClNaveg;
                     TwwDBLookupCombo(F.Components[i]).Font.Color      := clBlack;
                     TwwDBLookupCombo(F.Components[i]).Grid.Font.Color := clBlack;
                  end;
                  if Copy(TwwDBLookupCombo(F.Components[i]).Name, 1, 8) = 'ComboEdt' then begin
                     TwwDBLookupCombo(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TwwDBComboBox) then begin
                  if (UpperCase(Copy(TwwDBComboBox(F.Components[i]).Name, 1, 6)) <> 'FILTRO') then begin
                     TwwDBComboBox(F.Components[i]).Cursor     := crNo;
                     TwwDBComboBox(F.Components[i]).Color      := gcClNaveg;
                     TwwDBComboBox(F.Components[i]).Font.Color := clBlack;
                  end;
                  if Copy(TwwDBComboBox(F.Components[i]).Name, 1, 8) = 'ComboEdt' then begin
                     TwwDBComboBox(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TwwDBSpinEdit) then begin
                  if (UpperCase(Copy(TwwDBSpinEdit(F.Components[i]).Name, 1, 6)) <> 'FILTRO') then begin
                     TwwDBSpinEdit(F.Components[i]).Cursor     := crNo;
                     TwwDBSpinEdit(F.Components[i]).Color      := gcClNaveg;
                     TwwDBSpinEdit(F.Components[i]).Font.Color := clBlack;
                  end;
                  if Copy(TwwDBSpinEdit(F.Components[i]).Name, 1, 8) = 'ComboEdt' then begin
                     TwwDBSpinEdit(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TOvcPrinterComboBox) then begin
                  if UpperCase(Copy(TOvcPrinterComboBox(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TOvcPrinterComboBox(F.Components[i]).Cursor       := crNo;
                     TOvcPrinterComboBox(F.Components[i]).Color        := gcClNaveg;
                     TOvcPrinterComboBox(F.Components[i]).Font.Color   := clBlack;
                     TOvcPrinterComboBox(F.Components[i]).MRUListColor := gcClNaveg;
                     TOvcPrinterComboBox(F.Components[i]).Enabled      := False;
                  end;
               end else
               if (F.Components[i] is TOvcDBDateEdit) then begin
                  if UpperCase(Copy(TOvcDBDateEdit(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then
                  begin
                     TOvcDBDateEdit(F.Components[i]).Cursor     := crNo;
                     TOvcDBDateEdit(F.Components[i]).Color      := gcClNaveg;
                     TOvcDBDateEdit(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               if (F.Components[i] is TwwDBLookupComboDlg) then begin
                  if UpperCase(Copy(TwwDBLookUpComboDlg(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TwwDBLookupComboDlg(F.Components[i]).Cursor          := crNo;
                     TwwDBLookupComboDlg(F.Components[i]).Color           := gcClNaveg;
                     TwwDBLookupComboDlg(F.Components[i]).Grid.Color      := gcClNaveg;
                     TwwDBLookupComboDlg(F.Components[i]).Font.Color      := clBlack;
                     TwwDBLookupComboDlg(F.Components[i]).Grid.Font.Color := clBlack;
                     TwwDBLookUpComboDlg(F.Components[i]).AutoDropDown    := False;
                     TwwDBLookUpComboDlg(F.Components[i]).ShowButton      := False;
                  end;
                  if Copy(TwwDBLookupComboDlg(F.Components[i]).Name, 1, 8) = 'ComboEdt' then begin
                     TwwDBLookupComboDlg(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TwwDBComboBox) then begin
                  if UpperCase(Copy(TwwDBComboBox(F.Components[i]).Name, 1, 6)) <> 'FILTRO' then begin
                     TwwDBComboBox(F.Components[i]).Cursor     := crNo;
                     TwwDBComboBox(F.Components[i]).Color      := gcClNaveg;
                     TwwDBComboBox(F.Components[i]).Font.Color := clBlack;
                  end;
                  if Copy(TwwDBComboBox(F.Components[i]).Name, 1, 8) = 'ComboEdt' then begin
                     TwwDBComboBox(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TDBCheckBox) then begin
                  if (UpperCase(Copy(TwwDBEdit(F.Components[i]).Name, 1, 5)) <> 'EPERM') then begin
                     TDBCheckBox(F.Components[i]).Cursor := crNo;
                  end;
               end else
               if (F.Components[i] is TwwDBRichEdit) then begin
                  TwwDBRichEdit(F.Components[i]).Cursor     := crNo;
                  TwwDBRichEdit(F.Components[i]).Color      := gcClNaveg;
                  TwwDBRichEdit(F.Components[i]).Font.Color := clBlack;
               end else
               if (F.Components[i] is TDBMemo) then begin
                  if (UpperCase(Copy(TDBMemo(F.Components[i]).Name, 1, 5)) <> 'EPERM') then begin
                     TDBMemo(F.Components[i]).Cursor     := crNo;
                     TDBMemo(F.Components[i]).Color      := gcClNaveg;
                     TDBMemo(F.Components[i]).Font.Color := clBlack;
                  end;
               end else
               if (F.Components[i] is TCheckBox) then begin
                  if Copy(TCheckBox(F.Components[i]).Name, 1, 5) = 'CbNav' then begin
                     TCheckBox(F.Components[i]).Visible := True;
                  end;
               end else
               if (F.Components[i] is TAnimate) then begin
                  if Copy(TAnimate(F.Components[i]).Name, 1, 3) = 'Nav' then begin
                     TAnimate(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TLabel) then begin
                  if Copy(TLabel(F.Components[i]).Name, 1, 5) = 'LbNav' then begin
                     TLabel(F.Components[i]).Visible := True;
                  end;
                  if Copy(TLabel(F.Components[i]).Name, 1, 8) = 'LabelEdt' then begin
                     TLabel(F.Components[i]).Visible := False;
                  end;
               end else
               if (F.Components[i] is TfcImageBtn) then begin
                  if Copy(TfcImageBtn(F.Components[i]).Name, 1, 7) = 'BtnPerm' then begin
                     TfcImageBtn(F.Components[i]).Visible := True;
                  end else
                  if Copy(TfcImageBtn(F.Components[i]).Name, 1, 6) = 'BtnNav' then begin
                     TfcImageBtn(F.Components[i]).Visible := True;
                  end else
                  if Copy(TfcImageBtn(F.Components[i]).Name, 1, 6) = 'BtnEdt' then begin
                     TfcImageBtn(F.Components[i]).Visible := False;
                  end
                  else begin
                     TfcImageBtn(F.Components[i]).Visible := (Copy(TfcImageBtn(F.Components[i]).Name, 1, 3) <> 'Aux');
                  end;
               end else
               if (F.Components[i] is TDBNavegadorNotarios) then begin
                  TDBNavegadorNotarios(F.Components[i]).Visible := True;
               end else
               if (F.Components[i] is TwwIncrementalSearch) then begin
                  TwwIncrementalSearch(F.Components[i]).Enabled := True;
                  TwwIncrementalSearch(F.Components[i]).Color   := clWhite;
               end else
               if (F.Components[i] is TwwDBGrid) then begin
                  TwwDBGrid(F.Components[i]).Enabled := True;
                  if (Copy(TwwDBGrid(F.Components[i]).Name, 1, 7) = 'Despleg') then begin
                     TwwDBGrid(F.Components[i]).Color := gcClRejillaDesplegable;
                  end
                  else begin
                     TwwDBGrid(F.Components[i]).Color := gcClRejilla;
                  end;
                  TwwDBGrid(F.Components[i]).Font.Color      := gcClFuente;
                  TwwDBGrid(F.Components[i]).FooterCellColor := gcClRejilla;
               end else
               if (F.Components[i] is TwwKeyCombo) then begin
                  TwwKeyCombo(F.Components[i]).Enabled := True;
                  TwwKeyCombo(F.Components[i]).Color   := clWhite;
               end;
            end;
         end; // Naveg
      end; // case
   end; // if
end;*)

procedure PonerTipoConta(TipoConcepto: String);
begin
   if TipoConcepto = 'N' then begin
      Config.TipoConta := '';
   end else
   if TipoConcepto = 'E' then begin
      Config.TipoConta := '-';
   end
   else begin
      Config.TipoConta := '+';
   end;
end;

procedure QueryOpen(Query: TIBDataSet; Select: String);
begin
   Query.Close;
   Query.SelectSql.Clear;
   Query.SelectSql.Add(Select);
   Query.Open;
end;

function Exp10(Exponent : Extended) : Extended;
  {-Returns 10^Exponent}
begin
  Result := Power(10.0, Exponent);
end;

(*function RoundToDecimal(Value   :Extended;
                        Places  :Integer;
                        Bankers :Boolean):Extended;
var
  Val, IV, N, F :Extended;
  T             :Integer;
begin
   IV := 0;
   N := Exp10(Places);
   if (Places > 0) then IV := Int(Value);
   Val := (Value - IV) * N;
   T := Trunc(Val);
   F := (Val - T);
   if Bankers then Val := Round(Val) / N        {Delphi's Round does Bankers}
   else begin
      if Abs(Round(10.0 * F)) >= 5 then begin
        if (F > 0) then Val := (T + 1.0) / N
                   else Val := (T - 1.0) / N;
      end
      else Val := T / N;
   end;
   Result := Val + IV;
end;*)

function Empty(prmCadena :string):Boolean;
begin
   Result := Trim(prmCadena) = '';
end;

function Year(prmDate :TDateTime):Integer;
{returns the year}
var Year, Month, Day: Word;
begin
  DecodeDate(prmDate, Year, Month, Day);
  Result := Year;
end;

function Month(prmDate :TDateTime):Integer;
{returns the month of the year}
var Year, Month, Day: Word;
begin
  DecodeDate(prmDate, Year, Month, Day);
  Result := Month;
end;

function Day(prmDate :TDateTime):Integer;
{returns the day of the month}
var Year, Month, Day :Word;
begin
   DecodeDate(prmDate, Year, Month, Day);
   Result := Day;
end;

function Replicate(prmChar :Char; prmLength :Integer): string;
{return a string containing nLen times the character c}
var i :Integer;
begin
  Result := '';
  for i := 1 to prmLength do begin
      Result := Result + prmChar;
  end;
end;

function Space(prmLength :Integer): string;
{return the number of spaces asked for}
begin
   Result := Replicate(' ', prmLength);
end;

function PadR(prmString :string; prmLength :Integer): string;
{make certain the string is exactly nLen character}
begin
  if (Length(prmString) <> prmLength) then begin
     if Length(prmString) > prmLength then begin
        {length is smaller than string, so cut string to fit}
        Result := Copy(prmString, 1, prmLength);
     end
     else begin
       {length is bigger than string, so add spaces}
       Result := prmString + Space(prmLength - Length(prmString));
     end;
  end
  else Result := prmString;
end;

function CMonth(prmDate :TDateTime): string;
{returns the month as a character string}
begin
  Result := FormatDateTime('mmmm', prmDate);
end;

end.
