object WAnaliticas: TWAnaliticas
  Left = 449
  Top = 309
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Archivo de Cuentas analiticas'
  ClientHeight = 496
  ClientWidth = 717
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
    Width = 717
    Height = 46
    Align = alTop
    Color = 14275008
    TabOrder = 0
    object Shape1: TShape
      Left = 8
      Top = 34
      Width = 689
      Height = 1
      Pen.Color = 7552051
    end
    object Label3: TLabel
      Left = 8
      Top = 13
      Width = 242
      Height = 19
      Caption = 'Archivo de Cuentas Anal'#237'ticas'
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
    Top = 46
    Width = 717
    Height = 450
    Align = alClient
    Color = 14275008
    TabOrder = 1
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 610
      Height = 448
      Align = alClient
      Color = 14275008
      TabOrder = 0
      object FiltroBuscar: TGroupBox
        Left = 1
        Top = 1
        Width = 608
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
          Left = 198
          Top = 21
          Width = 44
          Height = 13
          Caption = 'Nombre'
        end
        object Label5: TLabel
          Left = 16
          Top = 21
          Width = 40
          Height = 13
          Caption = 'Cuenta'
        end
        object EditFiltroDESCRIPCION: TDBEdit
          Left = 247
          Top = 17
          Width = 265
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
          MaxLength = 25
          ParentFont = False
          TabOrder = 0
          OnEnter = LimpiarFiltro
        end
        object EditFiltroANALITICA: TDBEdit
          Left = 68
          Top = 17
          Width = 85
          Height = 20
          Cursor = crHandPoint
          AutoSize = False
          DataField = 'BCuenta'
          DataSource = sFiltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          OnEnter = LimpiarFiltro
        end
      end
      object Datos: TGroupBox
        Left = 1
        Top = 306
        Width = 608
        Height = 141
        Align = alBottom
        TabOrder = 1
        object Label2: TLabel
          Left = 145
          Top = 12
          Width = 77
          Height = 16
          AutoSize = False
          Caption = 'Nombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 28
          Top = 12
          Width = 55
          Height = 16
          AutoSize = False
          Caption = 'Cuenta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 28
          Top = 55
          Width = 62
          Height = 13
          Caption = 'Delegaci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 312
          Top = 55
          Width = 83
          Height = 13
          Caption = 'Departamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 28
          Top = 98
          Width = 43
          Height = 13
          Caption = 'Secci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 312
          Top = 98
          Width = 51
          Height = 13
          Caption = 'Proyecto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditDESCRIPCION: TDBEdit
          Left = 145
          Top = 26
          Width = 415
          Height = 20
          AutoSize = False
          DataField = 'NOMBRE'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 85
          ParentFont = False
          TabOrder = 1
        end
        object EditCUENTA: TDBEdit
          Left = 28
          Top = 26
          Width = 93
          Height = 20
          AutoSize = False
          DataField = 'CUENTA'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 20
          ParentFont = False
          TabOrder = 0
        end
        object ComboBoxDELEGACION: TDBLookupComboBox
          Left = 28
          Top = 69
          Width = 248
          Height = 21
          DataField = 'ID_DELEGACION'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_DELEGACION'
          ListField = 'NOMBRE'
          ListSource = SDelegacion
          ParentFont = False
          TabOrder = 2
        end
        object ComboBoxDEPARTAMENTO: TDBLookupComboBox
          Left = 312
          Top = 69
          Width = 248
          Height = 21
          DataField = 'ID_DEPARTAMENTO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_DEPARTAMENTO'
          ListField = 'NOMBRE'
          ListSource = SDepartamento
          ParentFont = False
          TabOrder = 3
        end
        object ComboBoxSECCION: TDBLookupComboBox
          Left = 28
          Top = 112
          Width = 248
          Height = 21
          DataField = 'ID_SECCION'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_SECCION'
          ListField = 'NOMBRE'
          ListSource = SSeccion
          ParentFont = False
          TabOrder = 4
        end
        object ComboBoxPROYECTO: TDBLookupComboBox
          Left = 312
          Top = 112
          Width = 248
          Height = 21
          DataField = 'ID_PROYECTO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_PROYECTO'
          ListField = 'NOMBRE'
          ListSource = SProyecto
          ParentFont = False
          TabOrder = 5
        end
      end
      object DataGrid: TDBGrid
        Left = 1
        Top = 53
        Width = 608
        Height = 253
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
        Columns = <
          item
            Expanded = False
            FieldName = 'CUENTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_DELEGACION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_DEPARTAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_SECCION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PROYECTO'
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 611
      Top = 1
      Width = 105
      Height = 448
      Align = alRight
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object BtnRefresh: TSpeedButton
        Left = 40
        Top = 344
        Width = 28
        Height = 28
        Cursor = crHandPoint
        OnClick = VerTabla
      end
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
        TabOrder = 4
        OnClick = BtnModifyClick
      end
      object DBNavigator: TDBNavigator
        Left = 8
        Top = 145
        Width = 80
        Height = 25
        DataSource = SFichero
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 6
      end
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 312
    Top = 125
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    OnCalcFields = QFicheroCalcFields
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM ANALITICAS'
      'WHERE'
      
        '  CUENTA                         =:old_CUENTA                   ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO ANALITICAS'
      
        '  (ID_PROYECTO                    ,ID_SECCION                   ' +
        '  ,ID_DEPARTAMENTO                ,ID_DELEGACION                ' +
        '  ,NOMBRE                         ,CUENTA                       ' +
        '  )'
      'VALUES'
      
        '  (:ID_PROYECTO                    ,:ID_SECCION                 ' +
        '    ,:ID_DEPARTAMENTO                ,:ID_DELEGACION            ' +
        '      ,:NOMBRE                         ,:CUENTA                 ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM ANALITICAS'
      'WHERE'
      
        '  CUENTA                         =?CUENTA                       ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM ANALITICAS')
    ModifySQL.Strings = (
      'UPDATE ANALITICAS'
      'SET'
      
        '  ID_PROYECTO                    =:ID_PROYECTO                  ' +
        '   '
      
        '  ,ID_SECCION                     =:ID_SECCION                  ' +
        '    '
      
        '  ,ID_DEPARTAMENTO                =:ID_DEPARTAMENTO             ' +
        '    '
      
        '  ,ID_DELEGACION                  =:ID_DELEGACION               ' +
        '    '
      
        '  ,NOMBRE                         =:NOMBRE                      ' +
        '    '
      'WHERE'
      
        '  CUENTA                         =:CUENTA                       ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 433
    Top = 124
    object QFicheroCUENTA: TIBStringField
      DisplayWidth = 20
      FieldName = 'CUENTA'
      Origin = 'ANALITICAS.CUENTA'
      Size = 10
    end
    object QFicheroNOMBRE: TIBStringField
      DisplayWidth = 85
      FieldName = 'NOMBRE'
      Origin = 'ANALITICAS.NOMBRE'
      Size = 50
    end
    object QFicheroID_PROYECTO: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'ANALITICAS.ID_PROYECTO'
      Visible = False
      Size = 10
    end
    object QFicheroID_SECCION: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'ANALITICAS.ID_SECCION'
      Visible = False
      Size = 10
    end
    object QFicheroID_DEPARTAMENTO: TIBStringField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ANALITICAS.ID_DEPARTAMENTO'
      Visible = False
      Size = 10
    end
    object QFicheroID_DELEGACION: TIBStringField
      FieldName = 'ID_DELEGACION'
      Origin = 'ANALITICAS.ID_DELEGACION'
      Visible = False
      Size = 10
    end
    object QFicheroNombreProyecto: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreProyecto'
      LookupDataSet = DMRef.QProyecto
      LookupKeyFields = 'ID_PROYECTO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PROYECTO'
      Visible = False
      Size = 50
      Lookup = True
    end
    object QFicheroNombreSeccion: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreSeccion'
      LookupDataSet = DMRef.QSeccion
      LookupKeyFields = 'ID_SECCION'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_SECCION'
      Visible = False
      Size = 50
      Lookup = True
    end
    object QFicheroNombreDepartamento: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreDepartamento'
      LookupDataSet = DMRef.QDepartamento
      LookupKeyFields = 'ID_DEPARTAMENTO'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_DEPARTAMENTO'
      Visible = False
      Size = 50
      Lookup = True
    end
    object QFicheroNombreDelegacion: TStringField
      FieldKind = fkLookup
      FieldName = 'NombreDelegacion'
      LookupDataSet = DMRef.QDelegacion
      LookupKeyFields = 'ID_DELEGACION'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_DELEGACION'
      Visible = False
      Size = 50
      Lookup = True
    end
  end
  object Transaccion: TIBTransaction
    Left = 370
    Top = 125
  end
  object TbFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 125
  end
  object sFiltro: TDataSource
    DataSet = TbFiltro
    Left = 490
    Top = 125
  end
  object QDelegacion: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
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
    Left = 479
    Top = 178
    object IBStringField1: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'DELEGACION.NOMBRE'
      Size = 50
    end
    object IBStringField2: TIBStringField
      FieldName = 'ID_DELEGACION'
      Origin = 'DELEGACION.ID_DELEGACION'
      Required = True
      Size = 10
    end
  end
  object SDelegacion: TDataSource
    AutoEdit = False
    DataSet = QDelegacion
    Left = 551
    Top = 175
  end
  object QDepartamento: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM DEPARTAMENTO'
      'WHERE'
      
        '  ID_DEPARTAMENTO                =:old_ID_DEPARTAMENTO          ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO DEPARTAMENTO'
      
        '  (NOMBRE                         ,ID_DEPARTAMENTO              ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:ID_DEPARTAMENTO            ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM DEPARTAMENTO'
      'WHERE'
      
        '  ID_DEPARTAMENTO                =?ID_DEPARTAMENTO              ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM DEPARTAMENTO')
    ModifySQL.Strings = (
      'UPDATE DEPARTAMENTO'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  ID_DEPARTAMENTO                =:ID_DEPARTAMENTO              ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 479
    Top = 226
    object IBStringField3: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'DEPARTAMENTO.NOMBRE'
      Size = 50
    end
    object IBStringField4: TIBStringField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'DEPARTAMENTO.ID_DEPARTAMENTO'
      Required = True
      Size = 10
    end
  end
  object SDepartamento: TDataSource
    AutoEdit = False
    DataSet = QDepartamento
    Left = 551
    Top = 225
  end
  object QProyecto: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
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
    Left = 479
    Top = 274
    object IBStringField5: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'PROYECTO.NOMBRE'
      Size = 50
    end
    object IBStringField6: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'PROYECTO.ID_PROYECTO'
      Required = True
      Size = 10
    end
  end
  object SProyecto: TDataSource
    AutoEdit = False
    DataSet = QProyecto
    Left = 551
    Top = 271
  end
  object QSeccion: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
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
    Left = 479
    Top = 324
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
    Left = 551
    Top = 319
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636794976900000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42793.711372858800000000
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
        DataSetName = 'ANALITICAS'
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
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 104.001327010000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Shape2: TfrxShapeView
          Left = 32.999076430000000000
          Top = 68.001303760000000000
          Width = 735.001419570000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object lbAsiento: TfrxMemoView
          Left = 89.000372440000000000
          Top = 77.000364690000000000
          Width = 85.001629700000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
        object InformeLabel4: TfrxMemoView
          Left = 34.000651880000000000
          Top = 77.000364690000000000
          Width = 49.999402370000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cuenta')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 219.968646000000000000
          Top = 39.998765990000000000
          Width = 303.031376810000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE CUENTAS ANAL'#205'TICAS')
          ParentFont = False
        end
        object lbAsiento1: TfrxMemoView
          Left = 365.000550690000000000
          Top = 77.000364690000000000
          Width = 128.999138430000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Departamento')
          ParentFont = False
        end
        object lbAsiento2: TfrxMemoView
          Left = 231.998889990000000000
          Top = 77.000364690000000000
          Width = 128.999138430000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Delegaci'#243'n')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 632.001668010000000000
          Top = 77.000364690000000000
          Width = 128.999138430000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Proyecto')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 498.002211390000000000
          Top = 77.000364690000000000
          Width = 128.999138430000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Secci'#243'n')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 71.811070000000000000
          Top = 9.558431370000001000
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
          Left = 558.811069559999900000
          Top = 7.559060000000003000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 569.813281390000100000
          Top = 11.557802740000000000
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
          Left = 569.813281390000100000
          Top = 26.558757310000000000
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
          Left = 618.811108310000000000
          Top = 26.558757310000000000
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
          Left = 612.812994200000000000
          Top = 11.557802740000000000
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
          Left = 704.047068870000000000
          Top = 11.557802740000000000
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
          Left = 565.503988560000100000
          Top = 48.589009050000000000
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
          Left = 622.060875480000000000
          Top = 48.589009050000000000
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
        Top = 147.401670000000000000
        Width = 793.701300000000000000
        DataSet = ReportDBLInk
        DataSetName = 'ANALITICAS'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 34.000651880000000000
          Top = 1.001575449999990000
          Width = 49.999402370000000000
          Height = 10.998432300000000000
          DataField = 'CUENTA'
          DataSet = ReportDBLInk
          DataSetName = 'ANALITICAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ANALITICAS."CUENTA"]')
          ParentFont = False
        end
        object cAsiento: TfrxMemoView
          Left = 89.000372440000010000
          Top = 1.001575449999990000
          Width = 138.001978890000000000
          Height = 10.998432300000000000
          DataField = 'NOMBRE'
          DataSet = ReportDBLInk
          DataSetName = 'ANALITICAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ANALITICAS."NOMBRE"]')
          ParentFont = False
        end
        object cAsiento1: TfrxMemoView
          Left = 231.998889990000000000
          Top = 1.001575449999990000
          Width = 128.999138430000000000
          Height = 10.998432300000000000
          DataField = 'NombreDelegacion'
          DataSet = ReportDBLInk
          DataSetName = 'ANALITICAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ANALITICAS."NombreDelegacion"]')
          ParentFont = False
        end
        object cAsiento2: TfrxMemoView
          Left = 365.000550690000000000
          Top = 1.001575449999990000
          Width = 128.999138430000000000
          Height = 10.998432300000000000
          DataField = 'NombreDepartamento'
          DataSet = ReportDBLInk
          DataSetName = 'ANALITICAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ANALITICAS."NombreDepartamento"]')
          ParentFont = False
        end
        object DBText4: TfrxMemoView
          Left = 632.001668010000000000
          Top = 1.001575449999990000
          Width = 128.999138430000000000
          Height = 10.998432300000000000
          DataField = 'NombreProyecto'
          DataSet = ReportDBLInk
          DataSetName = 'ANALITICAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ANALITICAS."NombreProyecto"]')
          ParentFont = False
        end
        object DBText5: TfrxMemoView
          Left = 498.002211390000000000
          Top = 1.001575449999990000
          Width = 128.999138430000000000
          Height = 10.998432300000000000
          DataField = 'NombreSeccion'
          DataSet = ReportDBLInk
          DataSetName = 'ANALITICAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ANALITICAS."NombreSeccion"]')
          ParentFont = False
        end
      end
    end
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'ANALITICAS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CUENTA=CUENTA'
      'NOMBRE=NOMBRE'
      'ID_PROYECTO=ID_PROYECTO'
      'ID_SECCION=ID_SECCION'
      'ID_DEPARTAMENTO=ID_DEPARTAMENTO'
      'ID_DELEGACION=ID_DELEGACION'
      'NombreProyecto=NombreProyecto'
      'NombreSeccion=NombreSeccion'
      'NombreDepartamento=NombreDepartamento'
      'NombreDelegacion=NombreDelegacion')
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
end
