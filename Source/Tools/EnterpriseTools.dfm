object WUtilEmpresas: TWUtilEmpresas
  Left = 567
  Top = 407
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Utilidades sobre Empresas'
  ClientHeight = 358
  ClientWidth = 636
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
  PixelsPerInch = 96
  TextHeight = 16
  object Shape1: TShape
    Left = 24
    Top = 33
    Width = 589
    Height = 1
  end
  object lTitulo: TLabel
    Left = 24
    Top = 13
    Width = 157
    Height = 19
    Caption = 'Utilidades de Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Datos: TGroupBox
    Left = 26
    Top = 37
    Width = 591
    Height = 268
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object lbNombreEmpresa: TLabel
      Left = 16
      Top = 12
      Width = 107
      Height = 13
      Alignment = taCenter
      Caption = 'Nombre de la empresa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 18
      Top = 99
      Width = 210
      Height = 13
      Alignment = taCenter
      Caption = 'Mensajes de las utilidades de base de datos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 11
      Top = 113
      Width = 566
      Height = 145
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object RGOperacion: TRadioGroup
      Left = 16
      Top = 28
      Width = 561
      Height = 62
      Caption = ' Seleccione la operaci'#243'n a realizar '
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Exportaci'#243'n'
        'Importaci'#243'n'
        'Reorganizaci'#243'n'
        'Plan contable m'#237'nimo'
        'Actualizaci'#243'n')
      ParentFont = False
      TabOrder = 1
    end
  end
  object BtnAccept: TButton
    Left = 535
    Top = 314
    Width = 83
    Height = 25
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
  object IBBackup: TIBBackupService
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    TraceFlags = []
    ServerType = 'IBServer'
    BlockingFactor = 0
    Options = []
    PreAllocate = 0
    Left = 298
    Top = 16
  end
  object IBRestore: TIBRestoreService
    TraceFlags = []
    ServerType = 'IBServer'
    PageBuffers = 0
    PreAllocate = 0
    ReadOnly = False
    Left = 354
    Top = 16
  end
  object BDMinima: TIBDatabase
    LoginPrompt = False
    DefaultTransaction = Transaccion
    ServerType = 'IBServer'
    Left = 416
    Top = 16
  end
  object Transaccion: TIBTransaction
    DefaultDatabase = BDMinima
    Left = 496
    Top = 16
  end
end
