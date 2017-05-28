object WCarteraEfectos: TWCarteraEfectos
  Left = 433
  Top = 365
  ClientHeight = 501
  ClientWidth = 879
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
  object DBText1: TDBText
    Left = 279
    Top = 17
    Width = 404
    Height = 19
    DataField = 'DESCSUBCUENTA'
    DataSource = DataModuleCarteraEfectos.DSFichero
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Panel3: TPanel
    Left = 0
    Top = 36
    Width = 879
    Height = 439
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 772
      Height = 437
      ActivePage = TabSheetFiltro
      Align = alClient
      TabOrder = 0
      object TabSheetCarteraEfectos: TTabSheet
        Caption = 'Cartera Efectos'
        object FiltroBuscar: TGroupBox
          Left = 0
          Top = 0
          Width = 764
          Height = 56
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
            Left = 106
            Top = 13
            Width = 73
            Height = 13
            Caption = 'Factura Cliente'
          end
          object Label12: TLabel
            Left = 259
            Top = 13
            Width = 90
            Height = 13
            Caption = 'Factura Proveedor'
          end
          object Label28: TLabel
            Left = 13
            Top = 13
            Width = 37
            Height = 14
            Caption = 'N'#250'mero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 411
            Top = 13
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
          object EditBUSCA_FACT_PROVEEDOR: TDBEdit
            Left = 259
            Top = 28
            Width = 106
            Height = 21
            DataField = 'BFactProveedor'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = EditBUSCA_FACT_CLIENTEEnter
            OnExit = EditBUSCA_FACT_CLIENTEExit
          end
          object EditBUSCA_FACT_CLIENTE: TDBEdit
            Left = 106
            Top = 28
            Width = 106
            Height = 21
            DataField = 'BFactCliente'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = EditBUSCA_FACT_CLIENTEEnter
            OnExit = EditBUSCA_FACT_CLIENTEExit
          end
          object EditBUSCA_NUMERO: TDBEdit
            Left = 13
            Top = 28
            Width = 64
            Height = 20
            AutoSize = False
            DataField = 'BNumero'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = EditBUSCA_FACT_CLIENTEEnter
            OnExit = EditBUSCA_FACT_CLIENTEExit
          end
          object EditBUSCA_IMPORTE: TDBEdit
            Left = 411
            Top = 28
            Width = 110
            Height = 21
            DataField = 'BImporte'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = EditBUSCA_FACT_CLIENTEEnter
            OnExit = EditBUSCA_FACT_CLIENTEExit
          end
        end
        object DBGrid: TDBGrid
          Left = 0
          Top = 56
          Width = 764
          Height = 353
          Align = alClient
          DataSource = DataModuleCarteraEfectos.DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGridDblClick
          OnTitleClick = DBGridTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_CARTERAEFECTOS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FVENCIMIENTO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FEMISION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBCUENTA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONCEPTO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CalcImporte'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DescSituacion'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ASIENTORIESGO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBCTABANCO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMERCIAL'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CalcComision'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FACTCLIENT'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FACTPROVEEDOR'
              Width = 64
              Visible = True
            end>
        end
      end
      object TabSheetDatos: TTabSheet
        Caption = 'Datos'
        ImageIndex = 1
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 764
          Height = 409
          Align = alClient
          TabOrder = 0
          object Bevel2: TBevel
            Left = 391
            Top = 231
            Width = 169
            Height = 35
          end
          object Label3: TLabel
            Left = 11
            Top = 19
            Width = 52
            Height = 14
            Caption = 'Subcuenta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 11
            Top = 45
            Width = 46
            Height = 14
            Caption = 'Concepto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 11
            Top = 70
            Width = 69
            Height = 14
            Caption = 'Fecha Emisi'#243'n'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 11
            Top = 95
            Width = 91
            Height = 14
            Caption = 'Fecha Vencimiento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 399
            Top = 241
            Width = 35
            Height = 14
            Caption = 'Importe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 11
            Top = 120
            Width = 69
            Height = 14
            Caption = 'Fecha Asiento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 11
            Top = 171
            Width = 86
            Height = 14
            Caption = 'Subcuenta Banco'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 11
            Top = 221
            Width = 90
            Height = 14
            Caption = 'Factura Proveedor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 11
            Top = 196
            Width = 72
            Height = 14
            Caption = 'Factura Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Bevel3: TBevel
            Left = 387
            Top = 135
            Width = 173
            Height = 33
          end
          object Label15: TLabel
            Left = 399
            Top = 145
            Width = 43
            Height = 14
            Caption = 'Comisi'#243'n'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 11
            Top = 145
            Width = 47
            Height = 14
            Caption = 'Comercial'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbEjercicio: TLabel
            Left = 252
            Top = 196
            Width = 40
            Height = 14
            Caption = 'Ejercicio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbSerie: TLabel
            Left = 354
            Top = 196
            Width = 25
            Height = 14
            Caption = 'Serie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object ComboBoxCD_SUBCUENTA: TDBLookupComboBox
            Left = 120
            Top = 15
            Width = 113
            Height = 22
            DataField = 'SUBCUENTA'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = DataModuleCarteraEfectos.SSubCtaCarteraEfectos
            ParentFont = False
            TabOrder = 0
          end
          object ComboBoxDS_SUBCUENTA: TDBLookupComboBox
            Left = 233
            Top = 15
            Width = 281
            Height = 22
            DataField = 'SUBCUENTA'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleCarteraEfectos.SSubCtaCarteraEfectos
            ParentFont = False
            TabOrder = 1
          end
          object ComboBoxCD_SUBCUENTA_BANCO: TDBLookupComboBox
            Left = 120
            Top = 167
            Width = 113
            Height = 22
            DataField = 'SUBCTABANCO'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = DataModuleCarteraEfectos.SSubCTABanco
            ParentFont = False
            TabOrder = 2
          end
          object ComboBoxDS_SUBCUENTA_BANCO: TDBLookupComboBox
            Left = 233
            Top = 167
            Width = 281
            Height = 22
            DataField = 'SUBCTABANCO'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleCarteraEfectos.SSubCTABanco
            ParentFont = False
            TabOrder = 3
          end
          object EditCONCEPTO: TDBEdit
            Left = 120
            Top = 41
            Width = 393
            Height = 22
            AutoSize = False
            DataField = 'CONCEPTO'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 39
            ParentFont = False
            TabOrder = 4
          end
          object EditFACT_CLIENTE: TDBEdit
            Left = 120
            Top = 192
            Width = 113
            Height = 22
            AutoSize = False
            DataField = 'FACTCLIENT'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 16
            ParentFont = False
            TabOrder = 5
          end
          object EditFACT_PROVEEDOR: TDBEdit
            Left = 120
            Top = 217
            Width = 113
            Height = 22
            AutoSize = False
            DataField = 'FACTPROVEEDOR'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            MaxLength = 17
            ParentFont = False
            TabOrder = 6
          end
          object EditIMPORTE: TDBEdit
            Left = 447
            Top = 237
            Width = 99
            Height = 22
            AutoSize = False
            DataField = 'IMPORTE'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object EditIMP_COMISION: TDBEdit
            Left = 464
            Top = 141
            Width = 88
            Height = 22
            AutoSize = False
            DataField = 'IMPCOMISION'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object EditFECHA_EMISION: TDBEdit
            Left = 120
            Top = 66
            Width = 89
            Height = 22
            AutoSize = False
            DataField = 'FEMISION'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object EditFECHA_VENCIMIENTO: TDBEdit
            Left = 120
            Top = 91
            Width = 89
            Height = 22
            AutoSize = False
            DataField = 'FVENCIMIENTO'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object EditFECHA_ASIENTO: TDBEdit
            Left = 120
            Top = 116
            Width = 89
            Height = 22
            AutoSize = False
            DataField = 'FASIENTO'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object ComboBoxCOMERCIAL: TDBLookupComboBox
            Left = 120
            Top = 141
            Width = 252
            Height = 21
            DataField = 'COMERCIAL'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'COMERCIAL'
            ListField = 'NOMBRE'
            ListSource = DataModuleCarteraEfectos.SComercial
            ParentFont = False
            TabOrder = 12
          end
          object EditSERIE: TDBEdit
            Left = 386
            Top = 192
            Width = 45
            Height = 22
            AutoSize = False
            DataField = 'SERIE'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object EditEJERCICIO: TDBEdit
            Left = 301
            Top = 192
            Width = 32
            Height = 22
            AutoSize = False
            DataField = 'EJERCICIO'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
          end
          object RadioGroupSITUACION: TDBRadioGroup
            Left = 12
            Top = 243
            Width = 329
            Height = 105
            Caption = ' Situaci'#243'n '
            Columns = 3
            DataField = 'SITUACION'
            DataSource = DataModuleCarteraEfectos.DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'PENDIENTE'
              'REMESADO'
              'COBRADO'
              'DEVUELTO'
              'PAGADO'
              'ACEPTADO'
              'VENCIDO')
            ParentFont = False
            TabOrder = 15
            Values.Strings = (
              'N'
              'B'
              'C'
              'D'
              'P'
              'A'
              'V')
          end
        end
      end
      object TabSheetFiltro: TTabSheet
        Caption = 'Filtro'
        ImageIndex = 2
        object GroupBoxREMESAS: TGroupBox
          Left = 0
          Top = 0
          Width = 764
          Height = 409
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          object Label16: TLabel
            Left = 80
            Top = 55
            Width = 89
            Height = 13
            Caption = 'Fecha Vencimiento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 225
            Top = 12
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
            Left = 353
            Top = 11
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
          object Label20: TLabel
            Left = 142
            Top = 106
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
          object Label18: TLabel
            Left = 27
            Top = 185
            Width = 85
            Height = 14
            Caption = 'Subcuenta desde'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 29
            Top = 238
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
          object Label17: TLabel
            Left = 107
            Top = 30
            Width = 67
            Height = 13
            Caption = 'Fecha Emisi'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 67
            Top = 264
            Width = 47
            Height = 14
            Caption = 'Comercial'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 104
            Top = 131
            Width = 72
            Height = 14
            Caption = 'Factura Cliente'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 85
            Top = 155
            Width = 90
            Height = 14
            Caption = 'Factura Proveedor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 93
            Top = 209
            Width = 27
            Height = 14
            Caption = 'hasta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 107
            Top = 79
            Width = 68
            Height = 13
            Caption = 'Fecha Asiento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object FiltroSituacion: TGroupBox
            Left = 27
            Top = 285
            Width = 302
            Height = 80
            Caption = ' Situaci'#243'n '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
            object CheckBoxPENDIENTE: TCheckBox
              Left = 18
              Top = 15
              Width = 85
              Height = 17
              Caption = 'Pendiente'
              TabOrder = 0
            end
            object CheckBoxREMESADO: TCheckBox
              Left = 18
              Top = 34
              Width = 85
              Height = 17
              Caption = 'Remesado'
              TabOrder = 1
            end
            object CheckBoxCOBRADO: TCheckBox
              Left = 18
              Top = 54
              Width = 85
              Height = 17
              Caption = 'Cobrado'
              TabOrder = 2
            end
            object CheckBoxDEVUELTO: TCheckBox
              Left = 114
              Top = 15
              Width = 90
              Height = 17
              Caption = 'Devuelto'
              TabOrder = 3
            end
            object CheckBoxPAGADO: TCheckBox
              Left = 114
              Top = 34
              Width = 90
              Height = 17
              Caption = 'Pagado'
              TabOrder = 4
            end
            object CheckBoxACEPTADO: TCheckBox
              Left = 114
              Top = 54
              Width = 90
              Height = 17
              Caption = 'Aceptado'
              TabOrder = 5
            end
            object CheckBoxVENCIDO: TCheckBox
              Left = 209
              Top = 15
              Width = 78
              Height = 17
              Caption = 'Vencido'
              TabOrder = 6
            end
          end
          object EditFECHA_VENCIMIENTO_DESDE: TDBEdit
            Left = 192
            Top = 51
            Width = 110
            Height = 21
            DataField = 'FechaVencimDesde'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object EditFECHA_VENCIMIENTO_HASTA: TDBEdit
            Left = 320
            Top = 51
            Width = 110
            Height = 21
            DataField = 'FechaVencimHasta'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object EditIMPORTE_DESDE: TDBEdit
            Left = 192
            Top = 103
            Width = 110
            Height = 21
            DataField = 'ImporteDesde'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object EditIMPORTE_HASTA: TDBEdit
            Left = 320
            Top = 103
            Width = 110
            Height = 21
            DataField = 'ImporteHasta'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox
            Left = 228
            Top = 182
            Width = 280
            Height = 21
            DataField = 'SubcuentaDesde'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleCarteraEfectos.SSubCtaCarteraEfectos
            ParentFont = False
            TabOrder = 13
          end
          object ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox
            Left = 129
            Top = 182
            Width = 100
            Height = 21
            DataField = 'SubcuentaDesde'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = DataModuleCarteraEfectos.SSubCtaCarteraEfectos
            ParentFont = False
            TabOrder = 12
          end
          object ComboBoxBUSCADS_SUBCUENTA_BANCO: TDBLookupComboBox
            Left = 228
            Top = 235
            Width = 280
            Height = 21
            DataField = 'SubcuentaBanco'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleCarteraEfectos.SSubCTABanco
            ParentFont = False
            TabOrder = 17
          end
          object ComboBoxBUSCACD_SUBCUENTA_BANCO: TDBLookupComboBox
            Left = 129
            Top = 235
            Width = 100
            Height = 21
            DataField = 'SubcuentaBanco'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = DataModuleCarteraEfectos.SSubCTABanco
            ParentFont = False
            TabOrder = 16
          end
          object EditFECHA_EMISION_DESDE: TDBEdit
            Left = 192
            Top = 26
            Width = 110
            Height = 21
            DataField = 'FechaEmisionDesde'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object EditFECHA_EMISION_HASTA: TDBEdit
            Left = 320
            Top = 26
            Width = 110
            Height = 21
            DataField = 'FechaEmisionHasta'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object ComboBoxBUSCA_COMERCIAL: TDBLookupComboBox
            Left = 129
            Top = 261
            Width = 252
            Height = 21
            DataField = 'Comercial'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'COMERCIAL'
            ListField = 'NOMBRE'
            ListSource = DataModuleCarteraEfectos.SComercial
            ParentFont = False
            TabOrder = 19
          end
          object ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox
            Left = 228
            Top = 206
            Width = 280
            Height = 21
            DataField = 'SubcuentaHasta'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleCarteraEfectos.SSubCtaCarteraEfectos
            ParentFont = False
            TabOrder = 15
          end
          object ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox
            Left = 129
            Top = 206
            Width = 100
            Height = 21
            DataField = 'SubcuentaHasta'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'SUBCUENTA'
            ListSource = DataModuleCarteraEfectos.SSubCtaCarteraEfectos
            ParentFont = False
            TabOrder = 14
          end
          object EditFACT_CLIENTE_DESDE: TDBEdit
            Left = 192
            Top = 128
            Width = 110
            Height = 20
            AutoSize = False
            DataField = 'FactClienteDesde'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object EditFACT_CLIENTE_HASTA: TDBEdit
            Left = 320
            Top = 128
            Width = 110
            Height = 20
            AutoSize = False
            DataField = 'FactClienteHasta'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object EditFACT_PROVEEDOR_DESDE: TDBEdit
            Left = 192
            Top = 152
            Width = 110
            Height = 20
            AutoSize = False
            DataField = 'FactProveedorDesde'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object EditFACT_PROVEEDOR_HASTA: TDBEdit
            Left = 320
            Top = 152
            Width = 110
            Height = 20
            AutoSize = False
            DataField = 'FactProveedorHasta'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object EditFECHA_ASIENTO_HASTA: TDBEdit
            Left = 320
            Top = 75
            Width = 110
            Height = 21
            DataField = 'FechaAsientoHasta'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object EditFECHA_ASIENTO_DESDE: TDBEdit
            Left = 192
            Top = 75
            Width = 110
            Height = 21
            DataField = 'FechaAsientoDesde'
            DataSource = DataModuleCarteraEfectos.DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object FiltroRemesasBancarias: TCheckBox
            Left = 344
            Top = 348
            Width = 164
            Height = 17
            TabStop = False
            Caption = 'Filtro Remesas Bancarias'
            TabOrder = 20
            OnClick = FiltroRemesasBancariasClick
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 773
      Top = 1
      Width = 105
      Height = 437
      Align = alRight
      TabOrder = 1
      object SpFiltro: TSpeedButton
        Left = 32
        Top = 405
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
      object BtnEfectos: TButton
        Left = 11
        Top = 153
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = 'Efectos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnEfectosClick
      end
      object BtnAceptar: TButton
        Left = 11
        Top = 245
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
        TabOrder = 1
        OnClick = BtnAceptarClick
      end
      object BtnInformes: TButton
        Left = 11
        Top = 199
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = '&Informes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BtnInformesClick
      end
      object BtnCancelar: TButton
        Left = 11
        Top = 274
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
        OnClick = BtnCancelarClick
      end
      object BtnSeleccion: TButton
        Left = 11
        Top = 222
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = 'S&eleccionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BtnSeleccionClick
      end
      object BtnNew: TButton
        Left = 11
        Top = 10
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = '&Nuevo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BtnNewClick
      end
      object BtnDelete: TButton
        Left = 11
        Top = 56
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = '&Eliminar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BtnDeleteClick
      end
      object NavAnimate: TAnimate
        Left = 11
        Top = 348
        Width = 80
        Height = 50
        Cursor = crHandPoint
        CommonAVI = aviFindFolder
        StopFrame = 27
        Visible = False
      end
      object Navegador: TDBNavigator
        Left = 13
        Top = 305
        Width = 80
        Height = 29
        DataSource = DataModuleCarteraEfectos.DSFichero
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 8
      end
      object BtnModify: TButton
        Left = 11
        Top = 33
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = '&Modificar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object BtnAsiento: TButton
        Left = 11
        Top = 79
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = 'As&iento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = BtnAsientoClick
      end
      object BtnCarta: TButton
        Left = 11
        Top = 130
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = 'Car&ta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = BtnCartaClick
      end
      object BtnAsientoBaja: TButton
        Left = 11
        Top = 177
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = 'Asiento Baja'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = BtnAsientoBajaClick
      end
      object BtnDuplicar: TButton
        Left = 11
        Top = 103
        Width = 83
        Height = 19
        Cursor = crHandPoint
        Caption = '&Duplicar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = BtnDuplicarClick
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 475
    Width = 879
    Height = 26
    Align = alBottom
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 879
    Height = 36
    Align = alTop
    TabOrder = 2
    object Label2: TLabel
      Left = 7
      Top = 6
      Width = 242
      Height = 19
      AutoSize = False
      Caption = 'Archivo de Cartera de Efectos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object QAux: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 520
    Top = 8
  end
  object PopupMenuListados: TPopupMenu
    AutoHotkeys = maManual
    OwnerDraw = True
    Left = 589
    Top = 9
    object InformeFVenc: TMenuItem
      Caption = 'Informe por F.Vencimiento'
      OnClick = InformeFVencClick
      OnAdvancedDrawItem = InformeFVencAdvancedDrawItem
    end
    object InformeporSubcuenta1: TMenuItem
      Caption = 'Informe por Subcuenta'
      OnClick = InformeporSubcuenta1Click
      OnAdvancedDrawItem = InformeFVencAdvancedDrawItem
    end
    object InformeporBanco1: TMenuItem
      Caption = 'Informe por Banco'
      OnClick = InformeporBanco1Click
      OnAdvancedDrawItem = InformeFVencAdvancedDrawItem
    end
    object InformeporSituacin1: TMenuItem
      Caption = 'Informe por Situaci'#243'n'
      OnClick = InformeporSituacin1Click
      OnAdvancedDrawItem = InformeFVencAdvancedDrawItem
    end
    object InformeporComercial1: TMenuItem
      Caption = 'Informe por Comercial'
      OnClick = InformeporComercial1Click
      OnAdvancedDrawItem = InformeFVencAdvancedDrawItem
    end
  end
  object FastReportCarteraBanco: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.163548171300000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42883.832988935190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 601
    Top = 198
    Datasets = <
      item
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
      end>
    Variables = <>
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
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Shape4: TfrxShapeView
          Left = 887.001838510000000000
          Top = 15.998750490000000000
          Width = 195.016188940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object SystemVariable3: TfrxMemoView
          Left = 944.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 43.001916890000000000
          Top = 36.000023250000000000
          Width = 841.145740089999000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE PAGOS / COBROS POR BANCO')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 892.002785330000000000
          Top = 37.001598700000000000
          Width = 49.560976890000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 474.002195890000000000
          Top = 101.000380190000000000
          Width = 257.000480940000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 892.002785330000000000
          Top = 20.999068680000000000
          Width = 44.560658700000000000
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
        object SystemVariable2: TfrxMemoView
          Left = 944.001869510000000000
          Top = 37.001598700000000000
          Width = 17.340483640000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 101.000380190000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1009.002226450000000000
          Top = 20.999068680000000000
          Width = 53.340506890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[REPORT_DESCRIPTION]')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 912.000589000000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 736.002995020000000000
          Top = 101.000380190000000000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 823.003996090000000000
          Top = 101.000380190000000000
          Width = 85.999425620000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situaci'#243'n')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 402.002149390000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Vencim.')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 46.998455550000000000
          Top = 101.000380190000000000
          Width = 99.998804740000000000
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
        object Label13: TfrxMemoView
          Left = 150.001986640000000000
          Top = 101.000380190000000000
          Width = 251.002366830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 474.002195890000000000
          Top = 1.001575450000000000
          Width = 257.000480940000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."CONCEPTO"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 1.001575450000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace1."CalcImporte"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 912.000589000000000000
          Top = 1.001575450000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace1."FEMISION"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 736.002995020000000000
          Top = 1.001575450000000000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."NumeroFactura"]')
          ParentFont = False
        end
        object Situacion: TfrxMemoView
          Left = 823.003996090000000000
          Top = 1.001575450000000000
          Width = 85.999425620000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."DescSituacion"]')
          ParentFont = False
        end
        object ppFEmision1: TfrxMemoView
          Left = 402.002149390000000000
          Top = 1.001575450000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace1."FVENCIMIENTO"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 150.001986640000000000
          Top = 1.001575450000000000
          Width = 246.002048640000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."DescSubcuenta"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 46.998455550000000000
          Top = 1.001575450000000000
          Width = 99.998804740000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."SUBCUENTA"]')
          ParentFont = False
        end
      end
      object Group1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 819.001473820000000000
          Top = 6.999689559999980000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 912.000589000000000000
          Top = 10.998432300000000000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 10.998432300000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."SUBCTABANCO"'
        object Label10: TfrxMemoView
          Left = 46.998455550000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'BANCO')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 140.001350260000000000
          Width = 99.998804740000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace1."SUBCTABANCO"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 243.998897740000000000
          Width = 377.000558440000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace1."DescSubcuentaBanco"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.999386870000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 819.001473820000000000
          Top = 1.999371369999950000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 912.000589000000000000
          Top = 6.999689559999980000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 6.999689560000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object FastReportCarteraSubcta: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636695694400000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42883.833129050920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 601
    Top = 146
    Datasets = <
      item
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
      end>
    Variables = <>
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
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Shape4: TfrxShapeView
          Left = 883.001838510000000000
          Top = 15.998750490000000000
          Width = 179.898068940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object SystemVariable3: TfrxMemoView
          Left = 947.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 833.586680090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE PAGOS / COBROS POR SUBCUENTA')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 892.002785330000000000
          Top = 37.001598700000000000
          Width = 53.340506890000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 118.998502050000000000
          Top = 101.000380190000000000
          Width = 257.000480940000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 892.002785330000000000
          Top = 20.999068680000000000
          Width = 48.340188700000000000
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
        object SystemVariable2: TfrxMemoView
          Left = 947.001869510000000000
          Top = 37.001598700000000000
          Width = 13.560953640000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 101.000380190000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1012.002226450000000000
          Top = 20.999068680000000000
          Width = 45.781446890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 629.000721190000000000
          Top = 101.000380190000000000
          Width = 99.998804740000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 732.000472750000000000
          Top = 101.000380190000000000
          Width = 251.002366830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[REPORT_DESCRIPTION]')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 557.000674690000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 380.999301180000000000
          Top = 101.000380190000000000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 468.000302250000000000
          Top = 101.000380190000000000
          Width = 85.999425620000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situaci'#243'n')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 46.998455550000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Vencim.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 118.998502050000000000
          Top = 1.001575450000000000
          Width = 257.000480940000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."CONCEPTO"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 1.001575450000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace1."CalcImporte"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 732.000472750000000000
          Top = 1.001575450000000000
          Width = 246.002048640000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."DescSubcuentaBanco"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 629.000721190000000000
          Top = 1.001575450000000000
          Width = 99.998804740000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."SUBCTABANCO"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 557.000674690000000000
          Top = 1.001575450000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace1."FEMISION"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 380.999301180000000000
          Top = 1.001575450000000000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."NumeroFactura"]')
          ParentFont = False
        end
        object Situacion: TfrxMemoView
          Left = 468.000302250000000000
          Top = 1.001575450000000000
          Width = 85.999425620000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."DescSituacion"]')
          ParentFont = False
        end
        object ppFEmision1: TfrxMemoView
          Left = 46.998455550000000000
          Top = 1.001575450000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace1."FVENCIMIENTO"]')
          ParentFont = False
        end
      end
      object Group1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 819.001473820000000000
          Top = 6.999689559999980000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 912.000589000000000000
          Top = 10.998432300000000000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 10.998432300000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."FVENCIMIENTO"'
        object Label10: TfrxMemoView
          Left = 46.998455550000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'SUBCUENTA')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 140.001350260000000000
          Width = 99.998804740000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace1."SUBCUENTA"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 243.998897740000000000
          Width = 377.000558440000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace1."DescSubcuenta"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.999386870000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 819.001473820000000000
          Top = 1.999371369999950000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 912.000589000000000000
          Top = 6.999689560000000000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 6.999689560000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object FastReportCarteraFVenc: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636590810200000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42883.833253645830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 601
    Top = 98
    Datasets = <
      item
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
      end>
    Variables = <>
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
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Label5: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 829.807150090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE PAGOS / COBROS POR FECHA DE VENCIMIENTO')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Shape4: TfrxShapeView
          Left = 882.001838510000000000
          Top = 15.998750490000000000
          Width = 179.898068940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 890.002785330000000000
          Top = 37.001598700000000000
          Width = 49.560976890000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 433.999650370000000000
          Top = 101.000380190000000000
          Width = 291.998928740000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 890.002785330000000000
          Top = 20.999068680000000000
          Width = 44.560658700000000000
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
        object SystemVariable2: TfrxMemoView
          Left = 944.001869510000000000
          Top = 37.001598700000000000
          Width = 13.560953640000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 101.000380190000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1009.002226450000000000
          Top = 20.999068680000000000
          Width = 49.560976890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 46.998455550000000000
          Top = 101.000380190000000000
          Width = 104.999122930000000000
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
        object Label12: TfrxMemoView
          Left = 821.000845190000000000
          Top = 101.000380190000000000
          Width = 89.000372440000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 912.000589000000000000
          Top = 101.000380190000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 157.001676200000000000
          Top = 101.000380190000000000
          Width = 272.001435510000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[REPORT_DESCRIPTION]')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 729.003305460000000000
          Top = 101.000380190000000000
          Width = 89.000372440000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situaci'#243'n')
          ParentFont = False
        end
        object SystemVariable3: TfrxMemoView
          Left = 944.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 433.999650370000000000
          Top = 1.001575449999990000
          Width = 291.998928740000000000
          Height = 13.999379120000000000
          DataField = 'CONCEPTO'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."CONCEPTO"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 821.000845190000000000
          Top = 1.001575449999990000
          Width = 89.000372440000000000
          Height = 13.001583200000000000
          DataField = 'NumeroFactura'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."NumeroFactura"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 1.001575449999990000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."CalcImporte"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 157.001676200000000000
          Top = 1.001575449999990000
          Width = 267.001117320000000000
          Height = 13.999379120000000000
          DataField = 'DescSubcuenta'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescSubcuenta"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 46.998455550000000000
          Top = 1.001575449999990000
          Width = 104.999122930000000000
          Height = 13.999379120000000000
          DataField = 'SUBCUENTA'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."SUBCUENTA"]')
          ParentFont = False
        end
        object Situacion: TfrxMemoView
          Left = 729.003305460000000000
          Top = 1.001575449999990000
          Width = 89.000372440000000000
          Height = 13.999379120000000000
          DataField = 'DescSituacion'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescSituacion"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 912.000589000000000000
          Top = 1.001575449999990000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          DataField = 'FEMISION'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."FEMISION"]')
          ParentFont = False
        end
      end
      object Group1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 819.001473820000000000
          Top = 6.999689559999980000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 912.000589000000000000
          Top = 10.998432300000000000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 10.998432300000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."FVENCIMIENTO"'
        object Label10: TfrxMemoView
          Left = 46.998455550000000000
          Width = 147.998835740000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'FECHA DE VENCIMIENTO')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 209.000449940000000000
          Width = 70.000675130000000000
          Height = 13.001583200000000000
          DataField = 'FVENCIMIENTO'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."FVENCIMIENTO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.999386870000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 819.001473820000000000
          Top = 1.999371369999950000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 912.000589000000000000
          Top = 6.999689559999980000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 6.999689560000010000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object FastReportCarteraSituacion: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636644513900000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42883.833409513890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 601
    Top = 242
    Datasets = <
      item
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
      end>
    Variables = <>
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
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Shape4: TfrxShapeView
          Left = 882.001838510000000000
          Top = 15.998750490000000000
          Width = 176.118538940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object SystemVariable3: TfrxMemoView
          Left = 944.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 829.807150090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE PAGOS / COBROS POR SITUACI'#211'N')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 890.002785330000000000
          Top = 37.001598700000000000
          Width = 49.560976890000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 534.002234640000000000
          Top = 101.000380190000000000
          Width = 279.998920990000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 890.002785330000000000
          Top = 20.999068680000000000
          Width = 44.560658700000000000
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
        object SystemVariable2: TfrxMemoView
          Left = 944.001869510000000000
          Top = 37.001598700000000000
          Width = 9.781423640000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 101.000380190000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1009.002226450000000000
          Top = 20.999068680000000000
          Width = 45.781446890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[REPORT_DESCRIPTION]')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 912.000589000000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 819.001473820000000000
          Top = 101.000380190000000000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 462.002188140000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Vencim.')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 46.998455550000000000
          Top = 101.000380190000000000
          Width = 99.998804740000000000
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
        object Label13: TfrxMemoView
          Left = 150.001986640000000000
          Top = 101.000380190000000000
          Width = 306.999883310000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 534.002234640000000000
          Top = 1.001575450000000000
          Width = 279.998920990000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."CONCEPTO"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 1.001575450000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace1."CalcImporte"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 912.000589000000000000
          Top = 1.001575450000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace1."FEMISION"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 819.001473820000000000
          Top = 1.001575450000000000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."NumeroFactura"]')
          ParentFont = False
        end
        object ppFEmision1: TfrxMemoView
          Left = 462.002188140000000000
          Top = 1.001575450000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace1."FVENCIMIENTO"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 150.001986640000000000
          Top = 1.001575450000000000
          Width = 301.999565120000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."DescSubcuenta"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 46.998455550000000000
          Top = 1.001575450000000000
          Width = 99.998804740000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."SUBCUENTA"]')
          ParentFont = False
        end
      end
      object Group1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 819.001473820000000000
          Top = 6.999689559999980000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 912.000589000000000000
          Top = 10.998432300000000000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 10.998432300000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."SITUACION"'
        object Label10: TfrxMemoView
          Left = 46.998455550000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'SITUACI'#211'N')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 140.001350260000000000
          Width = 159.001047570000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace1."DescSituacion"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.999386870000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 819.001473820000000000
          Top = 1.999371369999950000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 912.000589000000000000
          Top = 6.999689559999980000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 6.999689560000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object FastReportCarteraComercial: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636505266200000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42883.833529814820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 601
    Top = 290
    Datasets = <
      item
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
      end>
    Variables = <>
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
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Shape4: TfrxShapeView
          Left = 883.001838510000000000
          Top = 15.998750490000000000
          Width = 179.898068940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object SystemVariable3: TfrxMemoView
          Left = 944.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 829.807150090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE COMISIONES POR COMERCIAL')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 890.002785330000000000
          Top = 37.001598700000000000
          Width = 49.560976890000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 207.998874490000000000
          Top = 101.000380190000000000
          Width = 288.000186000000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 890.002785330000000000
          Top = 20.999068680000000000
          Width = 44.560658700000000000
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
        object SystemVariable2: TfrxMemoView
          Left = 944.001869510000000000
          Top = 37.001598700000000000
          Width = 13.560953640000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 785.000821940000000000
          Top = 101.000380190000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1009.002226450000000000
          Top = 20.999068680000000000
          Width = 49.560976890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[REPORT_DESCRIPTION]')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 703.000139060000000000
          Top = 101.000380190000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 501.003158210000000000
          Top = 101.000380190000000000
          Width = 92.001319260000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 599.002591580000000000
          Top = 101.000380190000000000
          Width = 94.000690630000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situaci'#243'n')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 130.998509800000000000
          Top = 101.000380190000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Vencim.')
          ParentFont = False
        end
        object Label11: TfrxMemoView
          Left = 887.002777580000000000
          Top = 101.000380190000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Comisi'#243'n')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 207.998874490000000000
          Top = 1.001575450000000000
          Width = 288.000186000000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."CONCEPTO"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 785.000821940000000000
          Top = 1.001575450000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace1."CalcImporte"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 703.000139060000000000
          Top = 1.001575450000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace1."FEMISION"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 501.003158210000000000
          Top = 1.001575450000000000
          Width = 92.001319260000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."NumeroFactura"]')
          ParentFont = False
        end
        object Situacion: TfrxMemoView
          Left = 599.002591580000000000
          Top = 1.001575450000000000
          Width = 94.000690630000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace1."DescSituacion"]')
          ParentFont = False
        end
        object ppFEmision1: TfrxMemoView
          Left = 130.998509800000000000
          Top = 1.001575450000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace1."FVENCIMIENTO"]')
          ParentFont = False
        end
        object Importe2: TfrxMemoView
          Left = 887.002777580000000000
          Top = 1.001575450000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace1."CalcComision"]')
          ParentFont = False
        end
      end
      object Group2: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 415.748300000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 623.002607080000000000
          Top = 6.999689559999980000
          Width = 433.999650370000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 624.000403000000000000
          Top = 10.998432300000000000
          Width = 150.999782560000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 785.000821940000000000
          Top = 10.998432300000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
        object DBCalc4: TfrxMemoView
          Left = 887.002777580000000000
          Top = 10.998432300000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcComision">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."COMERCIAL"'
        object Label101: TfrxMemoView
          Left = 46.998455550000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'COMERCIAL')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 140.001350260000000000
          Width = 73.001621950000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace1."COMERCIAL"]')
          ParentFont = False
        end
        object DBText5: TfrxMemoView
          Left = 216.000139500000000000
          Width = 486.999999560000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace1."NomComercial"]')
          ParentFont = False
        end
      end
      object Group1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.995607340000000000
        Top = 279.685220000000000000
        Width = 1122.520410000000000000
        object Line2: TfrxLineView
          Left = 623.002607080000000000
          Top = 3.000946819999970000
          Width = 433.999650370000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label3: TfrxMemoView
          Left = 624.000403000000000000
          Top = 8.001265010000000000
          Width = 150.999782560000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Comercial :')
          ParentFont = False
        end
        object Suma4: TfrxMemoView
          Left = 785.000821940000000000
          Top = 8.001265010000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
        object Suma5: TfrxMemoView
          Left = 887.002777580000000000
          Top = 8.001265010000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcComision">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."SUBCUENTA"'
        object Label10: TfrxMemoView
          Left = 80.001311510000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'SUBCUENTA')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 173.000426690000000000
          Width = 99.998804740000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace1."SUBCUENTA"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 277.001753700000000000
          Width = 377.000558440000000000
          Height = 13.001583200000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace1."DescSubcuenta"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.995607340000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 623.002607080000000000
          Top = 1.999371370000060000
          Width = 433.999650370000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 624.000403000000000000
          Top = 6.999689559999980000
          Width = 150.999782560000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Subcuenta :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 785.000821940000000000
          Top = 6.999689560000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
        object Suma3: TfrxMemoView
          Left = 887.002777580000000000
          Top = 6.999689560000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcComision">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object Enlace1: TfrxDBDataset
    UserName = 'ENLACE1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_CARTERAEFECTOS=ID_CARTERAEFECTOS'
      'FVENCIMIENTO=FVENCIMIENTO'
      'FEMISION=FEMISION'
      'SUBCUENTA=SUBCUENTA'
      'CONCEPTO=CONCEPTO'
      'CalcImporte=CalcImporte'
      'DescSituacion=DescSituacion'
      'ASIENTORIESGO=ASIENTORIESGO'
      'SUBCTABANCO=SUBCTABANCO'
      'COMERCIAL=COMERCIAL'
      'CalcComision=CalcComision'
      'FACTCLIENT=FACTCLIENT'
      'FACTPROVEEDOR=FACTPROVEEDOR'
      'EJERCICIO=EJERCICIO'
      'SERIE=SERIE'
      'IMPCOMISION=IMPCOMISION'
      'IMPORTE=IMPORTE'
      'SITUACION=SITUACION'
      'FASIENTO=FASIENTO'
      'NumeroFactura=NumeroFactura'
      'DescSubcuenta=DescSubcuenta'
      'DescSubcuentaBanco=DescSubcuentaBanco'
      'NomComercial=NomComercial')
    DataSet = DataModuleCarteraEfectos.QFichero
    BCDToCurrency = False
    Left = 728
    Top = 97
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
    Left = 601
    Top = 337
  end
end
