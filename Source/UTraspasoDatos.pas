unit UTraspasoDatos;

interface

uses Buttons, Classes, comctrls, Controls, Db, DBClient, DBCtrls, Dialogs, ExtCtrls,
     Forms, Graphics, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery, IBX.IBSQL, Mask, Messages,
     StdCtrls, SysUtils, Windows, IBX.IBTable;

type
  TWTraspasoDatos = class(TForm)
    lTitulo: TLabel;
    Shape1: TShape;
    GroupBox1: TGroupBox;
    BtnEdtAceptar: TButton;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    cbPaises: TCheckBox;
    cbProvincias: TCheckBox;
    GroupBox3: TGroupBox;
    cbTitulos: TCheckBox;
    cbSubcuentas: TCheckBox;
    cbGrupos: TCheckBox;
    cbCuentas: TCheckBox;
    cbDatos: TCheckBox;
    cbAmortizacion: TCheckBox;
    cbCartera: TCheckBox;
    cbDiario: TCheckBox;
    cbConceptos: TCheckBox;
    Directorio: TDBEdit;
    Fichero: TIBTable;
    QAux: TIBSQL;
    QChequeo: TIBSQL;
    Memo1: TMemo;
    Label1: TLabel;
    QChequeo1: TIBSQL;
    QInsertar: TIBSQL;
    cbAnalitica: TCheckBox;
    cbDiarioJL: TCheckBox;
    cbInicio: TCheckBox;
    BtnEdtImprimir: TButton;
    QFichero: TClientDataSet;
    SFichero: TDataSource;
    cbSubctaAcum: TCheckBox;
    cbCuentasAcum: TCheckBox;
    fcGroupBox1: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    FiltroBaseDesde: TDBEdit;
    FiltroBaseHasta: TDBEdit;
    FiltroFechaFacturaDesde: TEdit;
    FiltroFechaFacturaHasta: TEdit;
    cbActivarFiltro: TCheckBox;
    QFicherodescripcion: TStringField;
    QFicherofecha1: TDateTimeField;
    QFicherofecha2: TDateTimeField;
    QFicheroasiento1: TIntegerField;
    QFicheroasiento2: TIntegerField;
    cbDos: TCheckBox;
    CheckBoxEspecifico: TCheckBox;
    dbEspecifica: TIBDatabase;
    TrEspecifica: TIBTransaction;
    ConexionEspecifica: TEdit;
    QChequeo2: TIBSQL;
    QAuxD: TIBQuery;
    procedure BtnEdtAceptarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnEdtImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var WTraspasoDatos: TWTraspasoDatos;

implementation

uses DM, DMConta, Globales, DateUtils, Tools, Math;

{$R *.DFM}

procedure TWTraspasoDatos.BtnEdtAceptarClick(Sender: TObject);
var cAux           :string;
    cGrupo1        :string;
    cGrupo2        :string;
    cPais          :string;
    cProvincia     :string;
    cContrapartida :string;
    cDocumento     :string;
    nDocumento     :Integer;
    nAsiento       :Integer;
    //cNif           :string;
    //cNifCopia      :string;
    Q              :TIBSQL;

begin
   // Pasamos al siguiente registro para que el ultimo campo se guarde correctamente
   Perform(wm_NextDlgCtl, 0, 0);
   if QFichero.state in dseditmodes then begin
      QFichero.Post;
   end;
   nDocumento := 0;
   cDocumento := 'Contab2003';

   {Shall bee corrected}
   //Fichero.DataBase := Directorio.Text;

   if CheckBoxEspecifico.Checked then  begin
      DBEspecifica.Connected := False;
      TrEspecifica.Active    := False;

      DBEspecifica.Params.Clear;
      DBEspecifica.Params.Add('user_name=SYSDBA');
      DBEspecifica.Params.Add('password=masterkey');
      DBEspecifica.DatabaseName := ConexionEspecifica.Text;
      DBEspecifica.Connected    := True;

      TrEspecifica.Active := True;
      QAux.Close;
      QAux.SQL.Clear;
      QAux.Database    := DbEspecifica;
      QAux.Transaction := TrEspecifica;
      QAux.SQL.Add('Update subctas set descripcion=:descripcion');
      QAux.SQL.Add('where subcuenta=:subcuenta');

      Q := TIBSQL.Create(nil);
      try
         Q.Database := DBEspecifica;
         Q.SQL.Add('Select nomfiscal,subcta from clientes');
         Q.SQL.Add('order by subcta');
         Q.ExecQuery;
         while not Q.EOF do begin
            if (Q.FieldByName('SUBCTA').AsString <> '') then begin
               QAux.Close;
               QAux.params.byname('DESCRIPCION').AsString := Q.FieldByName('NOMFISCAL').AsString;
               QAux.params.byname('SUBCUENTA'  ).AsString := Q.FieldByName('SUBCTA'   ).AsString;
               QAux.ExecQuery;
               QAux.Transaction.CommitRetaining;
            end;
            Q.Next;
         end;
      finally
         Q.Free;
      end;
      CheckBoxEspecifico.Checked := False;
      ShowMessage('Proceso finalizado');
      Exit;
   end;

   if cbInicio.Checked then  begin
      Q := TIBSQL.Create(nil);
      try
         Q.Database := QAux.Database;
         Q.SQL.Add('Execute procedure Inicializar_BD');
         Q.ExecQuery;
         Q.Transaction.CommitRetaining;
      finally
         Q.Free;
      end;
      cbInicio.Checked := False;
   end;

   // Fichero Provincias
   if cbProvincias.Checked then  begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from provincias');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('Insert INTO PROVINCIAS(PROVINCIA,NOMBRE,CODIGO) ');
      QAux.SQL.Add(' VALUES (:PROVINCIA,:Nombre,:CODIGO)');
      
      Fichero.Close;
      Fichero.Tablename := 'provinci';
      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Params.byname('provincia').AsString := Fichero.FieldByName('provincia').AsString;
         QAux.Params.byname('nombre').AsString    := Fichero.FieldByName('nombre').AsString;
         QAux.Params.byname('codigo').AsString    := Fichero.FieldByName('codigo').AsString;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      Fichero.Close;
      cbProvincias.Checked := False;
   end;

   // Fichero Paises
   if cbPaises.Checked then  begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from paises');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('Insert INTO PAISES(PAIS,NOMBRE) ');
      QAux.SQL.Add(' VALUES (:PAIS,:Nombre)');

      Fichero.Close;
      Fichero.Tablename := 'pais';
      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Params.byname('pais').AsString   := Fichero.FieldByName('pais').AsString;
         QAux.Params.byname('nombre').AsString := Fichero.FieldByName('nombre').AsString;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      Fichero.Close;
      
      cbPaises.Checked := False;
   end;

   // Fichero Titulos
   if cbTitulos.Checked then  begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from titulos');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add(' INSERT INTO TITULOS (TITULO,DESCRIPCION,RESTA1,RESTA2,RESTA3,RESTA4,RESTA5,');
      QAux.SQL.Add(' RESTA6,SUMA1,SUMA2,SUMA3,SUMA4,SUMA5,SUMA6) ');
      QAux.SQL.Add(' VALUES (:TITULO,:DESCRIPCION,:RESTA1,:RESTA2,:RESTA3,:RESTA4,:RESTA5,');
      QAux.SQL.Add(' :RESTA6,:SUMA1,:SUMA2,:SUMA3,:SUMA4,:SUMA5,:SUMA6) ');

      Fichero.Close;
      if cbDos.Checked then begin
         Fichero.Tablename := 'c_Titulo.dbf';
      end
      else begin
         Fichero.Tablename := 'TITULOS';
      end;

      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Params.byname('TITULO').AsString := Fichero.FieldByName('TITULO').AsString;
         if cbDos.Checked then begin
            QAux.Params.byname('DESCRIPCION').AsString := Fichero.FieldByName('DESCRIBE').AsString;
         end
         else begin
            QAux.Params.byname('DESCRIPCION').AsString := Fichero.FieldByName('DESCRIPCION').AsString;
         end;
         QAux.Params.ByName('RESTA1').AsString := Fichero.FieldByName('RESTA1').AsString;
         QAux.Params.ByName('RESTA2').AsString := Fichero.FieldByName('RESTA2').AsString;
         QAux.Params.ByName('RESTA3').AsString := Fichero.FieldByName('RESTA3').AsString;
         QAux.Params.ByName('RESTA4').AsString := Fichero.FieldByName('RESTA4').AsString;
         QAux.Params.ByName('RESTA5').AsString := Fichero.FieldByName('RESTA5').AsString;
         QAux.Params.ByName('RESTA6').AsString := Fichero.FieldByName('RESTA6').AsString;
         QAux.Params.ByName('SUMA1').AsString  := Fichero.FieldByName('SUMA1').AsString;
         QAux.Params.ByName('SUMA2').AsString  := Fichero.FieldByName('SUMA2').AsString;
         QAux.Params.ByName('SUMA3').AsString  := Fichero.FieldByName('SUMA3').AsString;
         QAux.Params.ByName('SUMA4').AsString  := Fichero.FieldByName('SUMA4').AsString;
         QAux.Params.ByName('SUMA5').AsString  := Fichero.FieldByName('SUMA5').AsString;
         QAux.Params.ByName('SUMA6').AsString  := Fichero.FieldByName('SUMA6').AsString;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      Fichero.Close;

      cbTitulos.Checked := False;
   end;

   // Fichero Grupos
   if cbGrupos.Checked then begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from grupos');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add(' INSERT INTO GRUPOS (GRUPO,DESCRIPCION)');
      QAux.SQL.Add(' VALUES (:GRUPO,:DESCRIPCION)');

      Fichero.Close;
      if cbDos.Checked then begin
         Fichero.Tablename := 'c_grupo.dbf';
      end
      else begin
         Fichero.Tablename := 'GRUPOS';
      end;

      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Params.byname('GRUPO').AsString := Fichero.FieldByName('GRUPO').AsString;
         if cbDos.Checked then begin
            QAux.Params.byname('DESCRIPCION').AsString := Fichero.FieldByName('DESCRIBE').AsString;
         end
         else begin
            QAux.Params.byname('DESCRIPCION').AsString := Fichero.FieldByName('DESCRIPCION').AsString;
         end;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      Fichero.Close;

      cbGrupos.Checked := False;
   end;

   // Fichero Cuentas
   if cbCuentas.Checked then  begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from cuentas');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add(' INSERT INTO CUENTAS (CUENTA,ACUDB01,ACUDB02,ACUDB03,ACUDB04,ACUDB05,');
      QAux.SQL.Add(' ACUDB06,ACUDB07,ACUDB08,ACUDB09,ACUDB10,ACUDB11,ACUDB12,ACUHB01,ACUHB02,');
      QAux.SQL.Add(' ACUHB03,ACUHB04,ACUHB05,ACUHB06,ACUHB07,ACUHB08,ACUHB09,ACUHB10,ACUHB11,');
      QAux.SQL.Add(' ACUHB12,ANTDB01,ANTDB02,ANTDB03,ANTDB04,ANTDB05,ANTDB06,ANTDB07,ANTDB08,');
      QAux.SQL.Add(' ANTDB09,ANTDB10,ANTDB11,ANTDB12,ANTHB01,ANTHB02,ANTHB03,ANTHB04,ANTHB05,');
      QAux.SQL.Add(' ANTHB06,ANTHB07,ANTHB08,ANTHB09,ANTHB10,ANTHB11,ANTHB12,ANTHB,ANTDB,');
      QAux.SQL.Add(' DESCRIPCION,SUMADB,SUMAHB,TIPOCUENTA) ');
      QAux.SQL.Add(' VALUES (:CUENTA,:ACUDB01,:ACUDB02,:ACUDB03,:ACUDB04,:ACUDB05,');
      QAux.SQL.Add(' :ACUDB06,:ACUDB07,:ACUDB08,:ACUDB09,:ACUDB10,:ACUDB11,:ACUDB12,:ACUHB01,:ACUHB02,');
      QAux.SQL.Add(' :ACUHB03,:ACUHB04,:ACUHB05,:ACUHB06,:ACUHB07,:ACUHB08,:ACUHB09,:ACUHB10,:ACUHB11,');
      QAux.SQL.Add(' :ACUHB12,:ANTDB01,:ANTDB02,:ANTDB03,:ANTDB04,:ANTDB05,:ANTDB06,:ANTDB07,:ANTDB08,');
      QAux.SQL.Add(' :ANTDB09,:ANTDB10,:ANTDB11,:ANTDB12,:ANTHB01,:ANTHB02,:ANTHB03,:ANTHB04,:ANTHB05,');
      QAux.SQL.Add(' :ANTHB06,:ANTHB07,:ANTHB08,:ANTHB09,:ANTHB10,:ANTHB11,:ANTHB12,:ANTHB,:ANTDB,');
      QAux.SQL.Add(' :DESCRIPCION,:SUMADB,:SUMAHB,:TIPOCUENTA) ');

      QChequeo.Close;
      QChequeo.SQL.Clear;
      QChequeo.SQL.Add('select count(*) as cuantos from grupos where grupo=:grupo');

      QChequeo1.Close;
      QChequeo1.SQL.Clear;
      QChequeo1.SQL.Add('select count(*) as cuantos from titulos where titulo=:titulo');

      Fichero.Close;
      if cbDos.Checked then begin
         Fichero.TableName := 'c_cuenta.dbf';
      end
      else begin
         Fichero.Tablename := 'CUENTAS';
      end;
      Fichero.Open;
      while not Fichero.EOF do begin
         if cbDos.Checked then begin
            QAux.Params.byname('CUENTA').AsString      := Fichero.FieldByName('codigo').AsString;
            QAux.Params.byname('DESCRIPCION').AsString := Fichero.FieldByName('DESCRIBE').AsString;
            QAux.Params.byname('TIPOCUENTA').AsString  := '';
         end
         else begin
            QAux.Params.Byname('CUENTA'     ).AsString :=                Fichero.FieldByName('CUENTA'     ).AsString;
            QAux.Params.byname('DESCRIPCION').AsString :=                Fichero.FieldByName('DESCRIPCION').AsString;
            QAux.Params.byname('TIPOCUENTA' ).AsString :=                Fichero.FieldByName('TIPOCUENTA' ).AsString;
            QAux.Params.byname('ACUDB01'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB01'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB02'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB02'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB03'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB03'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB04'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB04'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB05'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB05'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB06'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB06'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB07'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB07'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB08'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB08'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB09'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB09'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB10'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB10'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB11'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB11'    ).AsFloat, -2);
            QAux.Params.byname('ACUDB12'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUDB12'    ).AsFloat, -2);
            QAux.Params.byname('SUMADB'     ).AsFloat  := RoundTo(Fichero.FieldByName('SUMADB'     ).AsFloat, -2);
            QAux.Params.byname('ACUHB01'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB01'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB02'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB02'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB03'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB03'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB04'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB04'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB05'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB05'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB06'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB06'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB07'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB07'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB08'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB08'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB09'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB09'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB10'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB10'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB11'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB11'    ).AsFloat, -2);
            QAux.Params.byname('ACUHB12'    ).AsFloat  := RoundTo(Fichero.FieldByName('ACUHB12'    ).AsFloat, -2);
            QAux.Params.byname('SUMAHB'     ).AsFloat  := RoundTo(Fichero.FieldByName('SUMAHB'     ).AsFloat, -2);
            QAux.Params.byname('ANTDB01'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB01'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB02'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB02'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB03'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB03'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB04'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB04'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB05'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB05'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB06'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB06'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB07'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB07'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB08'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB08'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB09'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB09'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB10'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB10'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB11'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB11'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB12'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB12'    ).AsFloat, -2);
            QAux.Params.byname('ANTDB'      ).AsFloat  := RoundTo(Fichero.FieldByName('ANTDB'      ).AsFloat, -2);
            QAux.Params.byname('ANTHB01'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB01'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB02'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB02'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB03'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB03'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB04'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB04'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB05'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB05'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB06'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB06'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB07'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB07'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB08'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB08'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB09'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB09'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB10'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB10'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB11'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB11'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB12'    ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB12'    ).AsFloat, -2);
            QAux.Params.byname('ANTHB'      ).AsFloat  := RoundTo(Fichero.FieldByName('ANTHB'      ).AsFloat, -2);
         end;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;

      Fichero.First;
      while not Fichero.EOF do begin
         // Antes de dar de alta verificar si existe el grupo1 y 2 en grupos
         cGrupo1 := Fichero.FieldByName('grupo1').AsString;
         if cGrupo1 <> '' then begin
            QChequeo.Close;
            QChequeo.params.ByName('grupo').AsString := cgrupo1;
            QChequeo.ExecQuery;
            if not (QChequeo.FieldByName('cuantos').AsInteger > 0) then begin
               QInsertar.Close;
               QInsertar.Sql.Clear;
               QInsertar.Sql.Add('Insert into grupos(grupo,descripcion) ');
               QInsertar.Sql.Add(' Values(:grupo,:descripcion) ');
               QInsertar.ParamByName('grupo').AsString       := Fichero.FieldByName('grupo1').AsString;
               QInsertar.ParamByName('descripcion').AsString := 'Creado en traspaso de datos';
               QInsertar.ExecQuery;
               QInsertar.Transaction.Commitretaining;
               if cbDos.Checked then begin
                  Memo1.Lines.Add('Cuenta: ' + Fichero.FieldByName('codigo').AsString +
                     '. El grupo1 ' + Fichero.FieldByName('grupo1').AsString + ' no existe, se crea.');
               end
               else begin
                  Memo1.Lines.Add('Cuenta: ' + Fichero.FieldByName('cuenta').AsString +
                     '. El grupo1 ' + Fichero.FieldByName('grupo1').AsString + ' no existe, se crea.');
               end;

               // Chequear si existe el titulo
               QChequeo1.Close;
               QChequeo1.Params.byname('titulo').AsString := Copy(Trim(cgrupo1), 1, 2);
               QChequeo1.ExecQuery;
               if not (QChequeo1.FieldByName('cuantos').AsInteger > 0) then begin
                  QInsertar.Close;
                  QInsertar.Sql.Clear;
                  QInsertar.Sql.Add('Insert into titulos(titulo,descripcion) ');
                  QInsertar.Sql.Add(' Values(:titulo,:descripcion) ');
                  QInsertar.ParamByName('titulo').AsString      := Copy(Trim(Fichero.FieldByName('grupo1').AsString), 1, 2);
                  QInsertar.ParamByName('descripcion').AsString := 'Creado en traspaso de datos';
                  QInsertar.ExecQuery;
                  QInsertar.Transaction.Commitretaining;
                  if cbDos.Checked then begin
                     Memo1.Lines.Add('Cuenta: ' + Fichero.FieldByName('codigo').AsString +
                        '. El titulo ' + Copy(Trim(Fichero.FieldByName('grupo1').AsString), 1, 2) +
                        ' no existe, se crea.');
                  end
                  else begin
                     Memo1.Lines.Add('Cuenta: ' + Fichero.FieldByName('cuenta').AsString +
                        '. El titulo ' + Copy(Trim(Fichero.FieldByName('grupo1').AsString), 1, 2) +
                        ' no existe, se crea.');
                  end;
               end;
            end;
         end;

         cGrupo2 := Fichero.FieldByName('grupo2').AsString;
         if cGrupo2 <> '' then begin
            QChequeo.Close;
            QChequeo.params.byname('grupo').AsString := cgrupo2;
            QChequeo.execquery;
            if not (QChequeo.FieldByName('cuantos').AsInteger > 0) then begin
               QInsertar.Close;
               QInsertar.Sql.Clear;
               QInsertar.Sql.Add('Insert into grupos(grupo,descripcion) ');
               QInsertar.Sql.Add(' Values(:grupo,:descripcion) ');
               QInsertar.ParamByName('grupo').AsString       := Fichero.FieldByName('grupo2').AsString;
               QInsertar.ParamByName('descripcion').AsString := 'Creado en traspaso de datos';
               QInsertar.ExecQuery;
               QInsertar.Transaction.Commitretaining;
               if cbDos.Checked then begin
                  Memo1.Lines.Add('Cuenta: ' + Fichero.FieldByName('codigo').AsString +
                     '. El grupo2 ' + Fichero.FieldByName('grupo2').AsString + ' no existe, se crea.');
               end
               else begin
                  Memo1.Lines.Add('Cuenta: ' + Fichero.FieldByName('cuenta').AsString +
                     '. El grupo2 ' + Fichero.FieldByName('grupo2').AsString + ' no existe, se crea.');
               end;
               // Chequear si existe el titulo
               QChequeo1.Close;
               QChequeo1.params.byname('titulo').AsString := Copy(Trim(cgrupo1), 1, 2);
               QChequeo1.execquery;
               if not (QChequeo1.FieldByName('cuantos').AsInteger > 0) then begin
                  QInsertar.Close;
                  QInsertar.Sql.Clear;
                  QInsertar.Sql.Add('Insert into titulos(titulo,descripcion) ');
                  QInsertar.Sql.Add(' Values(:titulo,:descripcion) ');
                  QInsertar.ParamByName('titulo').AsString      :=
                     Copy(Trim(Fichero.FieldByName('grupo1').AsString), 1, 2);
                  QInsertar.ParamByName('descripcion').AsString := 'Creado en traspaso de datos';
                  QInsertar.ExecQuery;
                  QInsertar.Transaction.Commitretaining;
                  if cbDos.Checked then begin
                     Memo1.Lines.Add('Cuenta: ' + Fichero.FieldByName('codigo').AsString +
                        '. El titulo ' + Copy(Trim(Fichero.FieldByName('grupo1').AsString), 1, 2) +
                        ' no existe, se crea.');
                  end
                  else begin
                     Memo1.Lines.Add('Cuenta: ' + Fichero.FieldByName('cuenta').AsString +
                        '. El titulo ' + Copy(Trim(Fichero.FieldByName('grupo1').AsString), 1, 2) +
                        ' no existe, se crea.');
                  end;
               end;
            end;
         end;

         if (cGrupo1 <> '') and (cGrupo2 = '') then begin
            QAux.Close;
            QAux.sql.Clear;
            QAux.Sql.Add('update cuentas set grupo1=:grupo1');
            QAux.sql.Add('where cuenta=:cuenta');
            if cbDos.Checked then begin
               QAux.params.byname('cuenta').AsString := Fichero.FieldByName('codigo').AsString;
            end
            else begin
               QAux.params.byname('cuenta').AsString := Fichero.FieldByName('cuenta').AsString;
            end;
            QAux.params.byname('grupo1').AsString := Fichero.FieldByName('grupo1').AsString;
            QAux.ExecQuery;
            QAux.Transaction.CommitRetaining;
         end
         else
         if (cGrupo1 = '') and (cGrupo2 <> '') then begin
            QAux.Close;
            QAux.sql.Clear;
            QAux.Sql.Add('update cuentas set grupo2=:grupo2');
            QAux.sql.Add('where cuenta=:cuenta');
            if cbDos.Checked then begin
               QAux.params.byname('cuenta').AsString := Fichero.FieldByName('codigo').AsString;
            end
            else begin
               QAux.params.byname('cuenta').AsString := Fichero.FieldByName('cuenta').AsString;
            end;
            QAux.params.byname('grupo2').AsString := Fichero.FieldByName('grupo2').AsString;
            QAux.ExecQuery;
            QAux.Transaction.CommitRetaining;
         end
         else
         if (cGrupo1 <> '') and (cGrupo2 <> '') then begin
            QAux.Close;
            QAux.sql.Clear;
            QAux.Sql.Add('update cuentas set grupo1=:grupo1,grupo2=:grupo2');
            QAux.sql.Add('where cuenta=:cuenta');
            if cbDos.Checked then begin
               QAux.params.byname('cuenta').AsString := Fichero.FieldByName('codigo').AsString;
            end
            else begin
               QAux.params.byname('cuenta').AsString := Fichero.FieldByName('cuenta').AsString;
            end;
            QAux.params.byname('grupo1').AsString := Fichero.FieldByName('grupo1').AsString;
            QAux.params.byname('grupo2').AsString := Fichero.FieldByName('grupo2').AsString;
            QAux.ExecQuery;
            QAux.Transaction.CommitRetaining;
         end;
         Fichero.Next;
      end;
      Fichero.Close;
      cbCuentas.Checked := False;
   end;

   // Fichero Cuentas - Actualizar solo saldos acumulados año anterior
   if cbCuentasAcum.Checked then  begin
      QAux.SQL.Clear;
      QAux.SQL.Add(' UPDATE CUENTAS SET ');
      QAux.SQL.Add(' ANTDB01=:ANTDB01,ANTDB02=:ANTDB02,ANTDB03=:ANTDB03,ANTDB04=:ANTDB04,ANTDB05=:ANTDB05,');
      QAux.SQL.Add(' ANTDB06=:ANTDB06,ANTDB07=:ANTDB07,ANTDB08=:ANTDB08,ANTDB09=:ANTDB09,ANTDB10=:ANTDB10,');
      QAux.SQL.Add(' ANTDB11=:ANTDB11,ANTDB12=:ANTDB12,ANTHB01=:ANTHB01,ANTHB02=:ANTHB02,ANTHB03=:ANTHB03,');
      QAux.SQL.Add(' ANTHB04=:ANTHB04,ANTHB05=:ANTHB05,ANTHB06=:ANTHB06,ANTHB07=:ANTHB07,ANTHB08=:ANTHB08,');
      QAux.SQL.Add(' ANTHB09=:ANTHB09,ANTHB10=:ANTHB10,ANTHB11=:ANTHB11,ANTHB12=:ANTHB12,ANTHB=:ANTHB,ANTDB=:ANTDB');
      QAux.SQL.Add(' WHERE CUENTA=:CUENTA');


      Fichero.Close;
      Fichero.Tablename := 'CUENTAS';
      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Params.byname('CUENTA').AsString :=                Fichero.FieldByName('CUENTA').AsString;
         QAux.Params.byname('ANTDB01').AsFloat := RoundTo(Fichero.FieldByName('ACUDB01').AsFloat, -2);
         QAux.Params.byname('ANTDB02').AsFloat := RoundTo(Fichero.FieldByName('ACUDB02').AsFloat, -2);
         QAux.Params.byname('ANTDB03').AsFloat := RoundTo(Fichero.FieldByName('ACUDB03').AsFloat, -2);
         QAux.Params.byname('ANTDB04').AsFloat := RoundTo(Fichero.FieldByName('ACUDB04').AsFloat, -2);
         QAux.Params.byname('ANTDB05').AsFloat := RoundTo(Fichero.FieldByName('ACUDB05').AsFloat, -2);
         QAux.Params.byname('ANTDB06').AsFloat := RoundTo(Fichero.FieldByName('ACUDB06').AsFloat, -2);
         QAux.Params.byname('ANTDB07').AsFloat := RoundTo(Fichero.FieldByName('ACUDB07').AsFloat, -2);
         QAux.Params.byname('ANTDB08').AsFloat := RoundTo(Fichero.FieldByName('ACUDB08').AsFloat, -2);
         QAux.Params.byname('ANTDB09').AsFloat := RoundTo(Fichero.FieldByName('ACUDB09').AsFloat, -2);
         QAux.Params.byname('ANTDB10').AsFloat := RoundTo(Fichero.FieldByName('ACUDB10').AsFloat, -2);
         QAux.Params.byname('ANTDB11').AsFloat := RoundTo(Fichero.FieldByName('ACUDB11').AsFloat, -2);
         QAux.Params.byname('ANTDB12').AsFloat := RoundTo(Fichero.FieldByName('ACUDB12').AsFloat, -2);
         QAux.Params.byname('ANTDB'  ).AsFloat := RoundTo(Fichero.FieldByName('SUMADB' ).AsFloat, -2);
         QAux.Params.byname('ANTHB01').AsFloat := RoundTo(Fichero.FieldByName('ACUHB01').AsFloat, -2);
         QAux.Params.byname('ANTHB02').AsFloat := RoundTo(Fichero.FieldByName('ACUHB02').AsFloat, -2);
         QAux.Params.byname('ANTHB03').AsFloat := RoundTo(Fichero.FieldByName('ACUHB03').AsFloat, -2);
         QAux.Params.byname('ANTHB04').AsFloat := RoundTo(Fichero.FieldByName('ACUHB04').AsFloat, -2);
         QAux.Params.byname('ANTHB05').AsFloat := RoundTo(Fichero.FieldByName('ACUHB05').AsFloat, -2);
         QAux.Params.byname('ANTHB06').AsFloat := RoundTo(Fichero.FieldByName('ACUHB06').AsFloat, -2);
         QAux.Params.byname('ANTHB07').AsFloat := RoundTo(Fichero.FieldByName('ACUHB07').AsFloat, -2);
         QAux.Params.byname('ANTHB08').AsFloat := RoundTo(Fichero.FieldByName('ACUHB08').AsFloat, -2);
         QAux.Params.byname('ANTHB09').AsFloat := RoundTo(Fichero.FieldByName('ACUHB09').AsFloat, -2);
         QAux.Params.byname('ANTHB10').AsFloat := RoundTo(Fichero.FieldByName('ACUHB10').AsFloat, -2);
         QAux.Params.byname('ANTHB11').AsFloat := RoundTo(Fichero.FieldByName('ACUHB11').AsFloat, -2);
         QAux.Params.byname('ANTHB12').AsFloat := RoundTo(Fichero.FieldByName('ACUHB12').AsFloat, -2);
         QAux.Params.byname('ANTHB').AsFloat   := RoundTo(Fichero.FieldByName('SUMAHB').AsFloat , -2);
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      cbCuentasAcum.Checked := False;
   end;

   // Fichero SubCuentas
   if cbSubCuentas.Checked then  begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from subctas');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;

      QChequeo.Close;
      QChequeo.SQL.Clear;
      QChequeo.SQL.Add('select count(*) as cuantos from provincias where provincia=:provincia');

      QChequeo1.Close;
      QChequeo1.SQL.Clear;
      QChequeo1.SQL.Add('select count(*) as cuantos from paises where pais=:pais');

      Fichero.Close;
      if cbDos.Checked then begin
         Fichero.Tablename := 'c_subcta.dbf';
      end
      else begin
         Fichero.Tablename := 'SUBCTAS';
      end;
      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Close;
         QAux.SQL.Clear;
         QAux.Sql.Add(' INSERT INTO SUBCTAS (ACUDB01,ACUDB02,ACUDB03,ACUDB04,ACUDB05,ACUDB06,');
         QAux.Sql.Add(' ACUDB07,ACUDB08,ACUDB09,ACUDB10,ACUDB11,ACUDB12,ACUHB01,ACUHB02,');
         QAux.Sql.Add(' ACUHB03,ACUHB04,ACUHB05,ACUHB06,ACUHB07,ACUHB08,ACUHB09,ACUHB10,');
         QAux.Sql.Add(' ACUHB11,ACUHB12,ANTDB,ANTDB01,ANTDB02,ANTDB03,ANTDB04,ANTDB05,');
         QAux.Sql.Add(' ANTDB06,ANTDB07,ANTDB08,ANTDB09,ANTDB10,ANTDB11,ANTDB12,ANTHB,');
         QAux.Sql.Add(' ANTHB01,ANTHB02,ANTHB03,ANTHB04,ANTHB05,ANTHB06,ANTHB07,ANTHB08,');
         QAux.Sql.Add(' ANTHB09,ANTHB10,ANTHB11,ANTHB12,ARRENDADOR,');
         QAux.Sql.Add(' DESCRIPCION,DIRECCION,FAX,IVA,PROFESIONAL,RECARGO,SUBCUENTA,');
         QAux.SQL.Add(' SUMADB,SUMAHB,TELEFONO,TIPOIVA,NIF,CODPOSTAL,POBLACION,');
         QAux.Sql.Add(' NUMERO, OBSOLETO) ');
         QAux.Sql.Add(' VALUES (:ACUDB01,:ACUDB02,:ACUDB03,:ACUDB04,:ACUDB05,:ACUDB06,');
         QAux.Sql.Add(' :ACUDB07,:ACUDB08,:ACUDB09,:ACUDB10,:ACUDB11,:ACUDB12,:ACUHB01,:ACUHB02,');
         QAux.Sql.Add(' :ACUHB03,:ACUHB04,:ACUHB05,:ACUHB06,:ACUHB07,:ACUHB08,:ACUHB09,:ACUHB10,');
         QAux.Sql.Add(' :ACUHB11,:ACUHB12,:ANTDB,:ANTDB01,:ANTDB02,:ANTDB03,:ANTDB04,:ANTDB05,');
         QAux.Sql.Add(' :ANTDB06,:ANTDB07,:ANTDB08,:ANTDB09,:ANTDB10,:ANTDB11,:ANTDB12,:ANTHB,');
         QAux.Sql.Add(' :ANTHB01,:ANTHB02,:ANTHB03,:ANTHB04,:ANTHB05,:ANTHB06,:ANTHB07,:ANTHB08,');
         QAux.Sql.Add(' :ANTHB09,:ANTHB10,:ANTHB11,:ANTHB12,:ARRENDADOR,');
         QAux.Sql.Add(' :DESCRIPCION,:DIRECCION,:FAX,:IVA,:PROFESIONAL,:RECARGO,:SUBCUENTA,');
         QAux.Sql.Add(' :SUMADB,:SUMAHB,:TELEFONO,:TIPOIVA,:NIF,:CODPOSTAL,:POBLACION,');
         QAux.Sql.Add(' :NUMERO, "N") ');
         if cbDos.Checked then begin
            QAux.Params.byname('SUBCUENTA').AsString   := Fichero.FieldByName('codscta').AsString;
            QAux.Params.byname('DESCRIPCION').AsString := Fichero.FieldByName('DESCRIBE').AsString;
            QAux.Params.byname('NIF').AsString         := Fichero.FieldByName('CIF').AsString;
            QAux.Params.byname('DIRECCION').AsString   := Fichero.FieldByName('Domicilio').AsString;
            QAux.Params.byname('CODPOSTAL').AsString   := Fichero.FieldByName('CODPOSTAL').AsString;
            QAux.Params.byname('POBLACION').AsString   := Fichero.FieldByName('POBLACION').AsString;
            QAux.Params.byname('TIPOIVA').AsString     := Fichero.FieldByName('TIPOIVA').AsString;
            QAux.Params.byname('IVA').AsInteger        := Fichero.FieldByName('IVA').AsInteger;
            QAux.Params.byname('RECARGO').AsInteger    := Fichero.FieldByName('RECequiv').AsInteger;
         end
         else begin
            QAux.Params.byname('SUBCUENTA').AsString   := Fichero.FieldByName('SUBCUENTA').AsString;
            QAux.Params.byname('DESCRIPCION').AsString := Fichero.FieldByName('DESCRIPCION').AsString;
            QAux.Params.byname('ARRENDADOR').AsString  := Fichero.FieldByName('ARRENDADOR').AsString;
            QAux.Params.byname('PROFESIONAL').AsString := Fichero.FieldByName('PROFESIONAL').AsString;
            QAux.Params.byname('TELEFONO').AsString    := Fichero.FieldByName('TELEFONO').AsString;
            QAux.Params.byname('FAX').AsString         := Fichero.FieldByName('FAX').AsString;
            QAux.Params.byname('NIF').AsString         := Fichero.FieldByName('NIF').AsString;
            QAux.Params.byname('DIRECCION').AsString   := Fichero.FieldByName('DIRECCION').AsString;
            QAux.Params.byname('CODPOSTAL').AsString   := Fichero.FieldByName('CODPOSTAL').AsString;
            QAux.Params.byname('POBLACION').AsString   := Fichero.FieldByName('POBLACION').AsString;
            QAux.Params.byname('NUMERO').AsString      := Fichero.FieldByName('NUMERO').AsString;
            QAux.Params.byname('TIPOIVA').AsString     := Fichero.FieldByName('TIPOIVA').AsString;
            QAux.Params.byname('IVA').AsInteger        := Fichero.FieldByName('IVA').AsInteger;
            QAux.Params.byname('RECARGO').AsInteger    := Fichero.FieldByName('RECARGO').AsInteger;
            QAux.Params.byname('ACUDB01').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB01').AsFloat, -2);
            QAux.Params.byname('ACUDB02').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB02').AsFloat, -2);
            QAux.Params.byname('ACUDB03').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB03').AsFloat, -2);
            QAux.Params.byname('ACUDB04').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB04').AsFloat, -2);
            QAux.Params.byname('ACUDB05').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB05').AsFloat, -2);
            QAux.Params.byname('ACUDB06').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB06').AsFloat, -2);
            QAux.Params.byname('ACUDB07').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB07').AsFloat, -2);
            QAux.Params.byname('ACUDB08').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB08').AsFloat, -2);
            QAux.Params.byname('ACUDB09').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB09').AsFloat, -2);
            QAux.Params.byname('ACUDB10').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB10').AsFloat, -2);
            QAux.Params.byname('ACUDB11').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB11').AsFloat, -2);
            QAux.Params.byname('ACUDB12').AsFloat      := RoundTo(Fichero.FieldByName('ACUDB12').AsFloat, -2);
            QAux.Params.byname('SUMADB').AsFloat       := RoundTo(Fichero.FieldByName('SUMADB' ).AsFloat, -2);
            QAux.Params.byname('ACUHB01').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB01').AsFloat, -2);
            QAux.Params.byname('ACUHB02').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB02').AsFloat, -2);
            QAux.Params.byname('ACUHB03').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB03').AsFloat, -2);
            QAux.Params.byname('ACUHB04').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB04').AsFloat, -2);
            QAux.Params.byname('ACUHB05').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB05').AsFloat, -2);
            QAux.Params.byname('ACUHB06').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB06').AsFloat, -2);
            QAux.Params.byname('ACUHB07').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB07').AsFloat, -2);
            QAux.Params.byname('ACUHB08').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB08').AsFloat, -2);
            QAux.Params.byname('ACUHB09').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB09').AsFloat, -2);
            QAux.Params.byname('ACUHB10').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB10').AsFloat, -2);
            QAux.Params.byname('ACUHB11').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB11').AsFloat, -2);
            QAux.Params.byname('ACUHB12').AsFloat      := RoundTo(Fichero.FieldByName('ACUHB12').AsFloat, -2);
            QAux.Params.byname('SUMAHB').AsFloat       := RoundTo(Fichero.FieldByName('SUMAHB' ).AsFloat, -2);
            QAux.Params.byname('ANTDB01').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB01').AsFloat, -2);
            QAux.Params.byname('ANTDB02').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB02').AsFloat, -2);
            QAux.Params.byname('ANTDB03').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB03').AsFloat, -2);
            QAux.Params.byname('ANTDB04').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB04').AsFloat, -2);
            QAux.Params.byname('ANTDB05').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB05').AsFloat, -2);
            QAux.Params.byname('ANTDB06').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB06').AsFloat, -2);
            QAux.Params.byname('ANTDB07').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB07').AsFloat, -2);
            QAux.Params.byname('ANTDB08').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB08').AsFloat, -2);
            QAux.Params.byname('ANTDB09').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB09').AsFloat, -2);
            QAux.Params.byname('ANTDB10').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB10').AsFloat, -2);
            QAux.Params.byname('ANTDB11').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB11').AsFloat, -2);
            QAux.Params.byname('ANTDB12').AsFloat      := RoundTo(Fichero.FieldByName('ANTDB12').AsFloat, -2);
            QAux.Params.byname('ANTDB').AsFloat        := RoundTo(Fichero.FieldByName('ANTDB'  ).AsFloat, -2);
            QAux.Params.byname('ANTHB01').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB01').AsFloat, -2);
            QAux.Params.byname('ANTHB02').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB02').AsFloat, -2);
            QAux.Params.byname('ANTHB03').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB03').AsFloat, -2);
            QAux.Params.byname('ANTHB04').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB04').AsFloat, -2);
            QAux.Params.byname('ANTHB05').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB05').AsFloat, -2);
            QAux.Params.byname('ANTHB06').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB06').AsFloat, -2);
            QAux.Params.byname('ANTHB07').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB07').AsFloat, -2);
            QAux.Params.byname('ANTHB08').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB08').AsFloat, -2);
            QAux.Params.byname('ANTHB09').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB09').AsFloat, -2);
            QAux.Params.byname('ANTHB10').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB10').AsFloat, -2);
            QAux.Params.byname('ANTHB11').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB11').AsFloat, -2);
            QAux.Params.byname('ANTHB12').AsFloat      := RoundTo(Fichero.FieldByName('ANTHB12').AsFloat, -2);
            QAux.Params.byname('ANTHB').AsFloat        := RoundTo(Fichero.FieldByName('ANTHB'  ).AsFloat, -2);
         end;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;

      Fichero.First;
      while not Fichero.EOF do begin
         // Antes de dar de alta verificar si existe la provincia
         if cbDos.Checked then begin
            cProvincia := 'M';
         end
         else begin
            cProvincia := Fichero.FieldByName('provincia').AsString;
         end;
         if cProvincia <> '' then begin
            QChequeo.Close;
            QChequeo.Params.ByName('provincia').AsString := cProvincia;
            QChequeo.ExecQuery;
            if not (QChequeo.FieldByName('cuantos').AsInteger > 0) then begin
               Memo1.Lines.Add('SubCuenta: ' + Fichero.FieldByName('subcuenta').AsString +
                  '. La provincia ' + Fichero.FieldByName('provincia').AsString + ' no existe, se crea.');
               cProvincia := Fichero.FieldByName('provincia').AsString;
               QAux.Close;
               QAux.sql.Clear;
               QAux.Sql.Add('insert into provincias(provincia,nombre) ');
               QAux.Sql.Add(' values(:provincia,"CREADO EN TRASPASO")');
               QAux.params.byname('provincia').AsString := Fichero.FieldByName('provincia').AsString;
               QAux.ExecQuery;
               QAux.Transaction.CommitRetaining;
            end;
         end;
         // Antes de dar de alta verificar si existe el pais
         if cbDos.Checked then begin
            cPais := 'ES';
         end
         else begin
            cPais := Fichero.FieldByName('pais').AsString;
         end;

         if cPais <> '' then begin
            QChequeo1.Close;
            QChequeo1.params.byname('pais').AsString := cPais;
            QChequeo1.execquery;
            if not (QChequeo1.FieldByName('cuantos').AsInteger > 0) then begin
               Memo1.Lines.Add('SubCuenta: ' + Fichero.FieldByName('subcuenta').AsString +
                  '. El pais ' + Fichero.FieldByName('pais').AsString + ' no existe.');
               cPais := Fichero.FieldByName('pais').AsString;
               QAux.Close;
               QAux.sql.Clear;
               QAux.Sql.Add('insert into paises(pais,nombre) ');
               QAux.Sql.Add(' values(:pais,"CREADO EN TRASPASO")');
               QAux.params.byname('pais').AsString := Fichero.FieldByName('pais').AsString;
               QAux.ExecQuery;
               QAux.Transaction.CommitRetaining;
            end;
         end;
         if (cProvincia <> '') and (cPais = '') then begin
            QAux.Close;
            QAux.sql.Clear;
            QAux.Sql.Add('update subctas set provincia=:provincia');
            QAux.sql.Add('where subcuenta=:subcuenta');
            QAux.params.byname('subcuenta').AsString := Fichero.FieldByName('subcuenta').AsString;
            QAux.params.byname('provincia').AsString := Fichero.FieldByName('provincia').AsString;
            QAux.ExecQuery;
            QAux.Transaction.CommitRetaining;
         end
         else
         if (cProvincia = '') and (cPais <> '') then begin
            QAux.Close;
            QAux.sql.Clear;
            QAux.Sql.Add('update subctas set pais=:pais');
            QAux.sql.Add('where subcuenta=:subcuenta');
            QAux.params.byname('subcuenta').AsString := Fichero.FieldByName('subcuenta').AsString;
            QAux.params.byname('pais').AsString      := Fichero.FieldByName('pais').AsString;
            QAux.ExecQuery;
            QAux.Transaction.CommitRetaining;
         end
         else
         if (cProvincia <> '') and (cPais <> '') then begin
            QAux.Close;
            QAux.sql.Clear;
            QAux.Sql.Add('update subctas set provincia=:provincia,pais=:pais');
            QAux.sql.Add('where subcuenta=:subcuenta');
            if cbDos.Checked then begin
               QAux.params.byname('subcuenta').AsString := Fichero.FieldByName('codscta').AsString;
            end
            else begin
               QAux.params.byname('subcuenta').AsString := Fichero.FieldByName('subcuenta').AsString;
            end;
            QAux.params.byname('provincia').AsString := cProvincia;
            QAux.params.byname('pais').AsString      := cPais;
            QAux.ExecQuery;
            QAux.Transaction.CommitRetaining;
         end;
         if cbDos.Checked then begin
            cContrapartida := Fichero.FieldByName('Contra').AsString;
         end
         else begin
            cContrapartida := Fichero.FieldByName('Contrapartida').AsString;
         end;
         if not IsEmpty(cContrapartida) then begin
            // Verificar que existe la contrapartida
            QAux.Close;
            QAux.sql.Clear;
            QAux.Sql.Add('select count(*) as cuantos from subctas ');
            QAux.Sql.Add(' where subcuenta=:subcuenta ');
            QAux.params.byname('subcuenta').AsString := cContrapartida;
            QAux.ExecQuery;
            if QAux.FieldByName('cuantos').AsInteger = 0 then begin
               Memo1.Lines.Add('SubCuenta: ' + cContrapartida + ' no existe, se crea.');
               // insertar subcuenta
               QAux.Close;
               QAux.sql.Clear;
               QAux.Sql.Add('insert into subctas(subcuenta,descripcion) ');
               QAux.Sql.Add(' values(:subcuenta,"CREADO EN TRASPASO")');
               QAux.params.byname('subcuenta').AsString := cContrapartida;
               QAux.ExecQuery;
               QAux.Transaction.CommitRetaining;
            end;
            QAux.Close;
            QAux.sql.Clear;
            QAux.Sql.Add('update subctas set contrapartida=:contrapartida');
            QAux.sql.Add('where subcuenta=:subcuenta');
            if cbDos.Checked then begin
               QAux.params.byname('subcuenta').AsString := Fichero.FieldByName('codscta').AsString;
            end
            else begin
               QAux.params.byname('subcuenta').AsString := Fichero.FieldByName('subcuenta').AsString;
            end;
            QAux.params.byname('contrapartida').AsString := cContrapartida;
            QAux.ExecQuery;
            QAux.Transaction.CommitRetaining;
         end;
         Fichero.Next;
      end;
      Fichero.Close;
      cbSubCuentas.Checked := False;
   end;

   // Fichero Subcuentas - Actualizar solo saldos acumulados año anterior
   if cbSubCtaAcum.Checked then  begin
      QAux.SQL.Clear;
      QAux.SQL.Add(' UPDATE SUBCTAS SET ');
      QAux.SQL.Add(' ANTDB01=:ANTDB01,ANTDB02=:ANTDB02,ANTDB03=:ANTDB03,ANTDB04=:ANTDB04,ANTDB05=:ANTDB05,');
      QAux.SQL.Add(' ANTDB06=:ANTDB06,ANTDB07=:ANTDB07,ANTDB08=:ANTDB08,ANTDB09=:ANTDB09,ANTDB10=:ANTDB10,');
      QAux.SQL.Add(' ANTDB11=:ANTDB11,ANTDB12=:ANTDB12,ANTHB01=:ANTHB01,ANTHB02=:ANTHB02,ANTHB03=:ANTHB03,');
      QAux.SQL.Add(' ANTHB04=:ANTHB04,ANTHB05=:ANTHB05,ANTHB06=:ANTHB06,ANTHB07=:ANTHB07,ANTHB08=:ANTHB08,');
      QAux.SQL.Add(' ANTHB09=:ANTHB09,ANTHB10=:ANTHB10,ANTHB11=:ANTHB11,ANTHB12=:ANTHB12,ANTHB=:ANTHB,ANTDB=:ANTDB');
      QAux.SQL.Add(' WHERE SUBCUENTA=:SUBCUENTA');

      Fichero.Close;
      Fichero.Tablename := 'SUBCTAS';
      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Params.byname('SUBCUENTA').AsString :=                Fichero.FieldByName('SUBCUENTA').AsString;
         QAux.Params.byname('ANTDB01').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB01').AsFloat, -2);
         QAux.Params.byname('ANTDB02').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB02').AsFloat, -2);
         QAux.Params.byname('ANTDB03').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB03').AsFloat, -2);
         QAux.Params.byname('ANTDB04').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB04').AsFloat, -2);
         QAux.Params.byname('ANTDB05').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB05').AsFloat, -2);
         QAux.Params.byname('ANTDB06').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB06').AsFloat, -2);
         QAux.Params.byname('ANTDB07').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB07').AsFloat, -2);
         QAux.Params.byname('ANTDB08').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB08').AsFloat, -2);
         QAux.Params.byname('ANTDB09').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB09').AsFloat, -2);
         QAux.Params.byname('ANTDB10').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB10').AsFloat, -2);
         QAux.Params.byname('ANTDB11').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB11').AsFloat, -2);
         QAux.Params.byname('ANTDB12').AsFloat    := RoundTo(Fichero.FieldByName('ACUDB12').AsFloat, -2);
         QAux.Params.byname('ANTDB').AsFloat      := RoundTo(Fichero.FieldByName('SUMADB' ).AsFloat, -2);
         QAux.Params.byname('ANTHB01').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB01').AsFloat, -2);
         QAux.Params.byname('ANTHB02').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB02').AsFloat, -2);
         QAux.Params.byname('ANTHB03').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB03').AsFloat, -2);
         QAux.Params.byname('ANTHB04').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB04').AsFloat, -2);
         QAux.Params.byname('ANTHB05').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB05').AsFloat, -2);
         QAux.Params.byname('ANTHB06').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB06').AsFloat, -2);
         QAux.Params.byname('ANTHB07').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB07').AsFloat, -2);
         QAux.Params.byname('ANTHB08').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB08').AsFloat, -2);
         QAux.Params.byname('ANTHB09').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB09').AsFloat, -2);
         QAux.Params.byname('ANTHB10').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB10').AsFloat, -2);
         QAux.Params.byname('ANTHB11').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB11').AsFloat, -2);
         QAux.Params.byname('ANTHB12').AsFloat    := RoundTo(Fichero.FieldByName('ACUHB12').AsFloat, -2);
         QAux.Params.byname('ANTHB').AsFloat      := RoundTo(Fichero.FieldByName('SUMAHB' ).AsFloat, -2);
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      cbSubCtaAcum.Checked := False;
   end;

   // Fichero Amortizacion
   if cbAmortizacion.Checked then  begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from amortiza');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;

      QChequeo.Close;
      QChequeo.SQL.Clear;
      QChequeo.SQL.Add('select count(*) as cuantos from subctas where subcuenta=:subcuenta');

      Fichero.Close;
      Fichero.Tablename := 'AMORTIZA';
      Fichero.Open;
      while not Fichero.EOF do begin
         // Antes de dar de alta verificar que existe la Subcuenta
         QChequeo.Close;
         QChequeo.Params.ByName('SUBCUENTA').AsString := Fichero.FieldByName('Subcuenta').AsString;
         QChequeo.ExecQuery;
         if not (QChequeo.FieldByName('CUANTOS').AsInteger > 0) then begin
            Memo1.Lines.Add('Amortiza: Subcuenta ' + Trim(Fichero.FieldByName('subcuenta').AsString) + '. Se crea.');
            QAux.Close;
            QAux.SQL.Clear;
            QAux.SQL.Add('insert into subctas(subcuenta,descripcion) ');
            QAux.SQL.Add(' values(:subcuenta,"CREADO TRASPASO AMORTIZACIONES")');
            QAux.Params.ByName('subcuenta').AsString := Fichero.FieldByName('subcuenta').AsString;
            QAux.ExecQuery;
            QAux.Transaction.CommitRetaining;
         end;

         QAux.SQl.Clear;
         QAux.Sql.Add('INSERT INTO AMORTIZA (SUBCUENTA,FCOMPRA,FINICIO,FULTAMOR,');
         QAux.Sql.Add(' FFINAMOR,');
         if DayOf(Fichero.FieldByName('fbaja').AsDateTime) <> 0 then begin
            QAux.Sql.Add(' FBAJA,');
         end;
         if not IsEmpty(Fichero.FieldByName('CENTROCOSTE').AsString) then begin
            QAux.SQL.Add(' CENTROCOSTE,');
         end;
         QAux.Sql.Add(' PERIODO,ANUAL,FACTURA,');
         QAux.Sql.Add(' VCOMPRA,VRESIDUAL,VAMOR,VEJPINICIO,VEJAINICIO,VEJPAMOR,VEJAAMOR,');
         Qaux.Sql.Add(' CLASE) VALUES (:SUBCUENTA,:FCOMPRA,:FINICIO,:FULTAMOR,');
         QAux.Sql.Add(' :FFINAMOR,');
         if DayOf(Fichero.FieldByName('fbaja').AsDateTime) <> 0 then begin
            QAux.SQL.Add(' :FBAJA,');
         end;
         if not IsEmpty(Fichero.FieldByName('CENTROCOSTE').AsString) then begin
            QAux.SQL.Add(' :CENTROCOSTE,');
         end;
         QAux.SQL.Add(' :PERIODO,:ANUAL,:FACTURA,');
         QAux.SQL.Add(' :VCOMPRA,:VRESIDUAL,:VAMOR,:VEJPINICIO,:VEJAINICIO,:VEJPAMOR,:VEJAAMOR,');
         QAux.SQL.Add(' :CLASE)');
         QAux.Params.ByName('SUBCUENTA').AsString := Fichero.FieldByName('SUBCUENTA').AsString;
         if not IsEmpty(Fichero.FieldByName('CENTROCOSTE').AsString) then begin
            QAux.Params.byname('CENTROCOSTE').AsString := Fichero.FieldByName('CENTROCOSTE').AsString;
         end;
         QAux.Params.ByName('FCOMPRA').AsDateTime  := Fichero.FieldByName('FCOMPRA').AsDateTime;
         QAux.Params.ByName('FINICIO').AsDateTime  := Fichero.FieldByName('FINICIO').AsDateTime;
         QAux.Params.ByName('FULTAMOR').AsDateTime := Fichero.FieldByName('FULTAMOR').AsDateTime;
         QAux.Params.ByName('FFINAMOR').AsDateTime := Fichero.FieldByName('FFINAMOR').AsDateTime;
         if DayOf(Fichero.FieldByName('fbaja').AsDateTime) <> 0 then begin
            QAux.Params.ByName('FBAJA').AsDateTime := Fichero.FieldByName('FBAJA').AsDateTime;
         end;
         QAux.Params.ByName('PERIODO').AsString   := Fichero.FieldByName('PERIODO').AsString;
         QAux.Params.ByName('ANUAL').AsInteger    := Fichero.FieldByName('ANUAL').AsInteger;
         QAux.Params.ByName('FACTURA').AsString   := Fichero.FieldByName('FACTURA').AsString;
         QAux.Params.ByName('VCOMPRA').AsFloat    := RoundTo(Fichero.FieldByName('VCOMPRA'   ).AsFloat, -2);
         QAux.Params.ByName('VRESIDUAL').AsFloat  := RoundTo(Fichero.FieldByName('VRESIDUAL' ).AsFloat, -2);
         QAux.Params.ByName('VAMOR').AsFloat      := RoundTo(Fichero.FieldByName('VAMOR'     ).AsFloat, -2);
         QAux.Params.ByName('VEJPINICIO').AsFloat := RoundTo(Fichero.FieldByName('VEJPINICIO').AsFloat, -2);
         QAux.Params.ByName('VEJAINICIO').AsFloat := RoundTo(Fichero.FieldByName('VEJAINICIO').AsFloat, -2);
         QAux.Params.ByName('VEJPAMOR').AsFloat   := RoundTo(Fichero.FieldByName('VEJPAMOR'  ).AsFloat, -2);
         QAux.Params.ByName('VEJAAMOR').AsFloat   := RoundTo(Fichero.FieldByName('VEJAAMOR'  ).AsFloat, -2);
         QAux.Params.ByName('CLASE').AsInteger    := Fichero.FieldByName('CLASE').AsInteger;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Next;
      end;
      Fichero.First;
      while not Fichero.EOF do begin
         // Antes de dar de alta verificar si existe el proveedor
         cAux := Fichero.FieldByName('PROVEEDOR').AsString;
         if cAux <> '' then begin
            QChequeo.Close;
            QChequeo.Params.ByName('SUBCUENTA').AsString := cAux;
            QChequeo.ExecQuery;
            if not (QChequeo.FieldByName('CUANTOS').AsInteger > 0) then begin
               Memo1.Lines.Add('Amortiza: Subcuenta ' + Trim(Fichero.FieldByName('subcuenta').AsString) + ' Proveedor ' + cAux + 'no existe.');
            end
            else begin
               QAux.Close;
               QAux.SQL.Clear;
               QAux.SQL.Add('update amortiza set proveedor=:proveedor');
               QAux.SQL.Add('where subcuenta=:subcuenta');
               QAux.Params.ByName('subcuenta').AsString := Fichero.FieldByName('subcuenta').AsString;
               QAux.Params.ByName('proveedor').AsString := Fichero.FieldByName('proveedor').AsString;
               QAux.ExecQuery;
               QAux.Transaction.CommitRetaining;
            end;
         end;
         // Antes de dar de alta verificar si existe el subgasto
         cAux := Fichero.FieldByName('subgasto').AsString;
         if cAux <> '' then begin
            QChequeo.Close;
            QChequeo.Params.ByName('subcuenta').AsString := cAux;
            QChequeo.ExecQuery;
            if not (QChequeo.FieldByName('cuantos').AsInteger > 0) then begin
               Memo1.Lines.Add('Amortiza: Subcuenta ' + Trim(Fichero.FieldByName('subcuenta').AsString) + ' Sub. Gasto ' + cAux + 'no existe.');
            end
            else begin
               QAux.Close;
               QAux.SQL.Clear;
               QAux.SQL.Add('update amortiza set subgasto=:subgasto');
               QAux.SQL.Add('where subcuenta=:subcuenta');
               QAux.Params.ByName('subcuenta').AsString := Fichero.FieldByName('subcuenta').AsString;
               QAux.Params.ByName('subgasto').AsString  := Fichero.FieldByName('subgasto').AsString;
               QAux.ExecQuery;
               QAux.Transaction.CommitRetaining;
            end;
         end;
         // Antes de dar de alta verificar si existe el subamor
         cAux := Fichero.FieldByName('subamor').AsString;
         if cAux <> '' then begin
            QChequeo.Close;
            QChequeo.Params.ByName('subcuenta').AsString := cAux;
            QChequeo.ExecQuery;
            if not (QChequeo.FieldByName('cuantos').AsInteger > 0) then begin
               Memo1.Lines.Add('Amortiza: Subcuenta ' + Trim(Fichero.FieldByName('subcuenta').AsString) + ' Sub. Amor. ' + cAux + 'no existe.');
            end
            else begin
               QAux.Close;
               QAux.SQL.Clear;
               QAux.SQL.Add('update amortiza set subamor=:subamor');
               QAux.SQL.Add('where subcuenta=:subcuenta');
               QAux.Params.ByName('subcuenta').AsString := Fichero.FieldByName('subcuenta').AsString;
               QAux.Params.ByName('subamor'  ).AsString := Fichero.FieldByName('subamor').AsString;
               QAux.ExecQuery;
               QAux.Transaction.CommitRetaining;
            end;
         end;
         Fichero.Next;
      end;
      Fichero.Close;
      cbAmortizacion.Checked := False;
      {-------------------------------------------------------------------------------------------------------------------------}
   end;

   // Fichero Conceptos
   if cbConceptos.Checked then  begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from conceptos');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add(' INSERT INTO CONCEPTOS (ID_CONCEPTOS,DESCRIPCION,TIPOCONTABILIDAD,');
      QAux.SQL.Add(' TIPOCONCEPTO,OBSOLETO)');
      QAux.SQL.Add(' VALUES (:ID_CONCEPTOS,:DESCRIPCION,:TIPOCONTABILIDAD,');
      QAux.SQL.Add(' :TIPOCONCEPTO,"N") ');

      Fichero.Close;
      Fichero.Tablename := 'CONCEPTO';
      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Params.byname('ID_CONCEPTOS').AsString     := Fichero.FieldByName('CONCEPTO').AsString;
         QAux.Params.byname('DESCRIPCION').AsString      := Fichero.FieldByName('DESCRIPCION').AsString;
         QAux.Params.byname('TIPOCONTABILIDAD').AsString := Fichero.FieldByName('TIPOCONTABILIDAD').AsString;
         QAux.Params.byname('TIPOCONCEPTO').AsString     := Fichero.FieldByName('TIPOCONCEPTO').AsString;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      Fichero.Close;
      cbConceptos.Checked := False;
   end;

   // Fichero Centros de coste
   if cbAnalitica.Checked then  begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from analiticas');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('Insert INTO ANALITICAS(cuenta,NOMBRE) ');
      QAux.SQL.Add(' VALUES (:Cuenta,:Nombre)');

      Fichero.Close;
      Fichero.Tablename := 'ctocoste';
      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Params.byname('cuenta').AsString := Fichero.FieldByName('centrocoste').AsString;
         QAux.Params.byname('nombre').AsString := Fichero.FieldByName('descripcion').AsString;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      Fichero.Close;
      cbAnalitica.Checked := False;
   end;

   // Fichero Diario
   if (cbDiario.Checked) or (cbDiarioJL.Checked) then  begin
      Memo1.Lines.Add('Diario: Comienza ' + TimeToStr(Time));
      DmContaRef.Actualizar_Contador('asiento', 1);
      DmContaRef.Actualizar_Contador('diario', 1);

      QAux.Close;
      QAux.SQL.Clear;
      // Inactivar Triggers
      QAux.SQL.Add('Update rdb$triggers set rdb$trigger_inactive=1');
      QAux.SQL.Add('Where Upper(rdb$relation_name)="DIARIO"');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;

      if not cbActivarFiltro.Checked then begin
         QAux.SQL.Add('delete from diario');
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
      end;

      QChequeo1.Close;
      QChequeo1.SQL.Clear;
      QChequeo1.SQL.Add('select tipocuenta from cuentas where cuenta=:cuenta');

      QChequeo.Close;
      QChequeo.SQL.Clear;
      QChequeo.SQL.Add('select count(*) as cuantos from analiticas where cuenta=:cuenta');

      Fichero.Close; 
      if cbDos.Checked then begin
         Fichero.TableName := 'c_diario.dbf';
      end
      else begin
         Fichero.TableName := 'DIARIO';
      end;

      Fichero.Open;
      while not Fichero.EOF do begin
         if cbDos.Checked then begin
            if cbActivarFiltro.Checked and not
               ((QFicheroFecha1.AsDateTime <= Fichero.FieldByName('fecha').AsDateTime) and
                (QFicheroFecha2.AsDateTime >= Fichero.FieldByName('fecha').AsDateTime)) then begin
               Fichero.Next;
               Continue;
            end;
         end
         else begin
            if cbActivarFiltro.Checked and not
               ((QFicheroFecha1.AsDateTime <= Fichero.FieldByName('fecha').AsDateTime) and
                (QFicheroFecha2.AsDateTime >= Fichero.FieldByName('fecha').AsDateTime) and
                (QFicheroAsiento1.AsInteger <= Fichero.FieldByName('documento').AsInteger) and
                (QFicheroAsiento2.AsInteger >= Fichero.FieldByName('documento').AsInteger)) then begin
               Fichero.Next;
               Continue;
            end;
         end;
         
         if (cbDiarioJl.Checked) and (not IsEmpty(Fichero.FieldByName('NumeroFactura').AsString)) and
            (Fichero.FieldByName('Fechavto').AsDateTime >= StartOfTheYear(Date)) then begin
            // Solo si es de cliente o proveedor
            QChequeo1.Close;
            QChequeo1.ParamByName('cuenta').AsString := Copy(Trim(Fichero.FieldByName('subcuenta').AsString), 1, 3);
            QChequeo1.ExecQuery;
            if (QChequeo1.FieldByName('tipocuenta').AsString = 'C') or
               (QChequeo1.FieldByName('tipocuenta').AsString = 'P') then begin
               // insertar vencimientos
               QInsertar.Close;
               QInsertar.SQL.Clear;
               QInsertar.SQL.Add('INSERT INTO CARTERAEFECTOS (SITUACION,CONCEPTO,FEMISION,');
               QInsertar.SQL.Add(' SUBCUENTA,IMPORTE,FACTCLIENT,FACTPROVEEDOR,FVENCIMIENTO)');
               // Se deja la situacion como pendiente ("N")
               QInsertar.SQL.Add('VALUES("N",:CONCEPTO,:FEMISION,:SUBCUENTA,');
               QInsertar.SQL.Add(' :IMPORTE,:FACTCLIENT,:FACTPROVEEDOR,:FVENCIMIENTO)');
               QInsertar.ParamByName('femision').AsDateTime := Fichero.FieldByName('fecha').AsDateTime;
               QInsertar.ParamByName('subcuenta').AsString  := Fichero.FieldByName('subcuenta').AsString;
               QInsertar.ParamByName('importe').AsFloat     := Fichero.FieldByName('importe').AsFloat;
               if (QChequeo1.FieldByName('tipocuenta').AsString = 'C') then begin
                  QInsertar.ParamByName('factclient').AsString    := Fichero.FieldByName('numerofactura').AsString;
                  QInsertar.ParamByName('factproveedor').AsString := '';
                  QInsertar.parambyname('concepto').AsString      := 'COBRO VTO. ' + Fichero.FieldByName('fechavto').AsString + ' FACT. ' + Fichero.FieldByName('numerofactura').AsString;
               end
               else begin
                  QInsertar.ParamByName('factproveedor').AsString := Fichero.FieldByName('numerofactura').AsString;
                  QInsertar.ParamByName('factclient').AsString    := '';
                  QInsertar.parambyname('concepto').AsString      := 'PAGO VTO. ' + Fichero.FieldByName('fechavto').AsString + ' FACT. ' + Fichero.FieldByName('numerofactura').AsString;
               end;
               QInsertar.ParamByName('fvencimiento').AsDateTime := Fichero.FieldByName('fechavto').AsDateTime;
               QInsertar.ExecQuery;
               QInsertar.Transaction.CommitRetaining;
            end;
         end;
         // Antes de dar de alta verificar si existe el centro de coste
         if (not cbDos.Checked) and (not IsEmpty(Fichero.FieldByName('centrocoste').AsString)) then begin
            QChequeo.Close;
            QChequeo.ParamByName('cuenta').AsString := Fichero.FieldByName('centrocoste').AsString;
            QChequeo.ExecQuery;
            if not (QChequeo.FieldByName('cuantos').AsInteger > 0) then begin
               QInsertar.Close;
               QInsertar.SQL.Clear;
               QInsertar.SQL.Add('Insert into analiticas(cuenta,nombre) ');
               QInsertar.SQL.Add(' Values(:cuenta,:nombre) ');
               QInsertar.ParamByName('cuenta').AsString := Fichero.FieldByName('centrocoste').AsString;
               QInsertar.ParamByName('nombre').AsString := 'Creado en traspaso de datos';
               QInsertar.ExecQuery;
               QInsertar.Transaction.Commitretaining;
               Memo1.Lines.Add('Diario: Analitica ' + Trim(Fichero.FieldByName('centrocoste').AsString) + ' ha sido creada.');
            end;
         end;
         if cbDos.Checked then begin
            QAux.Close;
            QAux.SQL.Clear;
            QAux.SQL.Add(' INSERT INTO DIARIO (ID_DIARIO,APUNTE,ASIENTO,BASEIMPONIBLE,');
            QAux.SQL.Add(' COMENTARIO,DEBEHABER,FECHA,');
            QAux.SQL.Add(' IMPORTE,IVA,');
            QAux.SQL.Add(' MONEDA, NUMEROFACTURA, RECARGO,');
            if (Fichero.FieldByName('contra').AsInteger) = 0 then begin
               QAux.SQL.Add(' SUBCUENTA,ID_CONCEPTOS) ');
            end
            else begin
               QAux.SQL.Add(' SUBCUENTA,ID_CONCEPTOS,CONTRAPARTIDA) ');
            end;
            QAux.SQL.Add(' VALUES (:ID_DIARIO,:APUNTE,:ASIENTO,:BASEIMPONIBLE,');
            QAux.SQL.Add(' :COMENTARIO,:DEBEHABER,:FECHA,');
            QAux.SQL.Add(' :IMPORTE,:IVA,');
            QAux.SQL.Add(' :MONEDA, :NUMEROFACTURA, :RECARGO,');
            if (Fichero.FieldByName('contra').AsInteger) = 0 then begin
               QAux.SQL.Add(' :SUBCUENTA,:ID_CONCEPTOS)');
            end
            else begin
               QAux.SQL.Add(' :SUBCUENTA,:ID_CONCEPTOS,:CONTRAPARTIDA)');
            end;

            QAux.Params.ByName('ID_DIARIO').AsInteger := DmContaRef.Obtener_Contador('diario', 'id_diario', 'Diario');
            QAux.Params.ByName('APUNTE').AsInteger    := Fichero.FieldByName('APUNTE').AsInteger;

            // Si es por activacion de filtro, se debe buscar el asiento que corresponde
            QAux.Params.ByName('ASIENTO').AsInteger := Fichero.FieldByName('Asiento').AsInteger;

            QAux.Params.ByName('BASEIMPONIBLE').AsFloat  := RoundTo(Fichero.FieldByName('BASEIMPO').AsFloat, -2);
            QAux.Params.ByName('ID_CONCEPTOS').AsString  := '14';
            QAux.Params.ByName('SUBCUENTA').AsString     := Fichero.FieldByName('codscta').AsString;
            QAux.Params.ByName('COMENTARIO').AsString    := Fichero.FieldByName('COncepto').AsString;
            QAux.Params.ByName('DEBEHABER').AsString     := Fichero.FieldByName('DEBEHABER').AsString;
            QAux.Params.ByName('FECHA').AsDateTime       := Fichero.FieldByName('FECHA').AsDateTime;
            QAux.Params.ByName('IMPORTE').AsFloat        := Fichero.FieldByName('IMPORTE').AsFloat;
            //         RoundTo(fieldbyname('IMPORTE').asfloat, -2);
            QAux.Params.ByName('IVA').AsFloat            := Fichero.FieldByName('IVA').AsFloat;
            QAux.Params.ByName('MONEDA').AsString        := 'E';
            QAux.Params.ByName('NUMEROFACTURA').AsString := Fichero.FieldByName('NUMFACTU').AsString;
            QAux.Params.ByName('RECARGO').AsFloat        := Fichero.FieldByName('RECEQUIV').AsFloat;
            if (Fichero.FieldByName('contra').AsInteger > 0) then begin
               QAux.Params.ByName('CONTRAPARTIDA').AsString := Fichero.FieldByName('CONTRA').AsString;
            end;
         end
         else begin
            // Comprobacion de q exista la subcuenta
            QChequeo2.Close;
            QChequeo2.SQL.Clear;
            QChequeo2.SQL.Add('select count(*) as cuantos from subctas where subcuenta=:subcuenta');
            QChequeo2.Params.ByName('SUBCUENTA').AsString := Fichero.FieldByName('SUBCUENTA').AsString;
            QChequeo2.ExecQuery;
            if not (QChequeo2.FieldByName('cuantos').AsInteger > 0) then begin
               QInsertar.Close;
               QInsertar.SQL.Clear;
               QInsertar.SQL.Add('Insert into subctas(subcuenta,descripcion) ');
               QInsertar.SQL.Add(' Values(:subcuenta,:descripcion) ');
               QInsertar.ParamByName('subcuenta').AsString   := Fichero.FieldByName('subcuenta').AsString;
               QInsertar.ParamByName('descripcion').AsString := 'Creado en traspaso de datos';
               QInsertar.ExecQuery;
               QInsertar.Transaction.Commitretaining;
            end;

            if (Fichero.FieldByName('contrapartida').AsString <> '') then begin
               // Comprobacion de q exista la contrapartida
               QChequeo2.Close;
               QChequeo2.SQL.Clear;
               QChequeo2.SQL.Add('select count(*) as cuantos from subctas where subcuenta=:subcuenta');
               QChequeo2.Params.ByName('SUBCUENTA').AsString := Fichero.FieldByName('contrapartida').AsString;
               QChequeo2.ExecQuery;
               if not (QChequeo2.FieldByName('cuantos').AsInteger > 0) then begin
                  QInsertar.Close;
                  QInsertar.SQL.Clear;
                  QInsertar.SQL.Add('Insert into subctas(subcuenta,descripcion) ');
                  QInsertar.SQL.Add(' Values(:subcuenta,:descripcion) ');
                  QInsertar.ParamByName('subcuenta').AsString   := Fichero.FieldByName('contrapartida').AsString;
                  QInsertar.ParamByName('descripcion').AsString := 'Creado en traspaso de datos';
                  QInsertar.ExecQuery;
                  QInsertar.Transaction.Commitretaining;
               end;
            end;

            QAuxD.Close;
            QAuxD.Sql.Clear;
            QAuxD.Sql.Add(' INSERT INTO DIARIO (ID_DIARIO,APUNTE,ASIENTO,BASEIMPONIBLE,');
            QAuxD.Sql.Add(' COMENTARIO,DEBEHABER,FECHA,');
            if not IsEmpty(Fichero.FieldByName('centrocoste').AsString) then begin
               QAuxD.Sql.Add(' CUENTA_ANALITICA,');
            end;
            QAuxD.SQL.Add(' IMPORTE,IVA,NIF,');
            QAuxD.SQL.Add(' MONEDA, NUMEROFACTURA, RECARGO, PUNTEO, ASIENTOPUNTEO,');
            if (Fichero.FieldByName('contrapartida').AsString) = '' then begin
               QAuxD.SQL.Add(' PUNTEOIVA,SUBCUENTA,ID_CONCEPTOS) ');
            end
            else begin
               QAuxD.SQL.Add(' PUNTEOIVA,SUBCUENTA,ID_CONCEPTOS,CONTRAPARTIDA) ');
            end;

            QAuxD.SQL.Add(' VALUES (:ID_DIARIO,:APUNTE,:ASIENTO,:BASEIMPONIBLE,');
            QAuxD.SQL.Add(' :COMENTARIO,:DEBEHABER,:FECHA,');
            if not IsEmpty(Fichero.FieldByName('centrocoste').AsString) then begin
               QAuxD.SQL.Add(':CUENTA_ANALITICA,');
            end;
            QAuxD.SQL.Add(' :IMPORTE,:IVA,:NIF,');
            QAuxD.SQL.Add(' :MONEDA,:NUMEROFACTURA,:RECARGO,:PUNTEO,:ASIENTOPUNTEO,');
            if (Fichero.FieldByName('contrapartida').AsString) = '' then begin
               QAuxD.SQL.Add(' :PUNTEOIVA,:SUBCUENTA,:ID_CONCEPTOS)');
            end
            else begin
               QAuxD.Sql.Add(' :PUNTEOIVA,:SUBCUENTA,:ID_CONCEPTOS,:CONTRAPARTIDA)');
            end;

            QAuxD.ParamByName('ID_DIARIO').AsInteger := DmContaRef.Obtener_Contador('diario', 'id_diario', 'Diario');
            QAuxD.ParamByName('APUNTE').AsInteger    := Fichero.FieldByName('APUNTE').AsInteger;

            // Si es por activacion de filtro, se debe buscar el asiento que corresponde
            if cbActivarFiltro.Checked and (nDocumento <> Fichero.FieldByName('documento').AsInteger) then begin
               nDocumento := Fichero.FieldByName('documento').AsInteger;
               nAsiento   := DMContaRef.ObtenerNumeroAsiento;
            end;
            if cbActivarFiltro.Checked then begin
               QAuxD.ParamByName('ASIENTO').AsInteger := nAsiento;
            end
            else begin
               QAuxD.ParamByName('ASIENTO').AsInteger := Fichero.FieldByName('DOCUMENTO').AsInteger;
            end;

            QAuxD.ParamByName('BASEIMPONIBLE').AsFloat := RoundTo(Fichero.FieldByName('BASEIMPONIBLE').AsFloat, -2);
            QAuxD.ParamByName('ID_CONCEPTOS').AsString := Fichero.FieldByName('CONCEPTO').AsString;
            QAuxD.ParamByName('SUBCUENTA').AsString    := Fichero.FieldByName('SUBCUENTA').AsString;
            if not IsEmpty(Fichero.FieldByName('centrocoste').AsString) then begin
               QAuxD.ParamByName('CUENTA_ANALITICA').AsString := Fichero.FieldByName('CENTROCOSTE').AsString;
            end;
            QAuxD.ParamByName('COMENTARIO').AsString     := Fichero.FieldByName('COMENTARIO').AsString;
            QAuxD.ParamByName('DEBEHABER').AsString      := Fichero.FieldByName('DEBEHABER').AsString;
            QAuxD.ParamByName('FECHA').AsDateTime        := Fichero.FieldByName('FECHA').AsDateTime;
            QAuxD.ParamByName('IMPORTE').AsFloat         := Fichero.FieldByName('IMPORTE').AsFloat;
            QAuxD.ParamByName('IVA').AsFloat             := Fichero.FieldByName('IVA').AsFloat;
            QAuxD.ParamByName('NIF').AsString            := Fichero.FieldByName('NIF').AsString;
            QAuxD.ParamByName('MONEDA').AsString         := Fichero.FieldByName('MONEDA').AsString;
            QAuxD.ParamByName('NUMEROFACTURA').AsString  := Fichero.FieldByName('NUMEROFACTURA').AsString;
            QAuxD.ParamByName('RECARGO').AsFloat         := Fichero.FieldByName('RECARGO').AsFloat;
            QAuxD.ParamByName('PUNTEO').AsString         := Fichero.FieldByName('PUNTEO').AsString;
            QAuxD.ParamByName('ASIENTOPUNTEO').AsInteger := Fichero.FieldByName('DOCUMENTOPUNTEO').AsInteger;
            QAuxD.ParamByName('PUNTEOIVA').AsString      := Fichero.FieldByName('PUNTEOIVA').AsString;
            if (Fichero.FieldByName('contrapartida').AsString <> '') then begin
               QAuxD.ParamByName('CONTRAPARTIDA').AsString := Fichero.FieldByName('CONTRAPARTIDA').AsString;
            end;
         end;
         QAuxD.ExecSql;
         QAuxD.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      Fichero.Close;

      if not cbDos.Checked then begin
         QAux.Close;
         QAux.SQL.Clear;
         QAux.SQL.Add('update diario set cuotaiva=iva*baseimponible*0.01,');
         QAux.SQL.Add(' cuotarecargo=recargo*baseimponible*0.01');
         QAux.SQL.Add(' where id_conceptos in ');
         QAux.SQL.Add(' (select id_conceptos from Conceptos Where TipoConcepto="I")');
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
      end;
      QAux.Close;
      QAux.SQL.Clear;
      // activar Triggers
      QAux.SQL.Add('Update rdb$triggers set rdb$trigger_inactive=0');
      QAux.SQL.Add('Where Upper(rdb$relation_name)="DIARIO"');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;

      Memo1.Lines.Add('Diario: Finaliza ' + TimeToStr(Time));
      cbDiario.Checked   := False;
      cbDiarioJL.Checked := False;
   end;

   // Fichero Cartera de efectos
   if cbCartera.Checked then  begin
      DmContaRef.Actualizar_Contador('carteraefectos', 1);
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from carteraefectos');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;

      QChequeo.Close;
      QChequeo.SQL.Clear;
      QChequeo.SQL.Add('select count(*) as cuantos from subctas where subcuenta=:subcuenta');

      QChequeo1.Close;
      QChequeo1.SQL.Clear;
      QChequeo1.SQL.Add('select count(*) as cuantos from comerciales where comercial=:comercial');

      Fichero.Close;
      Fichero.Tablename := 'PAGOCOBRO';
      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Close;
         QAux.Sql.Clear;
         QAux.Sql.Add('INSERT INTO CARTERAEFECTOS (SITUACION,CONCEPTO,FEMISION,FASIENTO,');
         if (Fichero.FieldByName('Subcuenta').AsString) <> '' then begin
            QChequeo.Close;
            QChequeo.ParamByName('Subcuenta').AsString := Fichero.FieldByName('subcuenta').AsString;
            QChequeo.execquery;
            if not (QChequeo.FieldByName('cuantos').AsInteger > 0) then begin
               QInsertar.Close;
               QInsertar.Sql.Clear;
               QInsertar.Sql.Add('Insert into subctas(subcuenta,descripcion) ');
               QInsertar.Sql.Add(' Values(:subcuenta,:descripcion) ');
               QInsertar.ParamByName('subcuenta').AsString   := Fichero.FieldByName('subcuenta').AsString;
               QInsertar.ParamByName('descripcion').AsString := 'Creado en traspaso de datos';
               QInsertar.ExecQuery;
               QInsertar.Transaction.Commitretaining;
               Memo1.Lines.Add('Cartera: Subcuenta ' +
                  Trim(Fichero.FieldByName('subcuenta').AsString) + ' ha sido creada.');
            end;
            QAux.Sql.Add(' SUBCUENTA,');
         end;
         if (Fichero.FieldByName('Subctabanco').AsString) <> '' then begin
            QChequeo.Close;
            QChequeo.ParamByName('Subcuenta').AsString := Fichero.FieldByName('subctabanco').AsString;
            QChequeo.execquery;
            if not (QChequeo.FieldByName('cuantos').AsInteger > 0) then begin
               QInsertar.Close;
               QInsertar.Sql.Clear;
               QInsertar.Sql.Add('Insert into subctas(subcuenta,descripcion) ');
               QInsertar.Sql.Add(' Values(:subcuenta,:descripcion) ');
               QInsertar.ParamByName('subcuenta').AsString   := Fichero.FieldByName('subctabanco').AsString;
               QInsertar.ParamByName('descripcion').AsString := 'Creado en traspaso de datos';
               QInsertar.ExecQuery;
               QInsertar.Transaction.Commitretaining;
               Memo1.Lines.Add('Cartera: Subcuenta Banco ' +
                  Trim(Fichero.FieldByName('subctabanco').AsString) + ' ha sido creada.');
            end;
            QAux.Sql.Add(' SUBCTABANCO,');
         end;
         if (Fichero.FieldByName('Comercial').AsString) <> '' then begin
            QChequeo1.Close;
            QChequeo1.ParamByName('comercial').AsString := Fichero.FieldByName('comercial').AsString;
            QChequeo1.execquery;
            if not (QChequeo1.FieldByName('cuantos').AsInteger > 0) then begin
               QInsertar.Close;
               QInsertar.Sql.Clear;
               QInsertar.Sql.Add('Insert into comerciales(comercial,nombre) ');
               QInsertar.Sql.Add(' Values(:comercial,:nombre) ');
               QInsertar.ParamByName('comercial').AsString := Fichero.FieldByName('comercial').AsString;
               QInsertar.ParamByName('nombre').AsString    := 'Comercial ' + Fichero.FieldByName('comercial').AsString;
               QInsertar.ExecQuery;
               QInsertar.Transaction.Commitretaining;
               Memo1.Lines.Add('Cartera: Comercial ' +
                  Trim(Fichero.FieldByName('comercial').AsString) + ' ha sido creado.');
            end;
            QAux.Sql.Add(' COMERCIAL,');
         end;
         QAux.Sql.Add('IMPORTE,FACTCLIENT,FACTPROVEEDOR,FVENCIMIENTO,IMPCOMISION)');
         QAux.SQL.Add(' VALUES (:SITUACION,:CONCEPTO,:FEMISION,:FASIENTO,');
         if (Fichero.FieldByName('Subcuenta').AsString) <> '' then begin
            QAux.Sql.Add(' :SUBCUENTA,');
         end;
         if (Fichero.FieldByName('Subctabanco').AsString) <> '' then begin
            QAux.Sql.Add(' :SUBCTABANCO,');
         end;
         if (Fichero.FieldByName('Comercial').AsString) <> '' then begin
            QAux.Sql.Add(' :COMERCIAL,');
         end;
         QAux.Sql.Add(':IMPORTE,:FACTCLIENT,:FACTPROVEEDOR,:FVENCIMIENTO,:IMPCOMISION)');

         QAux.Params.byname('SITUACION').AsString      := Fichero.FieldByName('SITUACION').AsString;
         QAux.Params.byname('CONCEPTO').AsString       := Fichero.FieldByName('CONCEPTO').AsString;
         QAux.Params.byname('FEMISION').AsDateTime     := Fichero.FieldByName('FEMISION').AsDateTime;
         QAux.Params.byname('FASIENTO').AsDateTime     := Fichero.FieldByName('FASIENTO').AsDateTime;
         QAux.Params.byname('FVENCIMIENTO').AsDateTime := Fichero.FieldByName('FVENCIMIENTO').AsDateTime;
         QAux.Params.byname('IMPORTE').AsFloat         := RoundTo(Fichero.FieldByName('IMPORTE').AsFloat, -2);
         QAux.Params.byname('IMPCOMISION').AsFloat     := RoundTo(Fichero.FieldByName('IMPCOMISION').AsFloat, -2);
         QAux.Params.byname('FACTCLIENT').AsString     := Fichero.FieldByName('FACTCLIENT').AsString;
         QAux.Params.byname('FACTPROVEEDOR').AsString  := Fichero.FieldByName('FACTPROVEEDOR').AsString;
         if (Fichero.FieldByName('Subcuenta').AsString) <> '' then begin
            QAux.Params.byname('SUBCUENTA').AsString := Fichero.FieldByName('SUBCUENTA').AsString;
         end;
         if (Fichero.FieldByName('Subctabanco').AsString) <> '' then begin
            QAux.Params.byname('SUBCTABANCO').AsString := Fichero.FieldByName('SUBCTABANCO').AsString;
         end;
         if (Fichero.FieldByName('Comercial').AsString) <> '' then begin
            QAux.Params.byname('COMERCIAL').AsString := Fichero.FieldByName('COMERCIAL').AsString;
         end;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      Fichero.Close;
      cbCartera.Checked := False;
   end;

   // Fichero Datos
   if cbDatos.Checked then  begin
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add('delete from parametros');
      QAux.ExecQuery;
      QAux.Transaction.CommitRetaining;
      QAux.Close;
      QAux.SQL.Clear;
      QAux.SQL.Add(' INSERT INTO PARAMETROS (LONGITUD_SUBCUENTAS,');
      QAux.SQL.Add(' FECHA_INICIO_EJERCICIO,FECHA_FIN_EJERCICIO,');
      QAux.SQL.Add(' SUBCUENTA_CIERRE,MONEDA,');
      QAux.SQL.Add(' RECARGO,SCTAIVANORMAL,SCTAIVAEXENTO,');
      QAux.SQL.Add(' SCTAIVAINTRA,SCTAVENTAS,SCTADEVOLUCION,CTOIVANORMAL,CTOIVAEXENTO,');
      QAux.SQL.Add(' CTOIVAINTRA,CTOVENTAS,CTODEVOLUCION,CTOCLIENTES,SCTADESCUENTO,');
      QAux.SQL.Add(' SCTACOMPRAS,CTODESCUENTO,CTOCOMPRAS,SCTAIVAREDUCIDO,CTOIVAREDUCIDO,');
      QAux.SQL.Add(' SCTAIVASUPER,CTOIVASUPER,CTOPROVEEDORES,SCTAIVACNORMAL,CTOIVACNORMAL,');
      QAux.SQL.Add(' SCTAIVACREDUCIDO,CTOIVACREDUCIDO,SCTAIVACSUPER,CTOIVACSUPER,SCTARECNORMAL,');
      QAux.SQL.Add(' CTORECNORMAL,SCTARECREDUCIDO,CTORECREDUCIDO,SCTARECSUPER,CTORECSUPER,');
      QAux.SQL.Add(' CTORECIBOVENTAS,VGENERICA,SUBCAJA,CTOCOBROF,CTONOME,CTONOMT,SCTANOMSUELDO,');
      QAux.SQL.Add(' SCTANOMIRPF,SCTANOMPAGO,SCTANOMSSE,SCTANOMSST,SCTANOMCARGO,SCTADTOPPV,');
      QAux.SQL.Add(' SCTADTOPPC,CTODTOPPV,CTODTOPPC,SCTARETPROF,SCTARETARRE,CTORETPROF,');
      QAux.SQL.Add(' CTORETARRE,TANTORETPROF,TANTORETARRE,SCTAHACIVA,CTOHACIVA,');
      QAux.SQL.Add(' SCTAIVACEXENTO,CTOIVACEXENTO,CTOPAGOF,VGENERICAC) ');
      QAux.SQL.Add(' VALUES(:LONGITUD_SUBCUENTAS,');
      QAux.SQL.Add(' :FECHA_INICIO_EJERCICIO,:FECHA_FIN_EJERCICIO,');
      QAux.SQL.Add(' "1290000","E","N",:SCTAIVANORMAL,:SCTAIVAEXENTO,');
      QAux.SQL.Add(' :SCTAIVAINTRA,:SCTAVENTAS,:SCTADEVOLUCION,:CTOIVANORMAL,:CTOIVAEXENTO,');
      QAux.SQL.Add(' :CTOIVAINTRA,:CTOVENTAS,:CTODEVOLUCION,:CTOCLIENTES,:SCTADESCUENTO,');
      QAux.SQL.Add(' :SCTACOMPRAS,:CTODESCUENTO,:CTOCOMPRAS,:SCTAIVAREDUCIDO,:CTOIVAREDUCIDO,');
      QAux.SQL.Add(' :SCTAIVASUPER,:CTOIVASUPER,:CTOPROVEEDORES,:SCTAIVACNORMAL,:CTOIVACNORMAL,');
      QAux.SQL.Add(' :SCTAIVACREDUCIDO,:CTOIVACREDUCIDO,:SCTAIVACSUPER,:CTOIVACSUPER,:SCTARECNORMAL,');
      QAux.SQL.Add(' :CTORECNORMAL,:SCTARECREDUCIDO,:CTORECREDUCIDO,:SCTARECSUPER,:CTORECSUPER,');
      QAux.SQL.Add(' :CTORECIBOVENTAS,:VGENERICA,:SUBCAJA,:CTOCOBROF,:CTONOME,:CTONOMT,:SCTANOMSUELDO,');
      QAux.SQL.Add(' :SCTANOMIRPF,:SCTANOMPAGO,:SCTANOMSSE,:SCTANOMSST,:SCTANOMCARGO,:SCTADTOPPV,');
      QAux.SQL.Add(' :SCTADTOPPC,:CTODTOPPV,:CTODTOPPC,:SCTARETPROF,:SCTARETARRE,:CTORETPROF,');
      QAux.SQL.Add(' :CTORETARRE,:TANTORETPROF,:TANTORETARRE,:SCTAHACIVA,:CTOHACIVA,');
      QAux.SQL.Add(' :SCTAIVACEXENTO,:CTOIVACEXENTO,:CTOPAGOF,:VGENERICAC) ');

      Fichero.Close;
      Fichero.Tablename := 'datos';
      Fichero.Open;
      while not Fichero.EOF do begin
         QAux.Params.byname('LONGITUD_SUBCUENTAS').AsInteger := 7;
         QAux.Params.byname('FECHA_INICIO_EJERCICIO').AsDateTime := StartOfTheYear(Date);
         QAux.Params.byname('FECHA_FIN_EJERCICIO').AsDateTime := EndOfTheYear(Date);
         QAux.Params.byname('SCTAIVANORMAL').AsString    := Fichero.FieldByName('SCTAIVANORMAL').AsString;
         QAux.Params.byname('SCTAIVAEXENTO').AsString    := Fichero.FieldByName('SCTAIVAEXENTO').AsString;
         QAux.Params.byname('SCTAIVAINTRA').AsString     := Fichero.FieldByName('SCTAIVAINTRA').AsString;
         QAux.Params.byname('SCTAVENTAS').AsString       := Fichero.FieldByName('SCTAVENTAS').AsString;
         QAux.Params.byname('SCTADEVOLUCION').AsString   := Fichero.FieldByName('SCTADEVOLUCION').AsString;
         QAux.Params.byname('CTOIVANORMAL').AsString     := Fichero.FieldByName('CTOIVANORMAL').AsString;
         QAux.Params.byname('CTOIVAEXENTO').AsString     := Fichero.FieldByName('CTOIVAEXENTO').AsString;
         QAux.Params.byname('CTOIVAINTRA').AsString      := Fichero.FieldByName('CTOIVAINTRA').AsString;
         QAux.Params.byname('CTOVENTAS').AsString        := Fichero.FieldByName('CTOVENTAS').AsString;
         QAux.Params.byname('CTODEVOLUCION').AsString    := Fichero.FieldByName('CTODEVOLUCION').AsString;
         QAux.Params.byname('CTOCLIENTES').AsString      := Fichero.FieldByName('CTOCLIENTES').AsString;
         QAux.Params.byname('SCTADESCUENTO').AsString    := Fichero.FieldByName('SCTADESCUENTO').AsString;
         QAux.Params.byname('SCTACOMPRAS').AsString      := Fichero.FieldByName('SCTACOMPRAS').AsString;
         QAux.Params.byname('CTODESCUENTO').AsString     := Fichero.FieldByName('CTODESCUENTO').AsString;
         QAux.Params.byname('CTOCOMPRAS').AsString       := Fichero.FieldByName('CTOCOMPRAS').AsString;
         QAux.Params.byname('SCTAIVAREDUCIDO').AsString  := Fichero.FieldByName('SCTAIVAREDUCIDO').AsString;
         QAux.Params.byname('CTOIVAREDUCIDO').AsString   := Fichero.FieldByName('CTOIVAREDUCIDO').AsString;
         QAux.Params.byname('SCTAIVASUPER').AsString     := Fichero.FieldByName('SCTAIVASUPER').AsString;
         QAux.Params.byname('CTOIVASUPER').AsString      := Fichero.FieldByName('CTOIVASUPER').AsString;
         QAux.Params.byname('CTOPROVEEDORES').AsString   := Fichero.FieldByName('CTOPROVEEDORES').AsString;
         QAux.Params.byname('SCTAIVACNORMAL').AsString   := Fichero.FieldByName('SCTAIVACNORMAL').AsString;
         QAux.Params.byname('CTOIVACNORMAL').AsString    := Fichero.FieldByName('CTOIVACNORMAL').AsString;
         QAux.Params.byname('SCTAIVACREDUCIDO').AsString := Fichero.FieldByName('SCTAIVACREDUCIDO').AsString;
         QAux.Params.byname('CTOIVACREDUCIDO').AsString  := Fichero.FieldByName('CTOIVACREDUCIDO').AsString;
         QAux.Params.byname('SCTAIVACSUPER').AsString    := Fichero.FieldByName('SCTAIVACSUPER').AsString;
         QAux.Params.byname('CTOIVACSUPER').AsString     := Fichero.FieldByName('CTOIVACSUPER').AsString;
         QAux.Params.byname('SCTARECNORMAL').AsString    := Fichero.FieldByName('SCTARECNORMAL').AsString;
         QAux.Params.byname('CTORECNORMAL').AsString     := Fichero.FieldByName('CTORECNORMAL').AsString;
         QAux.Params.byname('SCTARECREDUCIDO').AsString  := Fichero.FieldByName('SCTARECREDUCIDO').AsString;
         QAux.Params.byname('CTORECREDUCIDO').AsString   := Fichero.FieldByName('CTORECREDUCIDO').AsString;
         QAux.Params.byname('SCTARECSUPER').AsString     := Fichero.FieldByName('SCTARECSUPER').AsString;
         QAux.Params.byname('CTORECSUPER').AsString      := Fichero.FieldByName('CTORECSUPER').AsString;
         QAux.Params.byname('CTORECIBOVENTAS').AsString  := Fichero.FieldByName('CTORECIBOVENTAS').AsString;
         QAux.Params.byname('VGENERICA').AsString        := Fichero.FieldByName('VGENERICA').AsString;
         QAux.Params.byname('SUBCAJA').AsString          := Fichero.FieldByName('SUBCAJA').AsString;
         QAux.Params.byname('CTOCOBROF').AsString        := Fichero.FieldByName('CTOCOBROF').AsString;
         QAux.Params.byname('CTONOME').AsString          := Fichero.FieldByName('CTONOME').AsString;
         QAux.Params.byname('CTONOMT').AsString          := Fichero.FieldByName('CTONOMT').AsString;
         QAux.Params.byname('SCTANOMSUELDO').AsString    := Fichero.FieldByName('SCTANOMSUELDO').AsString;
         QAux.Params.byname('SCTANOMIRPF').AsString      := Fichero.FieldByName('SCTANOMIRPF').AsString;
         QAux.Params.byname('SCTANOMPAGO').AsString      := Fichero.FieldByName('SCTANOMPAGO').AsString;
         QAux.Params.byname('SCTANOMSSE').AsString       := Fichero.FieldByName('SCTANOMSSE').AsString;
         QAux.Params.byname('SCTANOMSST').AsString       := Fichero.FieldByName('SCTANOMSST').AsString;
         QAux.Params.byname('SCTANOMCARGO').AsString     := Fichero.FieldByName('SCTANOMCARGO').AsString;
         QAux.Params.byname('SCTADTOPPV').AsString       := Fichero.FieldByName('SCTADTOPPV').AsString;
         QAux.Params.byname('SCTADTOPPC').AsString       := Fichero.FieldByName('SCTADTOPPC').AsString;
         QAux.Params.byname('CTODTOPPV').AsString        := Fichero.FieldByName('CTODTOPPV').AsString;
         QAux.Params.byname('CTODTOPPC').AsString        := Fichero.FieldByName('CTODTOPPC').AsString;
         QAux.Params.byname('SCTARETPROF').AsString      := Fichero.FieldByName('SCTARETPROF').AsString;
         QAux.Params.byname('SCTARETARRE').AsString      := Fichero.FieldByName('SCTARETARRE').AsString;
         QAux.Params.byname('CTORETPROF').AsString       := Fichero.FieldByName('CTORETPROF').AsString;
         QAux.Params.byname('CTORETARRE').AsString       := Fichero.FieldByName('CTORETARRE').AsString;
         QAux.Params.byname('TANTORETPROF').AsString     := Fichero.FieldByName('TANTORETPROF').AsString;
         QAux.Params.byname('TANTORETARRE').AsString     := Fichero.FieldByName('TANTORETARRE').AsString;
         QAux.Params.byname('SCTAHACIVA').AsString       := Fichero.FieldByName('SCTAHACIVA').AsString;
         QAux.Params.byname('CTOHACIVA').AsString        := Fichero.FieldByName('CTOHACIVA').AsString;
         QAux.Params.byname('SCTAIVACEXENTO').AsString   := Fichero.FieldByName('SCTAIVACEXENTO').AsString;
         QAux.Params.byname('CTOIVACEXENTO').AsString    := Fichero.FieldByName('CTOIVACEXENTO').AsString;
         QAux.Params.byname('CTOPAGOF').AsString         := Fichero.FieldByName('CTOPAGOF').AsString;
         QAux.Params.byname('VGENERICAC').AsString       := Fichero.FieldByName('VGENERICAC').AsString;
         QAux.ExecQuery;
         QAux.Transaction.CommitRetaining;
         Fichero.Next;
      end;
      Fichero.Close;
      cbDatos.Checked := False;
   end;
end;

procedure TWTraspasoDatos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   case key of
      VK_F9: begin
         BtnEdtAceptar.Click;
      end;
   end;
end;

procedure TWTraspasoDatos.BtnEdtImprimirClick(Sender: TObject);
var
   I: Integer;
begin
   QFichero.EmptyDataSet;

   for I := 0 to Memo1.Lines.Count - 1 do begin
      QFichero.Append;
      QFicheroDESCRIPCION.AsString := Copy(Memo1.Lines[I], 1, QFicheroDESCRIPCION.Size);
      QFichero.Post;
   end;

   QFichero.First;
   {Probably this form is going to disapear, because of this we don't waste time doing this report}
   {FormPrincipal.LanzarListado('LIncidenciasTraspaso.rtm', SFichero);}
end;

procedure TWTraspasoDatos.FormCreate(Sender: TObject);
begin
   QFichero.Active := False;
   QFichero.FieldDefs.Clear;
   QFichero.FieldDefs.Add('DESCRIPCION', ftString, 250, False);
   QFichero.FieldDefs.Add('Asiento1', ftInteger, 0, False);
   QFichero.FieldDefs.Add('Asiento2', ftInteger, 0, False);
   QFichero.FieldDefs.Add('Fecha1', ftdateTime, 0, False);
   QFichero.FieldDefs.Add('Fecha2', ftdateTime, 0, False);
   QFichero.CreateDataSet;
   QFichero.Active := True;
   QFichero.Append;
   QFichero.Edit;
   QFichero.FieldByName('Asiento1').AsInteger := 0;
   QFichero.FieldByName('Asiento2').AsInteger := 9999999;
   QFichero.FieldByName('Fecha1').AsDateTime  := date;
   QFichero.FieldByName('Fecha2').AsDateTime  := date;
   QFichero.Post;
end;

end.
