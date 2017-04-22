unit UtilesMDIForms;

{juan.carlos@cilleruelo.com}

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     WinTypes, WinProcs, db, IBX.IBDataBase;

var
  FormsOpened :Integer;
  { Crea una ventana y la muestra en Modal.                               }
  function  ccCreateModal(FormClass:TFormClass):Word;
  { Cambia de Normal a Modal y viceversa cualquier ventana MDIChild.      }
  { Además desabilita el menú principal de la aplicación cuando es modal. }
  procedure ccMakeModal(Modal:Boolean);
  { Otra versión de lo anterior.                                          }
  procedure ccMakeModal2(Modal:Boolean; Window:TForm);

  { Busca un Form en el MainForm.                                         }
  function ccSearchForm(MDIForm:TForm; ChildForm :TFormClass):Integer;
  { Pone en primer plano y restaura si es necesario, un form existente en }
  { el MainForm de la aplicación.                                         }
  procedure ccActiveForm(MDIForm:TForm; Index:Integer);
  { Inserta un form en la aplicación llamando antes a ccSearchForm para   }
  { confirmar que no existe una instancia previa. Si existe, llama a      }
  { ccActive Form para activar el form existente.                         }
  function ccGetInsertedForm(MDIForm :TForm; ChildForm :TFormClass):TForm;
  function InsertMDIForm     (MDIForm :TForm; ChildForm :TFormClass):Integer; 
  // Activa el SalvaPantallas de Windows

implementation
uses StdCtrls, Menus, 
     Grids, TypInfo, ComCtrls, dbGrids;
     
function ccCreateModal(FormClass:TFormClass):Word;
begin
   Screen.Cursor := crHourGlass;
   try
      with FormClass.Create(Application) do begin
           try     Screen.Cursor := crDefault;
                   Result := ShowModal;
           finally Free;
           end;
      end;
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure ccMakeModal(Modal:Boolean);
var i :Integer;
    j :Integer;
begin
   with Application.MainForm do begin
     for i := 0 to ComponentCount -1 do begin
         if (Components[i] is TMainMenu) then begin
            with TMainMenu(Components[i]) do begin
                 for j  := 0 to Items.Count -1 do begin
                     TMenuItem(Items[j]).Enabled := not(Modal);
                 end;
            end;
         end else
         if (Components[i] is TToolBar) then begin
              TToolBar(Components[i]).Enabled := not(Modal);
         end;
     end;
     if Modal then begin
        for i := 0 to MDIChildCount - 1 do begin
            if MDIChildren[i].Active = False then MDIChildren[i].Enabled := not(Modal);
        end;
     end
     else begin
         for i := 0 to MDIChildCount - 1 do MDIChildren[i].Enabled := True;
     end;
   end;
end;

procedure ccMakeModal2(Modal:Boolean; Window:TForm);
var i :Integer;
begin
   with Application.MainForm do begin
     if Modal then begin
        for i := 0 to MDIChildCount - 1 do begin
            if MDIChildren[i] <> Window then MDIChildren[i].Enabled := not(Modal);
        end;
     end
     else begin
         for i := 0 to MDIChildCount - 1 do MDIChildren[i].Enabled := True;
     end;
   end;
end;

procedure ccActiveForm(MDIForm:TForm; Index:Integer);
begin
   MDIForm.MDIChildren[Index].BringToFront;
   if MDIForm.MDIChildren[Index].WindowState = wsMinimized then
      MDIForm.MDIChildren[Index].WindowState := wsNormal;
end;

function ccSearchForm(MDIForm:TForm; ChildForm :TFormClass):Integer;
var i :Integer;
begin
   Result := -1; // Form not found.
   for i := 0 to MDIForm.MDIChildCount -1 do begin
       if MDIForm.MDIChildren[i].ClassNameIs(ChildForm.ClassName) then begin
          Result := i;
          Exit;
       end;
   end;
end;
//=====================================================================
function ccGetInsertedForm(MDIForm:TForm; ChildForm :TFormClass):TForm; overload;
var Index:Integer;
begin
   Index := ccSearchForm(MDIForm, ChildForm);
   if Index = -1 then begin
      //La comprobación del nº de ventanas abiertas no acabo de hacerlo funcionar.
      //Cuando haya tiempo habrá que mejorarlo.
      //if FormsOpened < 10 then begin
         Result := ChildForm.Create(MDIForm);
         //Result := ccSearchForm(MDIForm, ChildForm);
         Inc(FormsOpened);
      //end
      //else begin
      //   MessageBox(Application.MainForm.Handle,
      //              'Demasiadas ventanas abiertas. Cierre alguna y vuelva a intentarlo.',
      //              PChar(Application.Title),
      //              mb_Ok or mb_IconInformation or mb_DefButton1);
      //end;
   end
   else begin
      ccActiveForm(MDIForm, Index);
      {Al hacer un bring to front, si tiene exito el valor del index pasará a ser 0 por lo que tenemos
      que volver a buscarle}
      //Result := ccSearchForm(MDIForm, ChildForm);
   end;
end;

//=====================================================================
function InsertMDIForm(MDIForm:TForm; ChildForm :TFormClass):Integer;
var Index:Integer;
begin
   Index := ccSearchForm(MDIForm, ChildForm);
   if Index = -1 then begin
      ChildForm.Create(MDIForm);
      Result := ccSearchForm(MDIForm, ChildForm);
      Inc(FormsOpened);
   end
   else begin
      ccActiveForm(MDIForm, Index);
      {Al hacer un bring to front, si tiene exito el valor del index pasará a ser 0 por lo que tenemos que volver a buscarlo}
      Result := ccSearchForm(MDIForm, ChildForm);
   end;
end;

end.
