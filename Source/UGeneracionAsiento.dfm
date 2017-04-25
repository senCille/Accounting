object WGeneracionAsiento: TWGeneracionAsiento
  Left = 551
  Top = 349
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Generaci'#243'n de Asiento'
  ClientHeight = 272
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Shape1: TShape
    Left = 24
    Top = 33
    Width = 395
    Height = 1
  end
  object lTitulo: TLabel
    Left = 24
    Top = 13
    Width = 159
    Height = 19
    Caption = 'Generaci'#243'n de Asiento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Datos: TGroupBox
    Left = 24
    Top = 39
    Width = 437
    Height = 183
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Label7: TLabel
      Left = 137
      Top = 109
      Width = 44
      Height = 14
      Caption = 'Situaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 24
      Top = 109
      Width = 69
      Height = 14
      Caption = 'Fecha Asiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 24
      Top = 16
      Width = 86
      Height = 14
      Caption = 'Subcuenta Banco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 61
      Width = 46
      Height = 14
      Caption = 'Concepto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 324
      Top = 109
      Width = 60
      Height = 14
      Caption = 'Total Importe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object ComboBoxSITUACION: TDBComboBox
      Left = 137
      Top = 123
      Width = 114
      Height = 22
      DataField = 'SITUACION'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'PENDIENTE'#9'N'
        'REMESADO'#9'B'
        'COBRADO'#9'C'
        'DEVUELTO'#9'D'
        'PAGADO'#9'P'
        'ACEPTADO'#9'A'
        'VENCIDO'#9'V')
      ParentFont = False
      TabOrder = 5
    end
    object ComboBoxCD_SUBCUENTA_BANCO: TDBLookupComboBox
      Left = 24
      Top = 30
      Width = 89
      Height = 22
      DataField = 'SUBCTABANCO'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ComboBoxDS_SUBCUENTA_BANCO: TDBLookupComboBox
      Left = 113
      Top = 30
      Width = 300
      Height = 22
      DataField = 'SUBCTABANCO'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditFECHA_ASIENTO: TDBEdit
      Left = 24
      Top = 123
      Width = 89
      Height = 21
      DataField = 'FASIENTO'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CheckBoxBorrarVencimientos: TCheckBox
      Left = 24
      Top = 157
      Width = 340
      Height = 17
      TabStop = False
      Caption = 'Borrar los vencimientos al generar el asiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object ComboBoxDS_CONCEPTO: TDBLookupComboBox
      Left = 113
      Top = 75
      Width = 300
      Height = 21
      DataField = 'ID_CONCEPTOS'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object ComboBoxCD_CONCEPTO: TDBLookupComboBox
      Left = 24
      Top = 75
      Width = 89
      Height = 21
      DataField = 'ID_CONCEPTOS'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EditIMPORTE: TDBEdit
      Left = 324
      Top = 123
      Width = 89
      Height = 21
      AutoSize = False
      DataField = 'IMPORTE'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object BtnAccept: TButton
    Left = 374
    Top = 229
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnAcceptClick
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 291
    Top = 10
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 355
    Top = 10
    object QFicheroSUBCTABANCO: TStringField
      FieldName = 'SUBCTABANCO'
      Size = 10
    end
    object QFicheroFASIENTO: TDateTimeField
      FieldName = 'FASIENTO'
    end
    object QFicheroSITUACION: TStringField
      FieldName = 'SITUACION'
      Size = 1
    end
    object QFicheroID_CONCEPTOS: TVarBytesField
      FieldName = 'ID_CONCEPTOS'
      Size = 3
    end
    object QFicheroIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
end
