unit Localization;

interface

type
  TLangCommon = class
    BtnAccept :string;
    BtnCancel :string;
    constructor Create;
  end;

  TLangLogin = class
     NumberOfAttemptsExceeded       :string;
     ApplicationIsGoingToCloseNow   :string;
     TheUserOrPasswordAreNotCorrect :string;
     PleaseTryAgain                 :string;
     constructor Create;
  end;

implementation

uses Globales;

{ TLangLogin }

{ TLangCommon }

constructor TLangCommon.Create;
begin
   case Config.HMI_Language of
      ltEnglish:begin
        BtnAccept := 'Accept';
        BtnCancel := 'Cancel';
      end;
      ltSpanish:begin
        BtnAccept := 'Aceptar';
        BtnCancel := 'Cancelar';
      end;
      ltFrench:begin
        BtnAccept := 'Acceptez';
        BtnCancel := 'Annuler';
      end;
      ltGerman:begin
        BtnAccept := 'Akzeptieren';
        BtnCancel := 'Stornieren';
      end;
   end;
end;

constructor TLangLogin.Create;
begin
   case Config.HMI_Language of
      ltEnglish:begin
        NumberOfAttemptsExceeded       := 'Number of attempts exceeded';
        ApplicationIsGoingToCloseNow   := 'Application is going to close now!';
        TheUserOrPasswordAreNotCorrect := 'The user or password are not correct';
        PleaseTryAgain                 := 'Please, try again';
      end;
      ltSpanish:begin
        NumberOfAttemptsExceeded       := 'Número de intentos superado';
        ApplicationIsGoingToCloseNow   := 'La aplicación se cerrará ahora!';
        TheUserOrPasswordAreNotCorrect := 'El usuario o la contraseña no son correctos';
        PleaseTryAgain                 := 'Por favor, inténtelo de nuevo';
      end;
      ltFrench:begin
        NumberOfAttemptsExceeded       := 'Nombre de tentatives dépassées';
        ApplicationIsGoingToCloseNow   := 'La demande va bientôt se terminer!';
        TheUserOrPasswordAreNotCorrect := 'L''utilisateur ou le mot de passe ne sont pas corrects';
        PleaseTryAgain                 := 'Veuillez réessayer';
      end;
      ltGerman:begin
        NumberOfAttemptsExceeded       := 'Anzahl der Versuche überschritten';
        ApplicationIsGoingToCloseNow   := 'Die Bewerbung wird jetzt geschlossen!';
        TheUserOrPasswordAreNotCorrect := 'Der Benutzer oder das Passwort sind nicht korrekt';
        PleaseTryAgain                 := 'Bitte versuche es erneut';
      end;
   end;
end;

end.
