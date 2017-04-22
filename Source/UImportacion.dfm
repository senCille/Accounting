object WImportacion: TWImportacion
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
    OnClick = BitBtn1Click
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
  object QSubcuentas: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'lcuent1'
    UniDirectional = False
    Left = 208
    Top = 12
  end
  object QProveedores: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'lproveed'
    UniDirectional = False
    Left = 288
    Top = 12
  end
  object QExiste: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 8
    Top = 8
  end
  object QActualiza: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 43
    Top = 8
  end
  object QInserta: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 81
    Top = 8
  end
  object QBuscaProvincia: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 124
    Top = 8
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'localhost:C:\cviews\NumunConta\datos\SENCILLE.IB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 168
    Top = 56
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    Left = 168
    Top = 104
  end
end
