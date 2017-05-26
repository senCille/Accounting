object WSubCuentas: TWSubCuentas
  Left = 769
  Top = 408
  ClientHeight = 518
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 39
    Width = 776
    Height = 479
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 662
      Top = 1
      Width = 113
      Height = 477
      Align = alRight
      TabOrder = 0
      object BtnRefresh: TSpeedButton
        Left = 34
        Top = 355
        Width = 35
        Height = 33
        Cursor = crHandPoint
        Hint = 'Filtrar informaci'#243'n'
        Flat = True
        Glyph.Data = {
          EE070000424DEE070000000000003600000028000000190000001A0000000100
          180000000000B8070000120B0000120B00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C00000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
          C0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C000000000000000C0C0C0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C000000000000000000000C0C0C0000000000000FF
          FFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF000000
          000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000000000
          0000C0C0C0000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0FFFFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
          00000000000000000000C0C0C000C0C0C0000000000000FFFFFFC0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF000000000000C0C0C0C0C0
          C0C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C000C0C0C0000000
          000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080800000000000000000
          00000000000000808080C0C0C0C0C0C0000000000000000000000000C0C0C0C0
          C0C0C0C0C000C0C0C0000000000000FFFFFFC0C0C0C0C0C0C0C0C00000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
          0000000000C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000000000FFFFFFC0C0
          C0C0C0C0C0C0C0000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
          C0000000000000FFFFFFC0C0C0C0C0C0000000808080808080FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000808080808080000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0000000000000FFFFFF808080808080000000FF
          FF00FFFF00000000000000000000000000FFFFFFFFFFFF000000C0C0C0C0C0C0
          000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000000000FF
          FFFF808080808080000000FFFF00FFFF00000000000000000000000000FFFFFF
          FFFFFF000000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000FFFFFF000000000000FFFF00FFFFFFFFFFFFFFFF00
          FFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000000000FFFFFF000000000000
          FFFFFF000000000000000000000000000000000000FFFFFFFFFFFF000000C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000
          000000FFFFFF000000000000FFFFFF0000000000000000000000000000000000
          00FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000C0C0C0000000000000000000000000000000FFFF00FFFFFFFFFF
          FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C08080
          8080808000000000000000000000000000000000000000000000000000000000
          0000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
          C0C0C0C0C0C0C0C0C0C080808080808000000000000000000000000000000000
          0000000000000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000
          0000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0808080000000000000000000000000000000808080C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
        Layout = blGlyphRight
        OnClick = BtnRefreshClick
      end
      object BtnAppend: TButton
        Left = 13
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
        Left = 13
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
        Left = 13
        Top = 193
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
        Left = 13
        Top = 219
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
      object BtnReports: TButton
        Left = 13
        Top = 166
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Informes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BtnReportsClick
      end
      object NavAnimate: TAnimate
        Left = 13
        Top = 301
        Width = 80
        Height = 50
        Cursor = crHandPoint
        CommonAVI = aviFindFolder
        StopFrame = 27
        Visible = False
      end
      object BtnModify: TButton
        Left = 13
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
      object BtnRepGraphics: TButton
        Left = 13
        Top = 139
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Impr. Gr'#225'ficos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = BtnRepGraphicsClick
      end
      object BtnDuple: TButton
        Left = 13
        Top = 98
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
        TabOrder = 8
        OnClick = BtnDupleClick
      end
      object DBNavigator: TDBNavigator
        Left = 16
        Top = 256
        Width = 80
        Height = 25
        DataSource = SFichero
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 9
      end
    end
    object PageControl: TPageControl
      Left = 1
      Top = 1
      Width = 661
      Height = 477
      ActivePage = TabData
      Align = alClient
      TabOrder = 1
      OnChange = PageControlChange
      object TabSubAccounts: TTabSheet
        Caption = 'Subcuentas'
        object FiltroBuscar: TGroupBox
          Left = 0
          Top = 0
          Width = 653
          Height = 51
          Align = alTop
          Caption = ' Buscar '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 13
            Top = 13
            Width = 51
            Height = 13
            Caption = 'Subcuenta'
          end
          object Label12: TLabel
            Left = 92
            Top = 13
            Width = 54
            Height = 13
            Caption = 'Descripci'#243'n'
          end
          object Label69: TLabel
            Left = 497
            Top = 13
            Width = 26
            Height = 13
            Caption = 'T'#237'tulo'
          end
          object Label70: TLabel
            Left = 545
            Top = 13
            Width = 29
            Height = 13
            Caption = 'Grupo'
          end
          object Label73: TLabel
            Left = 319
            Top = 13
            Width = 29
            Height = 13
            Caption = 'N.I.F.'
          end
          object EditBDescripcion: TDBEdit
            Left = 92
            Top = 25
            Width = 201
            Height = 21
            DataField = 'BDescripcion'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 30
            ParentFont = False
            TabOrder = 1
            OnEnter = EditBSubCuentaEnter
          end
          object EditBSubCuenta: TDBEdit
            Left = 6
            Top = 25
            Width = 81
            Height = 21
            DataField = 'BSubCuenta'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = EditBSubCuentaEnter
          end
          object EditBTitulo: TDBEdit
            Left = 494
            Top = 25
            Width = 39
            Height = 21
            AutoSize = False
            DataField = 'BTitulo'
            DataSource = SFiltro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = EditBSubCuentaEnter
          end
          object EditBGrupo: TDBEdit
            Left = 540
            Top = 25
            Width = 47
            Height = 21
            DataField = 'BGrupo'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = EditBSubCuentaEnter
          end
          object EditBId_Fiscal: TDBEdit
            Left = 316
            Top = 25
            Width = 122
            Height = 21
            DataField = 'BNif'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 30
            ParentFont = False
            TabOrder = 2
            OnEnter = EditBSubCuentaEnter
          end
        end
        object SubGridMovements: TDBGrid
          Left = 0
          Top = 329
          Width = 653
          Height = 120
          Align = alBottom
          DataSource = SMovimientos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = SubGridMovementsDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ASIENTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CONCEPTOS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DescComentario'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEBEHABER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Visible = True
            end>
        end
        object DataGrid: TDBGrid
          Left = 0
          Top = 51
          Width = 653
          Height = 278
          Align = alClient
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DataGridDblClick
          OnTitleClick = DataGridTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'SUBCUENTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIPCION'
              Width = 231
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NIF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMADB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMAHB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Saldo'
              Visible = True
            end>
        end
      end
      object TabData: TTabSheet
        Caption = 'Datos'
        ImageIndex = 1
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 653
          Height = 115
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label30: TLabel
            Left = 5
            Top = 39
            Width = 54
            Height = 13
            Caption = 'Descripci'#243'n'
          end
          object Label3: TLabel
            Left = 5
            Top = 17
            Width = 51
            Height = 13
            Caption = 'Subcuenta'
          end
          object Label4: TLabel
            Left = 5
            Top = 62
            Width = 67
            Height = 13
            Caption = 'Contrapartida'
          end
          object Label74: TLabel
            Left = 5
            Top = 86
            Width = 85
            Height = 13
            Caption = 'Subcta.Retenci'#243'n'
          end
          object EditDESCRIPCION: TDBEdit
            Left = 107
            Top = 35
            Width = 537
            Height = 21
            DataField = 'DESCRIPCION'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 51
            ParentFont = False
            TabOrder = 1
          end
          object EditSUBCUENTA: TDBEdit
            Left = 107
            Top = 13
            Width = 93
            Height = 21
            DataField = 'SUBCUENTA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 12
            ParentFont = False
            TabOrder = 0
          end
          object ComboBoxCONTRAPARTIDA: TDBLookupComboBox
            Left = 107
            Top = 58
            Width = 109
            Height = 21
            DataField = 'CONTRAPARTIDA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = DMContaRef.SSubCuentas
            ParentFont = False
            TabOrder = 2
          end
          object ComboBoxDS_CONTRAPARTIDA: TDBLookupComboBox
            Left = 215
            Top = 58
            Width = 430
            Height = 21
            DataField = 'CONTRAPARTIDA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = DMContaRef.SSubCuentas
            ParentFont = False
            TabOrder = 3
          end
          object CheckBoxOBSOLETO: TDBCheckBox
            Left = 562
            Top = 15
            Width = 78
            Height = 16
            TabStop = False
            Alignment = taLeftJustify
            Caption = 'Obsoleto'
            DataField = 'OBSOLETO'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object ComboBoxCD_SUBCTARETENCION: TDBLookupComboBox
            Left = 107
            Top = 82
            Width = 109
            Height = 21
            DataField = 'SUBCTARET'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = DMContaRef.SSubCuentas
            ParentFont = False
            TabOrder = 4
          end
          object ComboBoxDS_SUBCTARETENCION: TDBLookupComboBox
            Left = 215
            Top = 82
            Width = 430
            Height = 21
            DataField = 'SUBCTARET'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = DMContaRef.SSubCuentas
            ParentFont = False
            TabOrder = 5
          end
          object CheckBoxSubctaRet: TCheckBox
            Left = 272
            Top = 16
            Width = 217
            Height = 17
            Caption = 'Crear subcuenta retenci'#243'n ventas'
            TabOrder = 7
            Visible = False
          end
        end
        object GroupBox14: TGroupBox
          Left = 0
          Top = 115
          Width = 653
          Height = 175
          Align = alTop
          Caption = ' Datos Fiscales '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label37: TLabel
            Left = 19
            Top = 20
            Width = 29
            Height = 13
            Caption = 'N.I.F.'
          end
          object Label38: TLabel
            Left = 19
            Top = 122
            Width = 43
            Height = 13
            Caption = 'Provincia'
          end
          object Label36: TLabel
            Left = 547
            Top = 46
            Width = 12
            Height = 13
            Caption = 'N'#186
          end
          object Label40: TLabel
            Left = 19
            Top = 46
            Width = 43
            Height = 13
            Caption = 'Direcci'#243'n'
          end
          object Label41: TLabel
            Left = 19
            Top = 94
            Width = 55
            Height = 13
            Caption = 'Cod. Postal'
          end
          object Label42: TLabel
            Left = 219
            Top = 94
            Width = 45
            Height = 13
            Caption = 'Poblaci'#243'n'
          end
          object Label43: TLabel
            Left = 19
            Top = 149
            Width = 42
            Height = 13
            Caption = 'Tel'#233'fono'
          end
          object Label44: TLabel
            Left = 241
            Top = 149
            Width = 51
            Height = 13
            Caption = 'Tel'#233'fono 2'
          end
          object Label5: TLabel
            Left = 378
            Top = 122
            Width = 19
            Height = 13
            Caption = 'Pa'#237's'
          end
          object EditID_FISCAL: TDBEdit
            Left = 103
            Top = 16
            Width = 137
            Height = 21
            DataField = 'NIF'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object ComboBoxPROVINCIA: TDBLookupComboBox
            Left = 103
            Top = 118
            Width = 225
            Height = 21
            DataField = 'PROVINCIA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'PROVINCIA'
            ListField = 'NOMBRE'
            ListSource = DMRef.SProvinciasNom
            ParentFont = False
            TabOrder = 8
          end
          object EditDIRECCION: TDBEdit
            Left = 103
            Top = 42
            Width = 418
            Height = 21
            DataField = 'DIRECCION'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object EditCODPOSTAL: TDBEdit
            Left = 103
            Top = 90
            Width = 97
            Height = 21
            DataField = 'CODPOSTAL'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object EditTELEFONO: TDBEdit
            Left = 103
            Top = 145
            Width = 121
            Height = 21
            DataField = 'TELEFONO'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object EditTELEFONO2: TDBEdit
            Left = 313
            Top = 145
            Width = 121
            Height = 21
            DataField = 'FAX'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object CheckBoxPROFESIONAL: TDBCheckBox
            Left = 279
            Top = 18
            Width = 88
            Height = 17
            TabStop = False
            Alignment = taLeftJustify
            Caption = 'Profesional'
            DataField = 'PROFESIONAL'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object CheckBoxARRENDADOR: TDBCheckBox
            Left = 408
            Top = 18
            Width = 87
            Height = 17
            TabStop = False
            Alignment = taLeftJustify
            Caption = 'Arrendador'
            DataField = 'ARRENDADOR'
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
          object EditDIRECCION1: TDBEdit
            Left = 103
            Top = 63
            Width = 418
            Height = 21
            DataField = 'DIRECCION1'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object EditPOBLACION: TDBEdit
            Left = 279
            Top = 90
            Width = 361
            Height = 21
            DataField = 'POBLACION'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object ComboBoxPAIS: TDBLookupComboBox
            Left = 408
            Top = 118
            Width = 232
            Height = 21
            DataField = 'PAIS'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'PAIS'
            ListField = 'NOMBRE'
            ListSource = DMRef.SPaisNom
            ParentFont = False
            TabOrder = 9
          end
          object EditNUMERO: TDBEdit
            Left = 563
            Top = 42
            Width = 77
            Height = 21
            DataField = 'NUMERO'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object CheckBoxINTRA_UE: TDBCheckBox
            Left = 519
            Top = 18
            Width = 121
            Height = 16
            TabStop = False
            Alignment = taLeftJustify
            Caption = 'Intracomunitario'
            DataField = 'INTRACOMUNITARIO'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object GroupBoxVATType: TGroupBox
          Left = 0
          Top = 290
          Width = 653
          Height = 59
          Align = alTop
          Caption = ' Datos I.V.A.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnEnter = GroupBoxVATTypeEnter
          object Label46: TLabel
            Left = 103
            Top = 12
            Width = 67
            Height = 13
            Caption = 'Tipo de I.V.A.'
          end
          object Label52: TLabel
            Left = 482
            Top = 12
            Width = 43
            Height = 13
            Caption = '% I.V.A.'
          end
          object Label53: TLabel
            Left = 554
            Top = 12
            Width = 58
            Height = 13
            Caption = '% R. Equiv.'
          end
          object ComboBoxVATType: TDBLookupComboBox
            Left = 103
            Top = 27
            Width = 291
            Height = 21
            DataField = 'TIPOIVA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'TIPO'
            ListField = 'DESCRIPCION'
            ListSource = SVAT
            ParentFont = False
            TabOrder = 0
          end
          object EditIVA: TDBEdit
            Left = 482
            Top = 27
            Width = 59
            Height = 21
            DataField = 'IVA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object EditRE: TDBEdit
            Left = 554
            Top = 27
            Width = 59
            Height = 21
            DataField = 'RECARGO'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object GroupBox25: TGroupBox
          Left = 0
          Top = 349
          Width = 653
          Height = 55
          Align = alTop
          Caption = ' Forma de Pago '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label64: TLabel
            Left = 408
            Top = 12
            Width = 51
            Height = 13
            Caption = 'D'#237'a Pago 1'
          end
          object Label65: TLabel
            Left = 103
            Top = 12
            Width = 57
            Height = 13
            Caption = 'Forma Pago'
          end
          object Label66: TLabel
            Left = 482
            Top = 12
            Width = 51
            Height = 13
            Caption = 'D'#237'a Pago 2'
          end
          object Label71: TLabel
            Left = 554
            Top = 12
            Width = 51
            Height = 13
            Caption = 'D'#237'a Pago 3'
          end
          object EditDIAPAGO1: TDBEdit
            Left = 408
            Top = 27
            Width = 59
            Height = 21
            DataField = 'DIAPAGO1'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object ComboBoxCD_FORMAPAGO: TDBLookupComboBox
            Left = 16
            Top = 27
            Width = 80
            Height = 21
            DataField = 'FORMAPAGO'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'FORMAPAGO'
            ListField = 'FORMAPAGO'
            ListSource = DMRef.SFormaPago
            ParentFont = False
            TabOrder = 0
          end
          object ComboBoxFORMAPAGO: TDBLookupComboBox
            Left = 103
            Top = 27
            Width = 291
            Height = 21
            DataField = 'FORMAPAGO'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'FORMAPAGO'
            ListField = 'DESCRIBE'
            ListSource = DMRef.SFormaPago
            ParentFont = False
            TabOrder = 1
          end
          object EditDIAPAGO2: TDBEdit
            Left = 482
            Top = 27
            Width = 59
            Height = 21
            DataField = 'DIAPAGO2'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object EditDIAPAGO3: TDBEdit
            Left = 554
            Top = 27
            Width = 59
            Height = 21
            DataField = 'DIAPAGO3'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
      end
      object TabAcumulados: TTabSheet
        Caption = 'Acumulados'
        ImageIndex = 3
        object PageControlAcumulados: TPageControl
          Left = 0
          Top = 0
          Width = 653
          Height = 449
          ActivePage = TabCurrentYear
          Align = alClient
          TabOrder = 0
          object TabCurrentYear: TTabSheet
            Caption = 'Ejercicio Actual'
            object Label19: TLabel
              Left = 23
              Top = 314
              Width = 63
              Height = 13
              Caption = 'SUMA DEBE'
            end
            object Label20: TLabel
              Left = 340
              Top = 314
              Width = 71
              Height = 13
              Caption = 'SUMA HABER'
            end
            object GroupBox2: TGroupBox
              Left = 4
              Top = 17
              Width = 321
              Height = 276
              Caption = ' PRIMER SEMESTRE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label6: TLabel
                Left = 23
                Top = 59
                Width = 34
                Height = 13
                Caption = 'ENERO'
              end
              object Label7: TLabel
                Left = 23
                Top = 91
                Width = 46
                Height = 13
                Caption = 'FEBRERO'
              end
              object Label8: TLabel
                Left = 23
                Top = 123
                Width = 36
                Height = 13
                Caption = 'MARZO'
              end
              object Label9: TLabel
                Left = 23
                Top = 155
                Width = 29
                Height = 13
                Caption = 'ABRIL'
              end
              object Label10: TLabel
                Left = 23
                Top = 187
                Width = 29
                Height = 13
                Caption = 'MAYO'
              end
              object Label11: TLabel
                Left = 23
                Top = 219
                Width = 31
                Height = 13
                Caption = 'JUNIO'
              end
              object GroupBox3: TGroupBox
                Left = 83
                Top = 33
                Width = 102
                Height = 211
                Caption = ' DEBE '
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Edit01: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB01'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit02: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB02'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit03: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB03'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit04: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB04'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit05: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB05'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit06: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB06'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object GroupBox4: TGroupBox
                Left = 195
                Top = 33
                Width = 102
                Height = 211
                Caption = ' HABER '
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Edit07: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB01'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit08: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB02'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit09: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB03'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit10: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB04'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit11: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB05'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit12: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB06'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
            end
            object GroupBox5: TGroupBox
              Left = 328
              Top = 17
              Width = 321
              Height = 276
              Caption = ' SEGUNDO SEMESTRE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label13: TLabel
                Left = 12
                Top = 59
                Width = 29
                Height = 13
                Caption = 'JULIO'
              end
              object Label14: TLabel
                Left = 12
                Top = 91
                Width = 42
                Height = 13
                Caption = 'AGOSTO'
              end
              object Label15: TLabel
                Left = 12
                Top = 123
                Width = 61
                Height = 13
                Caption = 'SEPTIEMBRE'
              end
              object Label16: TLabel
                Left = 12
                Top = 155
                Width = 47
                Height = 13
                Caption = 'OCTUBRE'
              end
              object Label17: TLabel
                Left = 12
                Top = 187
                Width = 58
                Height = 13
                Caption = 'NOVIEMBRE'
              end
              object Label18: TLabel
                Left = 12
                Top = 219
                Width = 55
                Height = 13
                Caption = 'DICIEMBRE'
              end
              object GroupBox6: TGroupBox
                Left = 83
                Top = 33
                Width = 102
                Height = 211
                Caption = ' DEBE '
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Edit13: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB07'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit14: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB08'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit15: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB09'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit16: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB10'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit17: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB11'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit18: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUDB12'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object GroupBox7: TGroupBox
                Left = 195
                Top = 33
                Width = 102
                Height = 211
                Caption = ' HABER '
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Edit19: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB07'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit20: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB08'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit21: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB09'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit22: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB10'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit23: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB11'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit24: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ACUHB12'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
            end
            object Edit25: TDBEdit
              Left = 118
              Top = 311
              Width = 107
              Height = 19
              TabStop = False
              Ctl3D = False
              DataField = 'SUMADB'
              DataSource = SFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object Edit26: TDBEdit
              Left = 440
              Top = 311
              Width = 107
              Height = 19
              TabStop = False
              Ctl3D = False
              DataField = 'SUMAHB'
              DataSource = SFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
          end
          object TabPreviousYear: TTabSheet
            Caption = 'EjercicioAnterior'
            ImageIndex = 1
            object Label34: TLabel
              Left = 23
              Top = 314
              Width = 56
              Height = 13
              Caption = 'SUMA DEBE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 340
              Top = 314
              Width = 64
              Height = 13
              Caption = 'SUMA HABER'
              Font.Charset = ANSI_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object GroupBox8: TGroupBox
              Left = 4
              Top = 17
              Width = 321
              Height = 276
              Caption = ' PRIMER SEMESTRE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label21: TLabel
                Left = 23
                Top = 59
                Width = 34
                Height = 13
                Caption = 'ENERO'
              end
              object Label22: TLabel
                Left = 23
                Top = 91
                Width = 46
                Height = 13
                Caption = 'FEBRERO'
              end
              object Label23: TLabel
                Left = 23
                Top = 123
                Width = 36
                Height = 13
                Caption = 'MARZO'
              end
              object Label24: TLabel
                Left = 23
                Top = 155
                Width = 29
                Height = 13
                Caption = 'ABRIL'
              end
              object Label25: TLabel
                Left = 23
                Top = 187
                Width = 29
                Height = 13
                Caption = 'MAYO'
              end
              object Label26: TLabel
                Left = 23
                Top = 219
                Width = 31
                Height = 13
                Caption = 'JUNIO'
              end
              object GroupBox9: TGroupBox
                Left = 83
                Top = 33
                Width = 102
                Height = 211
                Caption = ' DEBE '
                Font.Charset = ANSI_CHARSET
                Font.Color = clOlive
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Edit27: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB01'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit28: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB02'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit29: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB03'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit30: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB04'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit31: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB05'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit32: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB06'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object GroupBox10: TGroupBox
                Left = 195
                Top = 33
                Width = 102
                Height = 211
                Caption = ' HABER '
                Font.Charset = ANSI_CHARSET
                Font.Color = clOlive
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Edit33: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB01'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit34: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB02'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit35: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB03'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit36: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB04'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit37: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB05'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit38: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB06'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
            end
            object GroupBox11: TGroupBox
              Left = 328
              Top = 17
              Width = 321
              Height = 276
              Caption = ' SEGUNDO SEMESTRE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label27: TLabel
                Left = 12
                Top = 59
                Width = 29
                Height = 13
                Caption = 'JULIO'
              end
              object Label28: TLabel
                Left = 12
                Top = 91
                Width = 42
                Height = 13
                Caption = 'AGOSTO'
              end
              object Label29: TLabel
                Left = 12
                Top = 123
                Width = 61
                Height = 13
                Caption = 'SEPTIEMBRE'
              end
              object Label31: TLabel
                Left = 12
                Top = 155
                Width = 47
                Height = 13
                Caption = 'OCTUBRE'
              end
              object Label32: TLabel
                Left = 12
                Top = 187
                Width = 58
                Height = 13
                Caption = 'NOVIEMBRE'
              end
              object Label33: TLabel
                Left = 12
                Top = 219
                Width = 55
                Height = 13
                Caption = 'DICIEMBRE'
              end
              object GroupBox12: TGroupBox
                Left = 83
                Top = 33
                Width = 102
                Height = 211
                Caption = ' DEBE '
                Font.Charset = ANSI_CHARSET
                Font.Color = clOlive
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Edit39: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB07'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit40: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB08'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit41: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB09'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit42: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB10'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit43: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB11'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit44: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTDB12'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object GroupBox13: TGroupBox
                Left = 195
                Top = 33
                Width = 102
                Height = 211
                Caption = ' HABER '
                Font.Charset = ANSI_CHARSET
                Font.Color = clOlive
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Edit45: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB07'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit46: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB08'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit47: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB09'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit48: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB10'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit49: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB11'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit50: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  TabStop = False
                  Ctl3D = False
                  DataField = 'ANTHB12'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
            end
            object Edit51: TDBEdit
              Left = 118
              Top = 311
              Width = 107
              Height = 19
              TabStop = False
              Ctl3D = False
              DataField = 'ANTDB'
              DataSource = SFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object Edit52: TDBEdit
              Left = 440
              Top = 311
              Width = 107
              Height = 19
              TabStop = False
              Ctl3D = False
              DataField = 'ANTHB'
              DataSource = SFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
          end
        end
      end
      object TabGraphics: TTabSheet
        Caption = 'Gr'#225'ficos'
        ImageIndex = 4
        object PageControlGraphics: TPageControl
          Left = 0
          Top = 0
          Width = 653
          Height = 449
          ActivePage = TabGraphicCurrentYear
          Align = alClient
          TabOrder = 0
          object TabGraphicCurrentYear: TTabSheet
            Caption = 'Ejercicio Actual'
            object ChartCurrentExercise: TChart
              Left = 0
              Top = 0
              Width = 645
              Height = 421
              Title.Text.Strings = (
                'TChart')
              Align = alClient
              TabOrder = 0
              DefaultCanvas = 'TGDIPlusCanvas'
              ColorPaletteIndex = 13
            end
          end
          object TabGraphicPreviousYear: TTabSheet
            Caption = 'Ejercicio Anterior'
            ImageIndex = 1
          end
          object TabGraphicComparativ: TTabSheet
            Caption = 'Compartivo'
            ImageIndex = 2
          end
        end
      end
      object TabLetters: TTabSheet
        Caption = 'Cartas'
        ImageIndex = 5
        object LBPago: TLabel
          Left = 13
          Top = 309
          Width = 162
          Height = 13
          Caption = 'Seleccione la subcuenta de pago '
        end
        object LBCheque: TLabel
          Left = 13
          Top = 352
          Width = 79
          Height = 13
          Caption = 'N'#250'mero cheque '
        end
        object LBCtoD: TLabel
          Left = 13
          Top = 377
          Width = 78
          Height = 13
          Caption = 'Concepto Debe '
        end
        object LBCtoH: TLabel
          Left = 325
          Top = 377
          Width = 81
          Height = 13
          Caption = 'Concepto Haber '
        end
        object LbFechaAsiento: TLabel
          Left = 274
          Top = 48
          Width = 68
          Height = 13
          Caption = 'Fecha Asiento'
        end
        object Label67: TLabel
          Left = 12
          Top = 48
          Width = 31
          Height = 13
          Caption = 'Desde'
        end
        object Label68: TLabel
          Left = 126
          Top = 48
          Width = 28
          Height = 13
          Caption = 'Hasta'
        end
        object BtnFilterLetters: TSpeedButton
          Left = 239
          Top = 60
          Width = 27
          Height = 25
          Cursor = crHandPoint
          Hint = 'Filtrar informaci'#243'n'
          Flat = True
          Glyph.Data = {
            EE070000424DEE070000000000003600000028000000190000001A0000000100
            180000000000B8070000120B0000120B00000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C00000000000000000000000
            00000000000000000000000000000000000000000000000000000000000000C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
            C0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C000000000000000C0C0C0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C000000000000000000000C0C0C0000000000000FF
            FFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF000000
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000000000
            0000C0C0C0000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0FFFFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
            00000000000000000000C0C0C000C0C0C0000000000000FFFFFFC0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF000000000000C0C0C0C0C0
            C0C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C000C0C0C0000000
            000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080800000000000000000
            00000000000000808080C0C0C0C0C0C0000000000000000000000000C0C0C0C0
            C0C0C0C0C000C0C0C0000000000000FFFFFFC0C0C0C0C0C0C0C0C00000000000
            00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
            0000000000C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000000000FFFFFFC0C0
            C0C0C0C0C0C0C0000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
            C0000000000000FFFFFFC0C0C0C0C0C0000000808080808080FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF000000808080808080000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C000C0C0C0000000000000FFFFFF808080808080000000FF
            FF00FFFF00000000000000000000000000FFFFFFFFFFFF000000C0C0C0C0C0C0
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000000000FF
            FFFF808080808080000000FFFF00FFFF00000000000000000000000000FFFFFF
            FFFFFF000000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0000000000000FFFFFF000000000000FFFF00FFFFFFFFFFFFFFFF00
            FFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000000000FFFFFF000000000000
            FFFFFF000000000000000000000000000000000000FFFFFFFFFFFF000000C0C0
            C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000
            000000FFFFFF000000000000FFFFFF0000000000000000000000000000000000
            00FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C000C0C0C0000000000000000000000000000000FFFF00FFFFFFFFFF
            FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C000
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C08080
            8080808000000000000000000000000000000000000000000000000000000000
            0000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
            C0C0C0C0C0C0C0C0C0C080808080808000000000000000000000000000000000
            0000000000000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000
            0000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0808080000000000000000000000000000000808080C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
          Layout = blGlyphRight
          OnClick = BtnFilterLettersClick
        end
        object SpeedButton1: TSpeedButton
          Left = 366
          Top = 62
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
            777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
            79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
            777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
            79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
            CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
          NumGlyphs = 2
          Visible = False
        end
        object SpeedButton2: TSpeedButton
          Left = 102
          Top = 63
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
            777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
            79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
            777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
            79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
            CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
          NumGlyphs = 2
          Visible = False
        end
        object SpeedButton3: TSpeedButton
          Left = 215
          Top = 63
          Width = 23
          Height = 22
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
            777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
            79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
            7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
            777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
            79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
            CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
          NumGlyphs = 2
          Visible = False
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 653
          Height = 41
          Align = alTop
          Color = 14275008
          TabOrder = 0
          object LabelCartas: TLabel
            Left = 11
            Top = 10
            Width = 390
            Height = 20
            AutoSize = False
            Caption = 'Cartas Proveedor / Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
        end
        object EditNUMCHEQUE: TDBEdit
          Left = 112
          Top = 348
          Width = 202
          Height = 21
          DataField = 'CHEQUE'
          DataSource = SFiltroCartas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ComboBoxDS_SCTABANCO: TDBLookupComboBox
          Left = 112
          Top = 323
          Width = 273
          Height = 22
          DataField = 'Subcuenta'
          DataSource = SFiltroCartas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DMContaRef.SSubCTABanco
          ParentFont = False
          TabOrder = 2
        end
        object ComboBoxDS_CONCEPTO_DEBE: TDBLookupComboBox
          Left = 166
          Top = 373
          Width = 148
          Height = 22
          DataField = 'ConceptoD'
          DataSource = SFiltroCartas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ComboBoxDS_CONCEPTO_HABER: TDBLookupComboBox
          Left = 470
          Top = 373
          Width = 148
          Height = 22
          DataField = 'ConceptoH'
          DataSource = SFiltroCartas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object ComboBoxCD_CONCEPTO_DEBE: TDBLookupComboBox
          Left = 112
          Top = 373
          Width = 55
          Height = 22
          DataField = 'ConceptoD'
          DataSource = SFiltroCartas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ComboBoxCD_CONCEPTO_HABER: TDBLookupComboBox
          Left = 415
          Top = 373
          Width = 55
          Height = 22
          DataField = 'ConceptoH'
          DataSource = SFiltroCartas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ComboBoxCD_SCTABANCO: TDBLookupComboBox
          Left = 13
          Top = 323
          Width = 100
          Height = 22
          DataField = 'Subcuenta'
          DataSource = SFiltroCartas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DMContaRef.SSubCTABanco
          ParentFont = False
          TabOrder = 7
        end
        object GroupBox24: TGroupBox
          Left = 488
          Top = 312
          Width = 129
          Height = 49
          Caption = 'Total Importe '
          TabOrder = 8
          object EditTotalImporte: TEdit
            Left = 8
            Top = 19
            Width = 113
            Height = 21
            Cursor = crIBeam
            TabStop = False
            TabOrder = 0
          end
        end
        object BtnLetter: TButton
          Left = 510
          Top = 58
          Width = 123
          Height = 25
          Cursor = crHandPoint
          Caption = '&Imprimir Carta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = BtnLetterClick
        end
        object BtnGenera: TButton
          Left = 393
          Top = 58
          Width = 112
          Height = 25
          Cursor = crHandPoint
          Caption = '&Generar Asiento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = BtnGeneraClick
        end
        object EditFechaHasta: TDBEdit
          Left = 126
          Top = 62
          Width = 89
          Height = 21
          DataField = 'FECHAHASTA'
          DataSource = SFiltroCartas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object EditFechaDesde: TDBEdit
          Left = 12
          Top = 62
          Width = 89
          Height = 21
          DataField = 'FECHADESDE'
          DataSource = SFiltroCartas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object EditFechaAsiento: TDBEdit
          Left = 274
          Top = 62
          Width = 89
          Height = 21
          DataField = 'FECHAASIENTO'
          DataSource = SFiltroCartas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object GridPago: TDBGrid
          Left = 13
          Top = 91
          Width = 606
          Height = 211
          Color = 15596540
          DataSource = SDiario
          FixedColor = 10841401
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 14
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ASIENTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CONCEPTOS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DescApunte'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEBEHABER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Visible = True
            end>
        end
      end
      object TabAmortizations: TTabSheet
        Caption = 'Amortizaciones'
        ImageIndex = 6
        object GroupBox15: TGroupBox
          Left = 0
          Top = 0
          Width = 653
          Height = 449
          Align = alClient
          TabOrder = 0
          object GroupBox16: TGroupBox
            Left = 16
            Top = 11
            Width = 177
            Height = 152
            Caption = ' Fechas '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label39: TLabel
              Left = 5
              Top = 24
              Width = 40
              Height = 13
              Caption = 'Compra '
            end
            object Label45: TLabel
              Left = 5
              Top = 55
              Width = 25
              Height = 13
              Caption = 'Inicio'
            end
            object Label47: TLabel
              Left = 5
              Top = 84
              Width = 53
              Height = 13
              Caption = 'Ult. Amort.'
            end
            object Label48: TLabel
              Left = 5
              Top = 116
              Width = 21
              Height = 13
              Caption = 'Baja'
            end
            object SpeedButton4: TSpeedButton
              Left = 154
              Top = 22
              Width = 23
              Height = 22
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
                7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
                777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
                79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
                7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
                777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
                79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
                CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
              NumGlyphs = 2
              Visible = False
            end
            object SpeedButton5: TSpeedButton
              Left = 154
              Top = 54
              Width = 23
              Height = 22
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
                7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
                777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
                79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
                7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
                777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
                79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
                CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
              NumGlyphs = 2
              Visible = False
            end
            object SpeedButton6: TSpeedButton
              Left = 154
              Top = 82
              Width = 23
              Height = 22
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
                7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
                777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
                79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
                7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
                777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
                79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
                CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
              NumGlyphs = 2
              Visible = False
            end
            object SpeedButton7: TSpeedButton
              Left = 154
              Top = 113
              Width = 23
              Height = 22
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
                7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
                777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
                79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
                7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
                777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
                79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
                CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
              NumGlyphs = 2
              Visible = False
            end
            object EditFCOMPRA: TDBEdit
              Left = 68
              Top = 21
              Width = 89
              Height = 21
              DataField = 'FCOMPRA'
              DataSource = SAmortiza
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object EditFINICIO: TDBEdit
              Left = 68
              Top = 52
              Width = 89
              Height = 21
              DataField = 'FINICIO'
              DataSource = SAmortiza
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object EditFULTAMOR: TDBEdit
              Left = 68
              Top = 81
              Width = 89
              Height = 21
              DataField = 'FULTAMOR'
              DataSource = SAmortiza
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object EditFBAJA: TDBEdit
              Left = 68
              Top = 113
              Width = 89
              Height = 21
              DataField = 'FBAJA'
              DataSource = SAmortiza
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object GroupBox17: TGroupBox
            Left = 200
            Top = 10
            Width = 433
            Height = 76
            HelpContext = 101
            Caption = ' M'#233'todo lineal de amortizaci'#243'n '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label49: TLabel
              Left = 319
              Top = 22
              Width = 30
              Height = 13
              Caption = 'Meses'
            end
            object RadioGroupPERIODO: TDBRadioGroup
              Left = 16
              Top = 15
              Width = 265
              Height = 54
              HelpContext = 102
              Caption = ' Cuota '
              Columns = 3
              DataField = 'PERIODO'
              DataSource = SAmortiza
              Items.Strings = (
                'Mensual'
                'Trimestral'
                'Anual')
              TabOrder = 0
              Values.Strings = (
                'M'
                'T'
                'A')
            end
            object EditANUAL: TDBEdit
              Left = 317
              Top = 38
              Width = 45
              Height = 22
              HelpContext = 103
              DataField = 'ANUAL'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object GroupBox18: TGroupBox
            Left = 48
            Top = 166
            Width = 545
            Height = 106
            HelpContext = 107
            Caption = ' Datos de contabilizaci'#243'n (Subcuenta y Cta. Anal'#237'tica)  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object Label50: TLabel
              Left = 16
              Top = 82
              Width = 64
              Height = 13
              Caption = 'Cta. Anal'#237'tica'
            end
            object Label51: TLabel
              Left = 16
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Gasto'
            end
            object Label54: TLabel
              Left = 16
              Top = 54
              Width = 61
              Height = 13
              Caption = 'Amortizaci'#243'n'
            end
            object ComboBoxCD_CENTROCOSTE: TDBLookupComboBox
              Left = 109
              Top = 77
              Width = 108
              Height = 22
              HelpContext = 110
              DataField = 'CENTROCOSTE'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'CUENTA'
              ListField = 'CUENTA'
              ListSource = DMRef.SAnaliticas
              ParentFont = False
              TabOrder = 4
            end
            object ComboBoxDS_CENTROCOSTE: TDBLookupComboBox
              Left = 216
              Top = 77
              Width = 290
              Height = 22
              HelpContext = 110
              DataField = 'CENTROCOSTE'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'CUENTA'
              ListField = 'NOMBRE'
              ListSource = DMRef.SAnaliticas
              ParentFont = False
              TabOrder = 5
            end
            object ComboBoxCD_SUBGASTO: TDBLookupComboBox
              Left = 109
              Top = 22
              Width = 108
              Height = 22
              HelpContext = 108
              DataField = 'SUBGASTO'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = DMContaRef.SSubCTAGastos
              ParentFont = False
              TabOrder = 0
            end
            object ComboBoxDS_SUBGASTO: TDBLookupComboBox
              Left = 216
              Top = 22
              Width = 290
              Height = 22
              HelpContext = 108
              DataField = 'SUBGASTO'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = DMContaRef.SSubCTAGastos
              ParentFont = False
              TabOrder = 1
            end
            object ComboBoxCD_SUBAMOR: TDBLookupComboBox
              Left = 109
              Top = 49
              Width = 108
              Height = 22
              HelpContext = 109
              DataField = 'SUBAMOR'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = DMContaRef.SSubCTAAmort
              ParentFont = False
              TabOrder = 2
            end
            object ComboBoxDS_SUBAMOR: TDBLookupComboBox
              Left = 216
              Top = 49
              Width = 290
              Height = 22
              HelpContext = 109
              DataField = 'SUBAMOR'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = DMContaRef.SSubCTAAmort
              ParentFont = False
              TabOrder = 3
            end
          end
          object GroupBox19: TGroupBox
            Left = 200
            Top = 87
            Width = 433
            Height = 76
            HelpContext = 104
            Caption = ' Datos de la Factura '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Label55: TLabel
              Left = 8
              Top = 25
              Width = 50
              Height = 13
              Caption = 'Proveedor'
            end
            object Label56: TLabel
              Left = 8
              Top = 53
              Width = 104
              Height = 13
              Caption = 'N'#250'mero de la factura '
            end
            object ComboBoxCD_PROVEEDOR: TDBLookupComboBox
              Left = 71
              Top = 21
              Width = 99
              Height = 22
              HelpContext = 105
              DataField = 'PROVEEDOR'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = DMContaRef.SSubCTAProveedores
              ParentFont = False
              TabOrder = 0
            end
            object ComboBoxDS_PROVEEDOR: TDBLookupComboBox
              Left = 170
              Top = 21
              Width = 255
              Height = 22
              HelpContext = 105
              DataField = 'PROVEEDOR'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = DMContaRef.SSubCTAProveedores
              ParentFont = False
              TabOrder = 1
            end
            object EditFACTURA: TDBEdit
              Left = 131
              Top = 49
              Width = 158
              Height = 22
              HelpContext = 106
              DataField = 'FACTURA'
              DataSource = SAmortiza
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
          object GroupBox20: TGroupBox
            Left = 16
            Top = 271
            Width = 617
            Height = 110
            Caption = ' Importes '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object GroupBox21: TGroupBox
              Left = 8
              Top = 14
              Width = 195
              Height = 85
              Caption = ' Valor '
              TabOrder = 0
              object Label57: TLabel
                Left = 16
                Top = 16
                Width = 37
                Height = 13
                Caption = 'Compra'
              end
              object Label58: TLabel
                Left = 16
                Top = 40
                Width = 40
                Height = 13
                Caption = 'Residual'
              end
              object Label59: TLabel
                Left = 16
                Top = 61
                Width = 55
                Height = 13
                Caption = 'A amortizar'
              end
              object EditVCOMPRA: TDBEdit
                Left = 83
                Top = 16
                Width = 90
                Height = 20
                HelpContext = 111
                AutoSize = False
                DataField = 'VCOMPRA'
                DataSource = SAmortiza
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = CalculoImportesAmortizaciones
              end
              object EditVRESIDUAL: TDBEdit
                Left = 83
                Top = 37
                Width = 90
                Height = 20
                HelpContext = 112
                AutoSize = False
                DataField = 'VRESIDUAL'
                DataSource = SAmortiza
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnExit = CalculoImportesAmortizaciones
              end
              object EditVAMOR: TDBEdit
                Left = 83
                Top = 60
                Width = 90
                Height = 20
                HelpContext = 113
                AutoSize = False
                DataField = 'VAMOR'
                DataSource = SAmortiza
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
            end
            object GroupBox22: TGroupBox
              Left = 216
              Top = 14
              Width = 185
              Height = 85
              Caption = ' Principio Ejercicio '
              TabOrder = 1
              object Label60: TLabel
                Left = 16
                Top = 29
                Width = 54
                Height = 13
                Caption = 'Amortizado'
              end
              object Label61: TLabel
                Left = 16
                Top = 54
                Width = 55
                Height = 13
                Caption = 'A amortizar'
              end
              object EditVEJPINICIO: TDBEdit
                Left = 88
                Top = 25
                Width = 90
                Height = 20
                HelpContext = 114
                AutoSize = False
                DataField = 'VEJPINICIO'
                DataSource = SAmortiza
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = CalculoImportesAmortizaciones
              end
              object EditVEJPAMOR: TDBEdit
                Left = 88
                Top = 51
                Width = 90
                Height = 20
                HelpContext = 115
                AutoSize = False
                DataField = 'VEJPAMOR'
                DataSource = SAmortiza
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
            object GroupBox23: TGroupBox
              Left = 418
              Top = 14
              Width = 185
              Height = 85
              Caption = ' Ejercicio Actual '
              TabOrder = 2
              object Label62: TLabel
                Left = 16
                Top = 28
                Width = 54
                Height = 13
                Caption = 'Amortizado'
              end
              object Label63: TLabel
                Left = 16
                Top = 53
                Width = 55
                Height = 13
                Caption = 'A amortizar'
              end
              object EditVEJAINICIO: TDBEdit
                Left = 87
                Top = 24
                Width = 90
                Height = 20
                HelpContext = 116
                AutoSize = False
                DataField = 'VEJAINICIO'
                DataSource = SAmortiza
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnExit = CalculoImportesAmortizaciones
              end
              object EditVEJAAMOR: TDBEdit
                Left = 87
                Top = 50
                Width = 90
                Height = 20
                HelpContext = 117
                AutoSize = False
                DataField = 'VEJAAMOR'
                DataSource = SAmortiza
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
            end
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 39
    Align = alTop
    Color = 14275008
    TabOrder = 1
    object Label2: TLabel
      Left = 11
      Top = 6
      Width = 150
      Height = 20
      AutoSize = False
      Caption = 'Archivo de Subcuentas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 11
      Top = 28
      Width = 697
      Height = 1
      Pen.Color = clNavy
    end
    object DBText1: TDBText
      Left = 261
      Top = 6
      Width = 417
      Height = 20
      DataField = 'DESCRIPCION'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 173
      Top = 6
      Width = 81
      Height = 20
      Alignment = taCenter
      DataField = 'SUBCUENTA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 311
    Top = 189
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    AfterEdit = QFicheroAfterEdit
    AfterScroll = QFicheroAfterScroll
    BeforeOpen = QFicheroBeforeOpen
    OnCalcFields = QFicheroCalcFields
    OnNewRecord = QFicheroNewRecord
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCTAS'
      
        '  (PRESTOT                        ,PRES12                       ' +
        '  ,PRES11                         ,PRES10                       ' +
        '  ,PRES09                         ,PRES08                       ' +
        '  ,PRES07                         ,PRES06                       ' +
        '  ,PRES05                         ,PRES04                       ' +
        '  ,PRES03                         ,PRES02                       ' +
        '  ,PRES01                         ,RECARGO                      ' +
        '  ,IVA                            ,ANTDB                        ' +
        '  ,ANTHB                          ,ANTHB12                      ' +
        '  ,ANTHB11                        ,ANTHB10                      ' +
        '  ,ANTHB09                        ,ANTHB08                      ' +
        '  ,ANTHB07                        ,ANTHB06                      ' +
        '  ,ANTHB05                        ,ANTHB04                      ' +
        '  ,ANTHB03                        ,ANTHB02                      ' +
        '  ,ANTHB01                        ,ANTDB12                      ' +
        '  ,ANTDB11                        ,ANTDB10                      ' +
        '  ,ANTDB09                        ,ANTDB08                      ' +
        '  ,ANTDB07                        ,ANTDB06                      ' +
        '  ,ANTDB05                        ,ANTDB04                      ' +
        '  ,ANTDB03                        ,ANTDB02                      ' +
        '  ,ANTDB01                        ,ACUHB12                      ' +
        '  ,ACUHB11                        ,ACUHB10                      ' +
        '  ,ACUHB09                        ,ACUHB08                      ' +
        '  ,ACUHB07                        ,ACUHB06                      ' +
        '  ,ACUHB05                        ,ACUHB04                      ' +
        '  ,ACUHB03                        ,ACUHB02                      ' +
        '  ,ACUHB01                        ,ACUDB12                      ' +
        '  ,ACUDB11                        ,ACUDB10                      ' +
        '  ,ACUDB09                        ,ACUDB08                      ' +
        '  ,ACUDB07                        ,ACUDB06                      ' +
        '  ,ACUDB05                        ,ACUDB04                      ' +
        '  ,ACUDB03                        ,ACUDB02                      ' +
        '  ,ACUDB01                        ,SUMAHB                       ' +
        '  ,SUMADB                         ,ABREVIATURA                  ' +
        '  ,CONTRAPARTIDA                  ,SUBCUENTA                    ' +
        '  ,NUMERO                         ,CODPOSTAL                    ' +
        '  ,DIAPAGO3                       ,DIAPAGO2                     ' +
        '  ,DIAPAGO1                       ,NIF                          ' +
        '  ,FAX                            ,TELEFONO                     ' +
        '  ,DESCRIPCION                    ,PROVINCIA                    ' +
        '  ,POBLACION                      ,PAIS                         ' +
        '  ,INTRACOMUNITARIO               ,FORMAPAGO                    ' +
        '  ,DIRECCION1                     ,PROFESIONAL                  ' +
        '  ,ARRENDADOR                     ,TIPOIVA                      ' +
        '  ,DIRECCION                      ,OBSOLETO                     ' +
        '  ,SUBCTARET                      )'
      'VALUES'
      
        '  (:PRESTOT                        ,:PRES12                     ' +
        '    ,:PRES11                         ,:PRES10                   ' +
        '      ,:PRES09                         ,:PRES08                 ' +
        '        ,:PRES07                         ,:PRES06               ' +
        '          ,:PRES05                         ,:PRES04             ' +
        '            ,:PRES03                         ,:PRES02           ' +
        '              ,:PRES01                         ,:RECARGO        ' +
        '                ,:IVA                            ,:ANTDB        ' +
        '                  ,:ANTHB                          ,:ANTHB12    ' +
        '                    ,:ANTHB11                        ,:ANTHB10  ' +
        '                      ,:ANTHB09                        ,:ANTHB08' +
        '                        ,:ANTHB07                        ,:ANTHB' +
        '06                        ,:ANTHB05                        ,:ANT' +
        'HB04                        ,:ANTHB03                        ,:A' +
        'NTHB02                        ,:ANTHB01                        ,' +
        ':ANTDB12                        ,:ANTDB11                       ' +
        ' ,:ANTDB10                        ,:ANTDB09                     ' +
        '   ,:ANTDB08                        ,:ANTDB07                   ' +
        '     ,:ANTDB06                        ,:ANTDB05                 ' +
        '       ,:ANTDB04                        ,:ANTDB03               ' +
        '         ,:ANTDB02                        ,:ANTDB01             ' +
        '           ,:ACUHB12                        ,:ACUHB11           ' +
        '             ,:ACUHB10                        ,:ACUHB09         ' +
        '               ,:ACUHB08                        ,:ACUHB07       ' +
        '                 ,:ACUHB06                        ,:ACUHB05     ' +
        '                   ,:ACUHB04                        ,:ACUHB03   ' +
        '                     ,:ACUHB02                        ,:ACUHB01 ' +
        '                       ,:ACUDB12                        ,:ACUDB1' +
        '1                        ,:ACUDB10                        ,:ACUD' +
        'B09                        ,:ACUDB08                        ,:AC' +
        'UDB07                        ,:ACUDB06                        ,:' +
        'ACUDB05                        ,:ACUDB04                        ' +
        ',:ACUDB03                        ,:ACUDB02                      ' +
        '  ,:ACUDB01                        ,:SUMAHB                     ' +
        '    ,:SUMADB                         ,:ABREVIATURA              ' +
        '      ,:CONTRAPARTIDA                  ,:SUBCUENTA              ' +
        '        ,:NUMERO                         ,:CODPOSTAL            ' +
        '          ,:DIAPAGO3                       ,:DIAPAGO2           ' +
        '            ,:DIAPAGO1                       ,:NIF              ' +
        '              ,:FAX                            ,:TELEFONO       ' +
        '                ,:DESCRIPCION                    ,:PROVINCIA    ' +
        '                  ,:POBLACION                      ,:PAIS       ' +
        '                    ,:INTRACOMUNITARIO               ,:FORMAPAGO' +
        '                      ,:DIRECCION1                     ,:PROFESI' +
        'ONAL                    ,:ARRENDADOR                     ,:TIPOI' +
        'VA                        ,:DIRECCION                      ,:OBS' +
        'OLETO                       ,:SUBCTARET                      )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM SUBCTAS')
    ModifySQL.Strings = (
      'UPDATE SUBCTAS'
      'SET'
      
        '  PRESTOT                        =:PRESTOT                      ' +
        '   '
      
        '  ,PRES12                         =:PRES12                      ' +
        '    '
      
        '  ,PRES11                         =:PRES11                      ' +
        '    '
      
        '  ,PRES10                         =:PRES10                      ' +
        '    '
      
        '  ,PRES09                         =:PRES09                      ' +
        '    '
      
        '  ,PRES08                         =:PRES08                      ' +
        '    '
      
        '  ,PRES07                         =:PRES07                      ' +
        '    '
      
        '  ,PRES06                         =:PRES06                      ' +
        '    '
      
        '  ,PRES05                         =:PRES05                      ' +
        '    '
      
        '  ,PRES04                         =:PRES04                      ' +
        '    '
      
        '  ,PRES03                         =:PRES03                      ' +
        '    '
      
        '  ,PRES02                         =:PRES02                      ' +
        '    '
      
        '  ,PRES01                         =:PRES01                      ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,ANTDB                          =:ANTDB                       ' +
        '    '
      
        '  ,ANTHB                          =:ANTHB                       ' +
        '    '
      
        '  ,ANTHB12                        =:ANTHB12                     ' +
        '    '
      
        '  ,ANTHB11                        =:ANTHB11                     ' +
        '    '
      
        '  ,ANTHB10                        =:ANTHB10                     ' +
        '    '
      
        '  ,ANTHB09                        =:ANTHB09                     ' +
        '    '
      
        '  ,ANTHB08                        =:ANTHB08                     ' +
        '    '
      
        '  ,ANTHB07                        =:ANTHB07                     ' +
        '    '
      
        '  ,ANTHB06                        =:ANTHB06                     ' +
        '    '
      
        '  ,ANTHB05                        =:ANTHB05                     ' +
        '    '
      
        '  ,ANTHB04                        =:ANTHB04                     ' +
        '    '
      
        '  ,ANTHB03                        =:ANTHB03                     ' +
        '    '
      
        '  ,ANTHB02                        =:ANTHB02                     ' +
        '    '
      
        '  ,ANTHB01                        =:ANTHB01                     ' +
        '    '
      
        '  ,ANTDB12                        =:ANTDB12                     ' +
        '    '
      
        '  ,ANTDB11                        =:ANTDB11                     ' +
        '    '
      
        '  ,ANTDB10                        =:ANTDB10                     ' +
        '    '
      
        '  ,ANTDB09                        =:ANTDB09                     ' +
        '    '
      
        '  ,ANTDB08                        =:ANTDB08                     ' +
        '    '
      
        '  ,ANTDB07                        =:ANTDB07                     ' +
        '    '
      
        '  ,ANTDB06                        =:ANTDB06                     ' +
        '    '
      
        '  ,ANTDB05                        =:ANTDB05                     ' +
        '    '
      
        '  ,ANTDB04                        =:ANTDB04                     ' +
        '    '
      
        '  ,ANTDB03                        =:ANTDB03                     ' +
        '    '
      
        '  ,ANTDB02                        =:ANTDB02                     ' +
        '    '
      
        '  ,ANTDB01                        =:ANTDB01                     ' +
        '    '
      
        '  ,ACUHB12                        =:ACUHB12                     ' +
        '    '
      
        '  ,ACUHB11                        =:ACUHB11                     ' +
        '    '
      
        '  ,ACUHB10                        =:ACUHB10                     ' +
        '    '
      
        '  ,ACUHB09                        =:ACUHB09                     ' +
        '    '
      
        '  ,ACUHB08                        =:ACUHB08                     ' +
        '    '
      
        '  ,ACUHB07                        =:ACUHB07                     ' +
        '    '
      
        '  ,ACUHB06                        =:ACUHB06                     ' +
        '    '
      
        '  ,ACUHB05                        =:ACUHB05                     ' +
        '    '
      
        '  ,ACUHB04                        =:ACUHB04                     ' +
        '    '
      
        '  ,ACUHB03                        =:ACUHB03                     ' +
        '    '
      
        '  ,ACUHB02                        =:ACUHB02                     ' +
        '    '
      
        '  ,ACUHB01                        =:ACUHB01                     ' +
        '    '
      
        '  ,ACUDB12                        =:ACUDB12                     ' +
        '    '
      
        '  ,ACUDB11                        =:ACUDB11                     ' +
        '    '
      
        '  ,ACUDB10                        =:ACUDB10                     ' +
        '    '
      
        '  ,ACUDB09                        =:ACUDB09                     ' +
        '    '
      
        '  ,ACUDB08                        =:ACUDB08                     ' +
        '    '
      
        '  ,ACUDB07                        =:ACUDB07                     ' +
        '    '
      
        '  ,ACUDB06                        =:ACUDB06                     ' +
        '    '
      
        '  ,ACUDB05                        =:ACUDB05                     ' +
        '    '
      
        '  ,ACUDB04                        =:ACUDB04                     ' +
        '    '
      
        '  ,ACUDB03                        =:ACUDB03                     ' +
        '    '
      
        '  ,ACUDB02                        =:ACUDB02                     ' +
        '    '
      
        '  ,ACUDB01                        =:ACUDB01                     ' +
        '    '
      
        '  ,SUMAHB                         =:SUMAHB                      ' +
        '    '
      
        '  ,SUMADB                         =:SUMADB                      ' +
        '    '
      
        '  ,ABREVIATURA                    =:ABREVIATURA                 ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,DIAPAGO3                       =:DIAPAGO3                    ' +
        '    '
      
        '  ,DIAPAGO2                       =:DIAPAGO2                    ' +
        '    '
      
        '  ,DIAPAGO1                       =:DIAPAGO1                    ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PAIS                           =:PAIS                        ' +
        '    '
      
        '  ,INTRACOMUNITARIO               =:INTRACOMUNITARIO            ' +
        '    '
      
        '  ,FORMAPAGO                      =:FORMAPAGO                   ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,PROFESIONAL                    =:PROFESIONAL                 ' +
        '    '
      
        '  ,ARRENDADOR                     =:ARRENDADOR                  ' +
        '    '
      
        '  ,TIPOIVA                        =:TIPOIVA                     ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,OBSOLETO                       =:OBSOLETO                    ' +
        '    '
      
        '  ,SUBCTARET                      =:SUBCTARET                   ' +
        '    '
      ','
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   '
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    ParamCheck = True
    UniDirectional = False
    Left = 239
    Top = 188
    object QFicheroSUBCUENTA: TIBStringField
      DisplayWidth = 12
      FieldName = 'SUBCUENTA'
      Origin = 'SUBCTAS.SUBCUENTA'
      Required = True
      Size = 10
    end
    object QFicheroDESCRIPCION: TIBStringField
      DisplayWidth = 51
      FieldName = 'DESCRIPCION'
      Origin = 'SUBCTAS.DESCRIPCION'
      Size = 80
    end
    object QFicheroSUMADB: TFloatField
      DisplayWidth = 13
      FieldName = 'SUMADB'
      Origin = 'SUBCTAS.SUMADB'
      DisplayFormat = '###,###,###,##0.#0'
    end
    object QFicheroSUMAHB: TFloatField
      DisplayWidth = 13
      FieldName = 'SUMAHB'
      Origin = 'SUBCTAS.SUMAHB'
      DisplayFormat = '###,###,###,##0.#0'
    end
    object QFicheroSaldo: TFloatField
      DisplayLabel = 'SALDO'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      DisplayFormat = '###,###,###,##0.#0'
      Calculated = True
    end
    object QFicheroACUDB01: TFloatField
      FieldName = 'ACUDB01'
      Origin = 'SUBCTAS.ACUDB01'
      Visible = False
    end
    object QFicheroACUDB02: TFloatField
      FieldName = 'ACUDB02'
      Origin = 'SUBCTAS.ACUDB02'
      Visible = False
    end
    object QFicheroACUDB03: TFloatField
      FieldName = 'ACUDB03'
      Origin = 'SUBCTAS.ACUDB03'
      Visible = False
    end
    object QFicheroACUDB04: TFloatField
      FieldName = 'ACUDB04'
      Origin = 'SUBCTAS.ACUDB04'
      Visible = False
    end
    object QFicheroACUDB05: TFloatField
      FieldName = 'ACUDB05'
      Origin = 'SUBCTAS.ACUDB05'
      Visible = False
    end
    object QFicheroACUDB06: TFloatField
      FieldName = 'ACUDB06'
      Origin = 'SUBCTAS.ACUDB06'
      Visible = False
    end
    object QFicheroACUDB07: TFloatField
      FieldName = 'ACUDB07'
      Origin = 'SUBCTAS.ACUDB07'
      Visible = False
    end
    object QFicheroACUDB08: TFloatField
      FieldName = 'ACUDB08'
      Origin = 'SUBCTAS.ACUDB08'
      Visible = False
    end
    object QFicheroACUDB09: TFloatField
      FieldName = 'ACUDB09'
      Origin = 'SUBCTAS.ACUDB09'
      Visible = False
    end
    object QFicheroACUDB10: TFloatField
      FieldName = 'ACUDB10'
      Origin = 'SUBCTAS.ACUDB10'
      Visible = False
    end
    object QFicheroACUDB11: TFloatField
      FieldName = 'ACUDB11'
      Origin = 'SUBCTAS.ACUDB11'
      Visible = False
    end
    object QFicheroACUDB12: TFloatField
      FieldName = 'ACUDB12'
      Origin = 'SUBCTAS.ACUDB12'
      Visible = False
    end
    object QFicheroACUHB01: TFloatField
      FieldName = 'ACUHB01'
      Origin = 'SUBCTAS.ACUHB01'
      Visible = False
    end
    object QFicheroACUHB02: TFloatField
      FieldName = 'ACUHB02'
      Origin = 'SUBCTAS.ACUHB02'
      Visible = False
    end
    object QFicheroACUHB03: TFloatField
      FieldName = 'ACUHB03'
      Origin = 'SUBCTAS.ACUHB03'
      Visible = False
    end
    object QFicheroACUHB04: TFloatField
      FieldName = 'ACUHB04'
      Origin = 'SUBCTAS.ACUHB04'
      Visible = False
    end
    object QFicheroACUHB05: TFloatField
      FieldName = 'ACUHB05'
      Origin = 'SUBCTAS.ACUHB05'
      Visible = False
    end
    object QFicheroACUHB06: TFloatField
      FieldName = 'ACUHB06'
      Origin = 'SUBCTAS.ACUHB06'
      Visible = False
    end
    object QFicheroACUHB07: TFloatField
      FieldName = 'ACUHB07'
      Origin = 'SUBCTAS.ACUHB07'
      Visible = False
    end
    object QFicheroACUHB08: TFloatField
      FieldName = 'ACUHB08'
      Origin = 'SUBCTAS.ACUHB08'
      Visible = False
    end
    object QFicheroACUHB09: TFloatField
      FieldName = 'ACUHB09'
      Origin = 'SUBCTAS.ACUHB09'
      Visible = False
    end
    object QFicheroACUHB10: TFloatField
      FieldName = 'ACUHB10'
      Origin = 'SUBCTAS.ACUHB10'
      Visible = False
    end
    object QFicheroACUHB11: TFloatField
      FieldName = 'ACUHB11'
      Origin = 'SUBCTAS.ACUHB11'
      Visible = False
    end
    object QFicheroACUHB12: TFloatField
      FieldName = 'ACUHB12'
      Origin = 'SUBCTAS.ACUHB12'
      Visible = False
    end
    object QFicheroANTDB: TFloatField
      FieldName = 'ANTDB'
      Origin = 'SUBCTAS.ANTDB'
      Visible = False
    end
    object QFicheroANTDB01: TFloatField
      FieldName = 'ANTDB01'
      Origin = 'SUBCTAS.ANTDB01'
      Visible = False
    end
    object QFicheroANTDB02: TFloatField
      FieldName = 'ANTDB02'
      Origin = 'SUBCTAS.ANTDB02'
      Visible = False
    end
    object QFicheroANTDB03: TFloatField
      FieldName = 'ANTDB03'
      Origin = 'SUBCTAS.ANTDB03'
      Visible = False
    end
    object QFicheroANTDB04: TFloatField
      FieldName = 'ANTDB04'
      Origin = 'SUBCTAS.ANTDB04'
      Visible = False
    end
    object QFicheroANTDB05: TFloatField
      FieldName = 'ANTDB05'
      Origin = 'SUBCTAS.ANTDB05'
      Visible = False
    end
    object QFicheroANTDB06: TFloatField
      FieldName = 'ANTDB06'
      Origin = 'SUBCTAS.ANTDB06'
      Visible = False
    end
    object QFicheroANTDB07: TFloatField
      FieldName = 'ANTDB07'
      Origin = 'SUBCTAS.ANTDB07'
      Visible = False
    end
    object QFicheroANTDB08: TFloatField
      FieldName = 'ANTDB08'
      Origin = 'SUBCTAS.ANTDB08'
      Visible = False
    end
    object QFicheroANTDB09: TFloatField
      FieldName = 'ANTDB09'
      Origin = 'SUBCTAS.ANTDB09'
      Visible = False
    end
    object QFicheroANTDB10: TFloatField
      FieldName = 'ANTDB10'
      Origin = 'SUBCTAS.ANTDB10'
      Visible = False
    end
    object QFicheroANTDB11: TFloatField
      FieldName = 'ANTDB11'
      Origin = 'SUBCTAS.ANTDB11'
      Visible = False
    end
    object QFicheroANTDB12: TFloatField
      FieldName = 'ANTDB12'
      Origin = 'SUBCTAS.ANTDB12'
      Visible = False
    end
    object QFicheroANTHB: TFloatField
      FieldName = 'ANTHB'
      Origin = 'SUBCTAS.ANTHB'
      Visible = False
    end
    object QFicheroANTHB01: TFloatField
      FieldName = 'ANTHB01'
      Origin = 'SUBCTAS.ANTHB01'
      Visible = False
    end
    object QFicheroANTHB02: TFloatField
      FieldName = 'ANTHB02'
      Origin = 'SUBCTAS.ANTHB02'
      Visible = False
    end
    object QFicheroANTHB03: TFloatField
      FieldName = 'ANTHB03'
      Origin = 'SUBCTAS.ANTHB03'
      Visible = False
    end
    object QFicheroANTHB04: TFloatField
      FieldName = 'ANTHB04'
      Origin = 'SUBCTAS.ANTHB04'
      Visible = False
    end
    object QFicheroANTHB05: TFloatField
      FieldName = 'ANTHB05'
      Origin = 'SUBCTAS.ANTHB05'
      Visible = False
    end
    object QFicheroANTHB06: TFloatField
      FieldName = 'ANTHB06'
      Origin = 'SUBCTAS.ANTHB06'
      Visible = False
    end
    object QFicheroANTHB07: TFloatField
      FieldName = 'ANTHB07'
      Origin = 'SUBCTAS.ANTHB07'
      Visible = False
    end
    object QFicheroANTHB08: TFloatField
      FieldName = 'ANTHB08'
      Origin = 'SUBCTAS.ANTHB08'
      Visible = False
    end
    object QFicheroANTHB09: TFloatField
      FieldName = 'ANTHB09'
      Origin = 'SUBCTAS.ANTHB09'
      Visible = False
    end
    object QFicheroANTHB10: TFloatField
      FieldName = 'ANTHB10'
      Origin = 'SUBCTAS.ANTHB10'
      Visible = False
    end
    object QFicheroANTHB11: TFloatField
      FieldName = 'ANTHB11'
      Origin = 'SUBCTAS.ANTHB11'
      Visible = False
    end
    object QFicheroANTHB12: TFloatField
      FieldName = 'ANTHB12'
      Origin = 'SUBCTAS.ANTHB12'
      Visible = False
    end
    object QFicheroARRENDADOR: TIBStringField
      FieldName = 'ARRENDADOR'
      Origin = 'SUBCTAS.ARRENDADOR'
      Visible = False
      Size = 1
    end
    object QFicheroCONTRAPARTIDA: TIBStringField
      FieldName = 'CONTRAPARTIDA'
      Origin = 'SUBCTAS.CONTRAPARTIDA'
      Visible = False
      Size = 10
    end
    object QFicheroDIRECCION: TIBStringField
      FieldName = 'DIRECCION'
      Origin = 'SUBCTAS.DIRECCION'
      Visible = False
      Size = 35
    end
    object QFicheroFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'SUBCTAS.FAX'
      Visible = False
      Size = 16
    end
    object QFicheroIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'SUBCTAS.IVA'
      Visible = False
    end
    object QFicheroPROFESIONAL: TIBStringField
      FieldName = 'PROFESIONAL'
      Origin = 'SUBCTAS.PROFESIONAL'
      Visible = False
      Size = 1
    end
    object QFicheroRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'SUBCTAS.RECARGO'
      Visible = False
    end
    object QFicheroTELEFONO: TIBStringField
      FieldName = 'TELEFONO'
      Origin = 'SUBCTAS.TELEFONO'
      Visible = False
      Size = 16
    end
    object QFicheroTIPOIVA: TIBStringField
      FieldName = 'TIPOIVA'
      Origin = 'SUBCTAS.TIPOIVA'
      Visible = False
      Size = 1
    end
    object QFicheroDIRECCION1: TIBStringField
      FieldName = 'DIRECCION1'
      Origin = 'SUBCTAS.DIRECCION1'
      Visible = False
      Size = 35
    end
    object QFicheroNIF: TIBStringField
      FieldName = 'NIF'
      Origin = 'SUBCTAS.NIF'
      Visible = False
    end
    object QFicheroCODPOSTAL: TIBStringField
      FieldName = 'CODPOSTAL'
      Origin = 'SUBCTAS.CODPOSTAL'
      Visible = False
      Size = 10
    end
    object QFicheroPOBLACION: TIBStringField
      FieldName = 'POBLACION'
      Origin = 'SUBCTAS.POBLACION'
      Visible = False
      Size = 60
    end
    object QFicheroPROVINCIA: TIBStringField
      FieldName = 'PROVINCIA'
      Origin = 'SUBCTAS.PROVINCIA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object QFicheroPAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = 'SUBCTAS.PAIS'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object QFicheroNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'SUBCTAS.NUMERO'
      Visible = False
      Size = 10
    end
    object QFicheroFORMAPAGO: TIBStringField
      FieldName = 'FORMAPAGO'
      Origin = 'SUBCTAS.FORMAPAGO'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object QFicheroDIAPAGO1: TSmallintField
      FieldName = 'DIAPAGO1'
      Origin = 'SUBCTAS.DIAPAGO1'
      Visible = False
    end
    object QFicheroDIAPAGO2: TSmallintField
      FieldName = 'DIAPAGO2'
      Origin = 'SUBCTAS.DIAPAGO2'
      Visible = False
    end
    object QFicheroPRES01: TFloatField
      FieldName = 'PRES01'
      Origin = 'SUBCTAS.PRES01'
      Visible = False
    end
    object QFicheroPRES02: TFloatField
      FieldName = 'PRES02'
      Origin = 'SUBCTAS.PRES02'
      Visible = False
    end
    object QFicheroPRES03: TFloatField
      FieldName = 'PRES03'
      Origin = 'SUBCTAS.PRES03'
      Visible = False
    end
    object QFicheroPRES04: TFloatField
      FieldName = 'PRES04'
      Origin = 'SUBCTAS.PRES04'
      Visible = False
    end
    object QFicheroPRES05: TFloatField
      FieldName = 'PRES05'
      Origin = 'SUBCTAS.PRES05'
      Visible = False
    end
    object QFicheroPRES06: TFloatField
      FieldName = 'PRES06'
      Origin = 'SUBCTAS.PRES06'
      Visible = False
    end
    object QFicheroPRES07: TFloatField
      FieldName = 'PRES07'
      Origin = 'SUBCTAS.PRES07'
      Visible = False
    end
    object QFicheroPRES08: TFloatField
      FieldName = 'PRES08'
      Origin = 'SUBCTAS.PRES08'
      Visible = False
    end
    object QFicheroPRES09: TFloatField
      FieldName = 'PRES09'
      Origin = 'SUBCTAS.PRES09'
      Visible = False
    end
    object QFicheroPRES10: TFloatField
      FieldName = 'PRES10'
      Origin = 'SUBCTAS.PRES10'
      Visible = False
    end
    object QFicheroPRES11: TFloatField
      FieldName = 'PRES11'
      Origin = 'SUBCTAS.PRES11'
      Visible = False
    end
    object QFicheroPRES12: TFloatField
      FieldName = 'PRES12'
      Origin = 'SUBCTAS.PRES12'
      Visible = False
    end
    object QFicheroPRESTOT: TFloatField
      FieldName = 'PRESTOT'
      Origin = 'SUBCTAS.PRESTOT'
      Visible = False
    end
    object QFicheroOBSOLETO: TIBStringField
      FieldName = 'OBSOLETO'
      Origin = 'SUBCTAS.OBSOLETO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QFicheroDESCFORMAPAGO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCFORMAPAGO'
      LookupDataSet = DMRef.QFormaPago
      LookupKeyFields = 'FORMAPAGO'
      LookupResultField = 'DESCRIBE'
      KeyFields = 'FORMAPAGO'
      Visible = False
      Size = 40
      Lookup = True
    end
    object QFicheroDIAPAGO3: TSmallintField
      FieldName = 'DIAPAGO3'
      Origin = 'SUBCTAS.DIAPAGO3'
      Visible = False
    end
    object QFicheroABREVIATURA: TIBStringField
      FieldName = 'ABREVIATURA'
      Origin = 'SUBCTAS.ABREVIATURA'
      Visible = False
      Size = 10
    end
    object QFicheroINTRACOMUNITARIO: TIBStringField
      FieldName = 'INTRACOMUNITARIO'
      Origin = 'SUBCTAS.INTRACOMUNITARIO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QFicheroSUBCTARET: TIBStringField
      FieldName = 'SUBCTARET'
      Origin = 'SUBCTAS.SUBCTARET'
      Size = 10
    end
  end
  object Transaccion: TIBTransaction
    Left = 243
    Top = 141
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 378
    Top = 267
    object CDSFiltroBSUBCUENTA: TStringField
      FieldName = 'BSUBCUENTA'
      Size = 10
    end
    object CDSFiltroBNIF: TStringField
      FieldName = 'BNIF'
    end
    object CDSFiltroBDESCRIPCION: TStringField
      FieldName = 'BDESCRIPCION'
      Size = 80
    end
    object CDSFiltroBTITULO: TStringField
      FieldName = 'BTITULO'
      Size = 2
    end
    object CDSFiltroBGRUPO: TStringField
      FieldName = 'BGRUPO'
      Size = 3
    end
  end
  object SFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 458
    Top = 267
  end
  object QAmortiza: TIBDataSet
    Transaction = Transaccion
    OnNewRecord = QAmortizaNewRecord
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM AMORTIZA'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO AMORTIZA'
      
        '  (SUBCUENTA                      ,CENTROCOSTE                  ' +
        '  ,FCOMPRA                        ,FINICIO                      ' +
        '  ,FULTAMOR                       ,FFINAMOR                     ' +
        '  ,FBAJA                          ,SUBGASTO                     ' +
        '  ,SUBAMOR                        ,PERIODO                      ' +
        '  ,ANUAL                          ,PROVEEDOR                    ' +
        '  ,FACTURA                        ,VCOMPRA                      ' +
        '  ,VRESIDUAL                      ,VAMOR                        ' +
        '  ,VEJPINICIO                     ,VEJAINICIO                   ' +
        '  ,VEJPAMOR                       ,VEJAAMOR                     ' +
        '  ,CLASE                          )'
      'VALUES'
      
        '  (:SUBCUENTA                      ,:CENTROCOSTE                ' +
        '    ,:FCOMPRA                        ,:FINICIO                  ' +
        '      ,:FULTAMOR                       ,:FFINAMOR               ' +
        '        ,:FBAJA                          ,:SUBGASTO             ' +
        '          ,:SUBAMOR                        ,:PERIODO            ' +
        '            ,:ANUAL                          ,:PROVEEDOR        ' +
        '              ,:FACTURA                        ,:VCOMPRA        ' +
        '                ,:VRESIDUAL                      ,:VAMOR        ' +
        '                  ,:VEJPINICIO                     ,:VEJAINICIO ' +
        '                    ,:VEJPAMOR                       ,:VEJAAMOR ' +
        '                      ,:CLASE                          )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM AMORTIZA'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM AMORTIZA')
    ModifySQL.Strings = (
      'UPDATE AMORTIZA'
      'SET'
      
        '  CENTROCOSTE                    =:CENTROCOSTE                  ' +
        '   '
      
        '  ,FCOMPRA                        =:FCOMPRA                     ' +
        '    '
      
        '  ,FINICIO                        =:FINICIO                     ' +
        '    '
      
        '  ,FULTAMOR                       =:FULTAMOR                    ' +
        '    '
      
        '  ,FFINAMOR                       =:FFINAMOR                    ' +
        '    '
      
        '  ,FBAJA                          =:FBAJA                       ' +
        '    '
      
        '  ,SUBGASTO                       =:SUBGASTO                    ' +
        '    '
      
        '  ,SUBAMOR                        =:SUBAMOR                     ' +
        '    '
      
        '  ,PERIODO                        =:PERIODO                     ' +
        '    '
      
        '  ,ANUAL                          =:ANUAL                       ' +
        '    '
      
        '  ,PROVEEDOR                      =:PROVEEDOR                   ' +
        '    '
      
        '  ,FACTURA                        =:FACTURA                     ' +
        '    '
      
        '  ,VCOMPRA                        =:VCOMPRA                     ' +
        '    '
      
        '  ,VRESIDUAL                      =:VRESIDUAL                   ' +
        '    '
      
        '  ,VAMOR                          =:VAMOR                       ' +
        '    '
      
        '  ,VEJPINICIO                     =:VEJPINICIO                  ' +
        '    '
      
        '  ,VEJAINICIO                     =:VEJAINICIO                  ' +
        '    '
      
        '  ,VEJPAMOR                       =:VEJPAMOR                    ' +
        '    '
      
        '  ,VEJAAMOR                       =:VEJAAMOR                    ' +
        '    '
      
        '  ,CLASE                          =:CLASE                       ' +
        '    '
      'WHERE'
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    DataSource = SFichero
    Left = 569
    Top = 338
    object QAmortizaSUBCUENTA: TIBStringField
      FieldName = 'SUBCUENTA'
      Origin = 'AMORTIZA.SUBCUENTA'
      Required = True
      Size = 10
    end
    object QAmortizaCENTROCOSTE: TIBStringField
      FieldName = 'CENTROCOSTE'
      Origin = 'AMORTIZA.CENTROCOSTE'
      Size = 10
    end
    object QAmortizaFCOMPRA: TDateTimeField
      FieldName = 'FCOMPRA'
      Origin = 'AMORTIZA.FCOMPRA'
    end
    object QAmortizaFINICIO: TDateTimeField
      FieldName = 'FINICIO'
      Origin = 'AMORTIZA.FINICIO'
    end
    object QAmortizaFULTAMOR: TDateTimeField
      FieldName = 'FULTAMOR'
      Origin = 'AMORTIZA.FULTAMOR'
    end
    object QAmortizaFFINAMOR: TDateTimeField
      FieldName = 'FFINAMOR'
      Origin = 'AMORTIZA.FFINAMOR'
    end
    object QAmortizaFBAJA: TDateTimeField
      FieldName = 'FBAJA'
      Origin = 'AMORTIZA.FBAJA'
    end
    object QAmortizaSUBGASTO: TIBStringField
      FieldName = 'SUBGASTO'
      Origin = 'AMORTIZA.SUBGASTO'
      Size = 10
    end
    object QAmortizaSUBAMOR: TIBStringField
      FieldName = 'SUBAMOR'
      Origin = 'AMORTIZA.SUBAMOR'
      Size = 10
    end
    object QAmortizaPERIODO: TIBStringField
      FieldName = 'PERIODO'
      Origin = 'AMORTIZA.PERIODO'
      Size = 1
    end
    object QAmortizaANUAL: TFloatField
      FieldName = 'ANUAL'
      Origin = 'AMORTIZA.ANUAL'
    end
    object QAmortizaPROVEEDOR: TIBStringField
      FieldName = 'PROVEEDOR'
      Origin = 'AMORTIZA.PROVEEDOR'
      Size = 10
    end
    object QAmortizaFACTURA: TIBStringField
      FieldName = 'FACTURA'
      Origin = 'AMORTIZA.FACTURA'
      Size = 15
    end
    object QAmortizaVCOMPRA: TFloatField
      FieldName = 'VCOMPRA'
      Origin = 'AMORTIZA.VCOMPRA'
    end
    object QAmortizaVRESIDUAL: TFloatField
      FieldName = 'VRESIDUAL'
      Origin = 'AMORTIZA.VRESIDUAL'
    end
    object QAmortizaVAMOR: TFloatField
      FieldName = 'VAMOR'
      Origin = 'AMORTIZA.VAMOR'
    end
    object QAmortizaVEJPINICIO: TFloatField
      FieldName = 'VEJPINICIO'
      Origin = 'AMORTIZA.VEJPINICIO'
    end
    object QAmortizaVEJAINICIO: TFloatField
      FieldName = 'VEJAINICIO'
      Origin = 'AMORTIZA.VEJAINICIO'
    end
    object QAmortizaVEJPAMOR: TFloatField
      FieldName = 'VEJPAMOR'
      Origin = 'AMORTIZA.VEJPAMOR'
    end
    object QAmortizaVEJAAMOR: TFloatField
      FieldName = 'VEJAAMOR'
      Origin = 'AMORTIZA.VEJAAMOR'
    end
    object QAmortizaCLASE: TFloatField
      FieldName = 'CLASE'
      Origin = 'AMORTIZA.CLASE'
    end
  end
  object SAmortiza: TDataSource
    AutoEdit = False
    DataSet = QAmortiza
    Left = 627
    Top = 338
  end
  object PopupMenuListados: TPopupMenu
    AutoHotkeys = maManual
    OwnerDraw = True
    Left = 573
    Top = 240
    object Subcuentas1: TMenuItem
      Caption = 'Subcuentas'
      OnClick = Subcuentas1Click
      OnAdvancedDrawItem = Subcuentas1AdvancedDrawItem
    end
    object DetalledeSubcuentas1: TMenuItem
      Caption = 'Detalle de Subcuentas'
      OnClick = DetalledeSubcuentas1Click
      OnAdvancedDrawItem = Subcuentas1AdvancedDrawItem
    end
  end
  object QDiario: TIBDataSet
    Transaction = Transaccion
    OnCalcFields = QDiarioCalcFields
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM DIARIO'
      'WHERE'
      
        '  ID_DIARIO                      =:old_ID_DIARIO                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO DIARIO'
      
        '  (CUOTARECARGO                   ,CUOTAIVA                     ' +
        '  ,FECHA                          ,IMPORTE                      ' +
        '  ,BASEIMPONIBLE                  ,IVA                          ' +
        '  ,RECARGO                        ,ASIENTO                      ' +
        '  ,SUBCUENTA                      ,CONTRAPARTIDA                ' +
        '  ,NUMEROFACTURA                  ,ID_DIARIO                    ' +
        '  ,ASIENTOPUNTEO                  ,CUENTA_ANALITICA             ' +
        '  ,COMENTARIO                     ,APUNTE                       ' +
        '  ,TIPODIARIO                     ,MONEDA                       ' +
        '  ,NIF                            ,DEBEHABER                    ' +
        '  ,PUNTEO                         ,PUNTEOIVA                    ' +
        '  ,ID_CONCEPTOS                   )'
      'VALUES'
      
        '  (:CUOTARECARGO                   ,:CUOTAIVA                   ' +
        '    ,:FECHA                          ,:IMPORTE                  ' +
        '      ,:BASEIMPONIBLE                  ,:IVA                    ' +
        '        ,:RECARGO                        ,:ASIENTO              ' +
        '          ,:SUBCUENTA                      ,:CONTRAPARTIDA      ' +
        '            ,:NUMEROFACTURA                  ,:ID_DIARIO        ' +
        '              ,:ASIENTOPUNTEO                  ,:CUENTA_ANALITIC' +
        'A               ,:COMENTARIO                     ,:APUNTE       ' +
        '                  ,:TIPODIARIO                     ,:MONEDA     ' +
        '                    ,:NIF                            ,:DEBEHABER' +
        '                      ,:PUNTEO                         ,:PUNTEOI' +
        'VA                      ,:ID_CONCEPTOS                   )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM DIARIO'
      'WHERE'
      
        '  ID_DIARIO                      =?ID_DIARIO                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT D.*, C.DESCRIPCION DESCCONCEPTO'
      'FROM DIARIO D, CONCEPTOS C'
      '')
    ModifySQL.Strings = (
      'UPDATE DIARIO'
      'SET'
      
        '  CUOTARECARGO                   =:CUOTARECARGO                 ' +
        '   '
      
        '  ,CUOTAIVA                       =:CUOTAIVA                    ' +
        '    '
      
        '  ,FECHA                          =:FECHA                       ' +
        '    '
      
        '  ,IMPORTE                        =:IMPORTE                     ' +
        '    '
      
        '  ,BASEIMPONIBLE                  =:BASEIMPONIBLE               ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,ASIENTO                        =:ASIENTO                     ' +
        '    '
      
        '  ,SUBCUENTA                      =:SUBCUENTA                   ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,NUMEROFACTURA                  =:NUMEROFACTURA               ' +
        '    '
      
        '  ,ASIENTOPUNTEO                  =:ASIENTOPUNTEO               ' +
        '    '
      
        '  ,CUENTA_ANALITICA               =:CUENTA_ANALITICA            ' +
        '    '
      
        '  ,COMENTARIO                     =:COMENTARIO                  ' +
        '    '
      
        '  ,APUNTE                         =:APUNTE                      ' +
        '    '
      
        '  ,TIPODIARIO                     =:TIPODIARIO                  ' +
        '    '
      
        '  ,MONEDA                         =:MONEDA                      ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      
        '  ,DEBEHABER                      =:DEBEHABER                   ' +
        '    '
      
        '  ,PUNTEO                         =:PUNTEO                      ' +
        '    '
      
        '  ,PUNTEOIVA                      =:PUNTEOIVA                   ' +
        '    '
      
        '  ,ID_CONCEPTOS                   =:ID_CONCEPTOS                ' +
        '    '
      'WHERE'
      
        '  ID_DIARIO                      =:ID_DIARIO                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    DataSource = SFichero
    Left = 229
    Top = 404
    object QDiarioASIENTO: TIntegerField
      DisplayWidth = 9
      FieldName = 'ASIENTO'
      Origin = 'DIARIO.ASIENTO'
    end
    object QDiarioFECHA: TDateTimeField
      Alignment = taCenter
      DisplayWidth = 10
      FieldName = 'FECHA'
      Origin = 'DIARIO.FECHA'
    end
    object QDiarioID_CONCEPTOS: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'CTO'
      DisplayWidth = 6
      FieldName = 'ID_CONCEPTOS'
      Origin = 'DIARIO.ID_CONCEPTOS'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QDiarioDescApunte: TStringField
      DisplayLabel = 'DESCRIPCI'#211'N DEL APUNTE'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'DescApunte'
      Size = 100
      Calculated = True
    end
    object QDiarioDEBEHABER: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'T'
      DisplayWidth = 3
      FieldName = 'DEBEHABER'
      Origin = 'DIARIO.DEBEHABER'
      FixedChar = True
      Size = 1
    end
    object QDiarioIMPORTE: TFloatField
      DisplayWidth = 13
      FieldName = 'IMPORTE'
      Origin = 'DIARIO.IMPORTE'
      DisplayFormat = '###,###,###.##'
    end
    object QDiarioSUBCUENTA: TIBStringField
      DisplayWidth = 12
      FieldName = 'SUBCUENTA'
      Origin = 'DIARIO.SUBCUENTA'
      Required = True
      Visible = False
      Size = 10
    end
    object QDiarioCOMENTARIO: TIBStringField
      DisplayWidth = 40
      FieldName = 'COMENTARIO'
      Origin = 'DIARIO.COMENTARIO'
      Visible = False
      Size = 40
    end
    object QDiarioNUMEROFACTURA: TIBStringField
      DisplayWidth = 10
      FieldName = 'NUMEROFACTURA'
      Origin = 'DIARIO.NUMEROFACTURA'
      Visible = False
      Size = 10
    end
    object QDiarioID_DIARIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_DIARIO'
      Origin = 'DIARIO.ID_DIARIO'
      Visible = False
    end
    object QDiarioAPUNTE: TSmallintField
      DisplayWidth = 10
      FieldName = 'APUNTE'
      Origin = 'DIARIO.APUNTE'
      Visible = False
    end
    object QDiarioBASEIMPONIBLE: TFloatField
      DisplayWidth = 10
      FieldName = 'BASEIMPONIBLE'
      Origin = 'DIARIO.BASEIMPONIBLE'
      Visible = False
    end
    object QDiarioCONTRAPARTIDA: TIBStringField
      DisplayWidth = 10
      FieldName = 'CONTRAPARTIDA'
      Origin = 'DIARIO.CONTRAPARTIDA'
      Visible = False
      Size = 10
    end
    object QDiarioIVA: TFloatField
      DisplayWidth = 10
      FieldName = 'IVA'
      Origin = 'DIARIO.IVA'
      Visible = False
    end
    object QDiarioNIF: TIBStringField
      DisplayWidth = 15
      FieldName = 'NIF'
      Origin = 'DIARIO.NIF'
      Visible = False
      Size = 15
    end
    object QDiarioMONEDA: TIBStringField
      DisplayWidth = 1
      FieldName = 'MONEDA'
      Origin = 'DIARIO.MONEDA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QDiarioRECARGO: TFloatField
      DisplayWidth = 10
      FieldName = 'RECARGO'
      Origin = 'DIARIO.RECARGO'
      Visible = False
    end
    object QDiarioPUNTEO: TIBStringField
      DisplayWidth = 1
      FieldName = 'PUNTEO'
      Origin = 'DIARIO.PUNTEO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QDiarioASIENTOPUNTEO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ASIENTOPUNTEO'
      Origin = 'DIARIO.ASIENTOPUNTEO'
      Visible = False
    end
    object QDiarioPUNTEOIVA: TIBStringField
      DisplayWidth = 1
      FieldName = 'PUNTEOIVA'
      Origin = 'DIARIO.PUNTEOIVA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QDiarioTIPODIARIO: TIBStringField
      DisplayWidth = 2
      FieldName = 'TIPODIARIO'
      Origin = 'DIARIO.TIPODIARIO'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object QDiarioCUENTA_ANALITICA: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUENTA_ANALITICA'
      Origin = 'DIARIO.CUENTA_ANALITICA'
      Visible = False
      Size = 10
    end
    object QDiarioCUOTAIVA: TFloatField
      DisplayWidth = 10
      FieldName = 'CUOTAIVA'
      Origin = 'DIARIO.CUOTAIVA'
      Visible = False
    end
    object QDiarioDescConcepto: TWideStringField
      FieldName = 'DescConcepto'
      Size = 30
    end
    object QDiarioCUOTARECARGO: TFloatField
      DisplayWidth = 10
      FieldName = 'CUOTARECARGO'
      Origin = 'DIARIO.CUOTARECARGO'
      Visible = False
    end
    object QDiarioABREVIATURA: TStringField
      FieldKind = fkLookup
      FieldName = 'ABREVIATURA'
      LookupDataSet = DMContaRef.QSubCuentas
      LookupKeyFields = 'SUBCUENTA'
      LookupResultField = 'ABREVIATURA'
      KeyFields = 'SUBCUENTA'
      Visible = False
      Size = 10
      Lookup = True
    end
    object QDiarioTIPOASIENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPOASIENTO'
      Origin = 'DIARIO.TIPOASIENTO'
      Visible = False
    end
    object QDiarioASIENTONOMINA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ASIENTONOMINA'
      Origin = 'DIARIO.ASIENTONOMINA'
      Visible = False
    end
    object QDiarioEJERCICIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'EJERCICIO'
      Origin = 'DIARIO.EJERCICIO'
      Visible = False
    end
    object QDiarioSERIE: TIBStringField
      DisplayWidth = 5
      FieldName = 'SERIE'
      Origin = 'DIARIO.SERIE'
      Visible = False
      Size = 5
    end
  end
  object SDiario: TDataSource
    AutoEdit = False
    DataSet = QDiario
    Left = 303
    Top = 397
  end
  object CDSFiltroCartas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 378
    Top = 321
  end
  object SFiltroCartas: TDataSource
    DataSet = CDSFiltroCartas
    Left = 458
    Top = 321
  end
  object QProvincias: TIBDataSet
    Transaction = Transaccion
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PROVINCIAS'
      'WHERE'
      
        '  PROVINCIA                      =:old_PROVINCIA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO PROVINCIAS'
      
        '  (PROVINCIA                      ,CODIGO                       ' +
        '  ,NOMBRE                         )'
      'VALUES'
      
        '  (:PROVINCIA                      ,:CODIGO                     ' +
        '    ,:NOMBRE                         )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM PROVINCIAS'
      'WHERE'
      
        '  PROVINCIA                      =?PROVINCIA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM PROVINCIAS')
    ModifySQL.Strings = (
      'UPDATE PROVINCIAS'
      'SET'
      
        '  CODIGO                         =:CODIGO                       ' +
        '   '
      
        '  ,NOMBRE                         =:NOMBRE                      ' +
        '    '
      'WHERE'
      
        '  PROVINCIA                      =:PROVINCIA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    DataSource = SFichero
    Left = 375
    Top = 377
    object QProvinciasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'PROVINCIAS.NOMBRE'
      Size = 25
    end
    object QProvinciasPROVINCIA: TIBStringField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIAS.PROVINCIA'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QProvinciasCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'PROVINCIAS.CODIGO'
      FixedChar = True
      Size = 2
    end
  end
  object QSubcuentaPago: TIBDataSet
    Transaction = Transaccion
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCTAS'
      
        '  (SUMADB                         ,SUMAHB                       ' +
        '  ,ACUDB01                        ,ACUDB02                      ' +
        '  ,ACUDB03                        ,ACUDB04                      ' +
        '  ,ACUDB05                        ,ACUDB06                      ' +
        '  ,ACUDB07                        ,ACUDB08                      ' +
        '  ,ACUDB09                        ,ACUDB10                      ' +
        '  ,ACUDB11                        ,ACUDB12                      ' +
        '  ,ACUHB01                        ,ACUHB02                      ' +
        '  ,ACUHB03                        ,ACUHB04                      ' +
        '  ,ACUHB05                        ,ACUHB06                      ' +
        '  ,ACUHB07                        ,ACUHB08                      ' +
        '  ,ACUHB09                        ,ACUHB10                      ' +
        '  ,ACUHB11                        ,ACUHB12                      ' +
        '  ,ANTDB01                        ,ANTDB02                      ' +
        '  ,ANTDB03                        ,ANTDB04                      ' +
        '  ,ANTDB05                        ,ANTDB06                      ' +
        '  ,ANTDB07                        ,ANTDB08                      ' +
        '  ,ANTDB09                        ,ANTDB10                      ' +
        '  ,ANTDB11                        ,ANTDB12                      ' +
        '  ,ANTHB01                        ,ANTHB02                      ' +
        '  ,ANTHB03                        ,ANTHB04                      ' +
        '  ,ANTHB05                        ,ANTHB06                      ' +
        '  ,ANTHB07                        ,ANTHB08                      ' +
        '  ,ANTHB09                        ,ANTHB10                      ' +
        '  ,ANTHB11                        ,ANTHB12                      ' +
        '  ,ANTHB                          ,ANTDB                        ' +
        '  ,IVA                            ,RECARGO                      ' +
        '  ,PRES01                         ,PRES02                       ' +
        '  ,PRES03                         ,PRES04                       ' +
        '  ,PRES05                         ,PRES06                       ' +
        '  ,PRES07                         ,PRES08                       ' +
        '  ,PRES09                         ,PRES10                       ' +
        '  ,PRES11                         ,PRES12                       ' +
        '  ,PRESTOT                        ,CODPOSTAL                    ' +
        '  ,NUMERO                         ,SUBCUENTA                    ' +
        '  ,CONTRAPARTIDA                  ,PAIS                         ' +
        '  ,POBLACION                      ,PROVINCIA                    ' +
        '  ,DESCRIPCION                    ,TELEFONO                     ' +
        '  ,FAX                            ,NIF                          ' +
        '  ,DIAPAGO1                       ,DIAPAGO2                     ' +
        '  ,OBSOLETO                       ,DIRECCION                    ' +
        '  ,TIPOIVA                        ,ARRENDADOR                   ' +
        '  ,PROFESIONAL                    ,DIRECCION1                   ' +
        '  ,FORMAPAGO                      )'
      'VALUES'
      
        '  (:SUMADB                         ,:SUMAHB                     ' +
        '    ,:ACUDB01                        ,:ACUDB02                  ' +
        '      ,:ACUDB03                        ,:ACUDB04                ' +
        '        ,:ACUDB05                        ,:ACUDB06              ' +
        '          ,:ACUDB07                        ,:ACUDB08            ' +
        '            ,:ACUDB09                        ,:ACUDB10          ' +
        '              ,:ACUDB11                        ,:ACUDB12        ' +
        '                ,:ACUHB01                        ,:ACUHB02      ' +
        '                  ,:ACUHB03                        ,:ACUHB04    ' +
        '                    ,:ACUHB05                        ,:ACUHB06  ' +
        '                      ,:ACUHB07                        ,:ACUHB08' +
        '                        ,:ACUHB09                        ,:ACUHB' +
        '10                        ,:ACUHB11                        ,:ACU' +
        'HB12                        ,:ANTDB01                        ,:A' +
        'NTDB02                        ,:ANTDB03                        ,' +
        ':ANTDB04                        ,:ANTDB05                       ' +
        ' ,:ANTDB06                        ,:ANTDB07                     ' +
        '   ,:ANTDB08                        ,:ANTDB09                   ' +
        '     ,:ANTDB10                        ,:ANTDB11                 ' +
        '       ,:ANTDB12                        ,:ANTHB01               ' +
        '         ,:ANTHB02                        ,:ANTHB03             ' +
        '           ,:ANTHB04                        ,:ANTHB05           ' +
        '             ,:ANTHB06                        ,:ANTHB07         ' +
        '               ,:ANTHB08                        ,:ANTHB09       ' +
        '                 ,:ANTHB10                        ,:ANTHB11     ' +
        '                   ,:ANTHB12                        ,:ANTHB     ' +
        '                     ,:ANTDB                          ,:IVA     ' +
        '                       ,:RECARGO                        ,:PRES01' +
        '                         ,:PRES02                         ,:PRES' +
        '03                         ,:PRES04                         ,:PR' +
        'ES05                         ,:PRES06                         ,:' +
        'PRES07                         ,:PRES08                         ' +
        ',:PRES09                         ,:PRES10                       ' +
        '  ,:PRES11                         ,:PRES12                     ' +
        '    ,:PRESTOT                        ,:CODPOSTAL                ' +
        '      ,:NUMERO                         ,:SUBCUENTA              ' +
        '        ,:CONTRAPARTIDA                  ,:PAIS                 ' +
        '          ,:POBLACION                      ,:PROVINCIA          ' +
        '            ,:DESCRIPCION                    ,:TELEFONO         ' +
        '              ,:FAX                            ,:NIF            ' +
        '                ,:DIAPAGO1                       ,:DIAPAGO2     ' +
        '                  ,:OBSOLETO                       ,:DIRECCION  ' +
        '                    ,:TIPOIVA                        ,:ARRENDADO' +
        'R                     ,:PROFESIONAL                    ,:DIRECCI' +
        'ON1                     ,:FORMAPAGO                      )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM SUBCTAS')
    ModifySQL.Strings = (
      'UPDATE SUBCTAS'
      'SET'
      
        '  SUMADB                         =:SUMADB                       ' +
        '   '
      
        '  ,SUMAHB                         =:SUMAHB                      ' +
        '    '
      
        '  ,ACUDB01                        =:ACUDB01                     ' +
        '    '
      
        '  ,ACUDB02                        =:ACUDB02                     ' +
        '    '
      
        '  ,ACUDB03                        =:ACUDB03                     ' +
        '    '
      
        '  ,ACUDB04                        =:ACUDB04                     ' +
        '    '
      
        '  ,ACUDB05                        =:ACUDB05                     ' +
        '    '
      
        '  ,ACUDB06                        =:ACUDB06                     ' +
        '    '
      
        '  ,ACUDB07                        =:ACUDB07                     ' +
        '    '
      
        '  ,ACUDB08                        =:ACUDB08                     ' +
        '    '
      
        '  ,ACUDB09                        =:ACUDB09                     ' +
        '    '
      
        '  ,ACUDB10                        =:ACUDB10                     ' +
        '    '
      
        '  ,ACUDB11                        =:ACUDB11                     ' +
        '    '
      
        '  ,ACUDB12                        =:ACUDB12                     ' +
        '    '
      
        '  ,ACUHB01                        =:ACUHB01                     ' +
        '    '
      
        '  ,ACUHB02                        =:ACUHB02                     ' +
        '    '
      
        '  ,ACUHB03                        =:ACUHB03                     ' +
        '    '
      
        '  ,ACUHB04                        =:ACUHB04                     ' +
        '    '
      
        '  ,ACUHB05                        =:ACUHB05                     ' +
        '    '
      
        '  ,ACUHB06                        =:ACUHB06                     ' +
        '    '
      
        '  ,ACUHB07                        =:ACUHB07                     ' +
        '    '
      
        '  ,ACUHB08                        =:ACUHB08                     ' +
        '    '
      
        '  ,ACUHB09                        =:ACUHB09                     ' +
        '    '
      
        '  ,ACUHB10                        =:ACUHB10                     ' +
        '    '
      
        '  ,ACUHB11                        =:ACUHB11                     ' +
        '    '
      
        '  ,ACUHB12                        =:ACUHB12                     ' +
        '    '
      
        '  ,ANTDB01                        =:ANTDB01                     ' +
        '    '
      
        '  ,ANTDB02                        =:ANTDB02                     ' +
        '    '
      
        '  ,ANTDB03                        =:ANTDB03                     ' +
        '    '
      
        '  ,ANTDB04                        =:ANTDB04                     ' +
        '    '
      
        '  ,ANTDB05                        =:ANTDB05                     ' +
        '    '
      
        '  ,ANTDB06                        =:ANTDB06                     ' +
        '    '
      
        '  ,ANTDB07                        =:ANTDB07                     ' +
        '    '
      
        '  ,ANTDB08                        =:ANTDB08                     ' +
        '    '
      
        '  ,ANTDB09                        =:ANTDB09                     ' +
        '    '
      
        '  ,ANTDB10                        =:ANTDB10                     ' +
        '    '
      
        '  ,ANTDB11                        =:ANTDB11                     ' +
        '    '
      
        '  ,ANTDB12                        =:ANTDB12                     ' +
        '    '
      
        '  ,ANTHB01                        =:ANTHB01                     ' +
        '    '
      
        '  ,ANTHB02                        =:ANTHB02                     ' +
        '    '
      
        '  ,ANTHB03                        =:ANTHB03                     ' +
        '    '
      
        '  ,ANTHB04                        =:ANTHB04                     ' +
        '    '
      
        '  ,ANTHB05                        =:ANTHB05                     ' +
        '    '
      
        '  ,ANTHB06                        =:ANTHB06                     ' +
        '    '
      
        '  ,ANTHB07                        =:ANTHB07                     ' +
        '    '
      
        '  ,ANTHB08                        =:ANTHB08                     ' +
        '    '
      
        '  ,ANTHB09                        =:ANTHB09                     ' +
        '    '
      
        '  ,ANTHB10                        =:ANTHB10                     ' +
        '    '
      
        '  ,ANTHB11                        =:ANTHB11                     ' +
        '    '
      
        '  ,ANTHB12                        =:ANTHB12                     ' +
        '    '
      
        '  ,ANTHB                          =:ANTHB                       ' +
        '    '
      
        '  ,ANTDB                          =:ANTDB                       ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,PRES01                         =:PRES01                      ' +
        '    '
      
        '  ,PRES02                         =:PRES02                      ' +
        '    '
      
        '  ,PRES03                         =:PRES03                      ' +
        '    '
      
        '  ,PRES04                         =:PRES04                      ' +
        '    '
      
        '  ,PRES05                         =:PRES05                      ' +
        '    '
      
        '  ,PRES06                         =:PRES06                      ' +
        '    '
      
        '  ,PRES07                         =:PRES07                      ' +
        '    '
      
        '  ,PRES08                         =:PRES08                      ' +
        '    '
      
        '  ,PRES09                         =:PRES09                      ' +
        '    '
      
        '  ,PRES10                         =:PRES10                      ' +
        '    '
      
        '  ,PRES11                         =:PRES11                      ' +
        '    '
      
        '  ,PRES12                         =:PRES12                      ' +
        '    '
      
        '  ,PRESTOT                        =:PRESTOT                     ' +
        '    '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,PAIS                           =:PAIS                        ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      
        '  ,DIAPAGO1                       =:DIAPAGO1                    ' +
        '    '
      
        '  ,DIAPAGO2                       =:DIAPAGO2                    ' +
        '    '
      
        '  ,OBSOLETO                       =:OBSOLETO                    ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,TIPOIVA                        =:TIPOIVA                     ' +
        '    '
      
        '  ,ARRENDADOR                     =:ARRENDADOR                  ' +
        '    '
      
        '  ,PROFESIONAL                    =:PROFESIONAL                 ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,FORMAPAGO                      =:FORMAPAGO                   ' +
        '    '
      'WHERE'
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    DataSource = SFiltroCartas
    Left = 375
    Top = 423
    object QSubcuentaPagoSUBCUENTA: TIBStringField
      FieldName = 'SUBCUENTA'
      Origin = 'SUBCTAS.SUBCUENTA'
      Required = True
      Size = 10
    end
    object QSubcuentaPagoDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'SUBCTAS.DESCRIPCION'
      Size = 80
    end
  end
  object QMovimientos: TIBDataSet
    Transaction = Transaccion
    OnCalcFields = QMovimientosCalcFields
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM DIARIO'
      'WHERE'
      
        '  ID_DIARIO                      =:old_ID_DIARIO                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO DIARIO'
      
        '  (RECARGO                        ,IVA                          ' +
        '  ,BASEIMPONIBLE                  ,IMPORTE                      ' +
        '  ,FECHA                          ,CUOTAIVA                     ' +
        '  ,CUOTARECARGO                   ,ASIENTONOMINA                ' +
        '  ,TIPOASIENTO                    ,CUENTA_ANALITICA             ' +
        '  ,ASIENTOPUNTEO                  ,ID_DIARIO                    ' +
        '  ,NUMEROFACTURA                  ,CONTRAPARTIDA                ' +
        '  ,SUBCUENTA                      ,ASIENTO                      ' +
        '  ,TIPODIARIO                     ,APUNTE                       ' +
        '  ,COMENTARIO                     ,ID_CONCEPTOS                 ' +
        '  ,PUNTEOIVA                      ,PUNTEO                       ' +
        '  ,DEBEHABER                      ,NIF                          ' +
        '  ,MONEDA                         ,EJERCICIO                    ' +
        '  ,SERIE                          )'
      'VALUES'
      
        '  (:RECARGO                        ,:IVA                        ' +
        '    ,:BASEIMPONIBLE                  ,:IMPORTE                  ' +
        '      ,:FECHA                          ,:CUOTAIVA               ' +
        '        ,:CUOTARECARGO                   ,:ASIENTONOMINA        ' +
        '          ,:TIPOASIENTO                    ,:CUENTA_ANALITICA   ' +
        '            ,:ASIENTOPUNTEO                  ,:ID_DIARIO        ' +
        '              ,:NUMEROFACTURA                  ,:CONTRAPARTIDA  ' +
        '                ,:SUBCUENTA                      ,:ASIENTO      ' +
        '                  ,:TIPODIARIO                     ,:APUNTE     ' +
        '                    ,:COMENTARIO                     ,:ID_CONCEP' +
        'TOS                   ,:PUNTEOIVA                      ,:PUNTEO ' +
        '                        ,:DEBEHABER                      ,:NIF  ' +
        '                          ,:MONEDA                         ,:EJE' +
        'RCICIO                      ,:SERIE                          )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM DIARIO'
      'WHERE'
      
        '  ID_DIARIO                      =?ID_DIARIO                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM DIARIO')
    ModifySQL.Strings = (
      'UPDATE DIARIO'
      'SET'
      
        '  RECARGO                        =:RECARGO                      ' +
        '   '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,BASEIMPONIBLE                  =:BASEIMPONIBLE               ' +
        '    '
      
        '  ,IMPORTE                        =:IMPORTE                     ' +
        '    '
      
        '  ,FECHA                          =:FECHA                       ' +
        '    '
      
        '  ,CUOTAIVA                       =:CUOTAIVA                    ' +
        '    '
      
        '  ,CUOTARECARGO                   =:CUOTARECARGO                ' +
        '    '
      
        '  ,ASIENTONOMINA                  =:ASIENTONOMINA               ' +
        '    '
      
        '  ,TIPOASIENTO                    =:TIPOASIENTO                 ' +
        '    '
      
        '  ,CUENTA_ANALITICA               =:CUENTA_ANALITICA            ' +
        '    '
      
        '  ,ASIENTOPUNTEO                  =:ASIENTOPUNTEO               ' +
        '    '
      
        '  ,NUMEROFACTURA                  =:NUMEROFACTURA               ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,SUBCUENTA                      =:SUBCUENTA                   ' +
        '    '
      
        '  ,ASIENTO                        =:ASIENTO                     ' +
        '    '
      
        '  ,TIPODIARIO                     =:TIPODIARIO                  ' +
        '    '
      
        '  ,APUNTE                         =:APUNTE                      ' +
        '    '
      
        '  ,COMENTARIO                     =:COMENTARIO                  ' +
        '    '
      
        '  ,ID_CONCEPTOS                   =:ID_CONCEPTOS                ' +
        '    '
      
        '  ,PUNTEOIVA                      =:PUNTEOIVA                   ' +
        '    '
      
        '  ,PUNTEO                         =:PUNTEO                      ' +
        '    '
      
        '  ,DEBEHABER                      =:DEBEHABER                   ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      
        '  ,MONEDA                         =:MONEDA                      ' +
        '    '
      
        '  ,EJERCICIO                      =:EJERCICIO                   ' +
        '    '
      
        '  ,SERIE                          =:SERIE                       ' +
        '    '
      'WHERE'
      
        '  ID_DIARIO                      =:ID_DIARIO                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    DataSource = SFichero
    Left = 231
    Top = 359
    object QMovimientosASIENTO: TIntegerField
      DisplayWidth = 9
      FieldName = 'ASIENTO'
      Origin = 'DIARIO.ASIENTO'
      DisplayFormat = '###,###,###'
    end
    object QMovimientosFECHA: TDateTimeField
      DisplayWidth = 9
      FieldName = 'FECHA'
      Origin = 'DIARIO.FECHA'
    end
    object QMovimientosID_CONCEPTOS: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'CTO'
      DisplayWidth = 4
      FieldName = 'ID_CONCEPTOS'
      Origin = 'DIARIO.ID_CONCEPTOS'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QMovimientosDescComentario: TStringField
      DisplayLabel = 'DESCRIPCION DEL APUNTE'
      DisplayWidth = 44
      FieldKind = fkCalculated
      FieldName = 'DescComentario'
      Size = 60
      Calculated = True
    end
    object QMovimientosDEBEHABER: TIBStringField
      Alignment = taRightJustify
      DisplayLabel = 'T'
      DisplayWidth = 2
      FieldName = 'DEBEHABER'
      Origin = 'DIARIO.DEBEHABER'
      FixedChar = True
      Size = 1
    end
    object QMovimientosIMPORTE: TFloatField
      DisplayWidth = 15
      FieldName = 'IMPORTE'
      Origin = 'DIARIO.IMPORTE'
      DisplayFormat = '###,###,##0.#0'
    end
    object QMovimientosCONTRAPARTIDA: TIBStringField
      Alignment = taRightJustify
      DisplayLabel = 'CONTRAP.'
      DisplayWidth = 14
      FieldName = 'CONTRAPARTIDA'
      Origin = 'DIARIO.CONTRAPARTIDA'
      Size = 10
    end
    object QMovimientosCOMENTARIO: TIBStringField
      DisplayWidth = 40
      FieldName = 'COMENTARIO'
      Origin = 'DIARIO.COMENTARIO'
      Visible = False
      Size = 40
    end
    object QMovimientosDESCCONCEPTO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCCONCEPTO'
      LookupDataSet = DMContaRef.QConceptos
      LookupKeyFields = 'ID_CONCEPTOS'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'ID_CONCEPTOS'
      Visible = False
      Size = 30
      Lookup = True
    end
    object QMovimientosTIPOASIENTO: TIntegerField
      FieldName = 'TIPOASIENTO'
      Origin = 'DIARIO.TIPOASIENTO'
      Visible = False
    end
    object QMovimientosASIENTONOMINA: TIntegerField
      FieldName = 'ASIENTONOMINA'
      Origin = 'DIARIO.ASIENTONOMINA'
      Visible = False
    end
    object QMovimientosNUMEROFACTURA: TIBStringField
      FieldName = 'NUMEROFACTURA'
      Origin = 'DIARIO.NUMEROFACTURA'
      Size = 10
    end
    object QMovimientosEJERCICIO: TIntegerField
      FieldName = 'EJERCICIO'
      Origin = 'DIARIO.EJERCICIO'
    end
    object QMovimientosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = 'DIARIO.SERIE'
      Size = 5
    end
  end
  object SMovimientos: TDataSource
    AutoEdit = False
    DataSet = QMovimientos
    Left = 301
    Top = 351
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
    Left = 73
    Top = 234
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'SUBCUENTAS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SUBCUENTA=SUBCUENTA'
      'DESCRIPCION=DESCRIPCION'
      'SUMADB=SUMADB'
      'SUMAHB=SUMAHB'
      'Saldo=Saldo'
      'ACUDB01=ACUDB01'
      'ACUDB02=ACUDB02'
      'ACUDB03=ACUDB03'
      'ACUDB04=ACUDB04'
      'ACUDB05=ACUDB05'
      'ACUDB06=ACUDB06'
      'ACUDB07=ACUDB07'
      'ACUDB08=ACUDB08'
      'ACUDB09=ACUDB09'
      'ACUDB10=ACUDB10'
      'ACUDB11=ACUDB11'
      'ACUDB12=ACUDB12'
      'ACUHB01=ACUHB01'
      'ACUHB02=ACUHB02'
      'ACUHB03=ACUHB03'
      'ACUHB04=ACUHB04'
      'ACUHB05=ACUHB05'
      'ACUHB06=ACUHB06'
      'ACUHB07=ACUHB07'
      'ACUHB08=ACUHB08'
      'ACUHB09=ACUHB09'
      'ACUHB10=ACUHB10'
      'ACUHB11=ACUHB11'
      'ACUHB12=ACUHB12'
      'ANTDB=ANTDB'
      'ANTDB01=ANTDB01'
      'ANTDB02=ANTDB02'
      'ANTDB03=ANTDB03'
      'ANTDB04=ANTDB04'
      'ANTDB05=ANTDB05'
      'ANTDB06=ANTDB06'
      'ANTDB07=ANTDB07'
      'ANTDB08=ANTDB08'
      'ANTDB09=ANTDB09'
      'ANTDB10=ANTDB10'
      'ANTDB11=ANTDB11'
      'ANTDB12=ANTDB12'
      'ANTHB=ANTHB'
      'ANTHB01=ANTHB01'
      'ANTHB02=ANTHB02'
      'ANTHB03=ANTHB03'
      'ANTHB04=ANTHB04'
      'ANTHB05=ANTHB05'
      'ANTHB06=ANTHB06'
      'ANTHB07=ANTHB07'
      'ANTHB08=ANTHB08'
      'ANTHB09=ANTHB09'
      'ANTHB10=ANTHB10'
      'ANTHB11=ANTHB11'
      'ANTHB12=ANTHB12'
      'ARRENDADOR=ARRENDADOR'
      'CONTRAPARTIDA=CONTRAPARTIDA'
      'DIRECCION=DIRECCION'
      'FAX=FAX'
      'IVA=IVA'
      'PROFESIONAL=PROFESIONAL'
      'RECARGO=RECARGO'
      'TELEFONO=TELEFONO'
      'TIPOIVA=TIPOIVA'
      'DIRECCION1=DIRECCION1'
      'NIF=NIF'
      'CODPOSTAL=CODPOSTAL'
      'POBLACION=POBLACION'
      'PROVINCIA=PROVINCIA'
      'PAIS=PAIS'
      'NUMERO=NUMERO'
      'FORMAPAGO=FORMAPAGO'
      'DIAPAGO1=DIAPAGO1'
      'DIAPAGO2=DIAPAGO2'
      'PRES01=PRES01'
      'PRES02=PRES02'
      'PRES03=PRES03'
      'PRES04=PRES04'
      'PRES05=PRES05'
      'PRES06=PRES06'
      'PRES07=PRES07'
      'PRES08=PRES08'
      'PRES09=PRES09'
      'PRES10=PRES10'
      'PRES11=PRES11'
      'PRES12=PRES12'
      'PRESTOT=PRESTOT'
      'OBSOLETO=OBSOLETO'
      'DESCFORMAPAGO=DESCFORMAPAGO'
      'DIAPAGO3=DIAPAGO3'
      'ABREVIATURA=ABREVIATURA'
      'INTRACOMUNITARIO=INTRACOMUNITARIO'
      'SUBCTARET=SUBCTARET')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 152
    Top = 169
  end
  object ReportDetails: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637746180600000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42793.565522361110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 75
    Top = 185
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'SUBCUENTAS'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 114.001963390000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Label5: TfrxMemoView
          Left = 291.450896890000000000
          Top = 36.000023250000000000
          Width = 512.326630090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE SUBCUENTAS')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 61.001614200000000000
          Width = 1015.004120090000000000
          Height = 53.000349190000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object InformeLabel4: TfrxMemoView
          Left = 116.999130680000000000
          Top = 70.000675130000000000
          Width = 231.998889990000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object lbAsiento: TfrxMemoView
          Left = 44.001288260000000000
          Top = 70.000675130000000000
          Width = 68.999099680000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Subcuenta')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 377.000558440000000000
          Top = 85.999425620000000000
          Width = 80.999107430000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Forma de Pago')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 118.000706130000000000
          Top = 85.999425620000000000
          Width = 123.001024320000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tel'#233'fono')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 243.001101820000000000
          Top = 85.999425620000000000
          Width = 123.001024320000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telef. 2')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 697.002024950000000000
          Top = 85.999425620000000000
          Width = 80.999107430000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'D'#237'as de Pago')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 377.000558440000000000
          Top = 70.000675130000000000
          Width = 353.000542940000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Direcci'#243'n')
          ParentFont = False
        end
        object Label7: TfrxMemoView
          Left = 836.001799760000000000
          Top = 70.000675130000000000
          Width = 49.999402370000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 888.000573500000000000
          Top = 70.000675130000000000
          Width = 167.002312580000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Poblaci'#243'n')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 37.795300000000000000
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
          Left = 853.614409560000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 864.616621390000000000
          Top = 3.998742740000001000
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
          Left = 864.616621390000000000
          Top = 18.999697310000000000
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
          Left = 913.614448310000000000
          Top = 18.999697310000000000
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
          Left = 907.616334200000000000
          Top = 3.998742740000001000
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
          Left = 998.850408870000000000
          Top = 3.998742740000001000
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
          Left = 860.307328560000000000
          Top = 41.029949050000000000
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
          Left = 916.864215480000000000
          Top = 41.029949050000000000
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
        Height = 37.001598700000000000
        Top = 154.960730000000000000
        Width = 1122.520410000000000000
        DataSet = ReportDBLInk
        DataSetName = 'SUBCUENTAS'
        RowCount = 0
        object DBText7: TfrxMemoView
          Left = 116.999130680000000000
          Top = 1.001575449999990000
          Width = 251.002366830000000000
          Height = 13.999379120000000000
          DataField = 'DESCRIPCION'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."DESCRIPCION"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 44.001288260000000000
          Top = 1.001575449999990000
          Width = 68.999099680000000000
          Height = 13.999379120000000000
          DataField = 'SUBCUENTA'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."SUBCUENTA"]')
          ParentFont = False
        end
        object DBText2: TfrxMemoView
          Left = 377.000558440000000000
          Top = 1.001575449999990000
          Width = 231.998889990000000000
          Height = 13.999379120000000000
          DataField = 'DIRECCION'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."DIRECCION"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 611.002599330000000000
          Top = 1.001575449999990000
          Width = 222.002033140000000000
          Height = 13.999379120000000000
          DataField = 'DIRECCION1'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."DIRECCION1"]')
          ParentFont = False
        end
        object DBText4: TfrxMemoView
          Left = 836.001799760000000000
          Top = 1.001575449999990000
          Width = 49.999402370000000000
          Height = 13.999379120000000000
          DataField = 'NUMERO'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUBCUENTAS."NUMERO"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 888.000573500000000000
          Top = 1.001575449999990000
          Width = 167.002312580000000000
          Height = 13.999379120000000000
          DataField = 'POBLACION'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."POBLACION"]')
          ParentFont = False
        end
        object DBText8: TfrxMemoView
          Left = 428.001536260000000000
          Top = 13.999379119999990000
          Width = 231.998889990000000000
          Height = 13.999379120000000000
          DataField = 'DESCFORMAPAGO'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."DESCFORMAPAGO"]')
          ParentFont = False
        end
        object DBText9: TfrxMemoView
          Left = 377.000558440000000000
          Top = 13.999379119999990000
          Width = 46.998455550000000000
          Height = 13.999379120000000000
          DataField = 'FORMAPAGO'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."FORMAPAGO"]')
          ParentFont = False
        end
        object DBText10: TfrxMemoView
          Left = 697.002024950000000000
          Top = 13.999379119999990000
          Width = 37.001598700000000000
          Height = 13.999379120000000000
          DataField = 'DIAPAGO1'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."DIAPAGO1"]')
          ParentFont = False
        end
        object DBText11: TfrxMemoView
          Left = 739.000162310000000000
          Top = 13.999379119999990000
          Width = 37.001598700000000000
          Height = 13.999379120000000000
          DataField = 'DIAPAGO2'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."DIAPAGO2"]')
          ParentFont = False
        end
        object DBText12: TfrxMemoView
          Left = 118.000706130000000000
          Top = 13.999379119999990000
          Width = 123.001024320000000000
          Height = 13.999379120000000000
          DataField = 'TELEFONO'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."TELEFONO"]')
          ParentFont = False
        end
        object DBText13: TfrxMemoView
          Left = 243.001101820000000000
          Top = 13.999379119999990000
          Width = 123.001024320000000000
          Height = 13.999379120000000000
          DataField = 'FAX'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."FAX"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 253.228510000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 42.001916890000000000
          Top = 6.999689560000008000
          Width = 1015.004120090000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object ReportSubCuentas: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.640118981500000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42793.557956261570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 75
    Top = 145
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'SUBCUENTAS'
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
        Height = 116.001334760000000000
        Top = 18.897650000000000000
        Width = 745.701269000000000000
        object Shape3: TfrxShapeView
          Left = 39.998765990000000000
          Top = 85.001629700000000000
          Width = 655.000108060000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object InformeLabel4: TfrxMemoView
          Left = 63.000985570000000000
          Top = 94.000690630000000000
          Width = 66.338310560000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Subcuenta')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 135.001032070000000000
          Top = 94.000690630000000000
          Width = 102.576444200000000000
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
          Left = 159.276953260000000000
          Top = 63.998781490000000000
          Width = 300.725863510000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE SUBCUENTAS')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 468.000302250000000000
          Top = 94.000690630000000000
          Width = 33.558446870000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C.I.F.')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 568.002886519999900000
          Top = 94.000690630000000000
          Width = 92.677855130000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contrapartida')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 26.456710000000000000
          Top = 20.897021370000000000
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
          Left = 513.456709560000100000
          Top = 18.897650000000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 524.458921390000000000
          Top = 22.896392740000000000
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
          Left = 524.458921390000000000
          Top = 37.897347310000000000
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
          Left = 573.456748309999900000
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
          Left = 567.458634200000000000
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
          Left = 658.692708870000000000
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
          Left = 520.149628560000000000
          Top = 59.927599050000000000
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
          Left = 576.706515480000000000
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
        DataSetName = 'SUBCUENTAS'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 135.001032070000000000
          Top = 1.999371370000006000
          Width = 319.668867870000000000
          Height = 13.001583200000000000
          DataField = 'DESCRIPCION'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUBCUENTAS."DESCRIPCION"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 54.999720560000000000
          Top = 1.999371370000006000
          Width = 70.000675130000000000
          Height = 13.001583200000000000
          DataField = 'SUBCUENTA'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUBCUENTAS."SUBCUENTA"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 468.000302250000000000
          Top = 1.999371370000006000
          Width = 81.252335940000000000
          Height = 13.001583200000000000
          DataField = 'NIF'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUBCUENTAS."NIF"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 557.000674690000000000
          Top = 1.999371370000006000
          Width = 114.678499260000000000
          Height = 13.001583200000000000
          DataField = 'CONTRAPARTIDA'
          DataSet = ReportDBLInk
          DataSetName = 'SUBCUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUBCUENTAS."CONTRAPARTIDA"]')
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
  object QVAT: TIBDataSet
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT TIPO,'
      '             DESCRIPCION '
      'FROM IVAR'
      'ORDER BY DESCRIPCION')
    ParamCheck = True
    UniDirectional = False
    Left = 555
    Top = 145
    object QVATTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object QVATDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Size = 35
    end
  end
  object SVAT: TDataSource
    AutoEdit = False
    DataSet = QVAT
    Left = 613
    Top = 143
  end
end
