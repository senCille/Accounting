object WCierreEjercicio: TWCierreEjercicio
  Left = 634
  Top = 289
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cierre de Ejercicio'
  ClientHeight = 462
  ClientWidth = 557
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
    Width = 473
    Height = 1
  end
  object lTitulo: TLabel
    Left = 24
    Top = 13
    Width = 128
    Height = 19
    Caption = 'Cierre de Ejercicio'
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
    Top = 140
    Width = 506
    Height = 269
    Caption = ' MARQUE LAS TAREAS AUTOMATIZADAS A REALIZAR DURANTE EL CIERRE '
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 58
      Top = 99
      Width = 395
      Height = 48
      Caption = 
        'Despu'#233's de esta tarea, debe imprimir los listados correspondient' +
        'es y generar el duplicado de la empresa renombr'#225'ndolo con el eje' +
        'rcicio cerrado.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object oARegularizacion: TCheckBox
      Left = 39
      Top = 55
      Width = 314
      Height = 17
      TabStop = False
      Caption = 'Asiento de regularizaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object oAAcumSaldosEjerAnt: TCheckBox
      Left = 39
      Top = 168
      Width = 314
      Height = 17
      TabStop = False
      Caption = 'Acumular saldos del ejercicio anterior'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object oAAcumSaldosAmortiz: TCheckBox
      Left = 39
      Top = 28
      Width = 314
      Height = 17
      TabStop = False
      Caption = 'Acumular saldos de amortizaciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object oACierreApertura: TCheckBox
      Left = 39
      Top = 82
      Width = 314
      Height = 17
      TabStop = False
      Caption = 'Asientos de cierre y apertura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object oABorrarAsientos: TCheckBox
      Left = 39
      Top = 191
      Width = 458
      Height = 17
      TabStop = False
      Caption = 'Borrar asientos del ejercicio actual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object oACambioFechas: TCheckBox
      Left = 39
      Top = 214
      Width = 458
      Height = 17
      TabStop = False
      Caption = 'Cambiar fechas del nuevo ejercicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object oARenumerado: TCheckBox
      Left = 39
      Top = 237
      Width = 458
      Height = 17
      TabStop = False
      Caption = 'Renumerar asientos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object BtnEdtProcesar: TButton
    Left = 444
    Top = 417
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnEdtProcesarClick
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 43
    Width = 506
    Height = 95
    Caption = 
      ' MARQUE LAS TAREAS YA REALIZADAS POR EL USUARIO ANTES DEL CIERRE' +
      ' '
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object oURecalculo: TCheckBox
      Left = 39
      Top = 28
      Width = 314
      Height = 17
      TabStop = False
      Caption = 'Rec'#225'lculo de saldos'
      TabOrder = 0
    end
    object oUImpresion: TCheckBox
      Left = 39
      Top = 60
      Width = 314
      Height = 17
      TabStop = False
      Caption = 'Impresi'#243'n de listados y balances'
      TabOrder = 1
    end
  end
end
