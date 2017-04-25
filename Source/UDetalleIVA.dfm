object WDetalleIVA: TWDetalleIVA
  Left = 750
  Top = 227
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Detalle IVA'
  ClientHeight = 308
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Shape1: TShape
    Left = 24
    Top = 35
    Width = 236
    Height = 1
  end
  object lTitulo: TLabel
    Left = 24
    Top = 15
    Width = 80
    Height = 19
    Caption = 'Detalle IVA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object BtnEdtCerrar: TButton
    Left = 217
    Top = 264
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Cerrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    OnClick = BtnEdtCerrarClick
  end
  object gDatos: TGroupBox
    Left = 24
    Top = 40
    Width = 276
    Height = 217
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label6: TLabel
      Left = 47
      Top = 190
      Width = 65
      Height = 13
      Caption = 'Total Importe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EditIMPORTE: TDBEdit
      Left = 146
      Top = 186
      Width = 92
      Height = 21
      AutoSize = False
      DataField = 'IMPORTE'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = EditIMPORTEExit
    end
    object pDatos: TPanel
      Left = 17
      Top = 16
      Width = 240
      Height = 156
      TabOrder = 0
      object Label4: TLabel
        Left = 29
        Top = 22
        Width = 72
        Height = 13
        Caption = 'Base Imponible'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 128
        Top = 54
        Width = 49
        Height = 13
        Caption = 'Cuota IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 29
        Top = 54
        Width = 31
        Height = 13
        Caption = '% IVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 128
        Top = 107
        Width = 72
        Height = 13
        Caption = 'Cuota Recargo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 29
        Top = 107
        Width = 54
        Height = 13
        Caption = '% Recargo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EditBASEIMPONIBLE: TDBEdit
        Left = 128
        Top = 18
        Width = 92
        Height = 21
        AutoSize = False
        DataField = 'BASEIMPONIBLE'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = EditBASEIMPONIBLEExit
      end
      object EditCUOTAIVA: TDBEdit
        Left = 128
        Top = 67
        Width = 92
        Height = 21
        AutoSize = False
        DataField = 'CUOTAIVA'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = EditIMPORTEExit
      end
      object EditIVA: TDBEdit
        Left = 29
        Top = 67
        Width = 63
        Height = 21
        TabStop = False
        AutoSize = False
        DataField = 'IVA'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditCUOTARECARGO: TDBEdit
        Left = 128
        Top = 120
        Width = 92
        Height = 21
        AutoSize = False
        DataField = 'CUOTARECARGO'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnExit = EditIMPORTEExit
      end
      object EditRECARGO: TDBEdit
        Left = 29
        Top = 120
        Width = 63
        Height = 21
        TabStop = False
        AutoSize = False
        DataField = 'RECARGO'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  object SFichero: TDataSource
    Left = 262
    Top = 1
  end
end
