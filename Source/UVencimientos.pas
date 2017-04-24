unit UVencimientos;

interface

uses Buttons, Classes, Controls, DB, DBClient, DBCtrls, Dialogs, ExtCtrls, StdCtrls, SysUtils, WinProcs,
     Forms, Graphics, Grids, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, jpeg, Mask, Messages, WinTypes,
     FormHandler, DBGrids;

type
  TWVencimientos = class(TForm)
    QFichero: TClientDataSet;
    SFichero: TDataSource;
    QFicheroIMPORTEFACTURA: TFloatField;
    QFicheroNUMERO: TSmallintField;
    QFicheroFVENCIMIENTO: TDateTimeField;
    QFicheroIMPORTE: TFloatField;
    QFicheroSUBCUENTA: TStringField;
    QFicheroDESCRIPCION: TStringField;
    QFicheroFORMAPAGO: TStringField;
    QFicheroDESCFORMAPAGO: TStringField;
    QFicheroFEMISION: TDateField;
    Panel2: TPanel;
    Panel3: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    Panel4: TPanel;
    Panel1: TPanel;
    BtnDelete: TButton;
    BtnNew: TButton;
    BtnAccept: TButton;
    BtnCancel: TButton;
    DBNavigator: TDBNavigator;
    Datos: TGroupBox;
    Label6: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EditIMPORTE: TDBEdit;
    EditDESCRIPCION: TDBEdit;
    EditSUBCUENTA: TDBEdit;
    EditCD_FORMA_PAGO: TDBEdit;
    EditDS_FORMAPAGO: TDBEdit;
    EditFECHA_EMISION: TDBEdit;
    QFicheroSUBCTA_EFECTOS: TStringField;
    Grid: TDBGrid;
    procedure BtnNewClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnAcceptClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var action: TCloseaction);
    procedure QFicheroAfterPost(DataSet: TDataSet);
    procedure QFicheroBeforeInsert(DataSet: TDataSet);
    procedure QFicheroNewRecord(DataSet: TDataSet);
    procedure QFicheroBeforePost(DataSet: TDataSet);
  private
    FormManager       :TccFormHandler;
    FNumVencim        :Integer;
    FImporteAcumulado :Double;
    FDescFormaPago    :string;
    FDescSubcuenta    :string;
    procedure GenerarVencimientos;
  public
    FFormaPago       :string;
    FClase           :string;
    FSubcuenta       :string;
    FFactura         :string;
    FAsiento         :Integer;
    FDiaPago1        :Integer;
    FDiaPago2        :Integer;
    FDiaPago3        :Integer;
    FIntervalo       :Integer;
    FEsFacturaCompra :Boolean;
    FImporteFactura  :Double;
    FFechaFactura    :TDateTime;
    FFechaUltimo     :TDateTime;
    FFechaEmision    :TDateTime;
  end;

var WVencimientos: TWVencimientos;

implementation

uses System.Math, System.DateUtils,
     DM, DMConta, Tools, Globales;
{$R *.DFM}

procedure TWVencimientos.FormCreate(Sender: TObject);
begin
   FormManager := TccFormHandler.Create(Self);

   FormManager.AddComp(BtnNew.Name         , fmNone);
   FormManager.AddComp(BtnDelete.Name      , fmNone);
   FormManager.AddComp(BtnAccept.Name      , fmNone);
   FormManager.AddComp(DBNavigator.Name    , fmNone);
   FormManager.AddComp(BtnCancel.Name      , fmNone);
   //FormManager.AddComp(BtnCancel.Name          , fmEdit  );
   //FormManager.AddComp(BtnAppend.Name          , fmBrowse);
   //FormManager.AddComp(BtnModify.Name          , fmBrowse);
   //FormManager.AddComp(BtnDelete.Name          , fmBrowse);
   //FormManager.AddComp(BtnReports.Name         , fmBrowse);
   //FormManager.AddComp(EditCampoInicial.Name   , fmEdit  );
   //FormManager.AddComp(EditNombre.Name         , fmEdit  );
   //FormManager.AddComp(EditSuma1.Name          , fmEdit  );
   //FormManager.AddComp(EditSuma2.Name          , fmEdit  );
   //FormManager.AddComp(EditSuma3.Name          , fmEdit  );
   //FormManager.AddComp(EditSuma4.Name          , fmEdit  );
   //FormManager.AddComp(EditSuma5.Name          , fmEdit  );

   ActivateTransactions(Self, DMRef.BDContab);
end;

procedure TWVencimientos.GenerarVencimientos;
var NumVencim  :Integer;
    i          :Integer;
    Fecha      :TDateTime;
    FechaPago1 :TDateTime;
    FechaPago2 :TDateTime;
    FechaPago3 :TDateTime;
    Q :TIBQuery;
begin
   FechaPago1 := 0;
   FechaPago2 := 0;
   FechaPago3 := 0;

   Q := TIBQuery.Create(nil);
   try
      Q.Database := DmRef.BDContab;
      Q.SQL.Add('SELECT * FROM FORMAS WHERE FORMAPAGO = :FORMAPAGO');
      Q.ParamByName('FORMAPAGO').AsString := FFormaPago;
      Q.Open;

      FClase         := Q.FieldByName('CLASE'    ).AsString;
      FIntervalo     := Q.FieldByName('INTERVALO').AsInteger;
      NumVencim      := Q.FieldByName('NUMVENCI' ).AsInteger;
      FDescFormaPago := Q.FieldByName('DESCRIBE' ).AsString;

      Q.Close;
      Q.SQL.Clear;
      Q.SQL.Add('SELECT DIAPAGO1, DIAPAGO2, DIAPAGO3, DESCRIPCION FROM SUBCTAS');
      Q.SQL.Add('WHERE SUBCUENTA = :SUBCUENTA');
      Q.ParamByName('SUBCUENTA').AsString := FSubcuenta;
      Q.Open;

      FDescSubcuenta := Q.FieldByName('DESCRIPCION').AsString;
   finally
      Q.Free;
   end;

   QFichero.EmptyDataSet;
   Fecha := FFechaFactura;
   for I := 1 to NumVencim do begin
      QFichero.Append;
      QFicheroNUMERO.AsInteger       := I;
      QFicheroIMPORTEFACTURA.AsFloat := RoundTo(FImporteFactura, -2);
      QFicheroIMPORTE.AsFloat        := RoundTo(FImporteFactura / NumVencim, -2);

      if FClase = 'D' then begin
         Fecha := Fecha + FIntervalo;
      end
      else begin
         Fecha := IncMonth(Fecha, FIntervalo);
      end;

      if (FDiaPago1 > 0) then begin
         try
            FechaPago1 := StrToDateTime(IntToStr(FDiaPago1) + '/' +
               IntToStr(MonthOf(Fecha)) + '/' +
               IntToStr(YearOf(Fecha)));
         except
            FechaPago1 := 0;
         end;
      end;
      if (FDiaPago2 > 0) then begin
         try
            FechaPago2 := StrToDateTime(IntToStr(FDiaPago2) + '/' +
               IntToStr(MonthOf(Fecha)) + '/' +
               IntToStr(YearOf(Fecha)));
         except
            FechaPago2 := 0;
         end;
      end;
      if (FDiaPago3 > 0) then begin
         try
            FechaPago3 := StrToDateTime(IntToStr(FDiaPago3) + '/' +
               IntToStr(MonthOf(Fecha)) + '/' +
               IntToStr(YearOf(Fecha)));
         except
            FechaPago3 := 0;
         end;
      end;

      if (FechaPago1 <> 0) or (FechaPago2 <> 0) or (FechaPago3 <> 0) then begin
         if (FechaPago1 <> 0) and (FechaPago1 - Fecha >= 0) then begin
            Fecha := FechaPago1;
         end
         else
         if (FechaPago2 <> 0) and (FechaPago2 - Fecha >= 0) then begin
            Fecha := FechaPago2;
         end
         else
         if (FechaPago3 <> 0) and (FechaPago3 - Fecha >= 0) then begin
            Fecha := FechaPago3;
         end
         else
         if (FechaPago1 <> 0) and (IncMonth(FechaPago1, 1) - Fecha >= 0) then begin
            Fecha := IncMonth(FechaPago1, 1);
         end
         else
         if (FechaPago2 <> 0) and (IncMonth(FechaPago2, 1) - Fecha >= 0) then begin
            Fecha := IncMonth(FechaPago2, 1);
         end
         else
         if (FechaPago3 <> 0) and (IncMonth(FechaPago3, 1) - Fecha >= 0) then begin
            Fecha := IncMonth(FechaPago3, 1);
         end;
      end;


      QFicheroFVENCIMIENTO.AsDateTime := Fecha;
      QFichero.Post;

      FFechaUltimo := QFicheroFVENCIMIENTO.AsDateTime;
   end;
end;

procedure TWVencimientos.BtnNewClick(Sender: TObject);
begin
   Grid.SetFocus;

   if QFichero.State in dsEditModes then begin
      QFichero.Post;
   end;

   QFichero.Append;
end;

procedure TWVencimientos.BtnDeleteClick(Sender: TObject);
var
   Num: Integer;
begin
   if not QFichero.IsEmpty then begin
      if MessageDlg('¿Desea borrar este vencimiento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
         QFichero.Delete;
         QFichero.First;
         Num := 0;
         while not QFichero.EOF do begin
            Inc(Num);
            QFichero.Edit;
            QFicheroNUMERO.AsInteger := Num;
            QFichero.Post;
            QFichero.Next;
         end;
         QFichero.First;
      end;
   end;
end;

procedure TWVencimientos.BtnAcceptClick(Sender: TObject);
var Importe :Double;
    Q       :TIBSQL;
begin
   if QFichero.IsEmpty then begin
      DatabaseError('No existen vencimientos asociados a la factura.' + #13 +
         'Por favor, revise los datos de entrada.');
   end;

   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.State in dsEditModes then begin
      QFichero.Post;
   end;
   Importe := 0;
   QFichero.First;
   while not QFichero.EOF do begin
      Importe := Importe + QFicheroIMPORTE.AsFloat;
      QFichero.Next;
   end;
   QFichero.First;
   if RoundTo(Importe, -2) <> RoundTo(QFicheroIMPORTEFACTURA.AsFloat, -2) then
   begin
      DatabaseError('El importe de factura no coincide con el total de vencimientos.' +
         #13 + 'Por favor, revise los datos de entrada.');
   end;

   Q := TIBSQL.Create(nil);
   try
      Q.Database := DmRef.BDContab;
      Q.SQL.Add('INSERT INTO CARTERAEFECTOS');
      Q.SQL.Add('(SUBCUENTA, SITUACION, FEMISION, IMPORTE, FACTCLIENT,');
      Q.SQL.Add(' FACTPROVEEDOR, FVENCIMIENTO, CONCEPTO)');
      Q.SQL.Add('VALUES');
      Q.SQL.Add('(:SUBCUENTA, :SITUACION, :FEMISION, :IMPORTE, :FACTCLIENT,');
      Q.SQL.Add(' :FACTPROVEEDOR, :FVENCIMIENTO, :CONCEPTO)');

      FNumVencim := 0;
      QFichero.First;
      while not QFichero.EOF do begin
         Inc(FNumVencim);
         Q.ParamByName('SUBCUENTA').AsString     := FSubcuenta;
         Q.ParamByName('SITUACION').AsString     := 'N';
         Q.ParamByName('FEMISION').AsDateTime    := QFicheroFEmision.AsDateTime;
         Q.ParamByName('IMPORTE').AsFloat        := RoundTo(QFicheroIMPORTE.AsFloat, -2);
         Q.ParamByName('FACTCLIENT').AsString    := '';
         Q.ParamByName('FACTPROVEEDOR').AsString := '';
         if FEsFacturaCompra then begin
            Q.ParamByName('FACTPROVEEDOR').AsString := FFactura;
         end
         else begin
            Q.ParamByName('FACTCLIENT').AsString := FFactura;
         end;
         Q.ParamByName('FVENCIMIENTO').AsDateTime := QFicheroFVENCIMIENTO.AsDateTime;
         if FEsFacturaCompra then begin
            Q.ParamByName('CONCEPTO').AsString := 'PAGO VTO. ' + QFicheroFVENCIMIENTO.AsString + ' FACT. ' + FFactura;
         end
         else begin
            Q.ParamByName('CONCEPTO').AsString := 'COBRO VTO. ' + QFicheroFVENCIMIENTO.AsString + ' FACT. ' + FFactura;
         end;
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
         QFichero.Next;
      end;

      QFichero.First;

      if FNumVencim = 1 then begin
         MessageDlg('Generados el vencimiento correspondiente a la factura ' + FFactura, mtInformation, [mbOK], 0);
      end
      else begin
         MessageDlg('Generados los ' + IntToStr(FNumVencim) + ' vencimientos correspondientes ' +
                    'a la factura ' + FFactura, mtInformation, [mbOK], 0);
      end;
   finally
      Q.Free;
   end;

   Close;
end;

procedure TWVencimientos.BtnCancelClick(Sender: TObject);
begin
   // Pasamos al siguiente campo antes de comprobar si se ha modificado el registro.
   Perform(wm_NextDlgCtl, 0, 0);

   if QFichero.IsEmpty then Exit;

   if MessageDlg('¿Quiere anular las vencimientos generados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      try    QFichero.Cancel;
      except DatabaseError('No se ha podido cancelar la operación.');
      end;
      Close;
   end;
end;

procedure TWVencimientos.FormShow(Sender: TObject);
begin
   QFichero.CreateDataSet;
   QFichero.Active := True;
   
   Grid.SetFocus;
   GenerarVencimientos;
end;

procedure TWVencimientos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case Key of
      VK_F4: begin
         if not (QFichero.State in dsEditModes) then begin
            BtnNew.Click;
         end;
      end;
      VK_F9: begin
         if QFichero.State in dsEditModes then begin
            BtnAccept.Click;
         end;
      end;
   end;
end;

procedure TWVencimientos.FormClose(Sender: TObject; var action: TCloseaction);
begin
   if QFichero.State = dsBrowse then begin
      Action := caFree;
      FormManager.Free;
   end
   else ShowMessage('No puede cerrar el formulario estando en edición');
end;

procedure TWVencimientos.QFicheroAfterPost(DataSet: TDataSet);
begin
   if (QFicheroIMPORTE.AsFloat = 0) and (QFicheroFVENCIMIENTO.IsNull) then begin
      QFichero.Delete;
   end;
end;

procedure TWVencimientos.QFicheroBeforePost(DataSet: TDataSet);
begin
   if (QFicheroIMPORTE.AsFloat <> 0) and (QFicheroFVENCIMIENTO.IsNull) then begin
      DatabaseError('No se puede dejar la fecha de vencimiento en blanco.');
   end;
end;

procedure TWVencimientos.QFicheroBeforeInsert(DataSet: TDataSet);
begin
   FNumVencim        := 0;
   FImporteAcumulado := 0;

   if QFichero.State in dsEditModes then begin
      QFichero.Post;
   end;

   QFichero.DisableControls;
   QFichero.First;
   while not QFichero.EOF do begin
      Inc(FNumVencim);
      FImporteAcumulado := FImporteAcumulado + QFicheroIMPORTE.AsFloat;
      QFichero.Next;
   end;
   QFichero.EnableControls;
end;

procedure TWVencimientos.QFicheroNewRecord(DataSet: TDataSet);
var Fecha      :TDateTime;
    FechaPago1 :TDateTime;
    FechaPago2 :TDateTime;
    FechaPago3 :TDateTime;
begin
   FechaPago1 := 0;
   FechaPago2 := 0;
   FechaPago3 := 0;

   QFicheroIMPORTEFACTURA.AsFloat := FImporteFactura;
   QFicheroFEMISION.AsDateTime    := FFechaEmision;
   QFicheroNUMERO.AsInteger       := FNumVencim + 1;
   QFicheroIMPORTE.AsFloat        := RoundTo(FImporteFactura - FImporteAcumulado, -2);
   QFicheroSUBCUENTA.AsString     := FSubcuenta;
   QFicheroDESCRIPCION.AsString   := FDescSubcuenta;
   QFicheroFORMAPAGO.AsString     := FFormaPago;
   QFicheroDESCFORMAPAGO.AsString := FDescFormaPago;

   Fecha := FFechaUltimo;
   if FClase = 'D' then begin
      Fecha := Fecha + FIntervalo;
   end
   else begin
      Fecha := IncMonth(Fecha, FIntervalo);
   end;

   if FDiaPago1 > 0 then begin
      try
         FechaPago1 := StrToDateTime(IntToStr(FDiaPago1) + '/' +
            IntToStr(MonthOf(Fecha)) + '/' +
            IntToStr(YearOf(Fecha)));
      except
         FechaPago1 := 0;
      end;
   end;

   if FDiaPago2 > 0 then begin
      try
         FechaPago2 := StrToDateTime(IntToStr(FDiaPago2) + '/' +
            IntToStr(MonthOf(Fecha)) + '/' +
            IntToStr(YearOf(Fecha)));
      except
         FechaPago2 := 0;
      end;
   end;

   if FDiaPago3 > 0 then begin
      try
         FechaPago3 := StrToDateTime(IntToStr(FDiaPago3) + '/' +
            IntToStr(MonthOf(Fecha)) + '/' +
            IntToStr(YearOf(Fecha)));
      except
         FechaPago3 := 0;
      end;
   end;

   if (FechaPago1 <> 0) and (FechaPago1 - Fecha >= 0) then begin
      QFicheroFVENCIMIENTO.AsDateTime := FechaPago1;
   end
   else
   if (FechaPago2 <> 0) and (FechaPago2 - Fecha >= 0) then begin
      QFicheroFVENCIMIENTO.AsDateTime := FechaPago2;
   end
   else
   if (FechaPago3 <> 0) and (FechaPago3 - Fecha >= 0) then begin
      QFicheroFVENCIMIENTO.AsDateTime := FechaPago3;
   end
   else begin
      QFicheroFVENCIMIENTO.AsDateTime := Fecha;
   end;

   FFechaUltimo := QFicheroFVENCIMIENTO.AsDateTime;
end;

end.
