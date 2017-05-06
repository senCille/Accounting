object ProjectsView: TProjectsView
  Left = 567
  Top = 314
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Archivo de PROYECTOS'
  ClientHeight = 458
  ClientWidth = 463
  Color = clBtnFace
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel99: TPanel
    Left = 0
    Top = 41
    Width = 358
    Height = 417
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DataGrid: TDBGrid
      Left = 0
      Top = 70
      Width = 358
      Height = 255
      Align = alClient
      DataSource = SData
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'System'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'System'
      TitleFont.Style = []
      OnDblClick = DataGridDblClick
      OnTitleClick = DataGridTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PROYECTO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Caption = 'Descripci'#243'n'
          Width = 240
          Visible = True
        end>
    end
    object GroupBoxData: TGroupBox
      Left = 0
      Top = 325
      Width = 358
      Height = 92
      Align = alBottom
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      object LabelFieldProject: TLabel
        Left = 8
        Top = 10
        Width = 88
        Height = 16
        AutoSize = False
        Caption = 'Proyecto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelFieldName: TLabel
        Left = 9
        Top = 47
        Width = 77
        Height = 16
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EditDS_PROJECT: TDBEdit
        Left = 9
        Top = 61
        Width = 266
        Height = 20
        AutoSize = False
        DataField = 'NOMBRE'
        DataSource = SData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EditCD_PROJECT: TDBEdit
        Left = 8
        Top = 25
        Width = 97
        Height = 20
        AutoSize = False
        DataField = 'ID_PROYECTO'
        DataSource = SData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBoxSearch: TGroupBox
      Left = 0
      Top = 0
      Width = 358
      Height = 70
      Align = alTop
      Caption = ' Buscar '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object LabelSearchName: TLabel
        Left = 17
        Top = 43
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object LabelSearchProject: TLabel
        Left = 16
        Top = 21
        Width = 43
        Height = 13
        Caption = 'Proyecto'
      end
      object EditSearchDS_PROJECT: TDBEdit
        Left = 74
        Top = 40
        Width = 268
        Height = 20
        Cursor = crHandPoint
        AutoSize = False
        DataField = 'BDESCRIPCION'
        DataSource = sFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EditSearchCD_PROJECT: TDBEdit
        Left = 74
        Top = 18
        Width = 97
        Height = 20
        Cursor = crHandPoint
        AutoSize = False
        DataField = 'BCODIGO'
        DataSource = sFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 358
    Top = 41
    Width = 105
    Height = 417
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object BtnRefresh: TButton
      Left = 32
      Top = 314
      Width = 49
      Height = 41
      Cursor = crHandPoint
      TabOrder = 7
      OnClick = ShowData
    end
    object BtnNew: TButton
      Left = 10
      Top = 14
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Nuevo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnNewClick
    end
    object BtnDelete: TButton
      Left = 10
      Top = 72
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Borrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnDeleteClick
    end
    object BtnAccept: TButton
      Left = 10
      Top = 218
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Ac&eptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnAcceptClick
    end
    object BtnCancel: TButton
      Left = 10
      Top = 246
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtnCancelClick
    end
    object Navigator: TDBNavigator
      Left = 12
      Top = 164
      Width = 80
      Height = 28
      DataSource = SData
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object BtnReport: TButton
      Left = 10
      Top = 114
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BtnReportClick
    end
    object BtnModify: TButton
      Left = 10
      Top = 43
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Modificar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BtnModifyClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 41
    Align = alTop
    TabOrder = 2
    object Shape1: TShape
      Left = 11
      Top = 34
      Width = 753
      Height = 1
    end
    object LabelFormTitle: TLabel
      Left = 14
      Top = 8
      Width = 149
      Height = 19
      Caption = 'Archivo de Proyectos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object SData: TDataSource
    AutoEdit = False
    DataSet = QData
    Left = 311
    Top = 191
  end
  object QData: TIBDataSet
    Database = DMRef.BDContab
    Transaction = Transaction
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PROYECTO'
      'WHERE'
      
        '  ID_PROYECTO                    =:old_ID_PROYECTO              ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO PROYECTO'
      
        '  (NOMBRE                         ,ID_PROYECTO                  ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:ID_PROYECTO                ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM PROYECTO'
      'WHERE'
      
        '  ID_PROYECTO                    =?ID_PROYECTO                  ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM PROYECTO')
    ModifySQL.Strings = (
      'UPDATE PROYECTO'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  ID_PROYECTO                    =:ID_PROYECTO                  ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 266
    Top = 190
    object QDataID_PROYECTO: TWideStringField
      FieldName = 'ID_PROYECTO'
      Size = 10
    end
    object QDataNOMBRE: TWideStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object Transaction: TIBTransaction
    Left = 266
    Top = 141
  end
  object HFilter: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 263
    Top = 239
    object HFilterBCODIGO: TStringField
      FieldName = 'BCODIGO'
      Size = 10
    end
    object HFilterBDESCRIPCION: TStringField
      FieldName = 'BDESCRIPCION'
      Size = 50
    end
  end
  object sFiltro: TDataSource
    DataSet = HFilter
    Left = 313
    Top = 239
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.640013194400000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42793.706119363430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 97
    Top = 194
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'PROYECTOS'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'ENTERPRISE_NAME'
        Value = Null
      end
      item
        Name = 'USER_NAME'
        Value = Null
      end>
    Style = <>
    object DataPage1: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 6.350000000000000000
      RightMargin = 6.350000000000000000
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 116.001334760000000000
        Top = 18.897650000000000000
        Width = 745.701269000000000000
        object Shape3: TfrxShapeView
          Left = 41.000341440000000000
          Top = 85.001629700000000000
          Width = 655.000108060000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object InformeLabel4: TfrxMemoView
          Left = 246.999844560000000000
          Top = 94.000690630000000000
          Width = 75.896741930000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Proyecto')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 366.999922060000000000
          Top = 94.000690630000000000
          Width = 101.000380190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 148.936159180000000000
          Top = 63.998781490000000000
          Width = 304.063188500000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE PROYECTOS')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 24.676551370000000000
          Width = 459.001241320000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENTERPRISE_NAME]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 509.677179560000000000
          Top = 22.677180000000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 520.679391390000000000
          Top = 26.675922740000000000
          Width = 37.001598700000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Label16: TfrxMemoView
          Left = 520.679391390000000000
          Top = 41.676877310000000000
          Width = 42.001916890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 569.677218309999900000
          Top = 41.676877310000000000
          Width = 6.001893640000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object SystemVariable3: TfrxMemoView
          Left = 563.679104200000000000
          Top = 26.675922740000000000
          Width = 83.236589190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd-mmm-yyyy'#39', <Date>)]')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 654.913178870000000000
          Top = 26.675922740000000000
          Width = 42.001916890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FormatDateTime('#39'hh:mm'#39', <Time>)]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 516.370098560000000000
          Top = 63.707129050000000000
          Width = 53.340506890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Usuario :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 572.926985480000000000
          Top = 63.707129050000000000
          Width = 134.505913640000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[USER_NAME][Page#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 158.740260000000000000
        Width = 745.701269000000000000
        DataSet = ReportDBLInk
        DataSetName = 'PROYECTOS'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 366.999922060000000000
          Top = 1.999371370000006000
          Width = 269.000488690000000000
          Height = 13.001583200000000000
          DataField = 'NOMBRE'
          DataSet = ReportDBLInk
          DataSetName = 'PROYECTOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PROYECTOS."NOMBRE"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 239.002359080000000000
          Top = 1.999371370000006000
          Width = 79.457059190000000000
          Height = 13.001583200000000000
          DataField = 'ID_PROYECTO'
          DataSet = ReportDBLInk
          DataSetName = 'PROYECTOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PROYECTOS."ID_PROYECTO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 49.999402370000000000
        Top = 196.535560000000000000
        Width = 745.701269000000000000
      end
    end
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'PROYECTOS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PROYECTO=ID_PROYECTO'
      'NOMBRE=NOMBRE')
    DataSource = SData
    BCDToCurrency = False
    Left = 160
    Top = 193
  end
  object PDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 97
    Top = 242
  end
end
