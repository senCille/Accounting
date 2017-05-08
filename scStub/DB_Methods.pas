unit DB_Methods;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Comp.Script,
  FireDAC.Comp.ScriptCommands,
  {Firebird}
  FireDAC.Phys.FB,
  FireDAC.Phys.IBBase,
  CommonUnit;

type
  TDB_Methods = class
  private
    FDBController   :TDBController;
    FPath           :string;
    FDeployDBPath   :string;
    FRemoveFile     :Boolean;
    FConfigFileName :string;
    {Firebird}
    FPhysicalDriver  :TFDPhysFBDriverLink;
    {--------}
    FSetMaxDelegate       :TSetMaxEvent;
    FShowProgressDelegate :TShowProgressEvent;
    FShowErrorDelegate    :TShowErrorEvent;
    procedure SetPath(const Value: string);
    procedure SetDeployDBPath(const Value :string);
    procedure SetRemoveFile(const Value: boolean);
    procedure CreateDefaultConfigFile(ADataFolder :string);
    {Firebird}
    procedure CreateDBFileIBLike(prmDBName :string);
    {--------}
    procedure SetMax(MaxValue :Integer);
    procedure StepUp(CurrentProc :string);
    procedure SetError(Text :string);
  public
    procedure CreateEmpty_Northwind;

    property Path           :string  read FPath           write SetPath;
    property DeployDBPath   :string  read FDeployDBPath   write SetDeployDBPath;
    property RemoveFile     :Boolean read FRemoveFile     write SetRemoveFile;
    property ConfigFileName :string  read FConfigFileName write FConfigFileName;

    property OnSetMax       :TSetMaxEvent       read FSetMaxDelegate       write FSetMaxDelegate;
    property OnShowProgress :TShowProgressEvent read FShowProgressDelegate write FShowProgressDelegate;
    property OnShowError    :TShowErrorEvent    read FShowErrorDelegate    write FShowErrorDelegate;
  end;

implementation

uses System.IOUtils, System.SysUtils, System.UITypes, System.INIFiles,
     FMX.Dialogs,
     DB_Northwind,
     DB_NorthwindData;

procedure TDB_Methods.SetMax(MaxValue :Integer);
begin
   if Assigned(FSetMaxDelegate) then
      FSetMaxDelegate(MaxValue);
end;

procedure TDB_Methods.StepUp(CurrentProc :string);
begin
   if Assigned(FShowProgressDelegate) then
      FShowProgressDelegate(CurrentProc);
end;

procedure TDB_Methods.SetError(Text :string);
begin
   if Assigned(FShowErrorDelegate) then
      FShowErrorDelegate(Text);
end;

procedure TDB_Methods.CreateDefaultConfigFile(ADataFolder :string);
var INIFile :TIniFile;
begin
   INIFile := TIniFile.Create(ConfigFileName);
   try
      INIFile.WriteString ('DBCONFIG', 'DataBase'   , 'NORTHWIND');
      INIFile.WriteString ('DBCONFIG', 'User_Name'  , 'SYSDBA'   );
      INIFile.WriteString ('DBCONFIG', 'Password'   , 'masterkey');
      INIFile.WriteString ('OPTIONS' , 'DataFolder' , ADataFolder);
      INIFile.UpdateFile;
   finally
      INIFile.Free;
   end;
end;

procedure TDB_Methods.CreateDBFileIBLike(prmDBName :string);
var DB :TFDConnection;
begin
   CreateDefaultConfigFile(Path);
   {Firebird}
   FPhysicalDriver := TFDPhysFBDriverLink.Create(nil);
   FPhysicalDriver.VendorHome := Path;
   FPhysicalDriver.VendorLib  := 'fbembed.dll';
   {--------}

   DB := TFDConnection.Create(nil);
   try
      DB.LoginPrompt    := False;
      DB.DriverName     := 'FB';
      DB.ConnectionName := 'Northwind';
      DB.FormatOptions.StrsTrim2Len   := True; // Cut the length of data to the max length of the field.
      DB.FormatOptions.StrsTrim       := True; // Removie leading blanks.
      DB.FormatOptions.StrsEmpty2Null := True; // In string values, let blanck fields to NULL value.
      {Firebird}
      DB.Params.Add('DriverID=FB'        );
      DB.Params.Add('CharacterSet=UTF8'  );
      {--------}
      DB.Params.Add('Protocol=Local'       );
      DB.Params.Add('SQLDialect=3'         );
      DB.Params.Add('UseUnicode=True'      );

      DB.Params.Add('Database='+prmDBName  );
      DB.Params.Add('User_Name=SYSDBA'     );
      DB.Params.Add('Password=masterkey'   );

      DB.Params.Add('ExtendedMetadata=True');
      DB.Params.Add('Pooled=False'         );
      DB.Params.Add('CreateDatabase=Yes'   );{<<<===== Key property =====}
      DB.Params.Add('PageSize=4096'        );
      DB.Params.Add('EnableMemos=True'     );
      DB.Open;
   finally
      DB.Close;
      DB.Free;
   end;
end;

procedure TDB_Methods.CreateEmpty_Northwind;
var FileName           :string;
    DDL_Northwind      :TDB_Northwind;
    DDL_Northwind_Data :TDB_Northwind_Data;
begin
   {Firebird}
   FileName := FPath + 'NORTHWIND'+TDBController.DBFileExtension;
   if TFile.Exists(FileName) then begin
      if FRemoveFile then begin
         try
            TFile.Delete(FileName);
         except
            ShowMessage('Imposible eliminar la base de datos '+FileName);
            Exit;
         end;
      end
      else begin
         ShowMessage('The file '+FileName+' exists.');
         Exit;
      end;
   end;

   {if the file exists, if shall be deleted...}
   CreateDBFileIBLike(FileName);

   FDBController := TDBController.Create;
   try
      {Firebird}
      FDBController.LoadConfFromFile(FConfigFileName);
      {--------}
      FDBController.OpenConnection;

      DDL_Northwind := TDB_Northwind.Create;
      try
         DDL_Northwind.OnSetMax       := SetMax;
         DDL_Northwind.OnShowProgress := StepUp;
         DDL_Northwind.OnShowError    := SetError;
         DDL_Northwind.Execute(FDBController.DBConnection);
      finally
         DDL_Northwind.Free;
      end;

      {Firebird}
      DDL_Northwind_Data := TDB_Northwind_Data.Create;
      try
        DDL_Northwind_Data.OnSetMax       := SetMax;
        DDL_Northwind_Data.OnShowProgress := StepUp;
        DDL_Northwind_Data.OnShowError    := SetError;
        DDL_Northwind_Data.Execute(FDBController.DBConnection);
      finally
        DDL_Northwind_Data.Free;
      end;
   finally
      FDBController.Free;
   end;
end;

procedure TDB_Methods.SetPath(const Value: string);
begin
   FPath := Value;
end;

procedure TDB_Methods.SetDeployDBPath(const Value: string);
begin
   FDeployDBPath := Value;
end;

procedure TDB_Methods.SetRemoveFile(const Value: boolean);
begin
   FRemoveFile := Value;
end;

end.
