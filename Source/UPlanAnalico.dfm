object WPlanAnalitico: TWPlanAnalitico
  Left = 469
  Top = 180
  BorderStyle = bsSingle
  ClientHeight = 250
  ClientWidth = 537
  Color = clBtnFace
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
    Width = 173
    Height = 19
    Caption = 'Impresi'#243'n Plan Anal'#237'tico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 20
    Top = 39
    Width = 458
    Height = 1
  end
  object GroupBox3: TGroupBox
    Left = 20
    Top = 44
    Width = 496
    Height = 155
    Caption = ' Anal'#237'tica '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label6: TLabel
      Left = 10
      Top = 26
      Width = 78
      Height = 13
      Caption = 'Cuenta Anal'#237'tica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 10
      Top = 57
      Width = 52
      Height = 13
      Caption = 'Delegaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 257
      Top = 57
      Width = 69
      Height = 13
      Caption = 'Departamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 10
      Top = 102
      Width = 36
      Height = 13
      Caption = 'Secci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 257
      Top = 102
      Width = 43
      Height = 13
      Caption = 'Proyecto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ComboBoxCD_ANALITICA: TDBLookupComboBox
      Left = 113
      Top = 24
      Width = 100
      Height = 21
      DataField = 'CUENTA'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'CUENTA'
      ListField = 'CUENTA'
      ListSource = DMRef.SAnaliticas
      ParentFont = False
      TabOrder = 0
    end
    object ComboBoxDelegacion: TDBLookupComboBox
      Left = 10
      Top = 71
      Width = 229
      Height = 21
      DataField = 'ID_DELEGACION'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_DELEGACION'
      ListField = 'NOMBRE'
      ListSource = DMRef.SDelegacion
      ParentFont = False
      TabOrder = 2
    end
    object ComboBoxDepartamento: TDBLookupComboBox
      Left = 257
      Top = 71
      Width = 229
      Height = 21
      DataField = 'ID_DEPARTAMENTO'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_DEPARTAMENTO'
      ListField = 'NOMBRE'
      ListSource = DMRef.SDepartamento
      ParentFont = False
      TabOrder = 3
    end
    object ComboBoxSeccion: TDBLookupComboBox
      Left = 10
      Top = 116
      Width = 229
      Height = 21
      DataField = 'ID_SECCION'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_SECCION'
      ListField = 'NOMBRE'
      ListSource = DMRef.SSeccion
      ParentFont = False
      TabOrder = 4
    end
    object ComboBoxProyecto: TDBLookupComboBox
      Left = 257
      Top = 116
      Width = 229
      Height = 21
      DataField = 'ID_PROYECTO'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_PROYECTO'
      ListField = 'NOMBRE'
      ListSource = DMRef.SProyecto
      ParentFont = False
      TabOrder = 5
    end
    object ComboBoxDS_ANALITICA: TDBLookupComboBox
      Left = 212
      Top = 24
      Width = 274
      Height = 21
      DataField = 'CUENTA'
      DataSource = DSFiltro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'CUENTA'
      ListField = 'NOMBRE'
      ListSource = DMRef.SAnaliticas
      ParentFont = False
      TabOrder = 1
    end
  end
  object BtnAccept: TButton
    Left = 428
    Top = 206
    Width = 83
    Height = 24
    Cursor = crHandPoint
    Caption = '&Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BtnAcceptClick
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 254
    Top = 2
    object QFicheroCUENTA: TStringField
      FieldName = 'CUENTA'
      Size = 10
    end
    object QFicheroDESCCUENTA: TStringField
      FieldName = 'DESCCUENTA'
      Size = 50
    end
    object QFicheroID_PROYECTO: TStringField
      FieldName = 'ID_PROYECTO'
      Size = 10
    end
    object QFicheroID_SECCION: TStringField
      FieldName = 'ID_SECCION'
      Size = 10
    end
    object QFicheroID_DEPARTAMENTO: TStringField
      FieldName = 'ID_DEPARTAMENTO'
      Size = 10
    end
    object QFicheroID_DELEGACION: TStringField
      FieldName = 'ID_DELEGACION'
      Size = 10
    end
    object QFicheroDESCPROYECTO: TStringField
      FieldName = 'DESCPROYECTO'
      Size = 50
    end
    object QFicheroDESCSECCION: TStringField
      FieldName = 'DESCSECCION'
      Size = 50
    end
    object QFicheroDESCDEPARTAMENTO: TStringField
      FieldName = 'DESCDEPARTAMENTO'
      Size = 50
    end
    object QFicheroDESCDELEGACION: TStringField
      FieldName = 'DESCDELEGACION'
      Size = 50
    end
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 286
    Top = 2
  end
  object QAnaliticas: TIBQuery
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 370
    Top = 6
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 254
    Top = 38
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 286
    Top = 38
  end
  object QSeccion: TIBDataSet
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SECCION'
      'WHERE'
      
        '  ID_SECCION                     =:old_ID_SECCION               ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SECCION'
      
        '  (NOMBRE                         ,ID_SECCION                   ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:ID_SECCION                 ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SECCION'
      'WHERE'
      
        '  ID_SECCION                     =?ID_SECCION                   ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM SECCION')
    ModifySQL.Strings = (
      'UPDATE SECCION'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  ID_SECCION                     =:ID_SECCION                   ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 583
    Top = 84
    object IBStringField7: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'SECCION.NOMBRE'
      Size = 50
    end
    object IBStringField8: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'SECCION.ID_SECCION'
      Required = True
      Size = 10
    end
  end
  object SSeccion: TDataSource
    AutoEdit = False
    DataSet = QSeccion
    Left = 656
    Top = 80
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'PLAN_ANALITICO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CUENTA=CUENTA'
      'DESCCUENTA=DESCCUENTA'
      'ID_PROYECTO=ID_PROYECTO'
      'ID_SECCION=ID_SECCION'
      'ID_DEPARTAMENTO=ID_DEPARTAMENTO'
      'ID_DELEGACION=ID_DELEGACION'
      'DESCPROYECTO=DESCPROYECTO'
      'DESCSECCION=DESCSECCION'
      'DESCDEPARTAMENTO=DESCDEPARTAMENTO'
      'DESCDELEGACION=DESCDELEGACION')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 208
    Top = 153
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
    Left = 145
    Top = 202
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.639757118100000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42793.779968263880000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 145
    Top = 154
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'PLAN_ANALITICO'
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
        object Label1: TfrxMemoView
          Left = 39.998765990000000000
          Top = 66.999728310000000000
          Width = 655.000108060000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO PLAN ANAL'#205'TICO')
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
          Left = 30.236240000000000000
          Top = 17.117491370000000000
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
          Left = 517.236239560000000000
          Top = 15.118120000000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 528.238451390000000000
          Top = 19.116862740000000000
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
          Left = 528.238451390000000000
          Top = 34.117817310000000000
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
          Left = 577.236278310000000000
          Top = 34.117817310000000000
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
          Left = 571.238164200000000000
          Top = 19.116862740000000000
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
          Left = 662.472238870000000000
          Top = 19.116862740000000000
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
          Left = 523.929158560000000000
          Top = 56.148069050000010000
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
          Left = 580.486045480000000000
          Top = 56.148069050000010000
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
      object Group4: TfrxMasterData
        FillType = ftBrush
        Height = 14.400009300000000000
        Top = 291.023810000000000000
        Width = 745.701269000000000000
        DataSet = ReportDBLInk
        DataSetName = 'PLAN_ANALITICO'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 231.998889990000000000
          Width = 85.001629700000000000
          Height = 13.001583200000000000
          DataField = 'ID_PROYECTO'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[PLAN_ANALITICO."ID_PROYECTO"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 320.999262430000000000
          Width = 395.002459830000000000
          Height = 13.001583200000000000
          DataField = 'DESCPROYECTO'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[PLAN_ANALITICO."DESCPROYECTO"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 14.400009300000000000
        Top = 139.842610000000000000
        Width = 745.701269000000000000
        Condition = 'PLAN_ANALITICO."CUENTA"'
        object DBText2: TfrxMemoView
          Left = 53.000349190000000000
          Width = 85.001629700000000000
          Height = 13.001583200000000000
          DataField = 'CUENTA'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PLAN_ANALITICO."CUENTA"]')
          ParentFont = False
        end
        object DBText4: TfrxMemoView
          Left = 142.000721630000000000
          Width = 395.002459830000000000
          Height = 13.001583200000000000
          DataField = 'DESCCUENTA'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PLAN_ANALITICO."DESCCUENTA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 396.850650000000000000
        Width = 745.701269000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 14.400009300000000000
        Top = 177.637910000000000000
        Width = 745.701269000000000000
        Condition = 'PLAN_ANALITICO."ID_DELEGACION"'
        object DBText6: TfrxMemoView
          Left = 190.000752630000000000
          Width = 395.002459830000000000
          Height = 13.001583200000000000
          DataField = 'DESCDELEGACION'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[PLAN_ANALITICO."DESCDELEGACION"]')
          ParentFont = False
        end
        object DBText5: TfrxMemoView
          Left = 101.000380190000000000
          Width = 85.001629700000000000
          Height = 13.001583200000000000
          DataField = 'ID_DELEGACION'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[PLAN_ANALITICO."ID_DELEGACION"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 374.173470000000000000
        Width = 745.701269000000000000
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 14.400009300000000000
        Top = 215.433210000000000000
        Width = 745.701269000000000000
        Condition = 'PLAN_ANALITICO."ID_DEPARTAMENTO"'
        object DBText8: TfrxMemoView
          Left = 150.001986640000000000
          Width = 85.001629700000000000
          Height = 13.001583200000000000
          DataField = 'ID_DEPARTAMENTO'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[PLAN_ANALITICO."ID_DEPARTAMENTO"]')
          ParentFont = False
        end
        object DBText9: TfrxMemoView
          Left = 239.002359080000000000
          Width = 395.002459830000000000
          Height = 13.001583200000000000
          DataField = 'DESCDEPARTAMENTO'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[PLAN_ANALITICO."DESCDEPARTAMENTO"]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Top = 351.496290000000000000
        Width = 745.701269000000000000
      end
      object GroupHeader4: TfrxGroupHeader
        FillType = ftBrush
        Height = 14.400009300000000000
        Top = 253.228510000000000000
        Width = 745.701269000000000000
        Condition = 'PLAN_ANALITICO."ID_SECCION"'
        object DBText10: TfrxMemoView
          Left = 192.000124000000000000
          Width = 85.001629700000000000
          Height = 13.001583200000000000
          DataField = 'ID_SECCION'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[PLAN_ANALITICO."ID_SECCION"]')
          ParentFont = False
        end
        object DBText11: TfrxMemoView
          Left = 281.000496440000000000
          Width = 395.002459830000000000
          Height = 13.001583200000000000
          DataField = 'DESCSECCION'
          DataSet = ReportDBLInk
          DataSetName = 'PLAN_ANALITICO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HideZeros = True
          Memo.UTF8W = (
            '[PLAN_ANALITICO."DESCSECCION"]')
          ParentFont = False
        end
      end
      object GroupFooter4: TfrxGroupFooter
        FillType = ftBrush
        Top = 328.819110000000000000
        Width = 745.701269000000000000
      end
    end
  end
end
