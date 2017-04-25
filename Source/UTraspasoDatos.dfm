object WTraspasoDatos: TWTraspasoDatos
  Left = 685
  Top = 294
  BorderStyle = bsSingle
  ClientHeight = 415
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lTitulo: TLabel
    Left = 20
    Top = 17
    Width = 131
    Height = 19
    Caption = 'Traspaso de Datos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 20
    Top = 37
    Width = 656
    Height = 1
  end
  object GroupBox1: TGroupBox
    Left = 20
    Top = 47
    Width = 661
    Height = 250
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 23
      Top = 13
      Width = 81
      Height = 13
      Caption = 'Directorio Origen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 26
      Top = 57
      Width = 194
      Height = 13
      Caption = 'Mensajes de Error del traspaso de datos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 334
      Top = 16
      Width = 120
      Height = 49
      Caption = ' Comunes '
      TabOrder = 0
      object cbPaises: TCheckBox
        Left = 10
        Top = 30
        Width = 83
        Height = 17
        Caption = 'Paises'
        TabOrder = 0
      end
      object cbProvincias: TCheckBox
        Left = 10
        Top = 14
        Width = 83
        Height = 17
        Caption = 'Provincias'
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 504
      Top = 0
      Width = 135
      Height = 250
      Caption = ' Empresa '
      TabOrder = 1
      object cbTitulos: TCheckBox
        Left = 15
        Top = 17
        Width = 83
        Height = 17
        Caption = 'Titulos'
        TabOrder = 0
      end
      object cbSubcuentas: TCheckBox
        Left = 15
        Top = 87
        Width = 92
        Height = 17
        Caption = 'Subcuentas'
        TabOrder = 1
      end
      object cbGrupos: TCheckBox
        Left = 15
        Top = 35
        Width = 83
        Height = 17
        Caption = 'Grupos'
        TabOrder = 2
      end
      object cbCuentas: TCheckBox
        Left = 15
        Top = 52
        Width = 83
        Height = 17
        Caption = 'Cuentas'
        TabOrder = 3
      end
      object cbDatos: TCheckBox
        Left = 15
        Top = 227
        Width = 92
        Height = 17
        Caption = 'Parametros'
        TabOrder = 4
      end
      object cbAmortizacion: TCheckBox
        Left = 15
        Top = 122
        Width = 95
        Height = 17
        Caption = 'Amortizacion'
        TabOrder = 5
      end
      object cbCartera: TCheckBox
        Left = 15
        Top = 210
        Width = 83
        Height = 17
        Caption = 'Cartera'
        TabOrder = 6
      end
      object cbDiario: TCheckBox
        Left = 15
        Top = 175
        Width = 83
        Height = 17
        Caption = 'Diario'
        TabOrder = 7
      end
      object cbConceptos: TCheckBox
        Left = 15
        Top = 140
        Width = 83
        Height = 17
        Caption = 'Conceptos'
        TabOrder = 8
      end
      object cbAnalitica: TCheckBox
        Left = 15
        Top = 157
        Width = 83
        Height = 17
        Caption = 'Analitica'
        TabOrder = 9
      end
      object cbDiarioJL: TCheckBox
        Left = 15
        Top = 192
        Width = 83
        Height = 17
        Caption = 'Diario JL'
        TabOrder = 10
      end
      object cbSubctaAcum: TCheckBox
        Left = 15
        Top = 105
        Width = 102
        Height = 17
        Caption = 'Subcta. Acum.'
        TabOrder = 11
      end
      object cbCuentasAcum: TCheckBox
        Left = 15
        Top = 70
        Width = 110
        Height = 17
        Caption = 'Cuentas Acum.'
        TabOrder = 12
      end
    end
    object Directorio: TDBEdit
      Left = 24
      Top = 28
      Width = 273
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Memo1: TMemo
      Left = 24
      Top = 72
      Width = 433
      Height = 177
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 3
    end
    object cbInicio: TCheckBox
      Left = 306
      Top = 0
      Width = 150
      Height = 17
      Caption = 'Inicializacion completa'
      TabOrder = 4
    end
    object cbDos: TCheckBox
      Left = 146
      Top = 0
      Width = 111
      Height = 17
      Caption = 'Version Ms-Dos'
      TabOrder = 5
    end
  end
  object BtnEdtAceptar: TButton
    Left = 580
    Top = 341
    Width = 83
    Height = 24
    Cursor = crHandPoint
    Caption = '&Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnEdtAceptarClick
  end
  object BtnEdtImprimir: TButton
    Left = 580
    Top = 309
    Width = 83
    Height = 24
    Cursor = crHandPoint
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnEdtImprimirClick
  end
  object fcGroupBox1: TGroupBox
    Left = 40
    Top = 306
    Width = 451
    Height = 91
    Caption = ' Filtro del Diario '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label24: TLabel
      Left = 233
      Top = 15
      Width = 30
      Height = 13
      Caption = 'Desde'
    end
    object Label25: TLabel
      Left = 355
      Top = 14
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label2: TLabel
      Left = 157
      Top = 61
      Width = 36
      Height = 13
      Caption = 'Asiento'
    end
    object Label7: TLabel
      Left = 157
      Top = 37
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object FiltroBaseDesde: TDBEdit
      Left = 214
      Top = 57
      Width = 90
      Height = 21
      AutoSize = False
      DataField = 'asiento1'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object FiltroBaseHasta: TDBEdit
      Left = 336
      Top = 57
      Width = 90
      Height = 21
      AutoSize = False
      DataField = 'asiento2'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object FiltroFechaFacturaDesde: TEdit
      Left = 214
      Top = 31
      Width = 89
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object FiltroFechaFacturaHasta: TEdit
      Left = 336
      Top = 31
      Width = 89
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object cbActivarFiltro: TCheckBox
      Left = 10
      Top = 24
      Width = 93
      Height = 17
      Caption = 'Activar filtro'
      TabOrder = 0
    end
  end
  object CheckBoxEspecifico: TCheckBox
    Left = 522
    Top = 16
    Width = 111
    Height = 17
    Caption = 'Espec'#237'fico'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object ConexionEspecifica: TEdit
    Left = 208
    Top = 16
    Width = 289
    Height = 21
    TabOrder = 5
    Text = 'c:\cviews\Accounting\Especifica.gdb'
  end
  object Fichero: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    UniDirectional = False
    Left = 224
    Top = 136
  end
  object QAux: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 136
    Top = 174
  end
  object QChequeo: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 488
    Top = 112
  end
  object QChequeo1: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 480
    Top = 72
  end
  object QInsertar: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 488
    Top = 144
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 490
    Top = 186
    object QFicherodescripcion: TStringField
      FieldName = 'descripcion'
      Size = 250
    end
    object QFicherofecha1: TDateTimeField
      FieldName = 'fecha1'
    end
    object QFicherofecha2: TDateTimeField
      FieldName = 'fecha2'
    end
    object QFicheroasiento1: TIntegerField
      FieldName = 'asiento1'
    end
    object QFicheroasiento2: TIntegerField
      FieldName = 'asiento2'
    end
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 486
    Top = 220
  end
  object dbEspecifica: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = TrEspecifica
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 336
    Top = 152
  end
  object TrEspecifica: TIBTransaction
    DefaultDatabase = dbEspecifica
    Left = 336
    Top = 200
  end
  object QChequeo2: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 488
    Top = 256
  end
  object QAuxD: TIBQuery
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 56
    Top = 174
  end
end
