object WParametrizacionFacturacion: TWParametrizacionFacturacion
  Left = 370
  Top = 257
  BorderStyle = bsSingle
  Caption = 'Parametrizaci'#243'n'
  ClientHeight = 495
  ClientWidth = 901
  Color = clBtnFace
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 22
    Top = 13
    Width = 208
    Height = 19
    Caption = 'Parametrizaci'#243'n - Facturaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 22
    Top = 34
    Width = 720
    Height = 1
    Pen.Color = clNavy
  end
  object Label89: TLabel
    Left = 626
    Top = 108
    Width = 37
    Height = 14
    Caption = 'N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object BtnAccept: TButton
    Left = 801
    Top = 388
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
    TabOrder = 0
    OnClick = BtnAcceptClick
  end
  object BtnCancel: TButton
    Left = 801
    Top = 420
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
    TabOrder = 1
    OnClick = BtnCancelClick
  end
  object BtnDefaultValues: TButton
    Left = 800
    Top = 100
    Width = 81
    Height = 37
    Cursor = crHandPoint
    Caption = 'Pon Valores por Defecto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    WordWrap = True
    OnClick = BtnDefaultValuesClick
  end
  object BtnModify: TButton
    Left = 801
    Top = 156
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BtnModifyClick
  end
  object PageControl1: TPageControl
    Left = 24
    Top = 40
    Width = 753
    Height = 441
    ActivePage = TabSheetSales
    TabOrder = 4
    object TabSheetSales: TTabSheet
      Caption = 'Ventas'
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 745
        Height = 413
        ActivePage = TabSheetRegimGeneral
        Align = alClient
        TabOrder = 0
        TabPosition = tpBottom
        object TabSheetRegimGeneral: TTabSheet
          Caption = 'R'#233'gimen General'
          object Label7: TLabel
            Left = 452
            Top = 13
            Width = 101
            Height = 14
            Caption = 'Concepto IVA Normal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 15
            Top = 13
            Width = 107
            Height = 14
            Caption = 'Subcuenta IVA Normal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 15
            Top = 133
            Width = 107
            Height = 14
            Caption = 'Subcuenta IVA Exento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 452
            Top = 53
            Width = 113
            Height = 14
            Caption = 'Concepto IVA Reducido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 15
            Top = 53
            Width = 119
            Height = 14
            Caption = 'Subcuenta IVA Reducido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 452
            Top = 93
            Width = 139
            Height = 14
            Caption = 'Concepto IVA Superreducido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 15
            Top = 93
            Width = 148
            Height = 14
            Caption = 'Subcuenta IVA SuperReducido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 452
            Top = 133
            Width = 101
            Height = 14
            Caption = 'Concepto IVA Exento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 15
            Top = 173
            Width = 203
            Height = 14
            Caption = 'Subcuenta IVA Intracomunitario Soportado'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 452
            Top = 173
            Width = 144
            Height = 14
            Caption = 'Concepto IVA Intracomunitario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 15
            Top = 249
            Width = 104
            Height = 14
            Caption = 'Subcuenta de Ventas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 452
            Top = 249
            Width = 98
            Height = 14
            Caption = 'Concepto de Ventas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 15
            Top = 289
            Width = 160
            Height = 14
            Caption = 'Subcuenta de Devoluci'#243'n Ventas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 452
            Top = 289
            Width = 154
            Height = 14
            Caption = 'Concepto de Devoluci'#243'n Ventas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 452
            Top = 328
            Width = 102
            Height = 14
            Caption = 'Concepto de Clientes'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label95: TLabel
            Left = 15
            Top = 212
            Width = 211
            Height = 14
            Caption = 'Subcuenta IVA Intracomunitario Repercutido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 669
            Top = 13
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTOIVANORMAL'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 669
            Top = 53
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTOIVAREDUCIDO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 669
            Top = 133
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTOIVAEXENTO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 669
            Top = 93
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTOIVASUPER'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 669
            Top = 173
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTOIVAINTRA'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 669
            Top = 249
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTOVENTAS'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 669
            Top = 289
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTODEVOLUCION'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 669
            Top = 328
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTOCLIENTES'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object CBDESCSUBCUENTA8: TDBLookupComboBox
            Left = 114
            Top = 147
            Width = 295
            Height = 22
            DataField = 'SCTAIVAEXENTO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 0
          end
          object CBDESCSUBCUENTA7: TDBLookupComboBox
            Left = 114
            Top = 27
            Width = 295
            Height = 22
            DataField = 'SCTAIVANORMAL'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 1
          end
          object eSubctaVentasCorredorDesc: TDBLookupComboBox
            Left = 452
            Top = 27
            Width = 282
            Height = 22
            DataField = 'CTOIVANORMAL'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = SConceptos
            ParentFont = False
            TabOrder = 2
          end
          object CBSUBCUENTA7: TDBLookupComboBox
            Left = 15
            Top = 27
            Width = 100
            Height = 22
            DataField = 'SCTAIVANORMAL'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 3
          end
          object CBSUBCUENTA8: TDBLookupComboBox
            Left = 15
            Top = 147
            Width = 100
            Height = 22
            DataField = 'SCTAIVAEXENTO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 4
          end
          object DBLookupCombo1: TDBLookupComboBox
            Left = 114
            Top = 67
            Width = 295
            Height = 22
            DataField = 'SCTAIVAREDUCIDO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 5
          end
          object DBLookupCombo2: TDBLookupComboBox
            Left = 452
            Top = 67
            Width = 282
            Height = 22
            DataField = 'CTOIVAREDUCIDO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = SConceptos
            ParentFont = False
            TabOrder = 6
          end
          object CBSUBCUENTA1: TDBLookupComboBox
            Left = 15
            Top = 67
            Width = 100
            Height = 22
            DataField = 'SCTAIVAREDUCIDO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 7
          end
          object DBLookupCombo4: TDBLookupComboBox
            Left = 114
            Top = 107
            Width = 295
            Height = 22
            DataField = 'SCTAIVASUPER'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 8
          end
          object DBLookupCombo5: TDBLookupComboBox
            Left = 452
            Top = 107
            Width = 282
            Height = 22
            DataField = 'CTOIVASUPER'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = SConceptos
            ParentFont = False
            TabOrder = 9
          end
          object CBSUBCUENTA2: TDBLookupComboBox
            Left = 15
            Top = 107
            Width = 100
            Height = 22
            DataField = 'SCTAIVASUPER'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 10
          end
          object DBLookupCombo7: TDBLookupComboBox
            Left = 452
            Top = 147
            Width = 282
            Height = 22
            DataField = 'CTOIVAEXENTO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = SConceptos
            ParentFont = False
            TabOrder = 11
          end
          object DBLookupCombo9: TDBLookupComboBox
            Left = 114
            Top = 187
            Width = 295
            Height = 22
            DataField = 'SCTAIVAINTRADEDUCIBLE'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 12
          end
          object CBSUBCUENTA3: TDBLookupComboBox
            Left = 15
            Top = 187
            Width = 100
            Height = 22
            DataField = 'SCTAIVAINTRADEDUCIBLE'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 13
          end
          object DBLookupCombo15: TDBLookupComboBox
            Left = 452
            Top = 187
            Width = 282
            Height = 22
            DataField = 'CTOIVAINTRA'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = SConceptos
            ParentFont = False
            TabOrder = 14
          end
          object DBLookupCombo23: TDBLookupComboBox
            Left = 114
            Top = 263
            Width = 295
            Height = 22
            DataField = 'SCTAVENTAS'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 15
          end
          object CBSUBCUENTA4: TDBLookupComboBox
            Left = 15
            Top = 263
            Width = 100
            Height = 22
            DataField = 'SCTAVENTAS'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 16
          end
          object DBLookupCombo26: TDBLookupComboBox
            Left = 452
            Top = 263
            Width = 282
            Height = 22
            DataField = 'CTOVENTAS'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = SConceptos
            ParentFont = False
            TabOrder = 17
          end
          object DBLookupCombo34: TDBLookupComboBox
            Left = 114
            Top = 303
            Width = 295
            Height = 22
            DataField = 'SCTADEVOLUCION'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 18
          end
          object CBSUBCUENTA5: TDBLookupComboBox
            Left = 15
            Top = 303
            Width = 100
            Height = 22
            DataField = 'SCTADEVOLUCION'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 19
          end
          object DBLookupCombo36: TDBLookupComboBox
            Left = 452
            Top = 303
            Width = 282
            Height = 22
            DataField = 'CTODEVOLUCION'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = SConceptos
            ParentFont = False
            TabOrder = 20
          end
          object DBLookupCombo37: TDBLookupComboBox
            Left = 452
            Top = 342
            Width = 282
            Height = 22
            DataField = 'CTOCLIENTES'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = SConceptos
            ParentFont = False
            TabOrder = 21
          end
          object CBSUBCUENTA32: TDBLookupComboBox
            Left = 15
            Top = 226
            Width = 100
            Height = 22
            DataField = 'SCTAIVAINTRA'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 22
          end
          object DBLookupCombo31: TDBLookupComboBox
            Left = 114
            Top = 226
            Width = 295
            Height = 22
            DataField = 'SCTAIVAINTRA'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = SSubCuentas
            ParentFont = False
            TabOrder = 23
          end
        end
        object TabSheetSurcharge: TTabSheet
          Caption = 'Recargo de Equivalencia / Otros'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 737
            Height = 144
            Align = alTop
            Caption = ' Recargo de Equivalencia '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label56: TLabel
              Left = 452
              Top = 19
              Width = 101
              Height = 14
              Caption = 'Concepto IVA Normal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label57: TLabel
              Left = 15
              Top = 19
              Width = 107
              Height = 14
              Caption = 'Subcuenta IVA Normal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label59: TLabel
              Left = 452
              Top = 59
              Width = 113
              Height = 14
              Caption = 'Concepto IVA Reducido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label61: TLabel
              Left = 15
              Top = 59
              Width = 119
              Height = 14
              Caption = 'Subcuenta IVA Reducido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label64: TLabel
              Left = 452
              Top = 99
              Width = 139
              Height = 14
              Caption = 'Concepto IVA Superreducido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label65: TLabel
              Left = 15
              Top = 99
              Width = 148
              Height = 14
              Caption = 'Subcuenta IVA SuperReducido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText9: TDBText
              Left = 669
              Top = 19
              Width = 65
              Height = 14
              Alignment = taRightJustify
              DataField = 'CTORECNORMAL'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText10: TDBText
              Left = 669
              Top = 59
              Width = 65
              Height = 14
              Alignment = taRightJustify
              DataField = 'CTORECREDUCIDO'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText11: TDBText
              Left = 669
              Top = 99
              Width = 65
              Height = 14
              Alignment = taRightJustify
              DataField = 'CTORECSUPER'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBLookupCombo39: TDBLookupComboBox
              Left = 114
              Top = 33
              Width = 295
              Height = 22
              DataField = 'SCTARECNORMAL'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 1
            end
            object DBLookupCombo40: TDBLookupComboBox
              Left = 452
              Top = 33
              Width = 282
              Height = 22
              DataField = 'CTORECNORMAL'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'ID_CONCEPTOS'
              ListField = 'DESCRIPCION'
              ListSource = SConceptos
              ParentFont = False
              TabOrder = 2
            end
            object CBSUBCUENTA6: TDBLookupComboBox
              Left = 15
              Top = 33
              Width = 100
              Height = 22
              DataField = 'SCTARECNORMAL'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 0
            end
            object DBLookupCombo43: TDBLookupComboBox
              Left = 114
              Top = 73
              Width = 295
              Height = 22
              DataField = 'SCTARECREDUCIDO'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 4
            end
            object DBLookupCombo44: TDBLookupComboBox
              Left = 452
              Top = 73
              Width = 282
              Height = 22
              DataField = 'CTORECREDUCIDO'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'ID_CONCEPTOS'
              ListField = 'DESCRIPCION'
              ListSource = SConceptos
              ParentFont = False
              TabOrder = 5
            end
            object CBSUBCUENTA9: TDBLookupComboBox
              Left = 15
              Top = 73
              Width = 100
              Height = 22
              DataField = 'SCTARECREDUCIDO'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 3
            end
            object DBLookupCombo46: TDBLookupComboBox
              Left = 114
              Top = 113
              Width = 295
              Height = 22
              DataField = 'SCTARECSUPER'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 7
            end
            object DBLookupCombo47: TDBLookupComboBox
              Left = 452
              Top = 113
              Width = 282
              Height = 22
              DataField = 'CTORECSUPER'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'ID_CONCEPTOS'
              ListField = 'DESCRIPCION'
              ListSource = SConceptos
              ParentFont = False
              TabOrder = 8
            end
            object DBLookupCombo48: TDBLookupComboBox
              Left = 15
              Top = 113
              Width = 100
              Height = 22
              DataField = 'SCTARECSUPER'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 6
            end
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 144
            Width = 737
            Height = 243
            Align = alClient
            Caption = ' Otras '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label36: TLabel
              Left = 452
              Top = 60
              Width = 140
              Height = 14
              Caption = 'Concepto Recibos de Ventas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label53: TLabel
              Left = 452
              Top = 17
              Width = 160
              Height = 14
              Caption = 'Concepto de Gen'#233'rica de Ventas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label54: TLabel
              Left = 15
              Top = 17
              Width = 166
              Height = 14
              Caption = 'Subcuenta de Gen'#233'rica de Ventas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label55: TLabel
              Left = 15
              Top = 60
              Width = 91
              Height = 14
              Caption = 'Subcuenta de Caja'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText12: TDBText
              Left = 669
              Top = 17
              Width = 65
              Height = 14
              Alignment = taRightJustify
              DataField = 'CTOCOBROF'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText13: TDBText
              Left = 669
              Top = 60
              Width = 65
              Height = 14
              Alignment = taRightJustify
              DataField = 'CTORECIBOVENTAS'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label97: TLabel
              Left = 15
              Top = 100
              Width = 129
              Height = 14
              Caption = 'Subcuenta IVA Exento CEE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label98: TLabel
              Left = 15
              Top = 140
              Width = 100
              Height = 14
              Caption = 'Subcuenta Intereses'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label99: TLabel
              Left = 15
              Top = 180
              Width = 124
              Height = 14
              Caption = 'Subcuenta Exportaciones'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBLookupCombo8: TDBLookupComboBox
              Left = 114
              Top = 32
              Width = 295
              Height = 22
              DataField = 'VGENERICA'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 0
            end
            object DBLookupCombo22: TDBLookupComboBox
              Left = 452
              Top = 32
              Width = 282
              Height = 22
              DataField = 'CTOCOBROF'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'ID_CONCEPTOS'
              ListField = 'DESCRIPCION'
              ListSource = SConceptos
              ParentFont = False
              TabOrder = 1
            end
            object DBLookupCombo29: TDBLookupComboBox
              Left = 452
              Top = 74
              Width = 282
              Height = 22
              DataField = 'CTORECIBOVENTAS'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'ID_CONCEPTOS'
              ListField = 'DESCRIPCION'
              ListSource = SConceptos
              ParentFont = False
              TabOrder = 2
            end
            object CBSUBCUENTA10: TDBLookupComboBox
              Left = 15
              Top = 32
              Width = 100
              Height = 22
              DataField = 'VGENERICA'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 3
            end
            object DBLookupCombo32: TDBLookupComboBox
              Left = 114
              Top = 74
              Width = 295
              Height = 22
              DataField = 'SUBCAJA'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 4
            end
            object CBSUBCUENTA16: TDBLookupComboBox
              Left = 15
              Top = 74
              Width = 100
              Height = 22
              DataField = 'SUBCAJA'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 5
            end
            object DBLookupCombo14: TDBLookupComboBox
              Left = 114
              Top = 114
              Width = 295
              Height = 22
              DataField = 'SCTAIVAEXENTOCEE'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 6
            end
            object CBSUBCUENTA36: TDBLookupComboBox
              Left = 15
              Top = 114
              Width = 100
              Height = 22
              DataField = 'SCTAIVAEXENTOCEE'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 7
            end
            object DBLookupCombo33: TDBLookupComboBox
              Left = 114
              Top = 154
              Width = 295
              Height = 22
              DataField = 'SCTAINTERESES'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 8
            end
            object CBSUBCUENTA37: TDBLookupComboBox
              Left = 15
              Top = 154
              Width = 100
              Height = 22
              DataField = 'SCTAINTERESES'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 9
            end
            object DBLookupCombo41: TDBLookupComboBox
              Left = 114
              Top = 194
              Width = 295
              Height = 22
              DataField = 'SCTAEXPORTACIONES'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'DESCRIPCION'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 10
            end
            object CBSUBCUENTA38: TDBLookupComboBox
              Left = 15
              Top = 194
              Width = 100
              Height = 22
              DataField = 'SCTAEXPORTACIONES'
              DataSource = DSFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SUBCUENTA'
              ListField = 'SUBCUENTA'
              ListSource = SSubCuentas
              ParentFont = False
              TabOrder = 11
            end
          end
        end
      end
    end
    object TabSheetPurchases: TTabSheet
      Caption = 'Compras'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBText20: TDBText
        Left = 663
        Top = 294
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOPROVINTRA'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 15
        Top = 16
        Width = 132
        Height = 14
        Caption = 'Subcuenta de I.V.A. Normal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 15
        Top = 61
        Width = 144
        Height = 14
        Caption = 'Subcuenta de I.V.A. Reducido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 15
        Top = 108
        Width = 170
        Height = 14
        Caption = 'Subcuenta de I.V.A. Superreducido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 15
        Top = 156
        Width = 132
        Height = 14
        Caption = 'Subcuenta de I.V.A. Exento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 446
        Top = 16
        Width = 111
        Height = 14
        Caption = 'Concepto I.V.A. Normal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 446
        Top = 61
        Width = 123
        Height = 14
        Caption = 'Concepto I.V.A. Reducido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 446
        Top = 108
        Width = 149
        Height = 14
        Caption = 'Concepto I.V.A. Superreducido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 446
        Top = 341
        Width = 169
        Height = 14
        Caption = 'Concepto de Gen'#233'rica de Compras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 15
        Top = 341
        Width = 175
        Height = 14
        Caption = 'Subcuenta de Gen'#233'rica de Compras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 446
        Top = 155
        Width = 111
        Height = 14
        Caption = 'Concepto I.V.A. Exento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 446
        Top = 202
        Width = 107
        Height = 14
        Caption = 'Concepto de Compras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 15
        Top = 202
        Width = 113
        Height = 14
        Caption = 'Subcuenta de Compras'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 446
        Top = 250
        Width = 126
        Height = 14
        Caption = 'Concepto de Proveedores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label83: TLabel
        Left = 446
        Top = 294
        Width = 205
        Height = 14
        Caption = 'Concepto de Proveedores Intracomunitario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label93: TLabel
        Left = 15
        Top = 250
        Width = 203
        Height = 14
        Caption = 'Subcuenta IVA Intracomunitario Soportado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label94: TLabel
        Left = 15
        Top = 294
        Width = 211
        Height = 14
        Caption = 'Subcuenta IVA Intracomunitario Repercutido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 663
        Top = 16
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOIVACNORMAL'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText15: TDBText
        Left = 663
        Top = 61
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOIVACREDUCIDO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText16: TDBText
        Left = 663
        Top = 108
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOIVACSUPER'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText17: TDBText
        Left = 663
        Top = 155
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOIVACEXENTO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText18: TDBText
        Left = 663
        Top = 202
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOCOMPRAS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText19: TDBText
        Left = 663
        Top = 250
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOPROVEEDORES'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText21: TDBText
        Left = 663
        Top = 341
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOPAGOF'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object CBDESCSUBCUENTA15: TDBLookupComboBox
        Left = 114
        Top = 355
        Width = 295
        Height = 22
        DataField = 'VGENERICAC'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 0
      end
      object CBDESCSUBCUENTA14: TDBLookupComboBox
        Left = 114
        Top = 171
        Width = 295
        Height = 22
        DataField = 'SCTAIVACEXENTO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 1
      end
      object CBDESCSUBCUENTA13: TDBLookupComboBox
        Left = 114
        Top = 122
        Width = 295
        Height = 22
        DataField = 'SCTAIVACSUPER'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 2
      end
      object CBDESCSUBCUENTA12: TDBLookupComboBox
        Left = 114
        Top = 76
        Width = 295
        Height = 22
        DataField = 'SCTAIVACREDUCIDO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 3
      end
      object CBDESCSUBCUENTA11: TDBLookupComboBox
        Left = 114
        Top = 31
        Width = 295
        Height = 22
        DataField = 'SCTAIVACNORMAL'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 4
      end
      object CBSUBCUENTA11: TDBLookupComboBox
        Left = 15
        Top = 31
        Width = 100
        Height = 22
        DataField = 'SCTAIVACNORMAL'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 5
      end
      object CBSUBCUENTA12: TDBLookupComboBox
        Left = 15
        Top = 76
        Width = 100
        Height = 22
        DataField = 'SCTAIVACREDUCIDO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 6
      end
      object CBSUBCUENTA13: TDBLookupComboBox
        Left = 15
        Top = 122
        Width = 100
        Height = 22
        DataField = 'SCTAIVACSUPER'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 7
      end
      object CBSUBCUENTA14: TDBLookupComboBox
        Left = 15
        Top = 171
        Width = 100
        Height = 22
        DataField = 'SCTAIVACEXENTO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 8
      end
      object DBLookupCombo28: TDBLookupComboBox
        Left = 446
        Top = 31
        Width = 282
        Height = 22
        DataField = 'CTOIVACNORMAL'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 9
      end
      object eDescConcepto: TDBLookupComboBox
        Left = 446
        Top = 76
        Width = 282
        Height = 22
        DataField = 'CTOIVACREDUCIDO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 10
      end
      object DBLookupCombo11: TDBLookupComboBox
        Left = 446
        Top = 122
        Width = 282
        Height = 22
        DataField = 'CTOIVACSUPER'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 11
      end
      object DBLookupCombo30: TDBLookupComboBox
        Left = 446
        Top = 355
        Width = 282
        Height = 22
        DataField = 'CTOPAGOF'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 12
      end
      object CBSUBCUENTA15: TDBLookupComboBox
        Left = 15
        Top = 355
        Width = 100
        Height = 22
        DataField = 'VGENERICAC'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 13
      end
      object DBLookupCombo13: TDBLookupComboBox
        Left = 446
        Top = 169
        Width = 282
        Height = 22
        DataField = 'CTOIVACEXENTO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 14
      end
      object DBLookupCombo20: TDBLookupComboBox
        Left = 114
        Top = 216
        Width = 295
        Height = 22
        DataField = 'SCTACOMPRAS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 15
      end
      object DBLookupCombo24: TDBLookupComboBox
        Left = 446
        Top = 216
        Width = 282
        Height = 22
        DataField = 'CTOCOMPRAS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 16
      end
      object CBSUBCUENTA17: TDBLookupComboBox
        Left = 15
        Top = 216
        Width = 100
        Height = 22
        DataField = 'SCTACOMPRAS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 17
      end
      object DBLookupCombo38: TDBLookupComboBox
        Left = 446
        Top = 264
        Width = 282
        Height = 22
        DataField = 'CTOPROVEEDORES'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 18
      end
      object DBLookupCombo6: TDBLookupComboBox
        Left = 446
        Top = 308
        Width = 282
        Height = 22
        DataField = 'CTOPROVINTRA'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 19
      end
      object DBLookupCombo12: TDBLookupComboBox
        Left = 114
        Top = 264
        Width = 295
        Height = 22
        DataField = 'SCTAIVACINTRADEDUCIBLE'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 20
      end
      object CBSUBCUENTA33: TDBLookupComboBox
        Left = 15
        Top = 264
        Width = 100
        Height = 22
        DataField = 'SCTAIVACINTRADEDUCIBLE'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 21
      end
      object DBLookupCombo21: TDBLookupComboBox
        Left = 114
        Top = 308
        Width = 295
        Height = 22
        DataField = 'SCTAIVACINTRAREPERCUTIDO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 22
      end
      object CBSUBCUENTA34: TDBLookupComboBox
        Left = 15
        Top = 308
        Width = 100
        Height = 22
        DataField = 'SCTAIVACINTRAREPERCUTIDO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 23
      end
    end
    object TabSheetEffectDossier: TTabSheet
      Caption = 'Cartera de Efectos'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label9: TLabel
        Left = 15
        Top = 179
        Width = 149
        Height = 14
        Caption = 'Subcuenta Remesa de Efectos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 446
        Top = 126
        Width = 181
        Height = 14
        Caption = 'Concepto de Deudas por Descuentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 446
        Top = 178
        Width = 158
        Height = 14
        Caption = 'Concepto de Remesa de Efectos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText23: TDBText
        Left = 663
        Top = 126
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTODEUDASDESCUENTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText31: TDBText
        Left = 663
        Top = 178
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOREMESAEFECTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 15
        Top = 22
        Width = 154
        Height = 14
        Caption = 'Subcuenta Efectos Comerciales'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label81: TLabel
        Left = 15
        Top = 74
        Width = 221
        Height = 14
        Caption = 'Subcuenta Efectos Comerciales Descontados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label82: TLabel
        Left = 15
        Top = 126
        Width = 172
        Height = 14
        Caption = 'Subcuenta Deudas por Descuentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 446
        Top = 22
        Width = 163
        Height = 14
        Caption = 'Concepto de Efectos Comerciales'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText22: TDBText
        Left = 663
        Top = 22
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOEFECTOSCOMERCIALES'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBLookupCombo17: TDBLookupComboBox
        Left = 114
        Top = 194
        Width = 295
        Height = 22
        DataField = 'SCTAREMESAEFECTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 0
      end
      object CBSUBCUENTA18: TDBLookupComboBox
        Left = 15
        Top = 194
        Width = 100
        Height = 22
        DataField = 'SCTAREMESAEFECTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 1
      end
      object DBLookupCombo53: TDBLookupComboBox
        Left = 446
        Top = 140
        Width = 282
        Height = 22
        DataField = 'CTODEUDASDESCUENTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 2
      end
      object DBLookupCombo58: TDBLookupComboBox
        Left = 446
        Top = 192
        Width = 282
        Height = 22
        DataField = 'CTOREMESAEFECTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 3
      end
      object CBSUBCUENTA39: TDBLookupComboBox
        Left = 15
        Top = 37
        Width = 100
        Height = 22
        DataField = 'SCTAEFECTOSCOMERCIALES'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 4
      end
      object DBLookupCombo35: TDBLookupComboBox
        Left = 114
        Top = 37
        Width = 295
        Height = 22
        DataField = 'SCTAEFECTOSCOMERCIALES'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 5
      end
      object CBSUBCUENTA30: TDBLookupComboBox
        Left = 15
        Top = 89
        Width = 100
        Height = 22
        DataField = 'SCTAEFECTDESCONTADOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 6
      end
      object DBLookupCombo3: TDBLookupComboBox
        Left = 114
        Top = 89
        Width = 295
        Height = 22
        DataField = 'SCTAEFECTDESCONTADOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 7
      end
      object CBSUBCUENTA31: TDBLookupComboBox
        Left = 15
        Top = 140
        Width = 100
        Height = 22
        DataField = 'SCTADEUDASDESCUENTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 8
      end
      object DBLookupCombo10: TDBLookupComboBox
        Left = 114
        Top = 140
        Width = 295
        Height = 22
        DataField = 'SCTADEUDASDESCUENTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 9
      end
      object DBLookupCombo16: TDBLookupComboBox
        Left = 446
        Top = 37
        Width = 282
        Height = 22
        DataField = 'CTOEFECTOSCOMERCIALES'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 10
      end
      object DBCheckBox2: TDBCheckBox
        Left = 15
        Top = 256
        Width = 300
        Height = 17
        Caption = 'Desc. Cliente en Enlace Recibos Ventas'
        DataField = 'DESCCLI_CARTERAEFECTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox1: TDBCheckBox
        Left = 15
        Top = 296
        Width = 329
        Height = 17
        Caption = 'Desc. Proveedor en Enlace Recibos Compras'
        DataField = 'DESCPROV_CARTERAEFECTOS'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheetOthers: TTabSheet
      Caption = 'Otras'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label73: TLabel
        Left = 22
        Top = 237
        Width = 147
        Height = 14
        Caption = 'Subcuenta de Hacienda I.V.A. '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 446
        Top = 237
        Width = 161
        Height = 14
        Caption = 'Concepto Asiento trimestral I.V.A.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label96: TLabel
        Left = 22
        Top = 275
        Width = 178
        Height = 14
        Caption = 'Subcuenta Gen'#233'rica Intracomunitaria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText28: TDBText
        Left = 646
        Top = 237
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOHACIVA'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label101: TLabel
        Left = 22
        Top = 314
        Width = 86
        Height = 14
        Caption = 'Subcuenta Banco'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label102: TLabel
        Left = 446
        Top = 314
        Width = 124
        Height = 14
        Caption = 'Concepto Cobro Facturas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText33: TDBText
        Left = 646
        Top = 314
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOCOBRO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label103: TLabel
        Left = 446
        Top = 351
        Width = 119
        Height = 14
        Caption = 'Concepto Pago Facturas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText34: TDBText
        Left = 646
        Top = 350
        Width = 65
        Height = 14
        Alignment = taRightJustify
        DataField = 'CTOPAGO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 745
        Height = 106
        Align = alTop
        Caption = ' Descuento por Pronto Pago '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 25
          Top = 19
          Width = 92
          Height = 14
          Caption = 'Subcuenta Ventas '
        end
        object Label13: TLabel
          Left = 446
          Top = 19
          Width = 83
          Height = 14
          Caption = 'Concepto Ventas'
        end
        object Label58: TLabel
          Left = 25
          Top = 61
          Width = 101
          Height = 14
          Caption = 'Subcuenta Compras '
        end
        object Label66: TLabel
          Left = 446
          Top = 61
          Width = 92
          Height = 14
          Caption = 'Concepto Compras'
        end
        object DBText24: TDBText
          Left = 647
          Top = 19
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'CTODTOPPV'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText25: TDBText
          Left = 647
          Top = 61
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'CTODTOPPC'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object CBSUBCUENTA24: TDBLookupComboBox
          Left = 24
          Top = 32
          Width = 96
          Height = 22
          DataField = 'SCTADTOPPV'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = SSubCuentas
          ParentFont = False
          TabOrder = 0
        end
        object DBLookupCombo86: TDBLookupComboBox
          Left = 120
          Top = 32
          Width = 295
          Height = 22
          DataField = 'SCTADTOPPV'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = SSubCuentas
          ParentFont = False
          TabOrder = 1
        end
        object DBLookupCombo88: TDBLookupComboBox
          Left = 446
          Top = 32
          Width = 266
          Height = 22
          DataField = 'CTODTOPPV'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = SConceptos
          ParentFont = False
          TabOrder = 2
        end
        object CBSUBCUENTA25: TDBLookupComboBox
          Left = 24
          Top = 74
          Width = 96
          Height = 22
          DataField = 'SCTADTOPPC'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = SSubCuentas
          ParentFont = False
          TabOrder = 3
        end
        object DBLookupCombo90: TDBLookupComboBox
          Left = 120
          Top = 74
          Width = 295
          Height = 22
          DataField = 'SCTADTOPPC'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = SSubCuentas
          ParentFont = False
          TabOrder = 4
        end
        object DBLookupCombo92: TDBLookupComboBox
          Left = 446
          Top = 74
          Width = 266
          Height = 22
          DataField = 'CTODTOPPC'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = SConceptos
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 106
        Width = 745
        Height = 128
        Align = alTop
        Caption = ' Profesionales / Arrendatarios '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label67: TLabel
          Left = 23
          Top = 16
          Width = 160
          Height = 14
          Caption = 'Subcuenta Retenci'#243'n Profesional'
        end
        object Label68: TLabel
          Left = 446
          Top = 16
          Width = 154
          Height = 14
          Caption = 'Concepto Retenci'#243'n Profesional'
        end
        object Label69: TLabel
          Left = 23
          Top = 85
          Width = 169
          Height = 14
          Caption = 'Subcuenta Retenci'#243'n Arrendatario '
        end
        object Label70: TLabel
          Left = 446
          Top = 85
          Width = 163
          Height = 14
          Caption = 'Concepto Retenci'#243'n Arrendatario '
        end
        object Label71: TLabel
          Left = 23
          Top = 60
          Width = 108
          Height = 14
          Caption = 'Retenci'#243'n Profesional '
        end
        object Label72: TLabel
          Left = 446
          Top = 60
          Width = 111
          Height = 14
          Caption = 'Retenci'#243'n Arrendatario'
        end
        object DBText26: TDBText
          Left = 646
          Top = 85
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'CTORETARRE'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText27: TDBText
          Left = 646
          Top = 16
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'CTORETPROF'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object CBSUBCUENTA26: TDBLookupComboBox
          Left = 22
          Top = 29
          Width = 96
          Height = 22
          DataField = 'SCTARETPROF'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = SSubCuentas
          ParentFont = False
          TabOrder = 0
        end
        object DBLookupCombo94: TDBLookupComboBox
          Left = 118
          Top = 29
          Width = 295
          Height = 22
          DataField = 'SCTARETPROF'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = SSubCuentas
          ParentFont = False
          TabOrder = 1
        end
        object DBLookupCombo96: TDBLookupComboBox
          Left = 446
          Top = 29
          Width = 265
          Height = 22
          DataField = 'CTORETPROF'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = SConceptos
          ParentFont = False
          TabOrder = 2
        end
        object CBSUBCUENTA27: TDBLookupComboBox
          Left = 22
          Top = 98
          Width = 96
          Height = 22
          DataField = 'SCTARETARRE'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = SSubCuentas
          ParentFont = False
          TabOrder = 5
        end
        object DBLookupCombo98: TDBLookupComboBox
          Left = 118
          Top = 98
          Width = 295
          Height = 22
          DataField = 'SCTARETARRE'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = SSubCuentas
          ParentFont = False
          TabOrder = 6
        end
        object DBLookupCombo100: TDBLookupComboBox
          Left = 446
          Top = 98
          Width = 265
          Height = 22
          DataField = 'CTORETARRE'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = SConceptos
          ParentFont = False
          TabOrder = 7
        end
        object OvcDbNumericField1: TDBEdit
          Left = 152
          Top = 57
          Width = 54
          Height = 20
          AutoSize = False
          DataField = 'TANTORETPROF'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object OvcDbNumericField2: TDBEdit
          Left = 584
          Top = 57
          Width = 52
          Height = 20
          AutoSize = False
          DataField = 'TANTORETARRE'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object CBSUBCUENTA28: TDBLookupComboBox
        Left = 22
        Top = 250
        Width = 96
        Height = 22
        DataField = 'SCTAHACIVA'
        DataSource = DSFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 2
      end
      object DBLookupCombo118: TDBLookupComboBox
        Left = 117
        Top = 250
        Width = 295
        Height = 22
        DataField = 'SCTAHACIVA'
        DataSource = DSFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 3
      end
      object DBLookupCombo124: TDBLookupComboBox
        Left = 446
        Top = 250
        Width = 265
        Height = 22
        DataField = 'CTOHACIVA'
        DataSource = DSFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 4
      end
      object CBSUBCUENTA35: TDBLookupComboBox
        Left = 22
        Top = 288
        Width = 96
        Height = 22
        DataField = 'SCTAGENINTRACOM'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 5
      end
      object DBLookupCombo25: TDBLookupComboBox
        Left = 117
        Top = 288
        Width = 295
        Height = 22
        DataField = 'SCTAGENINTRACOM'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 6
      end
      object CBSUBCUENTA40: TDBLookupComboBox
        Left = 22
        Top = 327
        Width = 96
        Height = 22
        DataField = 'SCTABANCO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 7
      end
      object DBLookupCombo42: TDBLookupComboBox
        Left = 117
        Top = 327
        Width = 295
        Height = 22
        DataField = 'SCTABANCO'
        DataSource = DSFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = SSubCuentas
        ParentFont = False
        TabOrder = 8
      end
      object DBLookupCombo27: TDBLookupComboBox
        Left = 446
        Top = 327
        Width = 265
        Height = 22
        DataField = 'CTOCOBRO'
        DataSource = DSFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 9
      end
      object DBLookupCombo45: TDBLookupComboBox
        Left = 446
        Top = 364
        Width = 265
        Height = 22
        DataField = 'CTOPAGO'
        DataSource = DSFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = SConceptos
        ParentFont = False
        TabOrder = 10
      end
    end
  end
  object DSFichero: TDataSource
    AutoEdit = False
    DataSet = DMRef.QParametros
    Left = 361
    Top = 5
  end
  object QSubCuentas: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
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
    Left = 515
    Top = 4
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
    Left = 576
    Top = 5
  end
  object QConceptos: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
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
    Left = 517
    Top = 55
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
    Left = 575
    Top = 55
  end
end
