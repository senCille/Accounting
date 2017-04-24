object WVencimientos: TWVencimientos
  Left = 642
  Top = 297
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Vencimientos'
  ClientHeight = 416
  ClientWidth = 500
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 38
    Width = 500
    Height = 337
    Align = alClient
    Color = 14275008
    TabOrder = 1
    ExplicitWidth = 508
    ExplicitHeight = 342
    object Panel1: TPanel
      Left = 402
      Top = 1
      Width = 105
      Height = 340
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object BtnDelete: TButton
        Left = 10
        Top = 77
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Borrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnDeleteClick
      end
      object BtnNew: TButton
        Left = 10
        Top = 49
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&A'#241'adir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BtnNewClick
      end
      object BtnAccept: TButton
        Left = 10
        Top = 275
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = 'Ac&eptar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BtnAcceptClick
      end
      object BtnCancel: TButton
        Left = 10
        Top = 305
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = BtnCancelClick
      end
      object DBNavigator: TDBNavigator
        Left = 12
        Top = 171
        Width = 80
        Height = 26
        DataSource = SFichero
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 4
      end
    end
    object Datos: TGroupBox
      Left = 1
      Top = 1
      Width = 401
      Height = 340
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        393
        335)
      object Label6: TLabel
        Left = 293
        Top = 54
        Width = 87
        Height = 14
        Caption = 'Importe Factura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 19
        Top = 14
        Width = 60
        Height = 13
        Caption = 'Subcuenta'
      end
      object Label1: TLabel
        Left = 19
        Top = 54
        Width = 84
        Height = 13
        Caption = 'Forma de Pago'
      end
      object Label4: TLabel
        Left = 20
        Top = 290
        Width = 80
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Fecha emisi'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 310
      end
      object EditIMPORTE: TDBEdit
        Left = 293
        Top = 69
        Width = 89
        Height = 20
        AutoSize = False
        DataField = 'IMPORTEFACTURA'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EditDESCRIPCION: TDBEdit
        Left = 109
        Top = 29
        Width = 273
        Height = 21
        AutoSize = False
        DataField = 'DESCRIPCION'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EditSUBCUENTA: TDBEdit
        Left = 19
        Top = 29
        Width = 90
        Height = 21
        AutoSize = False
        DataField = 'SUBCUENTA'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditCD_FORMA_PAGO: TDBEdit
        Left = 19
        Top = 69
        Width = 47
        Height = 21
        DataField = 'FORMAPAGO'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditDS_FORMAPAGO: TDBEdit
        Left = 66
        Top = 69
        Width = 202
        Height = 21
        DataField = 'DESCFORMAPAGO'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EditFECHA_EMISION: TDBEdit
        Left = 103
        Top = 286
        Width = 99
        Height = 21
        Anchors = [akLeft, akBottom]
        DataField = 'FEMISION'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        ExplicitTop = 306
      end
      object Grid: TDBGrid
        Left = 20
        Top = 94
        Width = 339
        Height = 188
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        Color = 15596540
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = 10657371
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 6
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Caption = 'Vencimiento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FVENCIMIENTO'
            Title.Caption = 'Fecha Vencimiento'
            Width = 212
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 38
    Align = alTop
    Color = 14275008
    TabOrder = 0
    ExplicitWidth = 508
    object Shape1: TShape
      Left = 7
      Top = 30
      Width = 478
      Height = 1
      Pen.Color = 7552051
    end
    object Label3: TLabel
      Left = 7
      Top = 6
      Width = 231
      Height = 19
      Caption = 'Generaci'#243'n de Vencimientos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 375
    Width = 500
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 2
    ExplicitTop = 380
    ExplicitWidth = 508
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = QFicheroBeforeInsert
    BeforePost = QFicheroBeforePost
    AfterPost = QFicheroAfterPost
    OnNewRecord = QFicheroNewRecord
    Left = 356
    Top = 19
    object QFicheroIMPORTEFACTURA: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPORTEFACTURA'
    end
    object QFicheroNUMERO: TSmallintField
      DisplayWidth = 10
      FieldName = 'NUMERO'
    end
    object QFicheroFVENCIMIENTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FVENCIMIENTO'
    end
    object QFicheroFEMISION: TDateField
      DisplayWidth = 10
      FieldName = 'FEMISION'
      Visible = False
    end
    object QFicheroIMPORTE: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPORTE'
      DisplayFormat = '###,###,###.##'
    end
    object QFicheroSUBCUENTA: TStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QFicheroDESCRIPCION: TStringField
      DisplayWidth = 80
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object QFicheroFORMAPAGO: TStringField
      DisplayWidth = 3
      FieldName = 'FORMAPAGO'
      Size = 3
    end
    object QFicheroDESCFORMAPAGO: TStringField
      DisplayWidth = 40
      FieldName = 'DESCFORMAPAGO'
      Size = 40
    end
    object QFicheroSUBCTA_EFECTOS: TStringField
      FieldName = 'SUBCTA_EFECTOS'
      Size = 10
    end
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 418
    Top = 17
  end
end
