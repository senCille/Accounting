object WCargaAsiento: TWCargaAsiento
  Left = 615
  Top = 303
  Caption = 'Carga del Asiento'
  ClientHeight = 524
  ClientWidth = 859
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 859
    Height = 41
    Align = alTop
    Color = 14275008
    TabOrder = 0
    ExplicitWidth = 867
    object LabelTitulo: TLabel
      Left = 24
      Top = 8
      Width = 145
      Height = 19
      Caption = 'Carga del Asiento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 41
    Width = 859
    Height = 483
    ActivePage = TabMayor
    Align = alClient
    TabOrder = 1
    OnChange = PageControlChange
    ExplicitWidth = 867
    ExplicitHeight = 488
    object TabAsiento: TTabSheet
      Caption = 'Asiento'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 859
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        Color = 10841401
        TabOrder = 0
        object Label9: TLabel
          Left = 11
          Top = 6
          Width = 60
          Height = 13
          AutoSize = False
          Caption = 'Subcuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 97
          Top = 6
          Width = 77
          Height = 13
          DataField = 'SUBCUENTA'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 11
          Top = 25
          Width = 79
          Height = 13
          AutoSize = False
          Caption = 'Contrapartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 97
          Top = 25
          Width = 77
          Height = 13
          DataField = 'CONTRAPARTIDA'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 177
          Top = 25
          Width = 274
          Height = 13
          DataField = 'DESCCONTRAPARTIDA'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 471
          Top = 6
          Width = 73
          Height = 13
          AutoSize = False
          Caption = 'Suma Debe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 471
          Top = 25
          Width = 73
          Height = 13
          AutoSize = False
          Caption = 'Suma Haber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lSaldoDeudorAcreedor1: TDBText
          Left = 634
          Top = 6
          Width = 94
          Height = 13
          Alignment = taRightJustify
          DataField = 'TipodeSaldo'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 546
          Top = 6
          Width = 68
          Height = 13
          Alignment = taRightJustify
          DataField = 'SUMADB'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 546
          Top = 25
          Width = 68
          Height = 13
          Alignment = taRightJustify
          DataField = 'SUMAHB'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 634
          Top = 25
          Width = 94
          Height = 13
          Alignment = taRightJustify
          DataField = 'CalcSaldo'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 177
          Top = 6
          Width = 274
          Height = 13
          DataField = 'DESCRIPCION'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 48
        Width = 859
        Height = 412
        Align = alClient
        Color = 14275008
        TabOrder = 1
        object Panel4: TPanel
          Left = 756
          Top = 1
          Width = 102
          Height = 410
          Align = alRight
          Color = 14275008
          TabOrder = 0
          object BtnCancel: TButton
            Left = 9
            Top = 303
            Width = 88
            Height = 23
            Cursor = crHandPoint
            Caption = '&Cancelar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = BtnCancelClick
          end
          object BtnAccept: TButton
            Left = 9
            Top = 271
            Width = 88
            Height = 23
            Cursor = crHandPoint
            Caption = 'Ac&eptar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = BtnAcceptClick
          end
          object BtnDouplicate: TButton
            Left = 9
            Top = 132
            Width = 88
            Height = 23
            Cursor = crHandPoint
            Caption = '&Duplicar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = BtnDouplicateClick
          end
          object BtnReestablish: TButton
            Left = 9
            Top = 104
            Width = 88
            Height = 23
            Cursor = crHandPoint
            Caption = '&Restablecer'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = BtnReestablishClick
          end
          object BtnDelete: TButton
            Left = 9
            Top = 76
            Width = 88
            Height = 23
            Cursor = crHandPoint
            Caption = '&Borrar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = BtnDeleteClick
          end
          object BtnNew: TButton
            Left = 9
            Top = 16
            Width = 88
            Height = 23
            Cursor = crHandPoint
            Caption = '&Nuevo Apunte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnClick = BtnNewClick
          end
          object BtnNewSubAccount: TButton
            Left = 9
            Top = 343
            Width = 88
            Height = 23
            Cursor = crHandPoint
            Caption = 'A'#241'adir S&ubcta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            OnClick = BtnNewSubAccountClick
          end
          object BtnModifyApunte: TButton
            Left = 9
            Top = 45
            Width = 88
            Height = 23
            Cursor = crHandPoint
            Caption = '&Modificar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            OnClick = BtnModifyApunteClick
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 755
          Height = 410
          Align = alClient
          Color = 14275008
          TabOrder = 1
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 753
            Height = 57
            Align = alTop
            Color = 14275008
            TabOrder = 0
            DesignSize = (
              745
              57)
            object Label5: TLabel
              Left = 10
              Top = 12
              Width = 33
              Height = 13
              Caption = 'Fecha'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditFECHA_ASIENTO: TDBEdit
              Left = 10
              Top = 28
              Width = 89
              Height = 21
              DataField = 'FECHA_ASIENTO'
              DataSource = SFiltro
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object gDescuadre: TGroupBox
              Left = 611
              Top = 6
              Width = 127
              Height = 39
              Anchors = [akRight, akBottom]
              Caption = ' DESCUADRE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              ExplicitLeft = 619
              object LabelDescuadre: TLabel
                Left = 8
                Top = 15
                Width = 113
                Height = 13
                Cursor = crIBeam
                Alignment = taRightJustify
                AutoSize = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
          object DataGrid: TDBGrid
            Left = 1
            Top = 58
            Width = 745
            Height = 346
            Align = alClient
            Color = 15596540
            DataSource = SFichero
            FixedColor = 10841401
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'APUNTE'
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
                FieldName = 'IMPORTE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTRAPARTIDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ASIENTONOMINA'
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
      end
    end
    object TabMovimientos: TTabSheet
      Caption = #218'ltimos Movimientos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 859
        Height = 85
        Align = alTop
        Color = 14275008
        TabOrder = 0
        object Bevel1: TBevel
          Left = 2
          Top = 7
          Width = 213
          Height = 69
        end
        object Label2: TLabel
          Left = 256
          Top = 33
          Width = 65
          Height = 13
          Caption = 'SUBCUENTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 336
          Top = 33
          Width = 100
          Height = 17
          DataField = 'SUBCUENTA'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 434
          Top = 33
          Width = 284
          Height = 17
          DataField = 'DESCRIPCION'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 12
          Top = 13
          Width = 64
          Height = 13
          Caption = 'Suma Debe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 12
          Top = 33
          Width = 69
          Height = 13
          Caption = 'Suma Haber'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lSaldoDeudorAcreedor2: TDBText
          Left = 12
          Top = 53
          Width = 75
          Height = 13
          DataField = 'TipodeSaldo'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 106
          Top = 13
          Width = 100
          Height = 17
          Alignment = taRightJustify
          DataField = 'SUMADB'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 106
          Top = 33
          Width = 100
          Height = 17
          Alignment = taRightJustify
          DataField = 'SUMAHB'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 106
          Top = 53
          Width = 100
          Height = 17
          Alignment = taRightJustify
          DataField = 'CalcSaldo'
          DataSource = DataModuleCargaAsiento.SSubcuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object GridMovimientos: TDBGrid
        Left = 0
        Top = 85
        Width = 859
        Height = 375
        Align = alClient
        Color = 15596540
        DataSource = SMovimientos
        FixedColor = 10841401
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = GridMovimientosDrawColumnCell
        OnMouseDown = GridMovimientosMouseDown
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
          end
          item
            Expanded = False
            FieldName = 'CONTRAPARTIDA'
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
    object TabMayor: TTabSheet
      Caption = 'Mayor'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 45
        Top = 12
        Width = 533
        Height = 377
        Color = 13550766
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label11: TLabel
          Left = 30
          Top = 33
          Width = 33
          Height = 13
          Caption = 'Fecha'
        end
        object Label24: TLabel
          Left = 133
          Top = 13
          Width = 35
          Height = 13
          Caption = 'Desde'
        end
        object Label25: TLabel
          Left = 315
          Top = 13
          Width = 33
          Height = 13
          Caption = 'Hasta'
        end
        object Label8: TLabel
          Left = 30
          Top = 61
          Width = 47
          Height = 13
          Caption = 'Importe'
        end
        object Label3: TLabel
          Left = 30
          Top = 116
          Width = 53
          Height = 13
          Caption = 'Concepto'
        end
        object Label27: TLabel
          Left = 30
          Top = 87
          Width = 58
          Height = 14
          Caption = 'Subcuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditFECHA_DESDE: TDBEdit
          Left = 133
          Top = 29
          Width = 101
          Height = 21
          DataField = 'FECHA_DESDE'
          DataSource = SFiltro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditFECHA_HASTA: TDBEdit
          Left = 315
          Top = 29
          Width = 101
          Height = 21
          DataField = 'FECHA_HASTA'
          DataSource = SFiltro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditIMPORTE_DESDE: TDBEdit
          Left = 133
          Top = 57
          Width = 101
          Height = 21
          AutoSize = False
          DataField = 'IMPORTE_DESDE'
          DataSource = SFiltro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object EditIMPORTE_HASTA: TDBEdit
          Left = 315
          Top = 57
          Width = 101
          Height = 21
          AutoSize = False
          DataField = 'IMPORTE_HASTA'
          DataSource = SFiltro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ComboBoxDescConcepto: TDBLookupComboBox
          Left = 232
          Top = 112
          Width = 274
          Height = 21
          DataField = 'CONCEPTO'
          DataSource = SFiltro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaAsiento.SConceptos
          ParentFont = False
          TabOrder = 7
        end
        object BtnReport: TButton
          Left = 423
          Top = 337
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
          TabOrder = 10
          OnClick = BtnReportClick
        end
        object ComboBoxConcepto: TDBLookupComboBox
          Left = 133
          Top = 112
          Width = 100
          Height = 21
          DataField = 'CONCEPTO'
          DataSource = SFiltro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DataModuleCargaAsiento.SConceptos
          ParentFont = False
          TabOrder = 6
        end
        object RGConcepto: TDBRadioGroup
          Left = 133
          Top = 138
          Width = 285
          Height = 40
          Caption = ' Clase de Conceptos '
          Columns = 3
          DataField = 'TIPO_CONCEPTO'
          DataSource = SFiltro
          Items.Strings = (
            'Todos'
            'Normal'
            'Especial')
          TabOrder = 8
          Values.Strings = (
            'T'
            'N'
            'E')
        end
        object GroupBox1: TGroupBox
          Left = 19
          Top = 179
          Width = 505
          Height = 122
          Caption = ' Anal'#237'tica '
          TabOrder = 9
          object Label20: TLabel
            Left = 11
            Top = 17
            Width = 92
            Height = 13
            Caption = 'Cuenta Anal'#237'tica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 11
            Top = 41
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
          object Label22: TLabel
            Left = 258
            Top = 41
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
          object Label23: TLabel
            Left = 11
            Top = 80
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
          object Label26: TLabel
            Left = 258
            Top = 80
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
          object ComboBoxAnalitica: TDBLookupComboBox
            Left = 114
            Top = 15
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
            ListSource = DataModuleCargaAsiento.SAnaliticas
            ParentFont = False
            TabOrder = 0
          end
          object ComboBoxDelegacion: TDBLookupComboBox
            Left = 10
            Top = 55
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
            ListSource = DataModuleCargaAsiento.SDelegacion
            ParentFont = False
            TabOrder = 1
          end
          object ComboBoxDepartamento: TDBLookupComboBox
            Left = 257
            Top = 55
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
            ListSource = DataModuleCargaAsiento.SDepartamento
            ParentFont = False
            TabOrder = 2
          end
          object ComboBoxSeccion: TDBLookupComboBox
            Left = 11
            Top = 94
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
            ListSource = DataModuleCargaAsiento.SSeccion
            ParentFont = False
            TabOrder = 3
          end
          object ComboBoxProyecto: TDBLookupComboBox
            Left = 257
            Top = 94
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
            ListSource = DataModuleCargaAsiento.SProyecto
            ParentFont = False
            TabOrder = 4
          end
          object ComboBoxDescAnalitica: TDBLookupComboBox
            Left = 212
            Top = 15
            Width = 274
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
            ListSource = DataModuleCargaAsiento.SAnaliticas
            ParentFont = False
            TabOrder = 5
          end
        end
        object ComboBoxCD_SUBCUENTA_Desde: TDBLookupComboBox
          Left = 133
          Top = 84
          Width = 100
          Height = 21
          DataField = 'SUBCUENTA'
          DataSource = SFiltro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleCargaAsiento.SSubcuentas
          ParentFont = False
          TabOrder = 4
        end
        object ComboBoxDS_SUBCUENTA_Hasta: TDBLookupComboBox
          Left = 232
          Top = 84
          Width = 274
          Height = 21
          DataField = 'SUBCUENTA'
          DataSource = SFiltro
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaAsiento.SSubcuentas
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  object Transaccion: TIBTransaction
    Left = 243
    Top = 17
  end
  object QDiario: TIBDataSet
    Transaction = Transaccion
    OnCalcFields = QDiarioCalcFields
    BufferChunks = 32
    CachedUpdates = True
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
        '  ,ID_CONCEPTOS                   ,TIPOASIENTO                  ' +
        '  )'
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
        'VA                      ,:ID_CONCEPTOS                   ,:TIPOA' +
        'SIENTO                    )')
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
      
        '  ,TIPOASIENTO                    =:TIPOASIENTO                 ' +
        '    '
      'WHERE'
      
        '  ID_DIARIO                      =:ID_DIARIO                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 296
    Top = 17
    object QDiarioAPUNTE: TSmallintField
      DisplayLabel = 'APTE'
      DisplayWidth = 5
      FieldName = 'APUNTE'
      Origin = 'DIARIO.APUNTE'
    end
    object QDiarioSUBCUENTA: TIBStringField
      DisplayWidth = 13
      FieldName = 'SUBCUENTA'
      Origin = 'DIARIO.SUBCUENTA'
      Size = 10
    end
    object QDiarioID_CONCEPTOS: TIBStringField
      DisplayLabel = 'CTO'
      DisplayWidth = 6
      FieldName = 'ID_CONCEPTOS'
      Origin = 'DIARIO.ID_CONCEPTOS'
      FixedChar = True
      Size = 3
    end
    object QDiarioDescApunte: TStringField
      DisplayLabel = 'DESCRIPCI'#211'N DEL APUNTE'
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'DescApunte'
      Size = 100
      Calculated = True
    end
    object QDiarioDEBEHABER: TIBStringField
      DisplayLabel = 'T'
      DisplayWidth = 1
      FieldName = 'DEBEHABER'
      Origin = 'DIARIO.DEBEHABER'
      FixedChar = True
      Size = 1
    end
    object QDiarioIMPORTE: TFloatField
      DisplayWidth = 15
      FieldName = 'IMPORTE'
      Origin = 'DIARIO.IMPORTE'
    end
    object QDiarioCONTRAPARTIDA: TIBStringField
      DisplayWidth = 16
      FieldName = 'CONTRAPARTIDA'
      Origin = 'DIARIO.CONTRAPARTIDA'
      Size = 10
    end
    object QDiarioID_DIARIO: TIntegerField
      FieldName = 'ID_DIARIO'
      Origin = 'DIARIO.ID_DIARIO'
      Visible = False
    end
    object QDiarioASIENTO: TIntegerField
      FieldName = 'ASIENTO'
      Origin = 'DIARIO.ASIENTO'
      Visible = False
    end
    object QDiarioBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
      Origin = 'DIARIO.BASEIMPONIBLE'
      Visible = False
    end
    object QDiarioCOMENTARIO: TIBStringField
      FieldName = 'COMENTARIO'
      Origin = 'DIARIO.COMENTARIO'
      Visible = False
      Size = 40
    end
    object QDiarioFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = 'DIARIO.FECHA'
      Visible = False
    end
    object QDiarioIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'DIARIO.IVA'
      Visible = False
    end
    object QDiarioNIF: TIBStringField
      FieldName = 'NIF'
      Origin = 'DIARIO.NIF'
      Visible = False
      Size = 15
    end
    object QDiarioMONEDA: TIBStringField
      FieldName = 'MONEDA'
      Origin = 'DIARIO.MONEDA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QDiarioNUMEROFACTURA: TIBStringField
      FieldName = 'NUMEROFACTURA'
      Origin = 'DIARIO.NUMEROFACTURA'
      Visible = False
      Size = 10
    end
    object QDiarioRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'DIARIO.RECARGO'
      Visible = False
    end
    object QDiarioPUNTEO: TIBStringField
      FieldName = 'PUNTEO'
      Origin = 'DIARIO.PUNTEO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QDiarioASIENTOPUNTEO: TIntegerField
      FieldName = 'ASIENTOPUNTEO'
      Origin = 'DIARIO.ASIENTOPUNTEO'
      Visible = False
    end
    object QDiarioPUNTEOIVA: TIBStringField
      FieldName = 'PUNTEOIVA'
      Origin = 'DIARIO.PUNTEOIVA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QDiarioTIPODIARIO: TIBStringField
      FieldName = 'TIPODIARIO'
      Origin = 'DIARIO.TIPODIARIO'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object QDiarioCUENTA_ANALITICA: TIBStringField
      FieldName = 'CUENTA_ANALITICA'
      Origin = 'DIARIO.CUENTA_ANALITICA'
      Visible = False
      Size = 10
    end
    object QDiarioCUOTAIVA: TFloatField
      FieldName = 'CUOTAIVA'
      Origin = 'DIARIO.CUOTAIVA'
      Visible = False
    end
    object QDiarioCUOTARECARGO: TFloatField
      FieldName = 'CUOTARECARGO'
      Origin = 'DIARIO.CUOTARECARGO'
      Visible = False
    end
    object QDiarioTIPOASIENTO: TIntegerField
      FieldName = 'TIPOASIENTO'
      Origin = 'DIARIO.TIPOASIENTO'
      Visible = False
    end
    object QDiarioASIENTONOMINA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ASIENTONOMINA'
      Origin = 'DIARIO.ASIENTONOMINA'
    end
    object QDiarioEJERCICIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'EJERCICIO'
      Origin = 'DIARIO.EJERCICIO'
    end
    object QDiarioSERIE: TIBStringField
      DisplayWidth = 5
      FieldName = 'SERIE'
      Origin = 'DIARIO.SERIE'
      Size = 5
    end
  end
  object QFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 674
    Top = 11
    object QFiltroFECHA_ASIENTO: TDateField
      FieldName = 'FECHA_ASIENTO'
    end
    object QFiltroFECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object QFiltroFECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object QFiltroIMPORTE_DESDE: TFloatField
      FieldName = 'IMPORTE_DESDE'
    end
    object QFiltroIMPORTE_HASTA: TFloatField
      FieldName = 'IMPORTE_HASTA'
    end
    object QFiltroSUBCUENTA: TStringField
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QFiltroCONCEPTO: TVarBytesField
      FieldName = 'CONCEPTO'
      Size = 3
    end
    object QFiltroTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Size = 1
    end
    object QFiltroCUENTA: TStringField
      FieldName = 'CUENTA'
      Size = 10
    end
    object QFiltroID_DELEGACION: TStringField
      FieldName = 'ID_DELEGACION'
      Size = 10
    end
    object QFiltroID_DEPARTAMENTO: TStringField
      FieldName = 'ID_DEPARTAMENTO'
      Size = 10
    end
    object QFiltroID_SECCION: TStringField
      FieldName = 'ID_SECCION'
      Size = 10
    end
    object QFiltroID_PROYECTO: TStringField
      FieldName = 'ID_PROYECTO'
      Size = 10
    end
  end
  object SFiltro: TDataSource
    DataSet = QFiltro
    Left = 722
    Top = 11
  end
  object SMovimientos: TDataSource
    AutoEdit = False
    DataSet = QMovimientos
    Left = 511
    Top = 7
  end
  object SFichero: TDataSource
    DataSet = QDiario
    Left = 350
    Top = 17
  end
  object QMovimientos: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
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
    Left = 427
    Top = 7
    object QMovimientosASIENTO: TIntegerField
      DisplayWidth = 9
      FieldName = 'ASIENTO'
      Origin = 'DIARIO.ASIENTO'
      DisplayFormat = '###,###,###'
    end
    object QMovimientosFECHA: TDateTimeField
      DisplayWidth = 11
      FieldName = 'FECHA'
      Origin = 'DIARIO.FECHA'
    end
    object QMovimientosID_CONCEPTOS: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'CTO'
      DisplayWidth = 6
      FieldName = 'ID_CONCEPTOS'
      Origin = 'DIARIO.ID_CONCEPTOS'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QMovimientosDescComentario: TStringField
      DisplayLabel = 'DESCRIPCION DEL APUNTE'
      DisplayWidth = 55
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
      DisplayWidth = 17
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
    object QMovimientosNUMEROFACTURA: TIBStringField
      DisplayWidth = 10
      FieldName = 'NUMEROFACTURA'
      Origin = 'DIARIO.NUMEROFACTURA'
      Visible = False
      Size = 10
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
    object QMovimientosEJERCICIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'EJERCICIO'
      Origin = 'DIARIO.EJERCICIO'
    end
    object QMovimientosSERIE: TIBStringField
      DisplayWidth = 5
      FieldName = 'SERIE'
      Origin = 'DIARIO.SERIE'
      Size = 5
    end
  end
  object QConceptos: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 696
    Top = 112
  end
end
