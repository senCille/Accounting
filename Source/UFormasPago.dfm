object WFormasPago: TWFormasPago
  Left = 585
  Top = 346
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Archivo de FORMAS DE PAGO'
  ClientHeight = 446
  ClientWidth = 606
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 606
    Height = 41
    Align = alTop
    Color = 14275008
    TabOrder = 0
    object Shape1: TShape
      Left = 10
      Top = 28
      Width = 689
      Height = 1
      Pen.Color = 7552051
    end
    object Label3: TLabel
      Left = 10
      Top = 7
      Width = 221
      Height = 19
      Caption = 'Archivo de Formas de Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 606
    Height = 405
    Align = alClient
    Color = 14275008
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 499
      Height = 403
      Align = alClient
      Color = 14275008
      TabOrder = 0
      object FiltroBuscar: TGroupBox
        Left = 1
        Top = 1
        Width = 497
        Height = 52
        Align = alTop
        Caption = ' Buscar '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 187
          Top = 21
          Width = 65
          Height = 13
          Caption = 'Descripci'#243'n'
        end
        object Label5: TLabel
          Left = 18
          Top = 21
          Width = 67
          Height = 13
          Caption = 'Forma Pago'
        end
        object EditBDescripcion: TDBEdit
          Left = 260
          Top = 17
          Width = 205
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
          MaxLength = 40
          ParentFont = False
          TabOrder = 0
          OnEnter = LimpiarFiltro
        end
        object EditBCodigo: TDBEdit
          Left = 95
          Top = 17
          Width = 85
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
          MaxLength = 3
          ParentFont = False
          TabOrder = 1
          OnEnter = LimpiarFiltro
        end
      end
      object Datos: TGroupBox
        Left = 1
        Top = 278
        Width = 497
        Height = 124
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label2: TLabel
          Left = 86
          Top = 12
          Width = 65
          Height = 13
          Caption = 'Descripci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 6
          Top = 12
          Width = 67
          Height = 13
          Caption = 'Forma Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 9
          Top = 50
          Width = 53
          Height = 13
          Caption = 'Intervalo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 86
          Top = 50
          Width = 76
          Height = 13
          Caption = 'Vencimientos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditDescripcion: TDBEdit
          Left = 86
          Top = 26
          Width = 267
          Height = 20
          AutoSize = False
          DataField = 'DESCRIBE'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 54
          ParentFont = False
          TabOrder = 1
        end
        object EditFormaPago: TDBEdit
          Left = 6
          Top = 26
          Width = 69
          Height = 20
          AutoSize = False
          DataField = 'FORMAPAGO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 0
        end
        object RadioGroupUnidades: TDBRadioGroup
          Left = 166
          Top = 49
          Width = 101
          Height = 56
          Caption = ' Unidades'
          DataField = 'CLASE'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'D'#237'as'
            'Meses')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'D'
            'M')
        end
        object EditIntervalo: TDBEdit
          Left = 13
          Top = 65
          Width = 45
          Height = 20
          AutoSize = False
          DataField = 'INTERVALO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object EditVencimiento: TDBEdit
          Left = 99
          Top = 65
          Width = 45
          Height = 20
          AutoSize = False
          DataField = 'NUMVENCI'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object CheckBoxObsoleto: TDBCheckBox
          Left = 279
          Top = 54
          Width = 97
          Height = 17
          Caption = 'Obsoleto'
          DataField = 'OBSOLETO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object DataGrid: TDBGrid
        Left = 1
        Top = 53
        Width = 497
        Height = 225
        Align = alClient
        Color = 15596540
        DataSource = SFichero
        FixedColor = 10841401
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'System'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -13
        TitleFont.Name = 'System'
        TitleFont.Style = [fsBold]
        OnDblClick = DataGridDblClick
        OnTitleClick = DataGridTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FORMAPAGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRIBE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Unidades'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INTERVALO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMVENCI'
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 500
      Top = 1
      Width = 105
      Height = 403
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
        Font.Style = [fsBold]
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnDeleteClick
      end
      object BtnAccept: TButton
        Left = 10
        Top = 206
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
        Top = 236
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
      object BtnRefresh: TButton
        Left = 40
        Top = 312
        Width = 28
        Height = 28
        Cursor = crHandPoint
        TabOrder = 4
        OnClick = VerTabla
      end
      object BtnReport: TButton
        Left = 10
        Top = 104
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
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = BtnModifyClick
      end
      object DBNavigator: TDBNavigator
        Left = 8
        Top = 144
        Width = 88
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 7
      end
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 24
    Top = 213
  end
  object QFichero: TIBDataSet
    Database = DMRef.BDContab
    Transaction = Transaccion
    OnCalcFields = QFicheroCalcFields
    OnNewRecord = QFicheroNewRecord
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM FORMAS'
      'WHERE'
      
        '  FORMAPAGO                      =:old_FORMAPAGO                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO FORMAS'
      
        '  (DESCRIBE                       ,INTERVALO                    ' +
        '  ,NUMVENCI                       ,FORMAPAGO                    ' +
        '  ,CLASE                          ,OBSOLETO                     ' +
        '  )'
      'VALUES'
      
        '  (:DESCRIBE                       ,:INTERVALO                  ' +
        '    ,:NUMVENCI                       ,:FORMAPAGO                ' +
        '      ,:CLASE                          ,:OBSOLETO               ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM FORMAS'
      'WHERE'
      
        '  FORMAPAGO                      =?FORMAPAGO                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM FORMAS')
    ModifySQL.Strings = (
      'UPDATE FORMAS'
      'SET'
      
        '  DESCRIBE                       =:DESCRIBE                     ' +
        '   '
      
        '  ,INTERVALO                      =:INTERVALO                   ' +
        '    '
      
        '  ,NUMVENCI                       =:NUMVENCI                    ' +
        '    '
      
        '  ,CLASE                          =:CLASE                       ' +
        '    '
      
        '  ,OBSOLETO                       =:OBSOLETO                    ' +
        '    '
      'WHERE'
      
        '  FORMAPAGO                      =:FORMAPAGO                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 139
    Top = 164
    object QFicheroFORMAPAGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'FORMA'
      DisplayWidth = 14
      FieldName = 'FORMAPAGO'
      Origin = 'FORMAS.FORMAPAGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QFicheroDESCRIBE: TIBStringField
      DisplayLabel = 'DESCRIPCI'#211'N'
      DisplayWidth = 54
      FieldName = 'DESCRIBE'
      Origin = 'FORMAS.DESCRIBE'
      Size = 40
    end
    object QFicheroINTERVALO: TSmallintField
      DisplayWidth = 11
      FieldName = 'INTERVALO'
      Origin = 'FORMAS.INTERVALO'
    end
    object QFicheroUnidades: TStringField
      DisplayLabel = 'UNIDADES'
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Unidades'
      Size = 5
      Calculated = True
    end
    object QFicheroNUMVENCI: TSmallintField
      DisplayLabel = 'VENCIMIENTOS'
      DisplayWidth = 14
      FieldName = 'NUMVENCI'
      Origin = 'FORMAS.NUMVENCI'
    end
    object QFicheroCLASE: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Unid.'
      DisplayWidth = 5
      FieldName = 'CLASE'
      Origin = 'FORMAS.CLASE'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QFicheroOBSOLETO: TIBStringField
      DisplayWidth = 9
      FieldName = 'OBSOLETO'
      Origin = 'FORMAS.OBSOLETO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object Transaccion: TIBTransaction
    DefaultDatabase = DMRef.BDContab
    Left = 74
    Top = 213
  end
  object TbFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 165
  end
  object sFiltro: TDataSource
    DataSet = TbFiltro
    Left = 26
    Top = 165
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637949629600000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42791.760810162040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 208
    Top = 168
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'FORMAS DE PAGO'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'ENTERPRISE_NAME'
        Value = ''
      end
      item
        Name = 'USER_NAME'
        Value = ''
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
        Height = 115.997555230000000000
        Top = 18.897650000000000000
        Width = 745.701269000000000000
        object Shape3: TfrxShapeView
          Left = 41.000341440000000000
          Top = 84.000054250000000000
          Width = 655.000108060000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label1: TfrxMemoView
          Left = 435.001225820000000000
          Top = 94.000690630000000000
          Width = 52.558144180000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Intervalo')
          ParentFont = False
        end
        object InformeLabel4: TfrxMemoView
          Left = 106.998494300000000000
          Top = 94.000690630000000000
          Width = 73.338000120000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Forma Pago')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 190.000752630000000000
          Top = 94.000690630000000000
          Width = 76.119734200000000000
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
          Left = 207.749425510000000000
          Top = 63.998781490000000000
          Width = 278.812148570000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE FORMAS DE PAGO')
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
          Font.Style = [fsBold]
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
          Font.Style = [fsBold]
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
          Font.Style = [fsBold]
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
        object Label2: TfrxMemoView
          Left = 499.000007310000000000
          Top = 94.000690630000000000
          Width = 77.559735130000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimientos')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 598.001016130000000000
          Top = 94.000690630000000000
          Width = 63.118151000000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidades')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 42.001916890000000000
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
          Left = 585.691086920000000000
          Top = 64.252010000000000000
          Width = 138.285443640000000000
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
        DataSetName = 'FORMAS DE PAGO'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 190.000752630000000000
          Top = 1.999371370000006000
          Width = 224.999200430000000000
          Height = 13.001583200000000000
          DataField = 'DESCRIBE'
          DataSet = ReportDBLInk
          DataSetName = 'FORMAS DE PAGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FORMAS DE PAGO."DESCRIBE"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 111.998812490000000000
          Top = 1.999371370000006000
          Width = 53.000349190000000000
          Height = 13.001583200000000000
          DataField = 'FORMAPAGO'
          DataSet = ReportDBLInk
          DataSetName = 'FORMAS DE PAGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FORMAS DE PAGO."FORMAPAGO"]')
          ParentFont = False
        end
        object DBText2: TfrxMemoView
          Left = 513.003165960000000000
          Top = 1.999371370000006000
          Width = 42.999712810000000000
          Height = 13.001583200000000000
          DataField = 'NUMVENCI'
          DataSet = ReportDBLInk
          DataSetName = 'FORMAS DE PAGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FORMAS DE PAGO."NUMVENCI"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 598.001016130000000000
          Top = 1.999371370000006000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          DataField = 'Unidades'
          DataSet = ReportDBLInk
          DataSetName = 'FORMAS DE PAGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FORMAS DE PAGO."Unidades"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 436.002801270000000000
          Top = 1.999371370000006000
          Width = 42.999712810000000000
          Height = 13.001583200000000000
          DataField = 'INTERVALO'
          DataSet = ReportDBLInk
          DataSetName = 'FORMAS DE PAGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[FORMAS DE PAGO."INTERVALO"]')
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
    UserName = 'FORMAS DE PAGO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FORMAPAGO=FORMAPAGO'
      'DESCRIBE=DESCRIBE'
      'INTERVALO=INTERVALO'
      'Unidades=Unidades'
      'NUMVENCI=NUMVENCI'
      'CLASE=CLASE'
      'OBSOLETO=OBSOLETO')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 264
    Top = 168
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
    Left = 209
    Top = 220
  end
end
