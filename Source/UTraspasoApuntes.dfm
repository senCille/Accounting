object WTraspasoApuntes: TWTraspasoApuntes
  Left = 571
  Top = 293
  BorderStyle = bsSingle
  ClientHeight = 343
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
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lTitulo: TLabel
    Left = 20
    Top = 17
    Width = 149
    Height = 19
    Caption = 'Traspaso de Apuntes'
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
    Height = 240
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 55
      Top = 143
      Width = 87
      Height = 14
      Caption = 'Subcuenta Origen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 56
      Top = 48
      Width = 411
      Height = 60
      Caption = 
        'Se modificar'#225' la subcuenta de ORIGEN por la nueva de DESTINO en ' +
        'todos los apuntes donde se encuentre la subcuenta ORIGEN.'#13#10'Se ac' +
        'tualizar'#225'n en ambos casos los acumulados de las Cuentas y Subcue' +
        'ntas.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 55
      Top = 189
      Width = 91
      Height = 14
      Caption = 'Subcuenta Destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
      Top = 19
      Width = 201
      Height = 15
      Caption = 'Cambio de la cuenta en los Apuntes.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object CBDESCSUBCUENTADestino: TDBLookupComboBox
      Left = 155
      Top = 203
      Width = 248
      Height = 21
      DataField = 'SubcuentaDestino'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DMContaRef.SSubCuentasDesc
      ParentFont = False
      TabOrder = 4
    end
    object CBDESCSUBCUENTAOrigen: TDBLookupComboBox
      Left = 155
      Top = 157
      Width = 248
      Height = 21
      DataField = 'SubcuentaOrigen'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DMContaRef.SSubCuentasDesc
      ParentFont = False
      TabOrder = 2
    end
    object CBSUBCUENTAOrigen: TDBLookupComboBox
      Left = 55
      Top = 157
      Width = 100
      Height = 21
      DataField = 'SubcuentaOrigen'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DMContaRef.SSubCuentas
      ParentFont = False
      TabOrder = 1
    end
    object CBSUBCUENTADestino: TDBLookupComboBox
      Left = 55
      Top = 203
      Width = 100
      Height = 21
      DataField = 'SubcuentaDestino'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DMContaRef.SSubCuentas
      ParentFont = False
      TabOrder = 3
    end
    object oBorrarOrigen: TCheckBox
      Left = 56
      Top = 121
      Width = 195
      Height = 17
      TabStop = False
      Caption = 'Borrar la Subcuenta Origen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object BtnAccept: TButton
    Left = 462
    Top = 301
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
  object BtnNewSubAccount: TButton
    Left = 20
    Top = 301
    Width = 125
    Height = 25
    Cursor = crHandPoint
    Caption = 'A'#241'adir S&ubcta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnNewSubAccountClick
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 6
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 424
    Top = 6
  end
end
