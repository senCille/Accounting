object WComerciales: TWComerciales
  Left = 504
  Top = 289
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Archivo de COMERCIALES'
  ClientHeight = 559
  ClientWidth = 792
  Color = clBtnFace
  DragMode = dmAutomatic
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 38
    Align = alTop
    TabOrder = 0
    object Shape2: TShape
      Left = 8
      Top = 28
      Width = 689
      Height = 1
    end
    object Label6: TLabel
      Left = 8
      Top = 7
      Width = 166
      Height = 19
      Caption = 'Archivo de Comerciales'
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
    Top = 38
    Width = 792
    Height = 521
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 685
      Height = 519
      Align = alClient
      TabOrder = 0
      object Datos: TGroupBox
        Left = 1
        Top = 418
        Width = 683
        Height = 100
        Align = alBottom
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 12
          Width = 79
          Height = 16
          AutoSize = False
          Caption = 'Comercial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 52
          Width = 77
          Height = 16
          AutoSize = False
          Caption = 'Nombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EditNombre: TDBEdit
          Left = 8
          Top = 66
          Width = 266
          Height = 20
          AutoSize = False
          DataField = 'NOMBRE'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 45
          ParentFont = False
          TabOrder = 1
        end
        object EditCodigo: TDBEdit
          Left = 8
          Top = 27
          Width = 97
          Height = 20
          AutoSize = False
          DataField = 'COMERCIAL'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 11
          ParentFont = False
          TabOrder = 0
        end
      end
      object FiltroBuscar: TGroupBox
        Left = 1
        Top = 1
        Width = 683
        Height = 52
        Align = alTop
        Caption = ' Buscar '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label4: TLabel
          Left = 185
          Top = 21
          Width = 37
          Height = 13
          Caption = 'Nombre'
        end
        object Label5: TLabel
          Left = 16
          Top = 21
          Width = 46
          Height = 13
          Caption = 'Comercial'
        end
        object EditBNombre: TDBEdit
          Left = 237
          Top = 18
          Width = 268
          Height = 20
          Cursor = crHandPoint
          AutoSize = False
          DataField = 'BDescripcion'
          DataSource = sFiltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          TabOrder = 1
          OnEnter = LimpiarFiltro
        end
        object EditBCodigo: TDBEdit
          Left = 82
          Top = 18
          Width = 97
          Height = 20
          Cursor = crHandPoint
          AutoSize = False
          DataField = 'BCodigo'
          DataSource = sFiltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          OnEnter = LimpiarFiltro
        end
      end
      object DataGrid: TDBGrid
        Left = 1
        Top = 53
        Width = 683
        Height = 365
        Align = alClient
        DataSource = SFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'System'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
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
            FieldName = 'COMERCIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 686
      Top = 1
      Width = 105
      Height = 519
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object BtnAppend: TButton
        Left = 10
        Top = 14
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Nuevo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnAppendClick
      end
      object BtnDelete: TButton
        Left = 10
        Top = 72
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Eliminar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
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
        Font.Color = clNavy
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BtnCancelClick
      end
      object BtnRefresh: TButton
        Left = 40
        Top = 304
        Width = 28
        Height = 28
        Cursor = crHandPoint
        TabOrder = 4
        OnClick = VerTabla
      end
      object BtnReport: TButton
        Left = 10
        Top = 114
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = RejillaDblClick
      end
      object DBNavigator: TDBNavigator
        Left = 14
        Top = 160
        Width = 80
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 7
      end
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 152
    Top = 197
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM COMERCIALES'
      'WHERE'
      
        '  COMERCIAL                      =:old_COMERCIAL                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO COMERCIALES'
      
        '  (NOMBRE                         ,COMERCIAL                    ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:COMERCIAL                  ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM COMERCIALES'
      'WHERE'
      
        '  COMERCIAL                      =?COMERCIAL                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM COMERCIALES')
    ModifySQL.Strings = (
      'UPDATE COMERCIALES'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  COMERCIAL                      =:COMERCIAL                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 105
    Top = 196
    object QFicheroCOMERCIAL: TIBStringField
      DisplayWidth = 11
      FieldName = 'COMERCIAL'
      Origin = 'COMERCIALES.COMERCIAL'
      Required = True
      Size = 10
    end
    object QFicheroNOMBRE: TIBStringField
      DisplayWidth = 45
      FieldName = 'NOMBRE'
      Origin = 'COMERCIALES.NOMBRE'
      Size = 50
    end
  end
  object Transaccion: TIBTransaction
    Left = 106
    Top = 149
  end
  object TbFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 245
  end
  object sFiltro: TDataSource
    DataSet = TbFiltro
    Left = 154
    Top = 245
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
    Left = 249
    Top = 220
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'COMERCIALES'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COMERCIAL=COMERCIAL'
      'NOMBRE=NOMBRE')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 312
    Top = 175
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637290648100000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42791.818831574100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 249
    Top = 175
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'COMERCIALES'
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
          Left = 228.000147250000000000
          Top = 94.000690630000000000
          Width = 73.999417870000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Comercial')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 323.002413330000000000
          Top = 94.000690630000000000
          Width = 54.001924640000000000
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
          Left = 190.733981450000000000
          Top = 63.998781490000000000
          Width = 306.723977620000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE COMERCIALES')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 41.000341440000000000
          Top = 27.000962320000000000
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
          Left = 528.000341000000000000
          Top = 25.001590950000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 539.002552830000000000
          Top = 29.000333690000000000
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
          Left = 539.002552830000000000
          Top = 44.001288260000000000
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
          Left = 588.000379750000000000
          Top = 44.001288260000000000
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
          Left = 582.002265640000000000
          Top = 29.000333690000000000
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
          Left = 673.236340310000000000
          Top = 29.000333690000000000
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
          Left = 534.693260000000000000
          Top = 66.031540000000010000
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
          Left = 591.250146920000000000
          Top = 66.031540000000010000
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
        DataSetName = 'COMERCIALES'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 323.002413330000000000
          Top = 1.999371370000006000
          Width = 269.000488690000000000
          Height = 13.001583200000000000
          DataField = 'NOMBRE'
          DataSet = ReportDBLInk
          DataSetName = 'COMERCIALES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[COMERCIALES."NOMBRE"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 207.881709060000000000
          Top = 1.999371370000006000
          Width = 68.118469190000000000
          Height = 13.001583200000000000
          DataField = 'COMERCIAL'
          DataSet = ReportDBLInk
          DataSetName = 'COMERCIALES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COMERCIALES."COMERCIAL"]')
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
end
