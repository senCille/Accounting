object WGrupos: TWGrupos
  Left = 449
  Top = 262
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 528
  ClientWidth = 729
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 41
    Align = alTop
    TabOrder = 0
    object Shape1: TShape
      Left = 9
      Top = 30
      Width = 689
      Height = 1
    end
    object Label3: TLabel
      Left = 9
      Top = 9
      Width = 132
      Height = 19
      Caption = 'Archivo de Grupos'
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
    Top = 41
    Width = 729
    Height = 487
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 622
      Height = 485
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 0
      object FiltroBuscar: TGroupBox
        Left = 1
        Top = 1
        Width = 620
        Height = 46
        Align = alTop
        Caption = ' Buscar '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 166
          Top = 21
          Width = 54
          Height = 13
          Caption = 'Descripci'#243'n'
        end
        object Label5: TLabel
          Left = 44
          Top = 21
          Width = 29
          Height = 13
          Caption = 'Grupo'
        end
        object EditFiltroBDescripcion: TDBEdit
          Left = 238
          Top = 18
          Width = 373
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
          MaxLength = 30
          ParentFont = False
          TabOrder = 0
          OnEnter = LimpiarFiltro
        end
        object EditFiltroBGrupo: TDBEdit
          Left = 86
          Top = 18
          Width = 39
          Height = 21
          AutoSize = False
          DataField = 'BGrupo'
          DataSource = sFiltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 3
          ParentFont = False
          TabOrder = 1
        end
      end
      object Datos: TGroupBox
        Left = 1
        Top = 424
        Width = 620
        Height = 60
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 28
          Top = 12
          Width = 34
          Height = 16
          AutoSize = False
          Caption = 'Grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 76
          Top = 12
          Width = 77
          Height = 16
          AutoSize = False
          Caption = 'Descripci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EditDESCRIPCION: TDBEdit
          Left = 77
          Top = 26
          Width = 512
          Height = 20
          AutoSize = False
          DataField = 'DESCRIPCION'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 97
          ParentFont = False
          TabOrder = 0
        end
        object EditGRUPO: TDBEdit
          Left = 26
          Top = 26
          Width = 39
          Height = 20
          AutoSize = False
          DataField = 'GRUPO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 1
        end
      end
      object DataGrid: TDBGrid
        Left = 1
        Top = 47
        Width = 620
        Height = 377
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
        Columns = <
          item
            Expanded = False
            FieldName = 'GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRIPCION'
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 623
      Top = 1
      Width = 105
      Height = 485
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
        Font.Color = clWindowText
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
        Top = 215
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
        Top = 243
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
      object BtnRefresh: TButton
        Left = 40
        Top = 344
        Width = 28
        Height = 28
        Cursor = crHandPoint
        TabOrder = 4
        OnClick = VerTabla
      end
      object BtnReports: TButton
        Left = 10
        Top = 113
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Informe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BtnReportsClick
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
        TabOrder = 6
        OnClick = RejillaDblClick
      end
      object DBNavigator: TDBNavigator
        Left = 10
        Top = 152
        Width = 84
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 7
      end
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 88
    Top = 221
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM GRUPOS'
      'WHERE'
      
        '  GRUPO                          =:old_GRUPO                    ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO GRUPOS'
      
        '  (DESCRIPCION                    ,GRUPO                        ' +
        '  )'
      'VALUES'
      
        '  (:DESCRIPCION                    ,:GRUPO                      ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM GRUPOS'
      'WHERE'
      
        '  GRUPO                          =?GRUPO                        ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM GRUPOS')
    ModifySQL.Strings = (
      'UPDATE GRUPOS'
      'SET'
      
        '  DESCRIPCION                    =:DESCRIPCION                  ' +
        '   '
      'WHERE'
      
        '  GRUPO                          =:GRUPO                        ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 41
    Top = 220
    object QFicheroGRUPO: TIBStringField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'GRUPO'
      Size = 3
    end
    object QFicheroDESCRIPCION: TIBStringField
      DisplayWidth = 97
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object Transaccion: TIBTransaction
    Left = 42
    Top = 173
  end
  object TbFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 269
  end
  object sFiltro: TDataSource
    DataSet = TbFiltro
    Left = 90
    Top = 269
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.638180381900000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42792.457484189800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 177
    Top = 183
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'GRUPOS'
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
      BottomMargin = 12.700000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 115.997555230000000000
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
          Left = 114.001963390000000000
          Top = 94.000690630000000000
          Width = 62.237520510000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Grupo')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 229.999518620000000000
          Top = 94.000690630000000000
          Width = 117.694564200000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 217.069746490000000000
          Top = 60.219251490000000000
          Width = 251.607091630000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE GRUPOS')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 528.000341000000100000
          Top = 25.999386869999990000
          Width = 193.459022580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object LineaCabecera1: TfrxMemoView
          Left = 37.795300000000000000
          Top = 30.236240000000000000
          Width = 459.001241320000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENTERPRISE_NAME]')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 535.797511389999900000
          Top = 32.235611370000000000
          Width = 37.001598700000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Label16: TfrxMemoView
          Left = 535.797511389999900000
          Top = 47.236565940000010000
          Width = 42.001916890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 584.795338310000000000
          Top = 47.236565940000010000
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
          Left = 578.797224200000000000
          Top = 32.235611370000000000
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
          Left = 670.031298870000000000
          Top = 32.235611370000000000
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
          Left = 531.488218559999900000
          Top = 69.266817680000000000
          Width = 53.340506890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 588.045105480000000000
          Top = 69.266817680000000000
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
        DataSetName = 'GRUPOS'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 229.999518620000000000
          Top = 1.999371370000006000
          Width = 247.857797870000000000
          Height = 13.001583200000000000
          DataField = 'DESCRIPCION'
          DataSet = ReportDBLInk
          DataSetName = 'GRUPOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[GRUPOS."DESCRIPCION"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 114.001963390000000000
          Top = 1.999371370000006000
          Width = 47.119400510000000000
          Height = 13.001583200000000000
          DataField = 'GRUPO'
          DataSet = ReportDBLInk
          DataSetName = 'GRUPOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[GRUPOS."GRUPO"]')
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
    UserName = 'GRUPOS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GRUPO=GRUPO'
      'DESCRIPCION=DESCRIPCION')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 240
    Top = 183
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
    Left = 177
    Top = 228
  end
end
