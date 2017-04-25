object WFiltro347: TWFiltro347
  Left = 828
  Top = 241
  ClientHeight = 491
  ClientWidth = 528
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
    Top = 36
    Width = 528
    Height = 414
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 11
      Top = 334
      Width = 504
      Height = 72
      Caption = ' Datos adicionales '
      TabOrder = 5
      object Label4: TLabel
        Left = 20
        Top = 22
        Width = 77
        Height = 13
        Caption = 'Fecha a imprimir'
      end
      object EditFECHA_IMPRIMIR: TDBEdit
        Left = 135
        Top = 18
        Width = 89
        Height = 21
        DataField = 'FECHA_IMPRIMIR'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CheckBoxGenerarCartas: TCheckBox
        Left = 258
        Top = 18
        Width = 120
        Height = 17
        Caption = 'Generar Cartas'
        TabOrder = 1
        Visible = False
      end
      object CheckBoxGenerarDiskette: TCheckBox
        Left = 258
        Top = 45
        Width = 191
        Height = 17
        Caption = 'Generar fichero importaci'#243'n'
        TabOrder = 2
      end
    end
    object RaditoGroupConcepto: TDBRadioGroup
      Left = 11
      Top = 256
      Width = 161
      Height = 75
      Caption = ' Clase de Conceptos '
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
    object GroupBox3: TGroupBox
      Left = 11
      Top = 9
      Width = 504
      Height = 138
      Caption = ' Tipo Selecci'#243'n '
      TabOrder = 0
      object CheckBoxDescripcion: TCheckBox
        Left = 12
        Top = 69
        Width = 94
        Height = 17
        Caption = 'Descripci'#243'n'
        TabOrder = 5
        OnClick = CheckBoxSubcuentaClick
      end
      object CheckBoxSubcuenta: TCheckBox
        Left = 12
        Top = 21
        Width = 94
        Height = 17
        Caption = 'Subcuenta'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBoxSubcuentaClick
      end
      object ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 207
        Top = 41
        Width = 280
        Height = 21
        DataField = 'SUBCUENTA_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 207
        Top = 19
        Width = 280
        Height = 21
        DataField = 'SUBCUENTA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 108
        Top = 19
        Width = 100
        Height = 21
        DataField = 'SUBCUENTA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 1
      end
      object ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 108
        Top = 41
        Width = 100
        Height = 21
        DataField = 'SUBCUENTA_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 3
      end
      object ComboBoxDESC_CD_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 387
        Top = 67
        Width = 100
        Height = 21
        DataField = 'DESCRIPCION_DESDE'
        DataSource = DSFiltro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DESCRIPCION'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 7
      end
      object ComboBoxDESC_CD_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 387
        Top = 89
        Width = 100
        Height = 21
        DataField = 'DESCRIPCION_HASTA'
        DataSource = DSFiltro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DESCRIPCION'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 9
      end
      object ComboBoxDESC_DS_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 108
        Top = 89
        Width = 280
        Height = 21
        DataField = 'DESCRIPCION_HASTA'
        DataSource = DSFiltro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DESCRIPCION'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 8
      end
      object ComboBoxDESC_DS_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 108
        Top = 67
        Width = 279
        Height = 21
        DataField = 'DESCRIPCION_DESDE'
        DataSource = DSFiltro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DESCRIPCION'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 6
      end
      object CheckBoxExcluirProfesionales: TCheckBox
        Left = 108
        Top = 113
        Width = 208
        Height = 17
        Caption = 'Excluir profesionales'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 147
      Width = 504
      Height = 107
      TabOrder = 1
      object Label20: TLabel
        Left = 20
        Top = 56
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label24: TLabel
        Left = 135
        Top = 11
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label25: TLabel
        Left = 258
        Top = 10
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label2: TLabel
        Left = 20
        Top = 81
        Width = 38
        Height = 13
        Caption = 'Importe'
      end
      object Label7: TLabel
        Left = 20
        Top = 30
        Width = 36
        Height = 13
        Caption = 'Asiento'
      end
      object EditFECHA_DESDE: TDBEdit
        Left = 135
        Top = 52
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
        TabOrder = 2
      end
      object EditFECHA_HASTA: TDBEdit
        Left = 258
        Top = 52
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
        TabOrder = 3
      end
      object EditIMPORTE_DESDE: TDBEdit
        Left = 135
        Top = 77
        Width = 90
        Height = 21
        AutoSize = False
        DataField = 'IMPORTE_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EditIMPORTE_HASTA: TDBEdit
        Left = 258
        Top = 77
        Width = 90
        Height = 21
        AutoSize = False
        DataField = 'IMPORTE_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object EditASIENTO_DESDE: TDBEdit
        Left = 135
        Top = 26
        Width = 89
        Height = 21
        DataField = 'ASIENTO_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditASIENTO_HASTA: TDBEdit
        Left = 258
        Top = 26
        Width = 89
        Height = 21
        DataField = 'ASIENTO_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object RaditoGroupTipo216: TDBRadioGroup
      Left = 183
      Top = 256
      Width = 161
      Height = 75
      Caption = ' Tipo 216 '
      DataField = 'TIPO_216'
      DataSource = DSFiltro
      Items.Strings = (
        'Incluir'
        'Excluir'
        'S'#243'lo')
      TabOrder = 3
      Values.Strings = (
        'I'
        'E'
        'S')
    end
    object RaditoGroupOrden: TDBRadioGroup
      Left = 354
      Top = 256
      Width = 161
      Height = 75
      Caption = ' Orden por '
      DataField = 'ORDEN'
      DataSource = DSFiltro
      Items.Strings = (
        'Subcuenta'
        'Descripci'#243'n')
      TabOrder = 4
      Values.Strings = (
        'S'
        'D')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 450
    Width = 528
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      528
      41)
    object BtnAccept: TButton
      Left = 365
      Top = 9
      Width = 145
      Height = 24
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnAcceptClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 36
    Align = alTop
    TabOrder = 2
    object lTitulo: TLabel
      Left = 8
      Top = 6
      Width = 227
      Height = 19
      Caption = 'Operaciones con Terceros (347)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 8
      Top = 28
      Width = 523
      Height = 1
    end
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 6
    object CDSFiltroSUBCUENTA_DESDE: TStringField
      FieldName = 'SUBCUENTA_DESDE'
      Size = 10
    end
    object CDSFiltroSUBCUENTA_HASTA: TStringField
      FieldName = 'SUBCUENTA_HASTA'
      Size = 10
    end
    object CDSFiltroDESCRIPCION_DESDE: TStringField
      FieldName = 'DESCRIPCION_DESDE'
      Size = 80
    end
    object CDSFiltroDESCRIPCION_HASTA: TStringField
      FieldName = 'DESCRIPCION_HASTA'
      Size = 80
    end
    object CDSFiltroASIENTO_DESDE: TIntegerField
      FieldName = 'ASIENTO_DESDE'
    end
    object CDSFiltroASIENTO_HASTA: TIntegerField
      FieldName = 'ASIENTO_HASTA'
    end
    object CDSFiltroFECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object CDSFiltroFECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object CDSFiltroFECHA_IMPRIMIR: TDateField
      FieldName = 'FECHA_IMPRIMIR'
    end
    object CDSFiltroIMPORTE_DESDE: TFloatField
      FieldName = 'IMPORTE_DESDE'
    end
    object CDSFiltroIMPORTE_HASTA: TFloatField
      FieldName = 'IMPORTE_HASTA'
    end
    object CDSFiltroTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Size = 1
    end
    object CDSFiltroTIPO_216: TStringField
      FieldName = 'TIPO_216'
      Size = 1
    end
    object CDSFiltroORDEN: TStringField
      FieldName = 'ORDEN'
      Size = 1
    end
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 432
    Top = 6
  end
end
