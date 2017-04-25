object WTitulos: TWTitulos
  Left = 540
  Top = 277
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Archivo de T'#205'TULOS'
  ClientHeight = 478
  ClientWidth = 755
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
    Width = 755
    Height = 41
    Align = alTop
    TabOrder = 0
    object Shape1: TShape
      Left = 13
      Top = 29
      Width = 689
      Height = 1
    end
    object Label3: TLabel
      Left = 13
      Top = 6
      Width = 129
      Height = 19
      Caption = 'Archivo de T'#237'tulos'
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
    Width = 755
    Height = 437
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 649
      Top = 1
      Width = 105
      Height = 435
      Align = alRight
      BevelOuter = bvNone
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
        Top = 74
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
        Top = 227
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
        Top = 254
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
        Left = 11
        Top = 304
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Caption = '&Refrescar'
        TabOrder = 4
        OnClick = VerTabla
      end
      object BtnReports: TButton
        Left = 10
        Top = 125
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
        OnClick = BtnReportsClick
      end
      object BtnModify: TButton
        Left = 10
        Top = 44
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
        Left = 13
        Top = 160
        Width = 80
        Height = 25
        DataSource = SFichero
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 7
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 648
      Height = 435
      Align = alClient
      TabOrder = 1
      object FiltroBuscar: TGroupBox
        Left = 1
        Top = 1
        Width = 646
        Height = 44
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
          Left = 114
          Top = 21
          Width = 54
          Height = 13
          Caption = 'Descripci'#243'n'
        end
        object Label5: TLabel
          Left = 15
          Top = 21
          Width = 26
          Height = 13
          Caption = 'T'#237'tulo'
        end
        object FiltroBDescripcion: TDBEdit
          Left = 185
          Top = 18
          Width = 367
          Height = 20
          Cursor = crHandPoint
          AutoSize = False
          DataField = 'BDescripcion'
          DataSource = sFiltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 30
          ParentFont = False
          TabOrder = 0
          OnEnter = LimpiarFiltro
        end
        object FiltroBTitulo: TDBEdit
          Left = 55
          Top = 18
          Width = 39
          Height = 21
          AutoSize = False
          DataField = 'BTitulo'
          DataSource = sFiltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 2
          ParentFont = False
          TabOrder = 1
        end
      end
      object Datos: TGroupBox
        Left = 1
        Top = 328
        Width = 646
        Height = 106
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 15
          Top = 20
          Width = 35
          Height = 16
          AutoSize = False
          Caption = 'T'#237'tulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 114
          Top = 20
          Width = 66
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
        object Label6: TLabel
          Left = 132
          Top = 52
          Width = 13
          Height = 16
          AutoSize = False
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 198
          Top = 52
          Width = 13
          Height = 16
          AutoSize = False
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 263
          Top = 52
          Width = 13
          Height = 16
          AutoSize = False
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 329
          Top = 52
          Width = 13
          Height = 16
          AutoSize = False
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 394
          Top = 52
          Width = 13
          Height = 16
          AutoSize = False
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 592
          Top = 52
          Width = 13
          Height = 16
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 73
          Top = 76
          Width = 6
          Height = 16
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 135
          Top = 76
          Width = 6
          Height = 16
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 201
          Top = 76
          Width = 6
          Height = 16
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 266
          Top = 76
          Width = 6
          Height = 16
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 332
          Top = 76
          Width = 6
          Height = 16
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 397
          Top = 76
          Width = 6
          Height = 16
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 15
          Top = 52
          Width = 66
          Height = 16
          AutoSize = False
          Caption = 'F'#243'rmula'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 458
          Top = 52
          Width = 13
          Height = 16
          AutoSize = False
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 524
          Top = 52
          Width = 13
          Height = 16
          AutoSize = False
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 461
          Top = 76
          Width = 6
          Height = 16
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 527
          Top = 76
          Width = 6
          Height = 16
          AutoSize = False
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EditNombre: TDBEdit
          Left = 185
          Top = 18
          Width = 398
          Height = 20
          AutoSize = False
          DataField = 'DESCRIPCION'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditCampoInicial: TDBEdit
          Left = 55
          Top = 18
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'TITULO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 0
          OnEnter = SoloSiAniadir
        end
        object EditSuma2: TDBEdit
          Left = 151
          Top = 50
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'SUMA2'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object EditSuma3: TDBEdit
          Left = 216
          Top = 50
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'SUMA3'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object EditSuma4: TDBEdit
          Left = 282
          Top = 50
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'SUMA4'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object EditSuma5: TDBEdit
          Left = 347
          Top = 50
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'SUMA5'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object EditSuma6: TDBEdit
          Left = 412
          Top = 50
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'SUMA6'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object EditResta1: TDBEdit
          Left = 86
          Top = 74
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'RESTA1'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object EditResta2: TDBEdit
          Left = 151
          Top = 74
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'RESTA2'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object EditResta3: TDBEdit
          Left = 216
          Top = 74
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'RESTA3'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object EditResta4: TDBEdit
          Left = 282
          Top = 74
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'RESTA4'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object EditResta5: TDBEdit
          Left = 347
          Top = 74
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'RESTA5'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object EditResta6: TDBEdit
          Left = 412
          Top = 74
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'RESTA6'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object EditSuma1: TDBEdit
          Left = 86
          Top = 50
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'SUMA1'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditSuma7: TDBEdit
          Left = 476
          Top = 50
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'SUMA7'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object EditSuma8: TDBEdit
          Left = 542
          Top = 50
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'SUMA8'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object EditResta7: TDBEdit
          Left = 476
          Top = 74
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'RESTA7'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object EditResta8: TDBEdit
          Left = 542
          Top = 74
          Width = 41
          Height = 20
          AutoSize = False
          DataField = 'RESTA8'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
      end
      object Rejilla: TDBGrid
        Left = 1
        Top = 45
        Width = 646
        Height = 283
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = RejillaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TITULO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRIPCION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Formula'
            Visible = True
          end>
      end
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 128
    Top = 229
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    OnCalcFields = QFicheroCalcFields
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM TITULOS'
      'WHERE'
      
        '  TITULO                         =:old_TITULO                   ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO TITULOS'
      
        '  (TITULO                         ,DESCRIPCION                  ' +
        '  ,SUMA8                          ,RESTA7                       ' +
        '  ,RESTA8                         ,SUMA7                        ' +
        '  ,RESTA6                         ,RESTA5                       ' +
        '  ,RESTA4                         ,RESTA3                       ' +
        '  ,RESTA2                         ,RESTA1                       ' +
        '  ,SUMA6                          ,SUMA5                        ' +
        '  ,SUMA4                          ,SUMA3                        ' +
        '  ,SUMA2                          ,SUMA1                        ' +
        '  )'
      'VALUES'
      
        '  (:TITULO                         ,:DESCRIPCION                ' +
        '    ,:SUMA8                          ,:RESTA7                   ' +
        '      ,:RESTA8                         ,:SUMA7                  ' +
        '        ,:RESTA6                         ,:RESTA5               ' +
        '          ,:RESTA4                         ,:RESTA3             ' +
        '            ,:RESTA2                         ,:RESTA1           ' +
        '              ,:SUMA6                          ,:SUMA5          ' +
        '                ,:SUMA4                          ,:SUMA3        ' +
        '                  ,:SUMA2                          ,:SUMA1      ' +
        '                    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM TITULOS'
      'WHERE'
      
        '  TITULO                         =?TITULO                       ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM TITULOS')
    ModifySQL.Strings = (
      'UPDATE TITULOS'
      'SET'
      
        '  DESCRIPCION                    =:DESCRIPCION                  ' +
        '   '
      
        '  ,SUMA8                          =:SUMA8                       ' +
        '    '
      
        '  ,RESTA7                         =:RESTA7                      ' +
        '    '
      
        '  ,RESTA8                         =:RESTA8                      ' +
        '    '
      
        '  ,SUMA7                          =:SUMA7                       ' +
        '    '
      
        '  ,RESTA6                         =:RESTA6                      ' +
        '    '
      
        '  ,RESTA5                         =:RESTA5                      ' +
        '    '
      
        '  ,RESTA4                         =:RESTA4                      ' +
        '    '
      
        '  ,RESTA3                         =:RESTA3                      ' +
        '    '
      
        '  ,RESTA2                         =:RESTA2                      ' +
        '    '
      
        '  ,RESTA1                         =:RESTA1                      ' +
        '    '
      
        '  ,SUMA6                          =:SUMA6                       ' +
        '    '
      
        '  ,SUMA5                          =:SUMA5                       ' +
        '    '
      
        '  ,SUMA4                          =:SUMA4                       ' +
        '    '
      
        '  ,SUMA3                          =:SUMA3                       ' +
        '    '
      
        '  ,SUMA2                          =:SUMA2                       ' +
        '    '
      
        '  ,SUMA1                          =:SUMA1                       ' +
        '    '
      'WHERE'
      
        '  TITULO                         =:TITULO                       ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 81
    Top = 228
    object QFicheroTITULO: TIBStringField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'TITULO'
      Size = 2
    end
    object QFicheroDESCRIPCION: TIBStringField
      DisplayWidth = 50
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object QFicheroFormula: TStringField
      DisplayLabel = 'FORMULA'
      DisplayWidth = 48
      FieldKind = fkCalculated
      FieldName = 'Formula'
      Size = 40
      Calculated = True
    end
    object QFicheroSUMA1: TIBStringField
      FieldName = 'SUMA1'
      Visible = False
      Size = 3
    end
    object QFicheroSUMA2: TIBStringField
      FieldName = 'SUMA2'
      Visible = False
      Size = 3
    end
    object QFicheroSUMA3: TIBStringField
      FieldName = 'SUMA3'
      Visible = False
      Size = 3
    end
    object QFicheroSUMA4: TIBStringField
      FieldName = 'SUMA4'
      Visible = False
      Size = 3
    end
    object QFicheroSUMA5: TIBStringField
      FieldName = 'SUMA5'
      Visible = False
      Size = 3
    end
    object QFicheroSUMA6: TIBStringField
      FieldName = 'SUMA6'
      Visible = False
      Size = 3
    end
    object QFicheroRESTA1: TIBStringField
      FieldName = 'RESTA1'
      Visible = False
      Size = 3
    end
    object QFicheroRESTA2: TIBStringField
      FieldName = 'RESTA2'
      Visible = False
      Size = 3
    end
    object QFicheroRESTA3: TIBStringField
      FieldName = 'RESTA3'
      Visible = False
      Size = 3
    end
    object QFicheroRESTA4: TIBStringField
      FieldName = 'RESTA4'
      Visible = False
      Size = 3
    end
    object QFicheroRESTA5: TIBStringField
      FieldName = 'RESTA5'
      Visible = False
      Size = 3
    end
    object QFicheroRESTA6: TIBStringField
      FieldName = 'RESTA6'
      Visible = False
      Size = 3
    end
    object QFicheroSUMA7: TIBStringField
      FieldName = 'SUMA7'
      Origin = 'TITULOS.SUMA7'
      Visible = False
      Size = 3
    end
    object QFicheroRESTA8: TIBStringField
      FieldName = 'RESTA8'
      Origin = 'TITULOS.RESTA8'
      Visible = False
      Size = 3
    end
    object QFicheroRESTA7: TIBStringField
      FieldName = 'RESTA7'
      Origin = 'TITULOS.RESTA7'
      Visible = False
      Size = 3
    end
    object QFicheroSUMA8: TIBStringField
      FieldName = 'SUMA8'
      Origin = 'TITULOS.SUMA8'
      Visible = False
      Size = 3
    end
  end
  object Transaccion: TIBTransaction
    Left = 82
    Top = 181
  end
  object TbFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 80
    Top = 125
  end
  object sFiltro: TDataSource
    DataSet = TbFiltro
    Left = 130
    Top = 125
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'TITULOS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TITULO=TITULO'
      'DESCRIPCION=DESCRIPCION'
      'Formula=Formula'
      'SUMA1=SUMA1'
      'SUMA2=SUMA2'
      'SUMA3=SUMA3'
      'SUMA4=SUMA4'
      'SUMA5=SUMA5'
      'SUMA6=SUMA6'
      'RESTA1=RESTA1'
      'RESTA2=RESTA2'
      'RESTA3=RESTA3'
      'RESTA4=RESTA4'
      'RESTA5=RESTA5'
      'RESTA6=RESTA6'
      'SUMA7=SUMA7'
      'RESTA8=RESTA8'
      'RESTA7=RESTA7'
      'SUMA8=SUMA8')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 360
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
    Left = 297
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
    ReportOptions.CreateDate = 42776.640341412000000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42792.452836134260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 297
    Top = 194
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'TITULOS'
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
          Width = 59.236573690000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'T'#237'tulo')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 229.999518620000000000
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
          Left = 242.528660570000000000
          Top = 63.998781490000000000
          Width = 231.707866180000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE T'#205'TULOS')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 528.000341000000100000
          Top = 24.999386869999990000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object LineaCabecera1: TfrxMemoView
          Left = 37.795300000000000000
          Top = 26.456710000000000000
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
          Top = 28.456081370000000000
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
          Top = 43.457035940000010000
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
          Top = 43.457035940000010000
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
          Top = 28.456081370000000000
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
          Top = 28.456081370000000000
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
          Top = 65.487287680000000000
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
          Top = 65.487287680000000000
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
        DataSetName = 'TITULOS'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 229.999518620000000000
          Top = 1.999371370000006000
          Width = 304.550747870000000000
          Height = 13.001583200000000000
          DataField = 'DESCRIPCION'
          DataSet = ReportDBLInk
          DataSetName = 'TITULOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[TITULOS."DESCRIPCION"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 114.001963390000000000
          Top = 1.999371370000006000
          Width = 32.001280510000000000
          Height = 13.001583200000000000
          DataField = 'TITULO'
          DataSet = ReportDBLInk
          DataSetName = 'TITULOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[TITULOS."TITULO"]')
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
