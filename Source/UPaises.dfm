object WPaises: TWPaises
  Left = 595
  Top = 184
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cat'#225'logo de PAISES'
  ClientHeight = 357
  ClientWidth = 467
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Datos: TGroupBox
    Left = 0
    Top = 0
    Width = 467
    Height = 47
    Align = alTop
    Color = 14275008
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 20
      Width = 23
      Height = 13
      Caption = 'Pa'#237's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 78
      Top = 20
      Width = 44
      Height = 13
      Caption = 'Nombre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditDS_PAIS: TDBEdit
      Left = 126
      Top = 16
      Width = 259
      Height = 20
      AutoSize = False
      DataField = 'NOMBRE'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditCD_PAIS: TDBEdit
      Left = 46
      Top = 16
      Width = 27
      Height = 20
      AutoSize = False
      DataField = 'PAIS'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 6
      ParentFont = False
      TabOrder = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 338
    Width = 467
    Height = 19
    Panels = <>
  end
  object PanelFondo: TPanel
    Left = 0
    Top = 47
    Width = 467
    Height = 291
    Align = alClient
    BevelOuter = bvNone
    Color = 14275008
    TabOrder = 2
    object DataGrid: TDBGrid
      Left = 0
      Top = 0
      Width = 362
      Height = 291
      TabStop = False
      Align = alClient
      BorderStyle = bsNone
      Color = 15596540
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = 10657371
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDblClick = DataGridDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PAIS'
          Title.Caption = 'C'#243'digo'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Caption = 'Descripci'#243'n'
          Visible = True
        end>
    end
    object PanelButtons: TPanel
      Left = 362
      Top = 0
      Width = 105
      Height = 291
      Align = alRight
      BevelOuter = bvNone
      Color = 14275008
      TabOrder = 1
      object BtnAdd: TSpeedButton
        Left = 10
        Top = 14
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
        OnClick = BtnAddClick
      end
      object BtnDelete: TSpeedButton
        Left = 10
        Top = 72
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
        OnClick = BtnDeleteClick
      end
      object BtnSave: TSpeedButton
        Left = 10
        Top = 210
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
        OnClick = BtnSaveClick
      end
      object BtnCancel: TSpeedButton
        Left = 10
        Top = 239
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
        OnClick = BtnCancelClick
      end
      object BtnReport: TSpeedButton
        Left = 10
        Top = 108
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnReportClick
      end
      object BtnModify: TSpeedButton
        Left = 10
        Top = 43
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Modificar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = DataGridDblClick
      end
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 104
    Top = 162
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PAISES'
      'WHERE'
      
        '  PAIS                           =:old_PAIS                     ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO PAISES'
      
        '  (NOMBRE                         ,PAIS                         ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:PAIS                       ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM PAISES'
      'WHERE'
      
        '  PAIS                           =?PAIS                         ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM PAISES')
    ModifySQL.Strings = (
      'UPDATE PAISES'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  PAIS                           =:PAIS                         ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 72
    Top = 163
    object QFicheroPAIS: TIBStringField
      Alignment = taCenter
      DisplayWidth = 7
      FieldName = 'PAIS'
      Origin = 'PAISES.PAIS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QFicheroNOMBRE: TIBStringField
      DisplayWidth = 49
      FieldName = 'NOMBRE'
      Origin = 'PAISES.NOMBRE'
      Size = 30
    end
  end
  object Transaccion: TIBTransaction
    Left = 34
    Top = 162
  end
  object TbFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 202
  end
  object sFiltro: TDataSource
    DataSet = TbFiltro
    Left = 82
    Top = 202
  end
end
