object ImportDataView: TImportDataView
  Left = 532
  Top = 339
  Caption = 'Importacion de datos'
  ClientHeight = 151
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object RgTipo: TRadioGroup
    Left = 24
    Top = 42
    Width = 121
    Height = 95
    Caption = 'Tipo '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Items.Strings = (
      'Subcuentas'
      'Proveedores'
      'Cuentas')
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 64
    Width = 84
    Height = 25
    Caption = '&Procesar'
    Default = True
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 96
    Width = 84
    Height = 25
    Caption = '&Salir'
    NumGlyphs = 2
    TabOrder = 2
  end
end
