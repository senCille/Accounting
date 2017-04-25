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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
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
    object Shape1: TShape
      Left = 7
      Top = 28
      Width = 697
      Height = 1
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
end
