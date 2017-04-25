object WIrpf115: TWIrpf115
  Left = 929
  Top = 314
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 375
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label5: TLabel
    Left = 81
    Top = 134
    Width = 88
    Height = 14
    Caption = 'Imp. Percepciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Datos: TGroupBox
    Left = 0
    Top = 36
    Width = 540
    Height = 298
    Align = alClient
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 180
      Top = 18
      Width = 39
      Height = 13
      Caption = 'Ejercicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 233
      Top = 18
      Width = 36
      Height = 13
      Caption = 'Periodo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 423
      Top = 18
      Width = 78
      Height = 14
      Caption = 'Fecha a imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label84: TLabel
      Left = 182
      Top = 65
      Width = 208
      Height = 14
      Caption = 'C.C.C. para Hacienda, formato con guiones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object GroupBoxFormaPago: TRadioGroup
      Left = 16
      Top = 23
      Width = 145
      Height = 41
      Caption = ' Forma de pago '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Cuenta'
        'Efectivo')
      ParentFont = False
      TabOrder = 0
    end
    object EditEJERCICIO: TDBEdit
      Left = 182
      Top = 34
      Width = 43
      Height = 20
      AutoSize = False
      DataField = 'EJERCICIO'
      DataSource = sIrpf115
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditPERIODO: TDBEdit
      Left = 237
      Top = 34
      Width = 27
      Height = 20
      AutoSize = False
      DataField = 'PERIODO'
      DataSource = sIrpf115
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ChecBoxDeclarante: TCheckBox
      Left = 288
      Top = 36
      Width = 137
      Height = 17
      TabStop = False
      Caption = 'Copia Declarante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object EditFECHA_IMPRIMIR: TDBEdit
      Left = 424
      Top = 34
      Width = 89
      Height = 21
      DataField = 'FECHA_IMPRESION'
      DataSource = sIrpf115
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object GroupBox12: TGroupBox
      Left = 15
      Top = 106
      Width = 500
      Height = 175
      Caption = ' Retenciones e ingresos a cuenta '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object Label25: TLabel
        Left = 111
        Top = 80
        Width = 159
        Height = 14
        Caption = 'Retenciones e ingresos a cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 74
        Top = 110
        Width = 191
        Height = 14
        Caption = 'A deducir (caso decla. complementaria)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 178
        Top = 141
        Width = 100
        Height = 14
        Caption = 'Resultado a ingresar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 192
        Top = 26
        Width = 89
        Height = 14
        Caption = 'N'#186' de Perceptores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 83
        Top = 50
        Width = 184
        Height = 14
        Caption = 'Base retenciones e ingresos a cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object EditLIQUIDACION_03: TDBEdit
        Left = 297
        Top = 77
        Width = 113
        Height = 21
        AutoSize = False
        DataField = 'LIQUIDACION_03'
        DataSource = sIrpf115
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = CalcularIngreso
      end
      object EditINGRESO: TDBEdit
        Left = 297
        Top = 138
        Width = 113
        Height = 21
        AutoSize = False
        DataField = 'INGRESO'
        DataSource = sIrpf115
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EditPERCEPTOR_1: TDBEdit
        Left = 297
        Top = 23
        Width = 41
        Height = 21
        AutoSize = False
        DataField = 'LIQUIDACION_01'
        DataSource = sIrpf115
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditLIQUIDACION_02: TDBEdit
        Left = 297
        Top = 47
        Width = 113
        Height = 21
        AutoSize = False
        DataField = 'LIQUIDACION_02'
        DataSource = sIrpf115
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EditLIQUIDACION_04: TDBEdit
        Left = 297
        Top = 107
        Width = 113
        Height = 21
        AutoSize = False
        DataField = 'LIQUIDACION_04'
        DataSource = sIrpf115
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnExit = CalcularIngreso
      end
    end
    object EditCCC: TDBEdit
      Left = 182
      Top = 79
      Width = 257
      Height = 20
      AutoSize = False
      DataField = 'CCC'
      DataSource = sIrpf115
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 540
    Height = 36
    Align = alTop
    TabOrder = 1
    object Shape1: TShape
      Left = 6
      Top = 26
      Width = 602
      Height = 1
    end
    object lTitulo: TLabel
      Left = 6
      Top = 6
      Width = 228
      Height = 19
      Caption = 'Impresi'#243'n Modelo I.R.P.F.   115'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 334
    Width = 540
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      540
      41)
    object BtnEdtErrores: TButton
      Left = 280
      Top = 8
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Ver Errores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnEdtErroresClick
    end
    object BtnEdtProcesar: TButton
      Left = 395
      Top = 8
      Width = 128
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnEdtProcesarClick
    end
  end
  object QIrpf115: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 16
    object QIrpf115EJERCICIO: TIntegerField
      FieldName = 'EJERCICIO'
    end
    object QIrpf115PERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 2
    end
    object QIrpf115LIQUIDACION_01: TIntegerField
      FieldName = 'LIQUIDACION_01'
    end
    object QIrpf115LIQUIDACION_02: TFloatField
      FieldName = 'LIQUIDACION_02'
    end
    object QIrpf115LIQUIDACION_03: TFloatField
      FieldName = 'LIQUIDACION_03'
    end
    object QIrpf115LIQUIDACION_04: TFloatField
      FieldName = 'LIQUIDACION_04'
    end
    object QIrpf115INGRESO: TFloatField
      FieldName = 'INGRESO'
    end
    object QIrpf115FECHA_IMPRESION: TDateField
      FieldName = 'FECHA_IMPRESION'
    end
    object QIrpf115FECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object QIrpf115FECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object QIrpf115CCC: TStringField
      FieldName = 'CCC'
      Size = 23
    end
  end
  object sIrpf115: TDataSource
    DataSet = QIrpf115
    Left = 512
    Top = 16
  end
end
