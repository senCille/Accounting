object WSituacionEfecto: TWSituacionEfecto
  Left = 974
  Top = 601
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Situaci'#243'n de Efecto'
  ClientHeight = 229
  ClientWidth = 353
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Shape1: TShape
    Left = 24
    Top = 33
    Width = 256
    Height = 1
    Pen.Color = 7552051
  end
  object lTitulo: TLabel
    Left = 24
    Top = 13
    Width = 151
    Height = 19
    Caption = 'Cartera de Efectos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Datos: TGroupBox
    Left = 24
    Top = 41
    Width = 305
    Height = 136
    Color = 14275008
    ParentColor = False
    TabOrder = 0
    object lDescripcion: TLabel
      Left = 58
      Top = 32
      Width = 168
      Height = 64
      AutoSize = False
      Caption = 'Seleccione la situaci'#243'n del efecto seleccionado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object EditCHEQUE: TDBEdit
      Left = 58
      Top = 63
      Width = 168
      Height = 21
      DataField = 'CHEQUE'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ComboBoxSITUACION: TDBComboBox
      Left = 67
      Top = 74
      Width = 149
      Height = 22
      DataField = 'SITUACION'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'PENDIENTE'
        'REMESADO'
        'COBRADO'
        'DEVUELTO'
        'PAGADO'
        'ACEPTADO'
        'VENCIDO')
      ParentFont = False
      TabOrder = 0
    end
  end
  object BtnAccept: TButton
    Left = 155
    Top = 185
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    OnClick = BtnAcceptClick
  end
  object BtnCancel: TButton
    Left = 246
    Top = 185
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BtnCancelClick
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 287
    Top = 2
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 237
    Top = 2
    object QFicheroSITUACION: TStringField
      FieldName = 'SITUACION'
      Size = 1
    end
    object QFicheroCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 15
    end
  end
end
