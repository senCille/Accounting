object WBalAcumulados: TWBalAcumulados
  Left = 826
  Top = 240
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 488
  ClientWidth = 543
  Color = 14275008
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
  object Datos: TGroupBox
    Left = 0
    Top = 41
    Width = 543
    Height = 406
    Align = alClient
    Color = 14275008
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 551
    ExplicitHeight = 411
    object GroupBox4: TGroupBox
      Left = 18
      Top = 331
      Width = 516
      Height = 62
      Caption = ' Datos adicionales '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label4: TLabel
        Left = 11
        Top = 18
        Width = 92
        Height = 14
        Caption = 'Fecha a imprimir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lSubtotales1: TLabel
        Left = 251
        Top = 40
        Width = 100
        Height = 14
        Caption = 'Subtotales al nivel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lSubtotales2: TLabel
        Left = 398
        Top = 40
        Width = 18
        Height = 14
        Caption = 'y al'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditFECHA_IMPRIMIR: TDBEdit
        Left = 123
        Top = 14
        Width = 89
        Height = 21
        DataField = 'FECHA_IMPRIMIR'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CheckBoxConSubcuentas: TCheckBox
        Left = 251
        Top = 19
        Width = 117
        Height = 17
        Caption = 'Con subcuentas'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object EdtiNIVEL_1: TDBEdit
        Left = 363
        Top = 36
        Width = 25
        Height = 21
        DataField = 'NIVEL_1'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditNIVEL_2: TDBEdit
        Left = 427
        Top = 36
        Width = 25
        Height = 21
        DataField = 'NIVEL_2'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 18
      Top = 43
      Width = 516
      Height = 138
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label20: TLabel
        Left = 20
        Top = 30
        Width = 32
        Height = 14
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 139
        Top = 11
        Width = 35
        Height = 14
        Caption = 'Desde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 280
        Top = 10
        Width = 30
        Height = 14
        Caption = 'Hasta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 20
        Top = 55
        Width = 96
        Height = 14
        Caption = 'Subcuenta desde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 84
        Top = 80
        Width = 30
        Height = 14
        Caption = 'hasta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditFECHA_DESDE: TDBEdit
        Left = 123
        Top = 26
        Width = 89
        Height = 21
        DataField = 'FECHA_DESDE'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditFECHA_HASTA: TDBEdit
        Left = 259
        Top = 26
        Width = 89
        Height = 21
        DataField = 'FECHA_HASTA'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 222
        Top = 76
        Width = 248
        Height = 21
        DataField = 'SUBCUENTA_HASTA'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleBalAcumulados.SSubcuentas
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 222
        Top = 51
        Width = 248
        Height = 21
        DataField = 'SUBCUENTA_DESDE'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleBalAcumulados.SSubcuentas
        ParentFont = False
        TabOrder = 3
      end
      object ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 123
        Top = 51
        Width = 100
        Height = 21
        DataField = 'SUBCUENTA_DESDE'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleBalAcumulados.SSubcuentas
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 123
        Top = 76
        Width = 100
        Height = 21
        DataField = 'SUBCUENTA_HASTA'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleBalAcumulados.SSubcuentas
        ParentFont = False
        TabOrder = 4
      end
      object RadioGroupTIPO_CONCEPTO: TDBRadioGroup
        Left = 123
        Top = 99
        Width = 278
        Height = 35
        Caption = ' Clase de Conceptos '
        Columns = 3
        DataField = 'TIPO_CONCEPTO'
        DataSource = SFiltro
        Items.Strings = (
          'Todos'
          'Normal'
          'Especial')
        TabOrder = 6
        Values.Strings = (
          'T'
          'N'
          'E')
      end
    end
    object RGAcumulacion: TRadioGroup
      Left = 135
      Top = 8
      Width = 272
      Height = 36
      Caption = ' ACUMULACION POR  '
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Saldos '
        'Movimientos')
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 18
      Top = 181
      Width = 516
      Height = 147
      Caption = ' Anal'#237'tica '
      TabOrder = 2
      object Label6: TLabel
        Left = 20
        Top = 19
        Width = 92
        Height = 13
        Caption = 'Cuenta Anal'#237'tica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 20
        Top = 70
        Width = 62
        Height = 13
        Caption = 'Delegaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 267
        Top = 70
        Width = 83
        Height = 13
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 20
        Top = 105
        Width = 43
        Height = 13
        Caption = 'Secci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 267
        Top = 105
        Width = 51
        Height = 13
        Caption = 'Proyecto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboBoxCD_CUENTA: TDBLookupComboBox
        Left = 123
        Top = 17
        Width = 100
        Height = 21
        DataField = 'CUENTA'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CUENTA'
        ListField = 'CUENTA'
        ListSource = DataModuleBalAcumulados.SAnaliticas
        ParentFont = False
        TabOrder = 0
      end
      object ComboBoxDELEGACION: TDBLookupComboBox
        Left = 19
        Top = 84
        Width = 229
        Height = 21
        DataField = 'ID_DELEGACION'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_DELEGACION'
        ListField = 'NOMBRE'
        ListSource = DataModuleBalAcumulados.SDelegaciones
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxDEPARTAMENTO: TDBLookupComboBox
        Left = 267
        Top = 84
        Width = 229
        Height = 21
        DataField = 'ID_DEPARTAMENTO'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_DEPARTAMENTO'
        ListField = 'NOMBRE'
        ListSource = DataModuleBalAcumulados.SDepartamentos
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxSECCION: TDBLookupComboBox
        Left = 20
        Top = 119
        Width = 229
        Height = 21
        DataField = 'ID_SECCION'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_SECCION'
        ListField = 'NOMBRE'
        ListSource = DataModuleBalAcumulados.SSecciones
        ParentFont = False
        TabOrder = 6
      end
      object ComboBoxPROYECTO: TDBLookupComboBox
        Left = 267
        Top = 119
        Width = 229
        Height = 21
        DataField = 'ID_PROYECTO'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_PROYECTO'
        ListField = 'NOMBRE'
        ListSource = DataModuleBalAcumulados.SProyectos
        ParentFont = False
        TabOrder = 7
      end
      object ComboBoxDS_CUENTA: TDBLookupComboBox
        Left = 222
        Top = 17
        Width = 274
        Height = 21
        DataField = 'CUENTA'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CUENTA'
        ListField = 'NOMBRE'
        ListSource = DataModuleBalAcumulados.SAnaliticas
        ParentFont = False
        TabOrder = 1
      end
      object ComboBoxCD_CUENTA_H: TDBLookupComboBox
        Left = 123
        Top = 37
        Width = 100
        Height = 21
        DataField = 'CUENTA_H'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CUENTA'
        ListField = 'CUENTA'
        ListSource = DataModuleBalAcumulados.SAnaliticas
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxDS_CUENTA_H: TDBLookupComboBox
        Left = 222
        Top = 37
        Width = 274
        Height = 21
        DataField = 'CUENTA_H'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CUENTA'
        ListField = 'NOMBRE'
        ListSource = DataModuleBalAcumulados.SAnaliticas
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 543
    Height = 41
    Align = alTop
    Color = 14275008
    TabOrder = 1
    ExplicitWidth = 551
    object Shape1: TShape
      Left = 11
      Top = 30
      Width = 516
      Height = 1
      Pen.Color = 7552051
    end
    object lTitulo: TLabel
      Left = 11
      Top = 10
      Width = 192
      Height = 19
      Caption = 'Balance de Acumulados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 447
    Width = 543
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 2
    ExplicitTop = 452
    ExplicitWidth = 551
    DesignSize = (
      543
      41)
    object BtnEdtProcesar: TButton
      Left = 416
      Top = 9
      Width = 118
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnEdtProcesarClick
    end
  end
  object QFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 6
    object QFiltroSUBCUENTA_DESDE: TStringField
      FieldName = 'SUBCUENTA_DESDE'
      Size = 10
    end
    object QFiltroSUBCUENTA_HASTA: TStringField
      FieldName = 'SUBCUENTA_HASTA'
      Size = 10
    end
    object QFiltroFECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object QFiltroFECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object QFiltroTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Size = 1
    end
    object QFiltroFECHA_IMPRIMIR: TDateField
      FieldName = 'FECHA_IMPRIMIR'
    end
    object QFiltroNIVEL_1: TIntegerField
      FieldName = 'NIVEL_1'
    end
    object QFiltroNIVEL_2: TIntegerField
      FieldName = 'NIVEL_2'
    end
    object QFiltroCUENTA: TStringField
      FieldName = 'CUENTA'
      Size = 10
    end
    object QFiltroCUENTA_H: TStringField
      FieldName = 'CUENTA_H'
      Size = 10
    end
    object QFiltroID_DELEGACION: TStringField
      FieldName = 'ID_DELEGACION'
      Size = 10
    end
    object QFiltroID_DEPARTAMENTO: TStringField
      FieldName = 'ID_DEPARTAMENTO'
      Size = 10
    end
    object QFiltroID_SECCION: TStringField
      FieldName = 'ID_SECCION'
      Size = 10
    end
    object QFiltroID_PROYECTO: TStringField
      FieldName = 'ID_PROYECTO'
      Size = 10
    end
  end
  object SFiltro: TDataSource
    DataSet = QFiltro
    Left = 408
    Top = 6
  end
end
