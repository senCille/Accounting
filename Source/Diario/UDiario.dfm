object WDiario: TWDiario
  Left = 598
  Top = 240
  Caption = 'Gesti'#243'n de Asientos'
  ClientHeight = 528
  ClientWidth = 782
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
  object TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 41
    Align = alTop
    TabOrder = 0
    object lTitulo: TLabel
      Left = 20
      Top = 9
      Width = 147
      Height = 18
      AutoSize = False
      Caption = 'Gesti'#243'n de Asientos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 20
      Top = 30
      Width = 697
      Height = 1
    end
    object DBText1: TDBText
      Left = 172
      Top = 9
      Width = 507
      Height = 19
      DataField = 'DESCSUBCUENTA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 782
    Height = 456
    Align = alClient
    TabOrder = 1
    object Panel: TPanel
      Left = 668
      Top = 1
      Width = 113
      Height = 454
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object SpFiltro: TSpeedButton
        Left = 30
        Top = 353
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
        OnClick = SpFiltroClick
      end
      object BtnNew: TButton
        Left = 8
        Top = 25
        Width = 97
        Height = 25
        Cursor = crHandPoint
        Caption = '&Nuevo Asiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnNavAnadirClick
      end
      object BtnReports: TButton
        Left = 8
        Top = 230
        Width = 97
        Height = 25
        Cursor = crHandPoint
        Caption = '&Listados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnReportsClick
      end
      object BtnModify: TButton
        Left = 8
        Top = 53
        Width = 97
        Height = 25
        Cursor = crHandPoint
        Caption = '&Modificar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BtnModifyClick
      end
      object BtnDuplicate: TButton
        Left = 8
        Top = 109
        Width = 97
        Height = 25
        Cursor = crHandPoint
        Caption = '&Duplicar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 3
        OnClick = BtnDuplicateClick
      end
      object BtnDueDates: TButton
        Left = 8
        Top = 137
        Width = 97
        Height = 25
        Cursor = crHandPoint
        Caption = '&Vencimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BtnDueDatesClick
      end
      object BtnSelect: TButton
        Left = 8
        Top = 260
        Width = 97
        Height = 25
        Cursor = crHandPoint
        Caption = 'S&eleccionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BtnSelectClick
      end
      object BtnBookEntryBaja: TButton
        Left = 8
        Top = 165
        Width = 97
        Height = 25
        Cursor = crHandPoint
        Caption = 'As&iento Baja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = BtnBookEntryBajaClick
      end
      object BtnRenum: TButton
        Left = 8
        Top = 194
        Width = 97
        Height = 25
        Cursor = crHandPoint
        Caption = '&Renumerar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BtnRenumClick
      end
      object BtnDelete: TButton
        Left = 8
        Top = 80
        Width = 97
        Height = 25
        Cursor = crHandPoint
        Caption = 'Eliminar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = BtnDeleteClick
      end
      object DBNavigator: TDBNavigator
        Left = 8
        Top = 294
        Width = 96
        Height = 25
        DataSource = SFichero
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 9
      end
    end
    object PageControl: TPageControl
      Left = 1
      Top = 1
      Width = 667
      Height = 454
      ActivePage = TabSheetDiario
      Align = alClient
      TabOrder = 1
      object TabSheetDiario: TTabSheet
        Caption = 'Diario'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Buscar: TGroupBox
          Left = 0
          Top = 0
          Width = 659
          Height = 60
          Align = alTop
          Caption = '  Buscar  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 4
            Top = 17
            Width = 37
            Height = 14
            Caption = 'Asiento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 52
            Top = 17
            Width = 37
            Height = 14
            Caption = 'Factura'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 268
            Top = 17
            Width = 52
            Height = 14
            Caption = 'Subcuenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 348
            Top = 17
            Width = 83
            Height = 14
            Caption = 'Desc. Subcuenta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 470
            Top = 17
            Width = 65
            Height = 14
            Caption = 'Contrapartida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 551
            Top = 17
            Width = 96
            Height = 14
            Caption = 'Desc. Contrapartida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 167
            Top = 17
            Width = 35
            Height = 14
            Caption = 'Importe'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object EditFiltroBAsiento: TDBEdit
            Left = 4
            Top = 30
            Width = 46
            Height = 20
            AutoSize = False
            DataField = 'BAsiento'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = LimpiarFiltro
          end
          object EditFiltroBFactura: TDBEdit
            Left = 52
            Top = 30
            Width = 111
            Height = 21
            DataField = 'BFACTURA'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 20
            ParentFont = False
            TabOrder = 1
            OnEnter = LimpiarFiltroFacturas
          end
          object EditFiltroBSubcuenta: TDBEdit
            Left = 268
            Top = 30
            Width = 79
            Height = 21
            DataField = 'BSubcuenta'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 3
            OnEnter = LimpiarFiltro
          end
          object EditFiltroBDescSubcuenta: TDBEdit
            Left = 348
            Top = 30
            Width = 121
            Height = 21
            DataField = 'BDescSubcuenta'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 80
            ParentFont = False
            TabOrder = 4
            OnEnter = LimpiarFiltro
          end
          object EditFiltroBContrapartida: TDBEdit
            Left = 470
            Top = 30
            Width = 79
            Height = 21
            DataField = 'BContrapartida'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 5
            OnEnter = LimpiarFiltro
          end
          object EditFiltroBDescContrapartida: TDBEdit
            Left = 551
            Top = 30
            Width = 107
            Height = 21
            DataField = 'BDescContrapartida'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 80
            ParentFont = False
            TabOrder = 6
            OnEnter = LimpiarFiltro
          end
          object EditFiltroBImporte: TDBEdit
            Left = 165
            Top = 30
            Width = 101
            Height = 21
            DataField = 'BImporte'
            DataSource = SFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = LimpiarFiltro
          end
        end
        object DataGrid: TDBGrid
          Left = 0
          Top = 60
          Width = 659
          Height = 366
          Align = alClient
          DataSource = SFichero
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
          OnDrawColumnCell = DataGridDrawColumnCell
          OnDblClick = DataGridDblClick
          OnMouseDown = DataGridMouseDown
          OnTitleClick = DataGridTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ASIENTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APUNTE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBCUENTA'
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
              FieldName = 'CalcImporte'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRAPARTIDA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PUNTEO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCSUBCUENTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCCONTRAPARTIDA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EJERCICIO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIE'
              Visible = True
            end>
        end
      end
      object TabSheetFiltro: TTabSheet
        Caption = 'Filtro'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 659
          Height = 426
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 31
            Top = 2
            Width = 521
            Height = 383
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            object Label2: TLabel
              Left = 20
              Top = 52
              Width = 29
              Height = 13
              Caption = 'Fecha'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label24: TLabel
              Left = 159
              Top = 9
              Width = 30
              Height = 13
              Caption = 'Desde'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 309
              Top = 8
              Width = 28
              Height = 13
              Caption = 'Hasta'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 20
              Top = 28
              Width = 36
              Height = 13
              Caption = 'Asiento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 20
              Top = 75
              Width = 35
              Height = 14
              Caption = 'Importe'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 20
              Top = 101
              Width = 52
              Height = 14
              Caption = 'Subcuenta'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 20
              Top = 151
              Width = 46
              Height = 14
              Caption = 'Concepto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 20
              Top = 126
              Width = 65
              Height = 14
              Caption = 'Contrapartida'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object EditFiltroAsientoDesde: TDBEdit
              Left = 121
              Top = 24
              Width = 111
              Height = 21
              DataField = 'AsientoDesde'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object EditFiltroFechaDesde: TDBEdit
              Left = 121
              Top = 48
              Width = 111
              Height = 21
              DataField = 'FechaDesde'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object EditFiltroFechaHasta: TDBEdit
              Left = 269
              Top = 48
              Width = 112
              Height = 21
              DataField = 'FechaHasta'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object EditFiltroAsientoHasta: TDBEdit
              Left = 269
              Top = 24
              Width = 112
              Height = 21
              DataField = 'AsientoHasta'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object EditFiltroImporteDesde: TDBEdit
              Left = 121
              Top = 72
              Width = 111
              Height = 21
              DataField = 'ImporteDesde'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnExit = EditFiltroImporteDesdeExit
            end
            object EditFiltroImporteHasta: TDBEdit
              Left = 269
              Top = 72
              Width = 112
              Height = 21
              DataField = 'ImporteHasta'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object ComboBoxDESCSUBCUENTA: TDBLookupComboBox
              Left = 220
              Top = 98
              Width = 276
              Height = 21
              DataField = 'Subcuenta'
              DataSource = SFiltro
              DropDownRows = 10
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 7
            end
            object ComboBoxSUBCUENTA: TDBLookupComboBox
              Left = 121
              Top = 98
              Width = 100
              Height = 21
              DataField = 'Subcuenta'
              DataSource = SFiltro
              DropDownRows = 10
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 6
            end
            object ComboBoxDESCCONCEPTO: TDBLookupComboBox
              Left = 220
              Top = 148
              Width = 276
              Height = 21
              DataField = 'Concepto'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              KeyField = 'ID_CONCEPTOS'
              ListField = 'DESCRIPCION'
              ListSource = SConceptos
              ParentFont = False
              TabOrder = 11
            end
            object ComboBoxCONCEPTO: TDBLookupComboBox
              Left = 121
              Top = 148
              Width = 100
              Height = 21
              DataField = 'Concepto'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              KeyField = 'ID_CONCEPTOS'
              ListField = 'ID_CONCEPTOS'
              ListSource = SConceptos
              ParentFont = False
              TabOrder = 10
            end
            object GroupBox1: TGroupBox
              Left = 11
              Top = 174
              Width = 499
              Height = 127
              Caption = ' Anal'#237'tica '
              TabOrder = 12
              object Label6: TLabel
                Left = 11
                Top = 20
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
                Left = 11
                Top = 44
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
              object Label5: TLabel
                Left = 258
                Top = 44
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
                Left = 11
                Top = 83
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
                Left = 258
                Top = 83
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
              object ComboBoxCUENTA_ANALITICA: TDBLookupComboBox
                Left = 110
                Top = 18
                Width = 100
                Height = 21
                DataField = 'CUENTA'
                DataSource = SFiltro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                KeyField = 'CUENTA'
                ListField = 'CUENTA'
                ListSource = SAnaliticas
                ParentFont = False
                TabOrder = 0
              end
              object ComboBoxDELEGACION: TDBLookupComboBox
                Left = 10
                Top = 58
                Width = 229
                Height = 21
                DataField = 'ID_DELEGACION'
                DataSource = SFiltro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                KeyField = 'ID_DELEGACION'
                ListField = 'NOMBRE'
                ListSource = SDelegacion
                ParentFont = False
                TabOrder = 1
              end
              object ComboBoxDEPARTAMENTO: TDBLookupComboBox
                Left = 258
                Top = 58
                Width = 229
                Height = 21
                DataField = 'ID_DEPARTAMENTO'
                DataSource = SFiltro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                KeyField = 'ID_DEPARTAMENTO'
                ListField = 'NOMBRE'
                ListSource = SDepartamento
                ParentFont = False
                TabOrder = 2
              end
              object ComboBoxSECCION: TDBLookupComboBox
                Left = 11
                Top = 97
                Width = 229
                Height = 21
                DataField = 'ID_SECCION'
                DataSource = SFiltro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                KeyField = 'ID_SECCION'
                ListField = 'NOMBRE'
                ListSource = SSeccion
                ParentFont = False
                TabOrder = 3
              end
              object ComboBoxPROYECTO: TDBLookupComboBox
                Left = 258
                Top = 97
                Width = 229
                Height = 21
                DataField = 'ID_PROYECTO'
                DataSource = SFiltro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                KeyField = 'ID_PROYECTO'
                ListField = 'NOMBRE'
                ListSource = SProyecto
                ParentFont = False
                TabOrder = 4
              end
              object ComboBoxDESCCUENTA_ANALITICA: TDBLookupComboBox
                Left = 210
                Top = 18
                Width = 276
                Height = 21
                DataField = 'CUENTA'
                DataSource = SFiltro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                KeyField = 'CUENTA'
                ListField = 'NOMBRE'
                ListSource = SAnaliticas
                ParentFont = False
                TabOrder = 5
              end
            end
            object ComboBoxDESCCONTRAPARTIDA: TDBLookupComboBox
              Left = 220
              Top = 123
              Width = 276
              Height = 21
              DataField = 'Contrapartida'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 9
            end
            object ComboBoxCONTRAPARTIDA: TDBLookupComboBox
              Left = 121
              Top = 123
              Width = 100
              Height = 21
              DataField = 'Contrapartida'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 8
            end
            object RadioGroupCLASE_CONCEPTO: TDBRadioGroup
              Left = 21
              Top = 316
              Width = 231
              Height = 43
              Caption = ' Clase de Conceptos '
              Columns = 3
              DataField = 'TipoConcepto'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Items.Strings = (
                'Todos'
                'Normal'
                'Especial')
              ParentFont = False
              TabOrder = 13
              TabStop = True
              Values.Strings = (
                'T'
                'N'
                'E')
            end
            object RadioGroupMONEDA: TDBRadioGroup
              Left = 269
              Top = 303
              Width = 96
              Height = 73
              Caption = ' Moneda '
              DataField = 'Moneda'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Items.Strings = (
                'Euros'
                'Pesetas')
              ParentFont = False
              TabOrder = 14
              TabStop = True
              Values.Strings = (
                'E'
                'P')
            end
            object RadioGroupPUNTEO: TDBRadioGroup
              Left = 400
              Top = 303
              Width = 96
              Height = 73
              Caption = ' Punteados '
              DataField = 'Punteo'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Items.Strings = (
                'Ambos'
                'S'#237
                'No')
              ParentFont = False
              TabOrder = 15
              TabStop = True
              Values.Strings = (
                'A'
                'S'
                'N')
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 497
    Width = 782
    Height = 31
    Align = alBottom
    TabOrder = 2
    object Label12: TLabel
      Left = 6
      Top = 7
      Width = 147
      Height = 18
      AutoSize = False
      Caption = 'Contrapartida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 158
      Top = 6
      Width = 507
      Height = 19
      DataField = 'DESCCONTRAPARTIDA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
    Left = 587
    Top = 83
  end
  object QFichero: TIBDataSet
    Database = DMRef.BDContab
    Transaction = Transaccion
    OnCalcFields = QFicheroCalcFields
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
    Left = 527
    Top = 83
    object QFicheroASIENTO: TIntegerField
      DisplayWidth = 8
      FieldName = 'ASIENTO'
      Origin = 'DIARIO.ASIENTO'
      DisplayFormat = '###,###,###'
    end
    object QFicheroAPUNTE: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'APT'
      DisplayWidth = 4
      FieldName = 'APUNTE'
      Origin = 'DIARIO.APUNTE'
    end
    object QFicheroFECHA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'FECHA'
      Origin = 'DIARIO.FECHA'
    end
    object QFicheroSUBCUENTA: TIBStringField
      DisplayLabel = 'SUBCTA'
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Origin = 'DIARIO.SUBCUENTA'
      Size = 10
    end
    object QFicheroID_CONCEPTOS: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'CTO'
      DisplayWidth = 4
      FieldName = 'ID_CONCEPTOS'
      Origin = 'DIARIO.ID_CONCEPTOS'
      FixedChar = True
      Size = 3
    end
    object QFicheroDescApunte: TStringField
      DisplayLabel = 'DESCRIPCI'#211'N DEL APUNTE'
      DisplayWidth = 40
      FieldKind = fkCalculated
      FieldName = 'DescApunte'
      Size = 100
      Calculated = True
    end
    object QFicheroDEBEHABER: TIBStringField
      Alignment = taRightJustify
      DisplayLabel = 'T'
      DisplayWidth = 2
      FieldName = 'DEBEHABER'
      Origin = 'DIARIO.DEBEHABER'
      FixedChar = True
      Size = 1
    end
    object QFicheroCalcImporte: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'IMPORTE'
      DisplayWidth = 12
      FieldKind = fkCalculated
      FieldName = 'CalcImporte'
      Calculated = True
    end
    object QFicheroCONTRAPARTIDA: TIBStringField
      Alignment = taRightJustify
      DisplayLabel = 'CONTRA'
      DisplayWidth = 10
      FieldName = 'CONTRAPARTIDA'
      Origin = 'DIARIO.CONTRAPARTIDA'
      Size = 10
    end
    object QFicheroPUNTEO: TIBStringField
      DisplayLabel = 'P'
      DisplayWidth = 1
      FieldName = 'PUNTEO'
      Origin = 'DIARIO.PUNTEO'
      FixedChar = True
      Size = 1
    end
    object QFicheroDESCSUBCUENTA: TIBStringField
      DisplayLabel = 'DESCRIPCI'#211'N DE SUBCUENTA'
      DisplayWidth = 47
      FieldName = 'DESCSUBCUENTA'
      Size = 80
    end
    object QFicheroDESCCONTRAPARTIDA: TStringField
      DisplayLabel = 'DESCRIPCI'#211'N DE CONTRAPARTIDA'
      DisplayWidth = 46
      FieldName = 'DESCCONTRAPARTIDA'
      Size = 80
    end
    object QFicheroEJERCICIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'EJERCICIO'
      Origin = 'DIARIO.EJERCICIO'
    end
    object QFicheroSERIE: TIBStringField
      DisplayWidth = 5
      FieldName = 'SERIE'
      Origin = 'DIARIO.SERIE'
      Size = 5
    end
    object QFicheroCUENTA_ANALITICA: TIBStringField
      DisplayLabel = 'ANAL'#205'TICA'
      DisplayWidth = 10
      FieldName = 'CUENTA_ANALITICA'
      Origin = 'DIARIO.CUENTA_ANALITICA'
      Visible = False
      Size = 10
    end
    object QFicheroDESCCONCEPTO: TIBStringField
      FieldName = 'DESCCONCEPTO'
      Visible = False
      Size = 30
    end
    object QFicheroDebe: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Debe'
      Visible = False
      Calculated = True
    end
    object QFicheroHaber: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Haber'
      Visible = False
      Calculated = True
    end
    object QFicheroFechaInicial: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'FechaInicial'
      Visible = False
      Calculated = True
    end
    object QFicheroFechaFinal: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'FechaFinal'
      Visible = False
      Calculated = True
    end
    object QFicheroFechaImpresion: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'FechaImpresion'
      Visible = False
      Calculated = True
    end
    object QFicheroID_DIARIO: TIntegerField
      FieldName = 'ID_DIARIO'
      Origin = 'DIARIO.ID_DIARIO'
      Required = True
      Visible = False
    end
    object QFicheroBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
      Origin = 'DIARIO.BASEIMPONIBLE'
      Visible = False
    end
    object QFicheroCOMENTARIO: TIBStringField
      FieldName = 'COMENTARIO'
      Origin = 'DIARIO.COMENTARIO'
      Visible = False
      Size = 40
    end
    object QFicheroIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'DIARIO.IMPORTE'
      Visible = False
    end
    object QFicheroIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'DIARIO.IVA'
      Visible = False
    end
    object QFicheroNIF: TIBStringField
      FieldName = 'NIF'
      Origin = 'DIARIO.NIF'
      Visible = False
      Size = 15
    end
    object QFicheroMONEDA: TIBStringField
      FieldName = 'MONEDA'
      Origin = 'DIARIO.MONEDA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QFicheroNUMEROFACTURA: TIBStringField
      FieldName = 'NUMEROFACTURA'
      Origin = 'DIARIO.NUMEROFACTURA'
      Visible = False
      Size = 10
    end
    object QFicheroRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'DIARIO.RECARGO'
      Visible = False
    end
    object QFicheroASIENTOPUNTEO: TIntegerField
      FieldName = 'ASIENTOPUNTEO'
      Origin = 'DIARIO.ASIENTOPUNTEO'
      Visible = False
    end
    object QFicheroPUNTEOIVA: TIBStringField
      FieldName = 'PUNTEOIVA'
      Origin = 'DIARIO.PUNTEOIVA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QFicheroTIPODIARIO: TIBStringField
      FieldName = 'TIPODIARIO'
      Origin = 'DIARIO.TIPODIARIO'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object QFicheroCUOTAIVA: TFloatField
      FieldName = 'CUOTAIVA'
      Origin = 'DIARIO.CUOTAIVA'
      Visible = False
    end
    object QFicheroCUOTARECARGO: TFloatField
      FieldName = 'CUOTARECARGO'
      Origin = 'DIARIO.CUOTARECARGO'
      Visible = False
    end
    object QFicheroABREVIATURA: TIBStringField
      FieldName = 'ABREVIATURA'
      Origin = 'SUBCTAS.ABREVIATURA'
      Visible = False
      Size = 10
    end
    object QFicheroTIPOASIENTO: TIntegerField
      FieldName = 'TIPOASIENTO'
      Origin = 'DIARIO.TIPOASIENTO'
      Visible = False
    end
    object QFicheroASIENTONOMINA: TIntegerField
      FieldName = 'ASIENTONOMINA'
      Origin = 'DIARIO.ASIENTONOMINA'
      Visible = False
    end
  end
  object Transaccion: TIBTransaction
    DefaultDatabase = DMRef.BDContab
    Left = 461
    Top = 83
  end
  object QFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 554
    Top = 11
  end
  object SFiltro: TDataSource
    DataSet = QFiltro
    Left = 610
    Top = 11
  end
  object PopupMenuListados: TPopupMenu
    AutoHotkeys = maManual
    OwnerDraw = True
    Left = 567
    Top = 142
    object ListadoAsientoActual: TMenuItem
      Caption = 'Impresi'#243'n Asiento Actual'
      OnClick = ListadoAsientoActualClick
      OnAdvancedDrawItem = ListadoAdvancedDrawItem
    end
    object ListadoAsientos: TMenuItem
      Caption = 'Listado Asientos'
      OnClick = ListadoAsientosClick
      OnAdvancedDrawItem = ListadoAdvancedDrawItem
    end
  end
  object QSubCuentas: TIBDataSet
    Database = DMRef.BDContab
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
      
        '  (PAIS                           ,CODPOSTAL                    ' +
        '  ,POBLACION                      ,PROVINCIA                    ' +
        '  ,SUMADB                         ,SUMAHB                       ' +
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
        '  ,NUMERO                         ,SUBCUENTA                    ' +
        '  ,CONTRAPARTIDA                  ,DESCRIPCION                  ' +
        '  ,TELEFONO                       ,FAX                          ' +
        '  ,DIRECCION                      ,TIPOIVA                      ' +
        '  ,ARRENDADOR                     ,PROFESIONAL                  ' +
        '  ,DIRECCION1                     ,NIF                          ' +
        '  )'
      'VALUES'
      
        '  (:PAIS                           ,:CODPOSTAL                  ' +
        '    ,:POBLACION                      ,:PROVINCIA                ' +
        '      ,:SUMADB                         ,:SUMAHB                 ' +
        '        ,:ACUDB01                        ,:ACUDB02              ' +
        '          ,:ACUDB03                        ,:ACUDB04            ' +
        '            ,:ACUDB05                        ,:ACUDB06          ' +
        '              ,:ACUDB07                        ,:ACUDB08        ' +
        '                ,:ACUDB09                        ,:ACUDB10      ' +
        '                  ,:ACUDB11                        ,:ACUDB12    ' +
        '                    ,:ACUHB01                        ,:ACUHB02  ' +
        '                      ,:ACUHB03                        ,:ACUHB04' +
        '                        ,:ACUHB05                        ,:ACUHB' +
        '06                        ,:ACUHB07                        ,:ACU' +
        'HB08                        ,:ACUHB09                        ,:A' +
        'CUHB10                        ,:ACUHB11                        ,' +
        ':ACUHB12                        ,:ANTDB01                       ' +
        ' ,:ANTDB02                        ,:ANTDB03                     ' +
        '   ,:ANTDB04                        ,:ANTDB05                   ' +
        '     ,:ANTDB06                        ,:ANTDB07                 ' +
        '       ,:ANTDB08                        ,:ANTDB09               ' +
        '         ,:ANTDB10                        ,:ANTDB11             ' +
        '           ,:ANTDB12                        ,:ANTHB01           ' +
        '             ,:ANTHB02                        ,:ANTHB03         ' +
        '               ,:ANTHB04                        ,:ANTHB05       ' +
        '                 ,:ANTHB06                        ,:ANTHB07     ' +
        '                   ,:ANTHB08                        ,:ANTHB09   ' +
        '                     ,:ANTHB10                        ,:ANTHB11 ' +
        '                       ,:ANTHB12                        ,:ANTHB ' +
        '                         ,:ANTDB                          ,:IVA ' +
        '                           ,:RECARGO                        ,:NU' +
        'MERO                         ,:SUBCUENTA                      ,:' +
        'CONTRAPARTIDA                  ,:DESCRIPCION                    ' +
        ',:TELEFONO                       ,:FAX                          ' +
        '  ,:DIRECCION                      ,:TIPOIVA                    ' +
        '    ,:ARRENDADOR                     ,:PROFESIONAL              ' +
        '      ,:DIRECCION1                     ,:NIF                    ' +
        '        )')
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
      
        '  PAIS                           =:PAIS                         ' +
        '   '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,SUMADB                         =:SUMADB                      ' +
        '    '
      
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
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
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
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      'WHERE'
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 675
    Top = 111
    object QSubCuentasSUBCUENTA: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QSubCuentasDESCRIPCION: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object QSubCuentasABREVIATURA: TIBStringField
      FieldName = 'ABREVIATURA'
      Origin = 'SUBCTAS.ABREVIATURA'
      Size = 10
    end
  end
  object SSubCuentas: TDataSource
    AutoEdit = False
    DataSet = QSubCuentas
    Left = 749
    Top = 110
  end
  object QConceptos: TIBDataSet
    Database = DMRef.BDContab
    Transaction = Transaccion
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CONCEPTOS'
      'WHERE'
      
        '  ID_CONCEPTOS                   =:old_ID_CONCEPTOS             ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO CONCEPTOS'
      
        '  (DESCRIPCION                    ,ID_CONCEPTOS                 ' +
        '  ,TIPOCONCEPTO                   )'
      'VALUES'
      
        '  (:DESCRIPCION                    ,:ID_CONCEPTOS               ' +
        '    ,:TIPOCONCEPTO                   )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM CONCEPTOS'
      'WHERE'
      
        '  ID_CONCEPTOS                   =?ID_CONCEPTOS                 ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM CONCEPTOS')
    ModifySQL.Strings = (
      'UPDATE CONCEPTOS'
      'SET'
      
        '  DESCRIPCION                    =:DESCRIPCION                  ' +
        '   '
      
        '  ,TIPOCONCEPTO                   =:TIPOCONCEPTO                ' +
        '    '
      'WHERE'
      
        '  ID_CONCEPTOS                   =:ID_CONCEPTOS                 ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 677
    Top = 159
    object IBStringField42: TIBStringField
      DisplayLabel = 'CONCEPTO'
      DisplayWidth = 3
      FieldName = 'ID_CONCEPTOS'
      Origin = 'CONCEPTOS.ID_CONCEPTOS'
      Required = True
      FixedChar = True
      Size = 3
    end
    object IBStringField41: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object IBStringField43: TIBStringField
      FieldName = 'TIPOCONCEPTO'
      Visible = False
      Size = 1
    end
  end
  object SConceptos: TDataSource
    AutoEdit = False
    DataSet = QConceptos
    Left = 751
    Top = 159
  end
  object QAnaliticas: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
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
    Left = 679
    Top = 210
    object QAnaliticasCUENTA: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUENTA'
      Origin = 'ANALITICAS.CUENTA'
      Required = True
      Size = 10
    end
    object QAnaliticasNOMBRE: TIBStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'ANALITICAS.NOMBRE'
      Size = 50
    end
    object QAnaliticasID_PROYECTO: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'ANALITICAS.ID_PROYECTO'
      Visible = False
      Size = 10
    end
    object QAnaliticasID_SECCION: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'ANALITICAS.ID_SECCION'
      Visible = False
      Size = 10
    end
    object QAnaliticasID_DEPARTAMENTO: TIBStringField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ANALITICAS.ID_DEPARTAMENTO'
      Visible = False
      Size = 10
    end
    object QAnaliticasID_DELEGACION: TIBStringField
      FieldName = 'ID_DELEGACION'
      Origin = 'ANALITICAS.ID_DELEGACION'
      Visible = False
      Size = 10
    end
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
    Left = 679
    Top = 258
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
    Left = 679
    Top = 306
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
    Left = 679
    Top = 354
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
    Left = 679
    Top = 404
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
  object SAnaliticas: TDataSource
    AutoEdit = False
    DataSet = QAnaliticas
    Left = 751
    Top = 207
  end
  object SDelegacion: TDataSource
    AutoEdit = False
    DataSet = QDelegacion
    Left = 751
    Top = 255
  end
  object SDepartamento: TDataSource
    AutoEdit = False
    DataSet = QDepartamento
    Left = 751
    Top = 305
  end
  object SProyecto: TDataSource
    AutoEdit = False
    DataSet = QProyecto
    Left = 751
    Top = 351
  end
  object SSeccion: TDataSource
    AutoEdit = False
    DataSet = QSeccion
    Left = 751
    Top = 399
  end
end
