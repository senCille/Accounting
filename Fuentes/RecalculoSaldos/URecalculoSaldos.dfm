object WRecalculoSaldos: TWRecalculoSaldos
  Left = 655
  Top = 219
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Rec'#225'lculo de Saldos'
  ClientHeight = 282
  ClientWidth = 434
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Shape1: TShape
    Left = 24
    Top = 33
    Width = 355
    Height = 1
    Pen.Color = 7552051
  end
  object lTitulo: TLabel
    Left = 24
    Top = 13
    Width = 161
    Height = 19
    Caption = 'Rec'#225'lculo de Saldos'
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
    Top = 39
    Width = 387
    Height = 186
    Color = 14275008
    ParentColor = False
    TabOrder = 0
    object Label4: TLabel
      Left = 36
      Top = 88
      Width = 312
      Height = 48
      Caption = 
        'Al ejecutar esta opci'#243'n se recalcular'#225'n los saldos de las cuenta' +
        's y subcuentas que tengan apuntes en el diario.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 108
      Top = 40
      Width = 47
      Height = 13
      Caption = 'Ejercicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditEJERCICIO: TEdit
      Left = 171
      Top = 36
      Width = 62
      Height = 21
      Cursor = crIBeam
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object BtnEdtProcesar: TButton
    Left = 325
    Top = 234
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnEdtProcesarClick
  end
end
