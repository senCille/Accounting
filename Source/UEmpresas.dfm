object WEmpresas: TWEmpresas
  Left = 732
  Top = 221
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 490
  ClientWidth = 739
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
    Width = 739
    Height = 41
    Align = alTop
    TabOrder = 0
    object Shape1: TShape
      Left = 8
      Top = 26
      Width = 749
      Height = 1
    end
    object Label3: TLabel
      Left = 8
      Top = 5
      Width = 149
      Height = 19
      Caption = 'Archivo de Empresas'
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
    Width = 739
    Height = 449
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 633
      Top = 1
      Width = 105
      Height = 447
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
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
        Top = 70
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
        Top = 282
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
        Top = 312
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
      object BtnReport: TButton
        Left = 10
        Top = 98
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
        Top = 42
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
      object BtnDuplicate: TButton
        Left = 10
        Top = 138
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Duplicar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = BtnDuplicateClick
      end
      object BtnCopy: TButton
        Left = 10
        Top = 166
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Copiar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = BtnCopyClick
      end
      object BtnSelect: TButton
        Left = 10
        Top = 399
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = 'Se&leccionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = BtnSelectClick
      end
      object BtnTools: TButton
        Left = 10
        Top = 194
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Utilidades'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = BtnToolsClick
      end
      object DBNavigator: TDBNavigator
        Left = 12
        Top = 232
        Width = 80
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 11
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 632
      Height = 447
      Align = alClient
      Color = 14275008
      TabOrder = 1
      object FiltroBuscar: TGroupBox
        Left = 1
        Top = 1
        Width = 630
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
          Left = 14
          Top = 21
          Width = 37
          Height = 13
          Caption = 'Nombre'
        end
        object EditBNombre: TDBEdit
          Left = 63
          Top = 17
          Width = 265
          Height = 20
          Cursor = crHandPoint
          AutoSize = False
          DataField = 'BNombre'
          DataSource = sFiltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 25
          ParentFont = False
          TabOrder = 0
          OnEnter = LimpiarFiltro
        end
      end
      object Datos: TGroupBox
        Left = 1
        Top = 334
        Width = 630
        Height = 112
        Align = alBottom
        TabOrder = 1
        object Label2: TLabel
          Left = 9
          Top = 12
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
        object Label5: TLabel
          Left = 9
          Top = 52
          Width = 168
          Height = 16
          AutoSize = False
          Caption = 'Nombre de la Base de Datos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EditNombre: TDBEdit
          Left = 9
          Top = 26
          Width = 264
          Height = 20
          AutoSize = False
          DataField = 'NOMBRE'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 27
          ParentFont = False
          TabOrder = 0
          OnExit = EditNombreExit
        end
        object EditUbicacion: TDBEdit
          Left = 9
          Top = 66
          Width = 264
          Height = 20
          AutoSize = False
          DataField = 'UBICACION'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 40
          ParentFont = False
          TabOrder = 1
        end
        object CheckBoxCLOSED: TDBCheckBox
          Left = 287
          Top = 29
          Width = 123
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Empresa Cerrada'
          DataField = 'CERRADA'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object DataGrid: TDBGrid
        Left = 1
        Top = 53
        Width = 630
        Height = 281
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
            FieldName = 'NOMBRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UBICACION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CERRADA'
            Visible = True
          end>
      end
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 432
    Top = 69
  end
  object QFichero: TIBDataSet
    Database = DMControlRef.BDControl
    Transaction = Transaccion
    OnNewRecord = QFicheroNewRecord
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM EMPRESAS'
      'WHERE'
      
        '  ID_EMPRESA                     =:old_ID_EMPRESA               ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO EMPRESAS'
      
        '  (CERRADA                                       ,UBICACION     ' +
        '                 ,NOMBRE                         ,ID_EMPRESA    ' +
        '                 ,ULTIMA                               )'
      'VALUES'
      
        '  (:CERRADA                                      ,:UBICACION    ' +
        '                  ,:NOMBRE                         ,:ID_EMPRESA ' +
        '                    ,:ULTIMA                         )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM EMPRESAS'
      'WHERE'
      
        '  ID_EMPRESA                     =?ID_EMPRESA                   ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM EMPRESAS')
    ModifySQL.Strings = (
      'UPDATE EMPRESAS'
      'SET'
      
        '  CERRADA                        =:CERRADA                      ' +
        '   '
      
        '  ,UBICACION                      =:UBICACION                   ' +
        '    '
      
        '  ,NOMBRE                         =:NOMBRE                      ' +
        '    '
      
        '  ,ULTIMA                         =:ULTIMA                      ' +
        '    '
      'WHERE'
      
        '  ID_EMPRESA                     =:ID_EMPRESA                   ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 553
    Top = 68
    object QFicheroNOMBRE: TIBStringField
      DisplayWidth = 27
      FieldName = 'NOMBRE'
      Origin = 'EMPRESAS.NOMBRE'
      Size = 40
    end
    object QFicheroUBICACION: TIBStringField
      DisplayWidth = 40
      FieldName = 'UBICACION'
      Origin = 'EMPRESAS.UBICACION'
      Size = 100
    end
    object QFicheroCERRADA: TIBStringField
      DisplayLabel = 'C'
      DisplayWidth = 1
      FieldName = 'CERRADA'
      Origin = 'EMPRESAS.CERRADA'
      FixedChar = True
      Size = 1
    end
    object QFicheroID_EMPRESA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'EMPRESA'
      DisplayWidth = 8
      FieldName = 'ID_EMPRESA'
      Origin = 'EMPRESAS.ID_EMPRESA'
      Visible = False
    end
    object QFicheroULTIMA: TIBStringField
      FieldName = 'ULTIMA'
      Origin = 'EMPRESAS.ULTIMA'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Transaccion: TIBTransaction
    DefaultDatabase = DMControlRef.BDControl
    Left = 490
    Top = 69
  end
  object TbFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 13
  end
  object sFiltro: TDataSource
    DataSet = TbFiltro
    Left = 602
    Top = 13
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'EMPRESAS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOMBRE=NOMBRE'
      'UBICACION=UBICACION'
      'CERRADA=CERRADA'
      'ID_EMPRESA=ID_EMPRESA'
      'ULTIMA=ULTIMA')
    DataSource = SFichero
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
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637843842600000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42793.734764629630000000
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
        DataSetName = 'EMPRESAS'
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
          Left = 70.000675130000000000
          Top = 94.000690630000000000
          Width = 123.998820240000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Empresa')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 205.001707200000000000
          Top = 94.000690630000000000
          Width = 212.001396760000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ubicaci'#243'n')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 129.361973310000000000
          Top = 63.998781490000000000
          Width = 328.078322120000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE EMPRESAS')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 625.001978450000000000
          Top = 94.000690630000000000
          Width = 53.000349190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cerrada')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 41.574830000000000000
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
          Left = 528.574829560000000000
          Top = 22.677180000000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 539.577041390000000000
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
          Left = 539.577041390000000000
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
          Left = 588.574868310000000000
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
          Left = 582.576754200000000000
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
          Left = 673.810828870000000000
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
          Left = 537.267748560000000000
          Top = 61.927599050000000000
          Width = 49.560976890000000000
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
          Left = 593.824635480000000000
          Top = 61.927599050000000000
          Width = 130.726383640000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[USER_NAME]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 158.740260000000000000
        Width = 745.701269000000000000
        DataSet = ReportDBLInk
        DataSetName = 'EMPRESAS'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 205.001707200000000000
          Top = 1.999371370000006000
          Width = 404.999316680000000000
          Height = 13.001583200000000000
          DataField = 'UBICACION'
          DataSet = ReportDBLInk
          DataSetName = 'EMPRESAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[EMPRESAS."UBICACION"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 70.000675130000000000
          Top = 1.999371370000006000
          Width = 123.998820240000000000
          Height = 13.001583200000000000
          DataField = 'NOMBRE'
          DataSet = ReportDBLInk
          DataSetName = 'EMPRESAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[EMPRESAS."NOMBRE"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 625.001978450000000000
          Top = 1.999371370000006000
          Width = 53.000349190000000000
          Height = 13.001583200000000000
          DataField = 'CERRADA'
          DataSet = ReportDBLInk
          DataSetName = 'EMPRESAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[EMPRESAS."CERRADA"]')
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
