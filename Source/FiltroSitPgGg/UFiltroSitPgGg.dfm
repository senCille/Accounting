object WFiltroSitPgGg: TWFiltroSitPgGg
  Left = 397
  Top = 185
  ClientHeight = 460
  ClientWidth = 526
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 37
    Width = 526
    Height = 382
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 14
      Top = 210
      Width = 229
      Height = 164
      Caption = ' Datos adicionales '
      TabOrder = 2
      object Label4: TLabel
        Left = 15
        Top = 23
        Width = 77
        Height = 13
        Caption = 'Fecha a imprimir'
      end
      object Label11: TLabel
        Left = 15
        Top = 77
        Width = 162
        Height = 13
        Caption = 'Selecciona empresa Ejer. Anterior'
      end
      object EditFECHA_IMPRIMIR: TDBEdit
        Left = 126
        Top = 19
        Width = 95
        Height = 21
        AutoSize = False
        DataField = 'FECHA_IMPRIMIR'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CheckBoxSaldosEjerAnterior: TCheckBox
        Left = 15
        Top = 51
        Width = 211
        Height = 17
        Caption = 'Saldos acumulados ejer. anterior'
        TabOrder = 1
      end
      object ComboBoxEMPRESA: TDBLookupComboBox
        Left = 15
        Top = 90
        Width = 205
        Height = 21
        DataField = 'EMPRESA'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_EMPRESA'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroSitPgGg.SEmpresas
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 14
      Top = 16
      Width = 497
      Height = 61
      TabOrder = 0
      object Label2: TLabel
        Left = 7
        Top = 27
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label1: TLabel
        Left = 72
        Top = 10
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label5: TLabel
        Left = 172
        Top = 10
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object EditFECHA_DESDE: TDBEdit
        Left = 43
        Top = 23
        Width = 95
        Height = 21
        AutoSize = False
        DataField = 'FECHA_DESDE'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditFECHA_HASTA: TDBEdit
        Left = 141
        Top = 23
        Width = 95
        Height = 21
        AutoSize = False
        DataField = 'FECHA_HASTA'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RadioGroupConcepto: TDBRadioGroup
        Left = 247
        Top = 12
        Width = 240
        Height = 40
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
    end
    object GroupBox2: TGroupBox
      Left = 14
      Top = 78
      Width = 497
      Height = 129
      Caption = ' Anal'#237'tica '
      TabOrder = 1
      object Label6: TLabel
        Left = 10
        Top = 18
        Width = 78
        Height = 13
        Caption = 'Cuenta Anal'#237'tica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 10
        Top = 42
        Width = 52
        Height = 13
        Caption = 'Delegaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 257
        Top = 42
        Width = 69
        Height = 13
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 10
        Top = 81
        Width = 36
        Height = 13
        Caption = 'Secci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 257
        Top = 81
        Width = 43
        Height = 13
        Caption = 'Proyecto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ComboBoxCD_ANALITICA: TDBLookupComboBox
        Left = 113
        Top = 14
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
        ListSource = DataModuleFiltroSitPgGg.SAnaliticas
        ParentFont = False
        TabOrder = 0
      end
      object ComboBoxDELEGACION: TDBLookupComboBox
        Left = 9
        Top = 56
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
        ListSource = DataModuleFiltroSitPgGg.SDelegaciones
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxDEPARTAMENTO: TDBLookupComboBox
        Left = 257
        Top = 56
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
        ListSource = DataModuleFiltroSitPgGg.SDepartamentos
        ParentFont = False
        TabOrder = 3
      end
      object ComboBoxSECCION: TDBLookupComboBox
        Left = 10
        Top = 95
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
        ListSource = DataModuleFiltroSitPgGg.SSecciones
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxPROYECTO: TDBLookupComboBox
        Left = 257
        Top = 95
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
        ListSource = DataModuleFiltroSitPgGg.SProyectos
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxDS_ANALITICA: TDBLookupComboBox
        Left = 212
        Top = 14
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
        ListSource = DataModuleFiltroSitPgGg.SAnaliticas
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox5: TGroupBox
      Left = 244
      Top = 210
      Width = 267
      Height = 164
      Caption = ' Consolidar empresa con las seleccionadas'
      TabOrder = 3
      object ListBoxEmpresas: TCheckListBox
        Left = 13
        Top = 18
        Width = 242
        Height = 139
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 37
    Align = alTop
    TabOrder = 1
    object LabelTitulo: TLabel
      Left = 7
      Top = 6
      Width = 144
      Height = 19
      Caption = 'Balance de Situaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 7
      Top = 28
      Width = 523
      Height = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 419
    Width = 526
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      526
      41)
    object BtnProcess: TButton
      Left = 348
      Top = 9
      Width = 153
      Height = 24
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnProcessClick
    end
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 6
    object CDSFiltroFECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object CDSFiltroFECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object CDSFiltroTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Size = 1
    end
    object CDSFiltroEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object CDSFiltroFECHA_IMPRIMIR: TDateField
      FieldName = 'FECHA_IMPRIMIR'
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
    Left = 424
    Top = 6
  end
end
