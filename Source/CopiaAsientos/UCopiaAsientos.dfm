object WCopiaAsientos: TWCopiaAsientos
  Left = 564
  Top = 364
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Copia Asientos'
  ClientHeight = 349
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Datos: TGroupBox
    Left = 0
    Top = 41
    Width = 526
    Height = 267
    Align = alClient
    TabOrder = 0
    object Label20: TLabel
      Left = 110
      Top = 51
      Width = 29
      Height = 13
      Caption = 'Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 173
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Desde'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 282
      Top = 31
      Width = 28
      Height = 13
      Caption = 'Hasta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 53
      Top = 118
      Width = 83
      Height = 13
      Caption = 'Subcuenta desde'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 118
      Top = 140
      Width = 27
      Height = 13
      Caption = 'hasta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 94
      Top = 78
      Width = 36
      Height = 13
      Caption = 'Asiento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EditFECHA_DESDE: TDBEdit
      Left = 157
      Top = 47
      Width = 85
      Height = 21
      DataField = 'FECHA_DESDE'
      DataSource = SFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object FiltroFechaHasta: TDBEdit
      Left = 258
      Top = 47
      Width = 85
      Height = 21
      DataField = 'FECHA_HASTA'
      DataSource = SFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object FiltroCBDESCSUBCUENTADesde: TDBLookupComboBox
      Left = 256
      Top = 115
      Width = 248
      Height = 21
      DataField = 'SUBCUENTA_DESDE'
      DataSource = SFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleCopiaAsientos.SLSubcuentas
      ParentFont = False
      TabOrder = 5
    end
    object FiltroCBSUBCUENTADesde: TDBLookupComboBox
      Left = 157
      Top = 115
      Width = 100
      Height = 21
      DataField = 'SUBCUENTA_DESDE'
      DataSource = SFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DataModuleCopiaAsientos.SLSubcuentas
      ParentFont = False
      TabOrder = 4
    end
    object FiltroCBSUBCUENTAHasta: TDBLookupComboBox
      Left = 157
      Top = 137
      Width = 100
      Height = 21
      DataField = 'SUBCUENTA_HASTA'
      DataSource = SFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DataModuleCopiaAsientos.SLSubcuentas
      ParentFont = False
      TabOrder = 6
    end
    object FiltroCBDESCSUBCUENTAHasta: TDBLookupComboBox
      Left = 256
      Top = 137
      Width = 248
      Height = 21
      DataField = 'SUBCUENTA_HASTA'
      DataSource = SFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleCopiaAsientos.SLSubcuentas
      ParentFont = False
      TabOrder = 7
    end
    object EditASIENTO_DESDE: TDBEdit
      Left = 157
      Top = 74
      Width = 85
      Height = 21
      DataField = 'ASIENTO_DESDE'
      DataSource = SFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EditASIENTO_HASTA: TDBEdit
      Left = 258
      Top = 74
      Width = 85
      Height = 21
      DataField = 'ASIENTO_HASTA'
      DataSource = SFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object GbDestino: TGroupBox
      Left = 63
      Top = 179
      Width = 441
      Height = 73
      Caption = ' Empresa de Destino '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object ComboEMPRESA: TDBLookupComboBox
        Left = 8
        Top = 24
        Width = 423
        Height = 22
        DataField = 'EMPRESA'
        DataSource = SFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_EMPRESA'
        ListField = 'NOMBRE'
        ListSource = DataModuleCopiaAsientos.SEmpresas
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 308
    Width = 526
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      526
      41)
    object Label4: TLabel
      Left = 8
      Top = 5
      Width = 354
      Height = 16
      Caption = 'Copia de asientos de la empresa activa a otra que seleccione.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 19
      Width = 342
      Height = 16
      Caption = 'Tambi'#233'n se puede copiar asientos sobre la empresa actual.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object BtnProcess: TButton
      Left = 386
      Top = 8
      Width = 140
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnProcessClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 41
    Align = alTop
    TabOrder = 2
    object Shape1: TShape
      Left = 8
      Top = 27
      Width = 561
      Height = 1
    end
    object lTitulo: TLabel
      Left = 8
      Top = 7
      Width = 237
      Height = 19
      Caption = 'Copia de asientos entre empresas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object SFiltro: TDataSource
    DataSet = QFiltro
    Left = 376
    Top = 16
  end
  object QFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 16
    object QFiltroFECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object QFiltroFECHA_HASTA: TStringField
      FieldName = 'FECHA_HASTA'
      Size = 10
    end
    object QFiltroASIENTO_DESDE: TIntegerField
      FieldName = 'ASIENTO_DESDE'
    end
    object QFiltroASIENTO_HASTA: TIntegerField
      FieldName = 'ASIENTO_HASTA'
    end
    object QFiltroEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object QFiltroSUBCUENTA_DESDE: TStringField
      FieldName = 'SUBCUENTA_DESDE'
      Size = 10
    end
    object QFiltroSUBCUENTA_HASTA: TStringField
      FieldName = 'SUBCUENTA_HASTA'
      Size = 10
    end
  end
end
