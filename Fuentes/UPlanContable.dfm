object WPlanContable: TWPlanContable
  Left = 678
  Top = 344
  BorderStyle = bsSingle
  ClientHeight = 250
  ClientWidth = 392
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lTitulo: TLabel
    Left = 20
    Top = 17
    Width = 201
    Height = 19
    Caption = 'Impresi'#243'n Plan Contable'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 20
    Top = 39
    Width = 311
    Height = 1
    Pen.Color = clNavy
  end
  object GroupBox1: TGroupBox
    Left = 20
    Top = 44
    Width = 347
    Height = 155
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object gTipoInforme: TRadioGroup
      Left = 27
      Top = 25
      Width = 291
      Height = 101
      Caption = ' Tipo de Informe '
      ItemIndex = 0
      Items.Strings = (
        'Balance de Situaci'#243'n'
        'Cuenta de P'#233'rdidas y Ganancias')
      TabOrder = 0
    end
  end
  object BtnAccept: TButton
    Left = 286
    Top = 206
    Width = 83
    Height = 24
    Cursor = crHandPoint
    Caption = '&Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnAcceptClick
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 254
    Top = 2
    object QFicheroGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 3
    end
    object QFicheroCUENTA: TStringField
      FieldName = 'CUENTA'
      Size = 3
    end
    object QFicheroTITULO: TStringField
      FieldName = 'TITULO'
      Size = 2
    end
    object QFicheroDESCTITULO: TStringField
      FieldName = 'DESCTITULO'
      Size = 50
    end
    object QFicheroDESCGRUPO: TStringField
      FieldName = 'DESCGRUPO'
      Size = 50
    end
    object QFicheroDESCCUENTA: TStringField
      FieldName = 'DESCCUENTA'
      Size = 50
    end
    object QFicheroDESCLISTADO: TStringField
      FieldName = 'DESCLISTADO'
      Size = 100
    end
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 350
    Top = 2
  end
  object QTitulos: TIBQuery
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 216
    Top = 50
  end
  object QGrupos: TIBQuery
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 278
    Top = 52
  end
  object QCuentas: TIBQuery
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 334
    Top = 52
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.639814988400000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42793.674039131950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 264
    Top = 113
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'PLANCONTABLE'
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
        Height = 97.999433370000000000
        Top = 18.897650000000000000
        Width = 745.701269000000000000
        object DBText7: TfrxMemoView
          Left = 39.998765990000000000
          Top = 66.999728310000000000
          Width = 655.000108060000000000
          Height = 15.998750490000000000
          DataField = 'DESCLISTADO'
          DataSet = ReportDBLInk
          DataSetName = 'PLANCONTABLE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[PLANCONTABLE."DESCLISTADO"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 39.998765990000000000
          Top = 82.998478800000000000
          Width = 655.000108060000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object LineaCabecera1: TfrxMemoView
          Left = 45.354360000000000000
          Top = 13.337961370000000000
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
        object Shape4: TfrxShapeView
          Left = 532.354359560000000000
          Top = 11.338590000000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 543.356571390000000000
          Top = 15.337332740000000000
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
          Left = 543.356571390000000000
          Top = 30.338287310000000000
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
          Left = 592.354398310000000000
          Top = 30.338287310000000000
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
          Left = 586.356284200000000000
          Top = 15.337332740000000000
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
          Left = 677.590358870000000000
          Top = 15.337332740000000000
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
          Left = 539.047278560000000000
          Top = 52.368539049999990000
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
          Left = 595.604165480000000000
          Top = 52.368539049999990000
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
      object Group2: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 219.212740000000000000
        Width = 745.701269000000000000
        DataSet = ReportDBLInk
        DataSetName = 'PLANCONTABLE'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 169.999479870000000000
          Width = 42.999712810000000000
          Height = 13.001583200000000000
          DataField = 'CUENTA'
          DataSet = ReportDBLInk
          DataSetName = 'PLANCONTABLE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PLANCONTABLE."CUENTA"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 219.001086320000000000
          Width = 395.002459830000000000
          Height = 13.001583200000000000
          DataField = 'DESCCUENTA'
          DataSet = ReportDBLInk
          DataSetName = 'PLANCONTABLE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PLANCONTABLE."DESCCUENTA"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 19.200012400000000000
        Top = 139.842610000000000000
        Width = 745.701269000000000000
        Condition = 'PLANCONTABLE."TITULO"'
        object DBText2: TfrxMemoView
          Left = 68.999099680000000000
          Top = 3.000946819999996000
          Width = 44.001288260000000000
          Height = 13.001583200000000000
          DataField = 'TITULO'
          DataSet = ReportDBLInk
          DataSetName = 'PLANCONTABLE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[PLANCONTABLE."TITULO"]')
          ParentFont = False
        end
        object DBText4: TfrxMemoView
          Left = 121.001652950000000000
          Top = 3.000946819999996000
          Width = 395.002459830000000000
          Height = 13.001583200000000000
          DataField = 'DESCTITULO'
          DataSet = ReportDBLInk
          DataSetName = 'PLANCONTABLE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[PLANCONTABLE."DESCTITULO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 279.685220000000000000
        Width = 745.701269000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 16.320010540000000000
        Top = 181.417440000000000000
        Width = 745.701269000000000000
        Condition = 'PLANCONTABLE."GRUPO"'
        object DBText6: TfrxMemoView
          Left = 169.999479870000000000
          Width = 395.002459830000000000
          Height = 13.001583200000000000
          DataField = 'DESCGRUPO'
          DataSet = ReportDBLInk
          DataSetName = 'PLANCONTABLE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PLANCONTABLE."DESCGRUPO"]')
          ParentFont = False
        end
        object DBText5: TfrxMemoView
          Left = 121.001652950000000000
          Width = 42.999712810000000000
          Height = 13.001583200000000000
          DataField = 'GRUPO'
          DataSet = ReportDBLInk
          DataSetName = 'PLANCONTABLE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PLANCONTABLE."GRUPO"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 257.008040000000000000
        Width = 745.701269000000000000
      end
    end
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
    Left = 265
    Top = 162
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'PLANCONTABLE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'GRUPO=GRUPO'
      'CUENTA=CUENTA'
      'TITULO=TITULO'
      'DESCTITULO=DESCTITULO'
      'DESCGRUPO=DESCGRUPO'
      'DESCCUENTA=DESCCUENTA'
      'DESCLISTADO=DESCLISTADO')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 328
    Top = 113
  end
end
