object WBalExplotacion: TWBalExplotacion
  Left = 727
  Top = 344
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 465
  ClientWidth = 518
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
    Width = 518
    Height = 383
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
    ExplicitWidth = 526
    ExplicitHeight = 388
    object GroupBox4: TGroupBox
      Left = 14
      Top = 238
      Width = 238
      Height = 94
      Caption = ' Datos adicionales '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label4: TLabel
        Left = 11
        Top = 20
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
      object EditFECHA_IMPRIMIR: TDBEdit
        Left = 123
        Top = 17
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
      object CheckBoxSaldosEjAnt: TCheckBox
        Left = 11
        Top = 44
        Width = 178
        Height = 17
        Caption = 'Saldos del Ejercicio Anterior'
        TabOrder = 1
      end
    end
    object GroupBox1: TGroupBox
      Left = 14
      Top = 8
      Width = 503
      Height = 85
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label20: TLabel
        Left = 110
        Top = 27
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
        Left = 173
        Top = 9
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
        Left = 314
        Top = 8
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
      object EditFECHA_DESDE: TDBEdit
        Left = 157
        Top = 23
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
        Left = 293
        Top = 23
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
      object RadioGroupConcepto: TDBRadioGroup
        Left = 107
        Top = 45
        Width = 278
        Height = 35
        Caption = ' Clase de Conceptos '
        Columns = 3
        DataField = 'TIPO_CONCEPTO'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Items.Strings = (
          'Todos'
          'Normal'
          'Especial')
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'T'
          'N'
          'E')
      end
    end
    object GroupBox2: TGroupBox
      Left = 14
      Top = 93
      Width = 503
      Height = 145
      Caption = ' Anal'#237'tica '
      TabOrder = 1
      object Label6: TLabel
        Left = 10
        Top = 20
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
        Left = 10
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
        Left = 257
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
        Left = 10
        Top = 103
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
        Left = 257
        Top = 103
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
      object ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 113
        Top = 18
        Width = 100
        Height = 21
        DataField = 'CUENTA'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleBalExplotacion.SSubcuentas
        ParentFont = False
        TabOrder = 0
      end
      object ComboBoxID_DELEGACION: TDBLookupComboBox
        Left = 9
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
        ListSource = DataModuleBalExplotacion.SDelegaciones
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxID_DEPARTAMENTO: TDBLookupComboBox
        Left = 257
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
        ListSource = DataModuleBalExplotacion.SDepartamentos
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxID_SECCION: TDBLookupComboBox
        Left = 10
        Top = 117
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
        ListSource = DataModuleBalExplotacion.SSecciones
        ParentFont = False
        TabOrder = 6
      end
      object ComboBoxID_PROYECTO: TDBLookupComboBox
        Left = 257
        Top = 117
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
        ListSource = DataModuleBalExplotacion.SProyectos
        ParentFont = False
        TabOrder = 7
      end
      object ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 212
        Top = 18
        Width = 274
        Height = 21
        DataField = 'CUENTA'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleBalExplotacion.SSubcuentas
        ParentFont = False
        TabOrder = 1
      end
      object ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 113
        Top = 38
        Width = 100
        Height = 21
        DataField = 'CUENTA_H'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleBalExplotacion.SSubcuentas
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 212
        Top = 38
        Width = 274
        Height = 21
        DataField = 'CUENTA_H'
        DataSource = SFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleBalExplotacion.SSubcuentas
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox5: TGroupBox
      Left = 257
      Top = 238
      Width = 259
      Height = 141
      Caption = ' Consolidar empresa con las seleccionadas'
      TabOrder = 4
      object lbEmpresas: TCheckListBox
        Left = 13
        Top = 18
        Width = 229
        Height = 113
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object GroupBoxTipoInforme: TDBRadioGroup
      Left = 14
      Top = 332
      Width = 238
      Height = 47
      Caption = ' Informe '
      Columns = 2
      DataField = 'INFORME'
      DataSource = SFiltro
      Items.Strings = (
        'Normal'
        'Por Anal'#237'tica')
      TabOrder = 3
      Values.Strings = (
        'N'
        'A')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 518
    Height = 41
    Align = alTop
    Color = 14275008
    TabOrder = 1
    ExplicitWidth = 526
    object Shape1: TShape
      Left = 5
      Top = 25
      Width = 499
      Height = 1
      Pen.Color = 7552051
    end
    object lTitulo: TLabel
      Left = 5
      Top = 5
      Width = 189
      Height = 19
      Caption = 'Balance de Explotaci'#243'n'
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
    Top = 424
    Width = 518
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 2
    ExplicitTop = 429
    ExplicitWidth = 526
    DesignSize = (
      518
      41)
    object BtnProcess: TButton
      Left = 361
      Top = 8
      Width = 142
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
      OnClick = BtnProcessClick
    end
  end
  object QFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 6
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
    object QFiltroINFORME: TStringField
      FieldName = 'INFORME'
      Size = 1
    end
  end
  object SFiltro: TDataSource
    DataSet = QFiltro
    Left = 440
    Top = 6
  end
  object QAnaliticas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 70
  end
end
