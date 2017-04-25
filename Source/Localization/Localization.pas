unit Localization;

interface

type
  TLangCommon = class
    BtnAccept            :string;
    BtnCancel            :string;
    BtnNew               :string;
    BtnModify            :string;
    BtnDelete            :string;
    BtnReport            :string;
    TextSearch           :string;
    TextCode             :string;
    TextDescription      :string;
    TextName             :string;
    AskForDelete         :string;
    ImposibleInsert      :string;
    ImposibleModify      :string;
    ImposibleDelete      :string;
    ImposibleCancel      :string;
    AskCancelEditing     :string; //'¿Quiere anular las modificaciones realizadas a este proyecto?';
    CloseNotAllowed      :string;
    FieldCantBeLeftBlank :string;
    ReferenceMessageText :string; //'El proyecto seleccionado se encuentra referenciado en alguna analítica.'
    ProgressCanceledText :string;
    constructor Create;
  end;

  TLangLogin = class
    NumberOfAttemptsExceeded       :string;
    ApplicationIsGoingToCloseNow   :string;
    TheUserOrPasswordAreNotCorrect :string;
    PleaseTryAgain                 :string;
    constructor Create;
  end;

  TLangProjects = class
    FormTitle     :string;
    TextProject   :string;
    TextAnalytics :string;
    constructor Create;
  end;

implementation

uses Globales;

{ TLangCommon }

constructor TLangCommon.Create;
begin
   case Config.HMI_Language of
      ltEnglish:begin
        BtnAccept            := 'Accept';
        BtnCancel            := 'Cancel';
        BtnNew               := 'New';
        BtnModify            := 'Modify';
        BtnDelete            := 'Delete';
        BtnReport            := 'Report';
        TextSearch           := 'Search';
        TextCode             := 'Code';
        TextDescription      := 'Description';
        TextName             := 'Name';
        AskForDelete         := 'Do you really want delete the selected element?';
        ImposibleInsert      := 'Imposible insert a new element';
        ImposibleModify      := 'It was not possible edit the selected element';
        ImposibleDelete      := 'It was not possible delete the selected element';
        ImposibleCancel      := 'It was not possible cancel the operation';
        AskCancelEditing     := 'Really want cancel editing changes?';
        CloseNotAllowed      := 'Close not allowed in editing mode';
        FieldCantBeLeftBlank := '%s field can''t be left blank';
        ReferenceMessageText := 'Current %s exists in at least one %s';
        ProgressCanceledText := 'Process canceled';
      end;
      ltSpanish:begin
        BtnAccept            := 'Aceptar';
        BtnCancel            := 'Cancelar';
        BtnNew               := 'Nuevo';
        BtnModify            := 'Modify';
        BtnDelete            := 'Delete';
        BtnReport            := 'Report';
        TextSearch           := 'Buscar';
        TextCode             := 'Código';
        TextDescription      := 'Descripción';
        TextName             := 'Nombre';
        AskForDelete         := '¿Desea realmente eliminar el elemento seleccionado?';
        ImposibleInsert      := 'Imposible Insertar un nuevo elemento';
        ImposibleModify      := 'No fue posible editar el elemento seleccionado';
        ImposibleDelete      := 'No ha sido posible eliminar el elemento seleccionado';
        ImposibleCancel      := 'No fue posible cancelar la operación';
        AskCancelEditing     := '¿Realmente quiere cancelar los cambios de edición?';
        CloseNotAllowed      := 'No se puede cerrar en modo de edición';
        FieldCantBeLeftBlank := 'El campo %s no puede dejarse en blanco';
        ReferenceMessageText := 'El %s actual existe en al menos una %s';
        ProgressCanceledText := 'Proceso cancelado';
      end;
      ltFrench:begin
        BtnAccept            := 'Acceptez';
        BtnCancel            := 'Annuler';
        BtnNew               := 'Nouveau';
        BtnModify            := 'Modifier';
        BtnDelete            := 'Effacer';
        BtnReport            := 'Rapport';
        TextSearch           := 'Chercher';
        TextCode             := 'Code';
        TextDescription      := 'La description';
        TextName             := 'Prénom';
        AskForDelete         := 'Voulez-vous vraiment supprimer l''élément sélectionné?';
        ImposibleInsert      := 'Impossible insérer un nouvel élément';
        ImposibleModify      := 'Il n''était pas possible d''éditer l''élément sélectionné';
        ImposibleDelete      := 'Il n''était pas possible de supprimer l''élément sélectionné';
        ImposibleCancel      := 'Il n''était pas possible d''annuler l''opération';
        AskCancelEditing     := 'Voulez-vous vraiment annuler les modifications d''édition?';
        CloseNotAllowed      := 'Fermer interdit en mode édition';
        FieldCantBeLeftBlank := 'Le champ %s ne peut pas être laissé vide';
        ReferenceMessageText := 'Le %s actuel existe dans au moins une %s';
        ProgressCanceledText := 'Procédure annulée';
      end;
      ltGerman:begin
        BtnAccept            := 'Akzeptieren';
        BtnCancel            := 'Stornieren';
        BtnNew               := 'Neu';
        BtnModify            := 'Ändern';
        BtnDelete            := 'Löschen';
        BtnReport            := 'Bericht';
        TextSearch           := 'Suche';
        TextCode             := 'Code';
        TextDescription      := 'Beschreibung';
        TextName             := 'Name';
        AskForDelete         := 'Möchten Sie das ausgewählte Element wirklich löschen?';
        ImposibleInsert      := 'Unmöglich ein neues Element einfügen';
        ImposibleModify      := 'Es war nicht möglich, das ausgewählte Element zu bearbeiten';
        ImposibleDelete      := 'Es war nicht möglich, das ausgewählte Element zu löschen';
        ImposibleCancel      := 'Es war nicht möglich, den Vorgang abzubrechen';
        AskCancelEditing     := 'Wollen Sie die Bearbeitung ändern?';
        CloseNotAllowed      := 'Im Bearbeitungsmodus nicht zugelassen';
        FieldCantBeLeftBlank := '%s-Feld kann nicht leer sein';
        ReferenceMessageText := 'Das %s Projekt existiert in mindestens einer %s';
        ProgressCanceledText := 'Prozess abgebrochen';
      end;
   end;
end;

{ TLangLogin }

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

{ TLangProjects }

constructor TLangProjects.Create;
begin
   case Config.HMI_Language of
      ltEnglish:begin
        FormTitle     := 'Table of Projects';
        TextProject   := 'Project';
        TextAnalytics := 'Analytic';
      end;
      ltSpanish:begin
        FormTitle     := 'Tabla de Proyectos';
        TextProject   := 'Proyecto';
        TextAnalytics := 'Analítica';
      end;
      ltFrench:begin
        FormTitle     := 'Tableau des projets';
        TextProject   := 'Projet';
        TextAnalytics := 'Analyse';
      end;
      ltGerman:begin
        FormTitle     := 'Tabelle der Projekte';
        TextProject   := 'Projekt';
        TextAnalytics := 'Analytischen';
      end;
   end;
end;

end.
