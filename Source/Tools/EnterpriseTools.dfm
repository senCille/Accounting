object WUtilEmpresas: TWUtilEmpresas
  Left = 567
  Top = 407
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Utilidades sobre Empresas'
  ClientHeight = 606
  ClientWidth = 647
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
  object Datos: TGroupBox
    Left = 0
    Top = 82
    Width = 647
    Height = 308
    Align = alClient
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 89
    ExplicitWidth = 591
    ExplicitHeight = 378
    object FlowPanel1: TFlowPanel
      Left = 2
      Top = 18
      Width = 643
      Height = 288
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 15
      ExplicitTop = 63
      ExplicitWidth = 565
      ExplicitHeight = 161
      object PanelFixVATEntries: TPanel
        Left = 1
        Top = 1
        Width = 560
        Height = 71
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = 'Corregir asientos de IVA'
        ParentBackground = False
        TabOrder = 0
        OnClick = PanelFixVATEntriesClick
        OnMouseMove = PanelFixVATEntriesMouseMove
        object StaticText1: TStaticText
          Left = 191
          Top = 1
          Width = 368
          Height = 69
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alRight
          AutoSize = False
          Caption = 
            'Para los asientos que tengan un Apunte de IVA y otro a Proveedor' +
            'es o Clientes, y su Contrapartida sea nula, cruza los datos de l' +
            'as contrapartidas.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = PanelFixVATEntriesClick
        end
      end
      object PanelPlanContableMinimo: TPanel
        Left = 1
        Top = 72
        Width = 560
        Height = 37
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Caption = 'Plan Contable M'#237'nimio'
        ParentBackground = False
        TabOrder = 1
        OnClick = PanelPlanContableMinimoClick
        OnMouseMove = PanelFixVATEntriesMouseMove
        object StaticText2: TStaticText
          Left = 191
          Top = 1
          Width = 368
          Height = 35
          Align = alRight
          AutoSize = False
          Caption = 
            'Elimina acumulados y saldos de la empresa actual, borra el Diari' +
            'o y deja s'#243'lo el plan contable.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = PanelPlanContableMinimoClick
          ExplicitHeight = 69
        end
      end
    end
  end
  object PanelBottom: TPanel
    Left = 0
    Top = 565
    Width = 647
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 360
    ExplicitTop = 544
    ExplicitWidth = 185
    object BtnAccept: TButton
      Left = 546
      Top = 8
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
      TabOrder = 0
      OnClick = BtnAcceptClick
    end
  end
  object PanelUp: TPanel
    Left = 0
    Top = 0
    Width = 647
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 360
    ExplicitTop = 544
    ExplicitWidth = 185
    object lTitulo: TLabel
      Left = 23
      Top = 11
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
  end
  object Memo1: TMemo
    Left = 0
    Top = 420
    Width = 647
    Height = 145
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
    ExplicitLeft = 2
    ExplicitTop = 377
    ExplicitWidth = 643
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 647
    Height = 41
    Align = alTop
    TabOrder = 4
    ExplicitLeft = 2
    ExplicitTop = 18
    ExplicitWidth = 643
    object LabelEnterpriseName: TLabel
      Left = 23
      Top = 11
      Width = 162
      Height = 19
      Caption = 'Nombre de la Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 390
    Width = 647
    Height = 30
    Align = alBottom
    TabOrder = 5
    ExplicitTop = 82
    object Label1: TLabel
      Left = 24
      Top = 7
      Width = 477
      Height = 13
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Caption = 'Mensajes de las utilidades de base de datos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
end
