object WDelegaciones: TWDelegaciones
  Left = 543
  Top = 264
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Archivo de DELEGACIONES'
  ClientHeight = 439
  ClientWidth = 682
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
    Width = 682
    Height = 41
    Align = alTop
    TabOrder = 0
    object Shape1: TShape
      Left = 16
      Top = 26
      Width = 689
      Height = 1
    end
    object Label3: TLabel
      Left = 16
      Top = 6
      Width = 173
      Height = 19
      Caption = 'Archivo de Delegaciones'
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
    Width = 682
    Height = 398
    Align = alClient
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 575
      Height = 396
      Align = alClient
      TabOrder = 0
      object FiltroBuscar: TGroupBox
        Left = 1
        Top = 1
        Width = 573
        Height = 52
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
          Left = 194
          Top = 21
          Width = 37
          Height = 13
          Caption = 'Nombre'
        end
        object Label5: TLabel
          Left = 16
          Top = 21
          Width = 52
          Height = 13
          Caption = 'Delegaci'#243'n'
        end
        object EditBNombre: TDBEdit
          Left = 251
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
          Left = 86
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
      object Datos: TGroupBox
        Left = 1
        Top = 301
        Width = 573
        Height = 94
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 7
          Top = 14
          Width = 79
          Height = 16
          AutoSize = False
          Caption = 'Delegaci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 7
          Top = 52
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
        object EditNombre: TDBEdit
          Left = 7
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
          MaxLength = 44
          ParentFont = False
          TabOrder = 1
        end
        object EditCodigo: TDBEdit
          Left = 7
          Top = 29
          Width = 97
          Height = 20
          AutoSize = False
          DataField = 'ID_DELEGACION'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          TabOrder = 0
        end
      end
      object DataGrid: TDBGrid
        Left = 1
        Top = 53
        Width = 573
        Height = 248
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
            FieldName = 'ID_DELEGACION'
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
      Left = 576
      Top = 1
      Width = 105
      Height = 396
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
      object BtnRefresh: TButton
        Left = 40
        Top = 340
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
        Font.Color = clWindowText
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
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BtnModifyClick
      end
      object DBNavigator: TDBNavigator
        Left = 16
        Top = 160
        Width = 80
        Height = 25
        DataSource = SFichero
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 7
      end
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 392
    Top = 205
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM DELEGACION'
      'WHERE'
      
        '  ID_DELEGACION                  =:old_ID_DELEGACION            ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO DELEGACION'
      
        '  (NOMBRE                         ,ID_DELEGACION                ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:ID_DELEGACION              ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM DELEGACION'
      'WHERE'
      
        '  ID_DELEGACION                  =?ID_DELEGACION                ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM DELEGACION')
    ModifySQL.Strings = (
      'UPDATE DELEGACION'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  ID_DELEGACION                  =:ID_DELEGACION                ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 345
    Top = 204
    object QFicheroID_DELEGACION: TIBStringField
      DisplayLabel = 'DELEGACI'#211'N'
      DisplayWidth = 12
      FieldName = 'ID_DELEGACION'
      Origin = 'DELEGACION.ID_DELEGACION'
      Required = True
      Size = 10
    end
    object QFicheroNOMBRE: TIBStringField
      DisplayWidth = 44
      FieldName = 'NOMBRE'
      Origin = 'DELEGACION.NOMBRE'
      Size = 50
    end
  end
  object Transaccion: TIBTransaction
    Left = 346
    Top = 157
  end
  object TbFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 253
  end
  object sFiltro: TDataSource
    DataSet = TbFiltro
    Left = 394
    Top = 253
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'DELEGACIONES'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_DELEGACION=ID_DELEGACION'
      'NOMBRE=NOMBRE')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 232
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
    Left = 169
    Top = 242
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637543287000000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42793.686413831020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 169
    Top = 194
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'DELEGACIONES'
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
          Left = 238.000783630000000000
          Top = 94.000690630000000000
          Width = 100.679120140000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Delegaci'#243'n')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 366.999922060000000000
          Top = 94.000690630000000000
          Width = 138.795680190000000000
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
          Left = 189.951618740000000000
          Top = 63.998781490000000000
          Width = 292.048062630000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE DELEGACIONES')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 37.795300000000000000
          Top = 20.897021370000000000
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
          Left = 524.795299560000000000
          Top = 18.897650000000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 535.797511389999900000
          Top = 22.896392740000000000
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
          Left = 535.797511389999900000
          Top = 37.897347310000000000
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
          Left = 584.795338310000000000
          Top = 37.897347310000000000
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
          Top = 22.896392740000000000
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
          Top = 22.896392740000000000
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
          Top = 59.927599050000000000
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
          Left = 588.045105480000000000
          Top = 59.927599050000000000
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
        DataSetName = 'DELEGACIONES'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 366.999922060000000000
          Top = 1.999371370000006000
          Width = 269.000488690000000000
          Height = 13.001583200000000000
          DataField = 'NOMBRE'
          DataSet = ReportDBLInk
          DataSetName = 'DELEGACIONES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DELEGACIONES."NOMBRE"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 239.002359080000000000
          Top = 1.999371370000006000
          Width = 94.575179190000000000
          Height = 13.001583200000000000
          DataField = 'ID_DELEGACION'
          DataSet = ReportDBLInk
          DataSetName = 'DELEGACIONES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DELEGACIONES."ID_DELEGACION"]')
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
