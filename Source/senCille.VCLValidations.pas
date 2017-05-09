unit senCille.VCLValidations;

interface

uses System.Classes;

type
  TValidationType = (vtNotEmpty, vtMinLength, vtMaxLength, vtMinValue, vtMaxValue, vtValidDate, vtDateStart, vtDateEnd, MatchesRegEx);
  TValidations = set of TValidationType;

  TValidationFunctions = class
    class function IsEmpty     (prmComponent     :TComponent):Boolean;
    //class function IsValidDate (prmComponent :TComponent):Boolean;
    //class function IsAfterDate (prmValue     :string    ):Boolean; overload;
    //class function IsBeforeDate(prmComponent :TComponent):Boolean; overload;
    class function MinLength   (prmComponent :TComponent; Value :Integer):Boolean;
    class function MaxLength   (prmComponent :TComponent; Value :Integer):Boolean;
    //class function MinValue    (prmComponent :TComponent):Boolean;
    //class function MaxValue    (prmComponent :TComponent):Boolean; overload;
    //class function MatchesRegEx(prmComponent :TComponent):Boolean; overload;
  end;

implementation
uses System.SysUtils, System.Math,
     {VCL.Memo,} VCL.Controls, VCL.Menus, VCL.DBCtrls, {VCL.ListBox,} VCL.StdCtrls
     {VCL.Colors, VCL.DateTimeCtrls};

{ TValidations }

class function TValidationFunctions.IsEmpty(prmComponent: TComponent): Boolean;
begin
   if prmComponent is TEdit then begin
      try
        Result := Trim(TEdit(prmComponent).Text) = '';
      except
        {If there are an exception we are sure that it's that the field name doesn't exists}
        Result := False;
      end;
   end else
   if prmComponent is TEdit then begin
      Result := Trim(TEdit(prmComponent).Text) = '';
   end else
   if prmComponent is TDBComboBox then begin
      Result := TDBComboBox(prmComponent).ItemIndex = -1;
   end else
   if prmComponent is TMemo then begin
      Result := TMemo(prmComponent).Lines.Text = '';
   end else
   if prmComponent is TCheckBox then begin
       Result := False; {Allways false???}
   end else
   if prmComponent is TListBox then begin
      Result := TListBox(prmComponent).Count = 0;
   end
   else Raise Exception.Create('Validation of "THIS COMPONENT" IsEmpty, still not developed.');
end;

//class function TValidationFunctions.IsValidDate(prmComponent :TComponent):Boolean;
//begin
//
//end;

//class function TValidationFunctions.MatchesRegEx(prmComponent :TComponent):Boolean;
//begin
   // This is Solved in Delphi XE
//end;

//class function TValidationFunctions.MinValue(prmComponent: TComponent): Boolean;
//begin
//
//end;

class function TValidationFunctions.MaxLength(prmComponent: TComponent; Value :Integer): Boolean;
begin
   if prmComponent is TEdit then begin
      Result := Length(Trim(TEdit(prmComponent).Text)) > Value;
   end else
   if prmComponent is TComboBox then begin
      Raise Exception.Create('Validation of TComboBox MaxLength, still not developed.');
   end else
   if prmComponent is TMemo then begin
      Raise Exception.Create('Validation of TMemo MaxLength, still not developed.');
   end else
   if prmComponent is TCheckBox then begin
      Raise Exception.Create('Validation of TCheckBox MaxLength, still not developed.');
   end else
   if prmComponent is TListBox then begin
      Raise Exception.Create('Validation of TListBox MaxLength, still not developed.');
   end
   else Raise Exception.Create('Validation of "THIS COMPONENT" MaxLength, still not developed.');
end;

//class function TValidationFunctions.MaxValue(prmComponent: TComponent): Boolean;
//begin
//
//end;

class function TValidationFunctions.MinLength(prmComponent: TComponent; Value :Integer): Boolean;
begin
   if prmComponent is TEdit then begin
        Result := Length(Trim(TEdit(prmComponent).Text)) < Value;
   end else
   if prmComponent is TComboBox then begin
      Raise Exception.Create('Validation of TComboBox MinLength, still not developed.');
   end else
   if prmComponent is TMemo then begin
      Raise Exception.Create('Validation of TMemo MinLength, still not developed.');
   end else
   if prmComponent is TCheckBox then begin
      Raise Exception.Create('Validation of TCheckBox MinLength, still not developed.');
   end else
   if prmComponent is TListBox then begin
      Raise Exception.Create('Validation of TListBox MinLength, still not developed.');
   end
   else Raise Exception.Create('Validation of "THIS COMPONENT" MinLength, still not developed.');
end;


end.

