object WFiltroMayorSubcuenta: TWFiltroMayorSubcuenta
  Left = 958
  Top = 202
  Width = 539
  Height = 461
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 0
    Top = 38
    Width = 531
    Height = 348
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 11
      Top = 255
      Width = 504
      Height = 84
      Caption = ' Datos adicionales '
      TabOrder = 2
      object Label4: TLabel
        Left = 246
        Top = 17
        Width = 94
        Height = 13
        Caption = 'Fecha a imprimir'
      end
      object EditFECHA_IMPRIMIR: TDBEdit
        Left = 359
        Top = 13
        Width = 89
        Height = 21
        DataField = 'FECHA_IMPRIMIR'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object CheckBoxSaldosAcumulados: TCheckBox
        Left = 10
        Top = 38
        Width = 181
        Height = 17
        Caption = 'Imprimir saldos acumulados'
        TabOrder = 1
      end
      object CheckBoxFormatoOficial: TCheckBox
        Left = 10
        Top = 18
        Width = 125
        Height = 17
        Caption = 'Formato Oficial'
        TabOrder = 0
      end
      object CheckBoxSinPuntear: TCheckBox
        Left = 10
        Top = 60
        Width = 165
        Height = 17
        Caption = 'S'#243'lo asientos sin puntear'
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 130
      Width = 504
      Height = 123
      Caption = ' Anal'#237'tica '
      TabOrder = 1
      object Label6: TLabel
        Left = 11
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
        Left = 11
        Top = 42
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
        Left = 258
        Top = 42
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
        Left = 11
        Top = 80
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
        Left = 258
        Top = 80
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
      object ComboBoxCD_ANALITICA: TDBLookupComboBox
        Left = 114
        Top = 17
        Width = 100
        Height = 21
        DataField = 'CUENTA'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CUENTA'
        ListField = 'CUENTA'
        ListSource = DataModuleFiltroMayorSubcuenta.SAnaliticas
        ParentFont = False
        TabOrder = 0
      end
      object ComboBoxDELEGACION: TDBLookupComboBox
        Left = 10
        Top = 55
        Width = 229
        Height = 21
        DataField = 'ID_DELEGACION'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_DELEGACION'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroMayorSubcuenta.SDelegaciones
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxDEPARTAMENTO: TDBLookupComboBox
        Left = 258
        Top = 55
        Width = 229
        Height = 21
        DataField = 'ID_DEPARTAMENTO'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_DEPARTAMENTO'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroMayorSubcuenta.SDepartamentos
        ParentFont = False
        TabOrder = 3
      end
      object ComboBoxSECCION: TDBLookupComboBox
        Left = 11
        Top = 93
        Width = 229
        Height = 21
        DataField = 'ID_SECCION'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_SECCION'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroMayorSubcuenta.SSecciones
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxPROYECTO: TDBLookupComboBox
        Left = 258
        Top = 93
        Width = 229
        Height = 21
        DataField = 'ID_PROYECTO'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_PROYECTO'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroMayorSubcuenta.SProyectos
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxDS_ANALITICA: TDBLookupComboBox
        Left = 213
        Top = 17
        Width = 274
        Height = 21
        DataField = 'CUENTA'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CUENTA'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroMayorSubcuenta.SAnaliticas
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 8
      Width = 504
      Height = 121
      TabOrder = 0
      object Label20: TLabel
        Left = 20
        Top = 28
        Width = 33
        Height = 13
        Caption = 'Fecha'
      end
      object Label24: TLabel
        Left = 114
        Top = 11
        Width = 35
        Height = 13
        Caption = 'Desde'
      end
      object Label25: TLabel
        Left = 259
        Top = 10
        Width = 33
        Height = 13
        Caption = 'Hasta'
      end
      object Label3: TLabel
        Left = 20
        Top = 96
        Width = 53
        Height = 13
        Caption = 'Concepto'
      end
      object EditFECHA_DESDE: TDBEdit
        Left = 114
        Top = 24
        Width = 89
        Height = 21
        DataField = 'FECHA_DESDE'
        DataSource = DSFiltro
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
        Top = 24
        Width = 89
        Height = 21
        DataField = 'FECHA_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RadiotGroupConcepto: TDBRadioGroup
        Left = 114
        Top = 51
        Width = 278
        Height = 37
        Caption = ' Clase de Conceptos '
        Columns = 3
        DataField = 'TIPO_CONCEPTO'
        DataSource = DSFiltro
        Items.Strings = (
          'Todos'
          'Normal'
          'Especial')
        TabOrder = 2
        Values.Strings = (
          'T'
          'N'
          'E')
      end
      object ComboBoxID_CONCEPTOS: TDBLookupComboBox
        Left = 114
        Top = 92
        Width = 100
        Height = 21
        DataField = 'CONCEPTO'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'ID_CONCEPTOS'
        ListSource = DataModuleFiltroMayorSubcuenta.SConceptos
        ParentFont = False
        TabOrder = 3
      end
      object ComboBoxDS_CONCEPTOS: TDBLookupComboBox
        Left = 213
        Top = 92
        Width = 274
        Height = 21
        DataField = 'CONCEPTO'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltroMayorSubcuenta.SConceptos
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 386
    Width = 531
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 1
    DesignSize = (
      531
      41)
    object BtnProcess: TButton
      Left = 374
      Top = 9
      Width = 126
      Height = 24
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 38
    Align = alTop
    Color = 14275008
    TabOrder = 2
    object lTitulo: TLabel
      Left = 8
      Top = 4
      Width = 121
      Height = 19
      Caption = 'Libro de Mayor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 8
      Top = 26
      Width = 523
      Height = 1
      Pen.Color = clNavy
    end
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 210
    Top = 8
    object CDSFiltroFECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object CDSFiltroFECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object CDSFiltroFECHA_IMPRIMIR: TDateField
      FieldName = 'FECHA_IMPRIMIR'
    end
    object CDSFiltroTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Size = 1
    end
    object CDSFiltroCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Size = 10
    end
    object CDSFiltroCUENTA: TStringField
      FieldName = 'CUENTA'
      Size = 10
    end
    object CDSFiltroID_DELEGACION: TStringField
      FieldName = 'ID_DELEGACION'
      Size = 10
    end
    object CDSFiltroID_DEPARTAMENTO: TStringField
      FieldName = 'ID_DEPARTAMENTO'
      Size = 10
    end
    object CDSFiltroID_SECCION: TStringField
      FieldName = 'ID_SECCION'
      Size = 10
    end
    object CDSFiltroID_PROYECTO: TStringField
      FieldName = 'ID_PROYECTO'
      Size = 10
    end
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 257
    Top = 8
  end
end
