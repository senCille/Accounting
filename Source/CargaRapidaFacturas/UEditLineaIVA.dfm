object WEditLineaIVA: TWEditLineaIVA
  Left = 870
  Top = 452
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Edici'#243'n Linea de IVA'
  ClientHeight = 271
  ClientWidth = 479
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  object Datos: TGroupBox
    Left = 0
    Top = 34
    Width = 479
    Height = 196
    Align = alClient
    Color = 14275008
    ParentColor = False
    TabOrder = 0
    object Label10: TLabel
      Left = 24
      Top = 16
      Width = 106
      Height = 14
      Caption = 'Subcuenta Tipo IVA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 133
      Width = 53
      Height = 14
      Caption = 'Concepto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 119
      Top = 56
      Width = 53
      Height = 14
      Caption = 'Cuota IVA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 23
      Top = 94
      Width = 136
      Height = 14
      Caption = 'Subcuenta Contrapartida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 23
      Top = 56
      Width = 85
      Height = 14
      Caption = 'Base Imponible'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBoxCD_SUBCUENTA_IVA: TDBLookupComboBox
      Left = 24
      Top = 30
      Width = 89
      Height = 22
      DataField = 'SUBCUENTA_IVA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DataModuleCargaRapidaFacturas.SSubCTAIVADeducible
      ParentFont = False
      TabOrder = 0
    end
    object ComboBoxDS_SUBCUENTA_IVA: TDBLookupComboBox
      Left = 113
      Top = 30
      Width = 300
      Height = 22
      DataField = 'SUBCUENTA_IVA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleCargaRapidaFacturas.SSubCTAIVADeducible
      ParentFont = False
      TabOrder = 1
    end
    object ComboBoxDS_CONCEPTO: TDBLookupComboBox
      Left = 113
      Top = 147
      Width = 300
      Height = 21
      DataField = 'ID_CONCEPTOS'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_CONCEPTOS'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleCargaRapidaFacturas.SConceptos
      ParentFont = False
      TabOrder = 7
    end
    object ComboBoxCD_CONCEPTO: TDBLookupComboBox
      Left = 24
      Top = 147
      Width = 89
      Height = 21
      DataField = 'ID_CONCEPTOS'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_CONCEPTOS'
      ListField = 'ID_CONCEPTOS'
      ListSource = DataModuleCargaRapidaFacturas.SConceptos
      ParentFont = False
      TabOrder = 6
    end
    object EditCUOTA_IVA: TDBEdit
      Left = 119
      Top = 70
      Width = 89
      Height = 21
      AutoSize = False
      DataField = 'CUOTA_IVA'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ComboBoxCD_SUBCUENTA_CONTRAPARTIDA: TDBLookupComboBox
      Left = 23
      Top = 108
      Width = 89
      Height = 22
      DataField = 'CONTRAPARTIDA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DataModuleCargaRapidaFacturas.SSubCTAIVADeducible
      ParentFont = False
      TabOrder = 4
    end
    object ComboBoxDS_SUBCUENTA_CONTRAPARTIDA: TDBLookupComboBox
      Left = 112
      Top = 108
      Width = 300
      Height = 22
      DataField = 'CONTRAPARTIDA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleCargaRapidaFacturas.SSubCTAIVADeducible
      ParentFont = False
      TabOrder = 5
    end
    object EditBASE_IMPONIBLE: TDBEdit
      Left = 23
      Top = 70
      Width = 89
      Height = 21
      AutoSize = False
      DataField = 'BASE_IMPONIBLE'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 479
    Height = 34
    Align = alTop
    Color = 14275008
    TabOrder = 1
    object Shape1: TShape
      Left = 7
      Top = 26
      Width = 395
      Height = 1
      Pen.Color = 7552051
    end
    object lTitulo: TLabel
      Left = 7
      Top = 6
      Width = 167
      Height = 19
      Caption = 'Edici'#243'n Linea de IVA'
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
    Top = 230
    Width = 479
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 2
    DesignSize = (
      479
      41)
    object BtnAccept: TButton
      Left = 377
      Top = 8
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnAcceptClick
    end
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 419
    Top = 10
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 355
    Top = 10
    object QFicheroSUBCUENTA_IVA: TStringField
      FieldName = 'SUBCUENTA_IVA'
      Size = 10
    end
    object QFicheroBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
    end
    object QFicheroCUOTA_IVA: TFloatField
      FieldName = 'CUOTA_IVA'
    end
    object QFicheroCONTRAPARTIDA: TStringField
      FieldName = 'CONTRAPARTIDA'
      Size = 10
    end
    object QFicheroID_CONCEPTOS: TStringField
      FieldName = 'ID_CONCEPTOS'
      Size = 3
    end
  end
end
