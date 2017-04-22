object WEditEmpleado: TWEditEmpleado
  Left = 1027
  Top = 411
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Edici'#243'n de Cuenta de Empleado'
  ClientHeight = 218
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
    Height = 143
    Align = alClient
    Color = 14275008
    ParentColor = False
    TabOrder = 0
    object Label10: TLabel
      Left = 24
      Top = 16
      Width = 58
      Height = 14
      Caption = 'Subcuenta'
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
      Width = 23
      Height = 14
      Caption = 'IRPF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 23
      Top = 56
      Width = 41
      Height = 14
      Caption = 'Nomina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 214
      Top = 56
      Width = 59
      Height = 14
      Caption = 'Seg. Social'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 310
      Top = 56
      Width = 25
      Height = 14
      Caption = 'Neto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBoxCD_SUBCUENTA: TDBLookupComboBox
      Left = 24
      Top = 30
      Width = 89
      Height = 22
      DataField = 'SUBCUENTA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DataModuleCargaRapidaNominas.SSubCTANominas
      ParentFont = False
      TabOrder = 0
    end
    object ComboBoxDS_SUBCUENTA: TDBLookupComboBox
      Left = 113
      Top = 30
      Width = 300
      Height = 22
      DataField = 'SUBCUENTA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleCargaRapidaNominas.SSubCTANominas
      ParentFont = False
      TabOrder = 1
    end
    object EditIRPF: TDBEdit
      Left = 119
      Top = 70
      Width = 89
      Height = 21
      AutoSize = False
      DataField = 'IRPF'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EditNOMINA: TDBEdit
      Left = 23
      Top = 70
      Width = 89
      Height = 21
      AutoSize = False
      DataField = 'NOMINA'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EditSSOCIAL: TDBEdit
      Left = 214
      Top = 70
      Width = 89
      Height = 21
      AutoSize = False
      DataField = 'SSOCIAL'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object EditNETO: TDBEdit
      Left = 310
      Top = 70
      Width = 89
      Height = 21
      TabStop = False
      AutoSize = False
      Ctl3D = False
      DataField = 'NETO'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object CheckBoxN: TDBCheckBox
      Left = 24
      Top = 104
      Width = 89
      Height = 17
      Caption = 'N'#243'mina'
      DataField = 'N'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'System'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
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
      Width = 256
      Height = 19
      Caption = 'Edici'#243'n de Cuenta de Empleado'
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
    Top = 177
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
    Top = 7
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = QFicheroCalcFields
    Left = 352
    Top = 6
    object QFicheroSUBCUENTA: TStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QFicheroDESCRIPCION: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'DESCRIPCION'
      LookupDataSet = DMContaRef.QSubCTANominas
      LookupKeyFields = 'SUBCUENTA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'SUBCUENTA'
      Size = 80
      Lookup = True
    end
    object QFicheroNOMINA: TFloatField
      DisplayLabel = 'IMP. N'#211'MINA'
      DisplayWidth = 10
      FieldName = 'NOMINA'
    end
    object QFicheroIRPF: TFloatField
      DisplayWidth = 10
      FieldName = 'IRPF'
    end
    object QFicheroSSOCIAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SSOCIAL'
    end
    object QFicheroNETO: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'NETO'
      Calculated = True
    end
    object QFicheroN: TStringField
      DisplayLabel = 'N'#211'MINA'
      DisplayWidth = 7
      FieldName = 'N'
      Size = 1
    end
  end
end
