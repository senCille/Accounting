object WBorradoDiario: TWBorradoDiario
  Left = 990
  Top = 305
  BorderStyle = bsSingle
  ClientHeight = 359
  ClientWidth = 628
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lTitulo: TLabel
    Left = 20
    Top = 17
    Width = 234
    Height = 19
    Caption = 'Borrado General de Asientos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 20
    Top = 39
    Width = 580
    Height = 1
    Pen.Color = clNavy
  end
  object Label6: TLabel
    Left = 23
    Top = 294
    Width = 361
    Height = 13
    Caption = 
      'Tenga cuidado con el filtro, se borrar'#225'n todos los asientos entr' +
      'e los que se '
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 23
    Top = 308
    Width = 292
    Height = 13
    Caption = 'encuentre alg'#250'n apunte que cumpla las condiciones del filtro.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 23
    Top = 322
    Width = 352
    Height = 13
    Caption = 
      'Si no tiene copia de seguridad, no habr'#225' forma de recuperar los ' +
      'asientos.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 23
    Top = 48
    Width = 577
    Height = 233
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label36: TLabel
      Left = 56
      Top = 192
      Width = 53
      Height = 13
      Caption = 'Concepto'
    end
    object Label29: TLabel
      Left = 123
      Top = 101
      Width = 50
      Height = 13
      Caption = 'Importe '
    end
    object Label1: TLabel
      Left = 123
      Top = 52
      Width = 43
      Height = 13
      Caption = 'Asiento'
    end
    object Label3: TLabel
      Left = 20
      Top = 138
      Width = 97
      Height = 13
      Caption = 'Subcuenta desde'
    end
    object Label20: TLabel
      Left = 123
      Top = 77
      Width = 33
      Height = 13
      Caption = 'Fecha'
    end
    object Label24: TLabel
      Left = 200
      Top = 32
      Width = 35
      Height = 13
      Caption = 'Desde'
    end
    object Label25: TLabel
      Left = 341
      Top = 31
      Width = 33
      Height = 13
      Caption = 'Hasta'
    end
    object Label2: TLabel
      Left = 85
      Top = 162
      Width = 32
      Height = 13
      Caption = 'hasta'
    end
    object EditIMPORTE_DESDE: TDBEdit
      Left = 176
      Top = 97
      Width = 88
      Height = 20
      AutoSize = False
      DataField = 'IMPORTE_DESDE'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object EditIMPORTE_HASTA: TDBEdit
      Left = 317
      Top = 97
      Width = 88
      Height = 20
      AutoSize = False
      DataField = 'IMPORTE_HASTA'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object EditASIENTO_DESDE: TDBEdit
      Left = 176
      Top = 49
      Width = 88
      Height = 20
      AutoSize = False
      DataField = 'ASIENTO_DESDE'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EditASIENTO_HASTA: TDBEdit
      Left = 317
      Top = 49
      Width = 88
      Height = 20
      AutoSize = False
      DataField = 'ASIENTO_HASTA'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox
      Left = 223
      Top = 135
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
      ListSource = DataModuleBorradoDiario.SSubcuentas
      ParentFont = False
      TabOrder = 7
    end
    object ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox
      Left = 123
      Top = 135
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
      ListSource = DataModuleBorradoDiario.SSubcuentas
      ParentFont = False
      TabOrder = 6
    end
    object EditFECHA_DESDE: TDBEdit
      Left = 176
      Top = 73
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
      Left = 317
      Top = 73
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
    object ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox
      Left = 223
      Top = 158
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
      ListSource = DataModuleBorradoDiario.SSubcuentas
      ParentFont = False
      TabOrder = 9
    end
    object ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox
      Left = 123
      Top = 158
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
      ListSource = DataModuleBorradoDiario.SSubcuentas
      ParentFont = False
      TabOrder = 8
    end
    object ComboBoxCD_CONCEPTO: TDBLookupComboBox
      Left = 123
      Top = 188
      Width = 55
      Height = 21
      DataField = 'CD_CONCEPTO'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_CONCEPTOS'
      ListField = 'ID_CONCEPTOS'
      ListSource = DataModuleBorradoDiario.SConceptos
      ParentFont = False
      TabOrder = 10
    end
    object ComboBoxDS_CONCEPTO: TDBLookupComboBox
      Left = 177
      Top = 188
      Width = 267
      Height = 21
      DataField = 'CD_CONCEPTO'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_CONCEPTOS'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleBorradoDiario.SConceptos
      ParentFont = False
      TabOrder = 11
    end
  end
  object BtnEdtAceptar: TButton
    Left = 513
    Top = 302
    Width = 83
    Height = 24
    Cursor = crHandPoint
    Caption = '&Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnEdtAceptarClick
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 6
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
    object CDSFiltroSUBCUENTA_DESDE: TStringField
      FieldName = 'SUBCUENTA_DESDE'
      Size = 10
    end
    object CDSFiltroSUBCUENTA_HASTA: TStringField
      FieldName = 'SUBCUENTA_HASTA'
      Size = 10
    end
    object CDSFiltroIMPORTE_DESDE: TFloatField
      FieldName = 'IMPORTE_DESDE'
    end
    object CDSFiltroIMPORTE_HASTA: TFloatField
      FieldName = 'IMPORTE_HASTA'
    end
    object CDSFiltroCD_CONCEPTO: TStringField
      FieldName = 'CD_CONCEPTO'
      Size = 3
    end
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 456
    Top = 6
  end
end
