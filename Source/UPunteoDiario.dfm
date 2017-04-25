object WPunteoDiario: TWPunteoDiario
  Left = 796
  Top = 291
  BorderStyle = bsSingle
  ClientHeight = 385
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lTitulo: TLabel
    Left = 20
    Top = 17
    Width = 216
    Height = 19
    Caption = 'Punteo autom'#225'tico de asientos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 20
    Top = 39
    Width = 523
    Height = 1
  end
  object GroupBox1: TGroupBox
    Left = 20
    Top = 47
    Width = 523
    Height = 286
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 52
      Top = 177
      Width = 83
      Height = 13
      Caption = 'Subcuenta desde'
    end
    object Label2: TLabel
      Left = 53
      Top = 222
      Width = 27
      Height = 13
      Caption = 'hasta'
    end
    object RGTipoPunteo: TRadioGroup
      Left = 113
      Top = 97
      Width = 284
      Height = 52
      Caption = ' PUNTEO POR '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Importes'
        'Facturas')
      TabOrder = 1
    end
    object RGOperacion: TRadioGroup
      Left = 113
      Top = 19
      Width = 284
      Height = 57
      Caption = ' OPERACION '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Puntear'
        'Eliminar punteo')
      TabOrder = 0
    end
    object FiltroCBDESCSUBCUENTADesde: TDBLookupComboBox
      Left = 151
      Top = 190
      Width = 306
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
      ListSource = DMContaRef.SSubCuentas
      ParentFont = False
      TabOrder = 3
    end
    object FiltroCBSUBCUENTADesde: TDBLookupComboBox
      Left = 51
      Top = 190
      Width = 100
      Height = 21
      DataField = 'SUBCUENTA_DESDE'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DMContaRef.SSubCuentas
      ParentFont = False
      TabOrder = 2
    end
    object DBLookupCombo1: TDBLookupComboBox
      Left = 151
      Top = 235
      Width = 306
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
      ListSource = DMContaRef.SSubCuentas
      ParentFont = False
      TabOrder = 5
    end
    object DBLookupCombo2: TDBLookupComboBox
      Left = 51
      Top = 235
      Width = 100
      Height = 21
      DataField = 'SUBCUENTA_HASTA'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DMContaRef.SSubCuentas
      ParentFont = False
      TabOrder = 4
    end
  end
  object BtnAccept: TButton
    Left = 460
    Top = 342
    Width = 83
    Height = 24
    Cursor = crHandPoint
    Caption = '&Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnAcceptClick
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
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 432
    Top = 6
  end
end
