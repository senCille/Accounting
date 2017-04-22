object WAmortizaciones: TWAmortizaciones
  Left = 666
  Top = 315
  ClientHeight = 426
  ClientWidth = 592
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 35
    Width = 592
    Height = 350
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 600
    ExplicitHeight = 355
    object RadioGroupOPERACION: TRadioGroup
      Left = 8
      Top = 11
      Width = 162
      Height = 81
      Caption = ' Operaci'#243'n '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Listados'
        'Generaci'#243'n asientos')
      ParentFont = False
      TabOrder = 0
    end
    object RadioGroupLISTADO: TRadioGroup
      Left = 198
      Top = 11
      Width = 206
      Height = 81
      Caption = ' Listado de '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Detalle del Inmovilizado'
        'Informe de Amortizaciones')
      ParentFont = False
      TabOrder = 1
    end
    object RadioGroupTIPO: TRadioGroup
      Left = 432
      Top = 11
      Width = 153
      Height = 81
      Caption = ' Tipo de Inmovilizado '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Ambos'
        'Material'
        'Inmaterial')
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 181
      Width = 577
      Height = 162
      Caption = '  Datos para la generaci'#243'n de asientos '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TabStop = True
      object Label2: TLabel
        Left = 33
        Top = 27
        Width = 193
        Height = 13
        Caption = 'Generar asientos para la fecha de '
      end
      object Label3: TLabel
        Left = 137
        Top = 55
        Width = 229
        Height = 13
        Caption = 'Concepto para la generaci'#243'n de asientos'
      end
      object Label20: TLabel
        Left = 335
        Top = 27
        Width = 104
        Height = 14
        Caption = 'Moneda impresi'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 33
        Top = 106
        Width = 97
        Height = 13
        Caption = 'Subcuenta desde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 98
        Top = 130
        Width = 32
        Height = 13
        Caption = 'hasta'
      end
      object EditFECHA: TDBEdit
        Left = 229
        Top = 23
        Width = 100
        Height = 21
        AutoSize = False
        DataField = 'FECHA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object FiltroCBDESCSUBCUENTADesde: TDBLookupComboBox
        Left = 235
        Top = 103
        Width = 306
        Height = 21
        DataField = 'SUBCUENTA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleAmortizaciones.SSubcuentas
        ParentFont = False
        TabOrder = 5
      end
      object FiltroCBSUBCUENTADesde: TDBLookupComboBox
        Left = 136
        Top = 103
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
        ListSource = DataModuleAmortizaciones.SSubcuentas
        ParentFont = False
        TabOrder = 3
      end
      object DBLookupCombo1: TDBLookupComboBox
        Left = 235
        Top = 126
        Width = 306
        Height = 21
        DataField = 'SUBCUENTA_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleAmortizaciones.SSubcuentas
        ParentFont = False
        TabOrder = 4
      end
      object FiltroCBSUBCUENTAHasta: TDBLookupComboBox
        Left = 136
        Top = 126
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
        ListSource = DataModuleAmortizaciones.SSubcuentas
        ParentFont = False
        TabOrder = 6
      end
      object ComboBoxCD_CONCEPTO: TDBLookupComboBox
        Left = 137
        Top = 69
        Width = 55
        Height = 21
        DataField = 'ID_CONCEPTOS'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'ID_CONCEPTOS'
        ListSource = DataModuleAmortizaciones.SConceptos
        ParentFont = False
        TabOrder = 1
      end
      object ComboBoxDS_CONCEPTO: TDBLookupComboBox
        Left = 191
        Top = 69
        Width = 267
        Height = 21
        DataField = 'ID_CONCEPTOS'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleAmortizaciones.SConceptos
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 94
      Width = 577
      Height = 84
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TabStop = True
      object Label16: TLabel
        Left = 71
        Top = 55
        Width = 151
        Height = 13
        Caption = 'Fecha '#218'ltima Amortizaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 262
        Top = 12
        Width = 35
        Height = 13
        Caption = 'Desde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 392
        Top = 11
        Width = 33
        Height = 13
        Caption = 'Hasta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 71
        Top = 30
        Width = 80
        Height = 13
        Caption = 'Fecha Compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditFECHA_ULT_DESDE: TDBEdit
        Left = 229
        Top = 51
        Width = 100
        Height = 21
        DataField = 'FECHA_ULT_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object FechaFECHA_ULT_HASTA: TDBEdit
        Left = 358
        Top = 51
        Width = 100
        Height = 21
        DataField = 'FECHA_ULT_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EditFECHA_COMPRA_DESDE: TDBEdit
        Left = 229
        Top = 26
        Width = 100
        Height = 21
        DataField = 'FECHA_COMPRA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditFECHA_COMPRA_HASTA: TDBEdit
        Left = 358
        Top = 26
        Width = 100
        Height = 21
        DataField = 'FECHA_COMPRA_HASTA'
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 35
    Align = alTop
    Color = 14275008
    TabOrder = 1
    ExplicitWidth = 600
    object lTitulo: TLabel
      Left = 7
      Top = 3
      Width = 218
      Height = 19
      Caption = 'Gesti'#243'n de Amortizaciones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 7
      Top = 25
      Width = 591
      Height = 1
      Pen.Color = clNavy
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 385
    Width = 592
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 2
    ExplicitTop = 390
    ExplicitWidth = 600
    DesignSize = (
      592
      41)
    object BtnProcess: TButton
      Left = 481
      Top = 9
      Width = 83
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
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 6
    object CDSFiltroSUBCUENTA_DESDE: TStringField
      FieldName = 'SUBCUENTA_DESDE'
      Size = 10
    end
    object CDSFiltroSUBCUENTA_HASTA: TStringField
      FieldName = 'SUBCUENTA_HASTA'
      Size = 10
    end
    object CDSFiltroFECHA: TDateField
      FieldName = 'FECHA'
    end
    object CDSFiltroFECHA_COMPRA_DESDE: TStringField
      FieldName = 'FECHA_COMPRA_DESDE'
    end
    object CDSFiltroFECHA_COMPRA_HASTA: TDateField
      FieldName = 'FECHA_COMPRA_HASTA'
    end
    object CDSFiltroFECHA_ULT_DESDE: TDateField
      FieldName = 'FECHA_ULT_DESDE'
    end
    object CDSFiltroFECHA_ULT_HASTA: TDateField
      FieldName = 'FECHA_ULT_HASTA'
    end
    object CDSFiltroID_CONCEPTOS: TStringField
      FieldName = 'ID_CONCEPTOS'
      Size = 3
    end
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 496
    Top = 6
  end
end
