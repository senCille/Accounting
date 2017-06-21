unit senCille.MainController;

{INCLUDE ..\..\SCFRAMEWORK\TARGET_DB.INC}

interface

uses System.Classes, System.SysUtils, System.UITypes,
     FMX.Forms,
     senCille.ControllersManager,
     senCille.Setup,
     senCille.DBController,
     senCille.ORMUser;

type
  TMainController = class
  private
    FControllers :TControllersManager;
    FSetup       :TSetup;
  protected
  public
     constructor Create();
     destructor  Destroy(); override;
     property Controllers :TControllersManager read FControllers write FControllers;
     property Setup       :TSetup              read FSetup;
  end;

implementation

uses System.IOUtils,
     {$IFDEF MSWINDOWS}
     System.Win.Registry, WinAPI.Windows,
     {$ENDIF}
     Data.SQLExpr,
     FMX.Dialogs, FMX.DialogService,
     senCille.CustomController,
     senCille.Tools;

constructor TMainController.Create();
{$IFDEF MSWINDOWS}
var Reg        :TRegistry;
    OpenResult :Boolean;
var ExeName   :string;
    Extension :string;
    FileName  :string;
{$ENDIF}
begin
   inherited;
   FControllers := TControllersManager.Create;
   FSetup       := TSetup.Create();

   {$IFDEF MSWINDOWS}
   ExeName   := ExtractFileName(ParamStr(0));
   Extension := ExtractFileExt (ParamStr(0));
   FileName  := Copy(ExeName, 1, Length(ExeName) - Length(Extension));

   Reg := TRegistry.Create(KEY_READ);
   try
      Reg.RootKey := HKEY_LOCAL_MACHINE;

      if not(Reg.KeyExists('Software\senCille Software\'+FileName+'\')) then begin
          Reg.Access := KEY_WRITE;
          if not Reg.OpenKey('Software\senCille Software\'+FileName+'\', True) then Exit()
          else begin
             { Checking if the values exist and inserting when neccesary }
             if not reg.KeyExists('AppLocation') then begin
      		        Reg.WriteExpandString('AppLocation', Setup.AppFolder+'\');
             end;
          end;
      end;

      Reg.CloseKey();
   finally
     Reg.Free;
   end;
   {$ENDIF}
end;

destructor TMainController.Destroy();
begin
   FreeAndNil(FSetup);
   FreeAndNil(FControllers);
   inherited;
end;

end.


