object WImportacion: TWImportacion
  Left = 439
  Top = 221
  Width = 357
  Height = 190
  Caption = 'Importacion de datos'
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
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 96
    Width = 84
    Height = 25
    Caption = '&Salir'
    TabOrder = 2
    Kind = bkClose
  end
  object QSubcuentas: TTable
    DatabaseName = 'c:\progwin\jhercont\jher'
    TableName = 'lcuent1'
    TableType = ttParadox
    Left = 216
    Top = 16
  end
  object QProveedores: TTable
    DatabaseName = 'c:\progwin\jhercont\jher'
    TableName = 'lproveed'
    TableType = ttParadox
    Left = 248
    Top = 16
  end
  object QExiste: TIBSQL
    Database = DMRef.IBDSiamCont
    ParamCheck = True
    Transaction = DMRef.IBT1
    Left = 24
    Top = 16
  end
  object QActualiza: TIBSQL
    Database = DMRef.IBDSiamCont
    ParamCheck = True
    Transaction = DMRef.IBT1
    Left = 59
    Top = 16
  end
  object QInserta: TIBSQL
    Database = DMRef.IBDSiamCont
    ParamCheck = True
    Transaction = DMRef.IBT1
    Left = 97
    Top = 16
  end
  object QBuscaProvincia: TIBSQL
    Database = DMRef.IBDSiamCont
    ParamCheck = True
    Transaction = DMRef.IBT1
    Left = 140
    Top = 16
  end
end
