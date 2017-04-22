object WCargaRapidaFacturas: TWCargaRapidaFacturas
  Left = 565
  Top = 321
  Caption = 'Carga R'#225'pida de Facturas'
  ClientHeight = 619
  ClientWidth = 811
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 578
    Width = 811
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 0
    ExplicitTop = 583
    ExplicitWidth = 819
    DesignSize = (
      811
      41)
    object BtnEdtSubcuenta: TButton
      Left = 9
      Top = 8
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Caption = 'A'#241'adir S&ubcta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnEdtSubcuentaClick
    end
    object BtnEdtGuardar: TButton
      Left = 723
      Top = 8
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Ac&eptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnEdtGuardarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 35
    Align = alTop
    Color = 14275008
    TabOrder = 1
    ExplicitWidth = 819
    object Shape1: TShape
      Left = 6
      Top = 26
      Width = 741
      Height = 1
      Pen.Color = 7552051
    end
    object lTitulo: TLabel
      Left = 6
      Top = 5
      Width = 48
      Height = 19
      Caption = 'Titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 35
    Width = 811
    Height = 543
    ActivePage = TabSheetAsientos
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 819
    ExplicitHeight = 548
    object TabSheetAsientos: TTabSheet
      Caption = 'Asientos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        Left = 0
        Top = 449
        Width = 803
        Height = 63
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 454
        ExplicitWidth = 811
        object Label11: TLabel
          Left = 10
          Top = 40
          Width = 35
          Height = 14
          Caption = 'Fecha '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 303
          Top = 16
          Width = 68
          Height = 14
          Caption = 'Banco / Caja '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 303
          Top = 40
          Width = 56
          Height = 14
          Caption = 'Concepto '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CheckBoxRealizarPago: TCheckBox
          Left = 9
          Top = 15
          Width = 128
          Height = 17
          Alignment = taLeftJustify
          Caption = #191'Realizar Pago?'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = CheckBoxRealizarPagoClick
        end
        object ComboBoxCD_SUBCUENTA_BANCO: TDBLookupComboBox
          Left = 373
          Top = 13
          Width = 103
          Height = 22
          DataField = 'Banco'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DMContaRef.SSubCTABanco
          ParentFont = False
          TabOrder = 1
        end
        object ComboBoxDS_SUBCUENTA_BANCO: TDBLookupComboBox
          Left = 475
          Top = 13
          Width = 257
          Height = 22
          DataField = 'Banco'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DMContaRef.SSubCTABanco
          ParentFont = False
          TabOrder = 2
        end
        object EditFECHAVTO: TDBEdit
          Left = 59
          Top = 37
          Width = 89
          Height = 20
          AutoSize = False
          DataField = 'FechaVto'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object ComboDS_CONCEPTO_BANCO: TDBLookupComboBox
          Left = 427
          Top = 37
          Width = 305
          Height = 21
          DataField = 'CtoBanco'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 5
        end
        object ComboCD_CONCEPTO_BANCO: TDBLookupComboBox
          Left = 373
          Top = 37
          Width = 55
          Height = 21
          DataField = 'CtoBanco'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 4
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 358
        Width = 803
        Height = 91
        Align = alBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 363
        ExplicitWidth = 811
        object Label9: TLabel
          Left = 10
          Top = 52
          Width = 65
          Height = 14
          Caption = 'Comentario'
        end
        object Label10: TLabel
          Left = 373
          Top = 52
          Width = 88
          Height = 14
          Caption = 'Cuenta Anal'#237'tica'
        end
        object Label12: TLabel
          Left = 10
          Top = 13
          Width = 150
          Height = 14
          Caption = 'Concepto I.V.A. por Defecto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lCtoIVAIntra: TLabel
          Left = 373
          Top = 13
          Width = 244
          Height = 14
          Caption = 'Concepto I.V.A. Intracomunitario por Defecto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lIntracomunitaria: TLabel
          Left = 663
          Top = 8
          Width = 66
          Height = 28
          Alignment = taCenter
          Caption = 'Factura'#13#10'Intracomun.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object EditCOMENTARIO: TDBEdit
          Left = 10
          Top = 65
          Width = 340
          Height = 20
          AutoSize = False
          DataField = 'COMENTARIO'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object ComboBoxCD_ANALITICA: TDBLookupComboBox
          Left = 373
          Top = 65
          Width = 103
          Height = 22
          DataField = 'analitica'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CUENTA'
          ListField = 'CUENTA'
          ListSource = DataModuleCargaRapidaFacturas.SAnaliticas
          ParentFont = False
          TabOrder = 5
        end
        object ComboBoxDS_ANALITICA: TDBLookupComboBox
          Left = 475
          Top = 65
          Width = 257
          Height = 22
          DataField = 'analitica'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CUENTA'
          ListField = 'NOMBRE'
          ListSource = DataModuleCargaRapidaFacturas.SAnaliticas
          ParentFont = False
          TabOrder = 6
        end
        object ComboCD_CONCEPTO_IVA: TDBLookupComboBox
          Left = 10
          Top = 27
          Width = 55
          Height = 21
          DataField = 'CtoIva'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 0
        end
        object ComboD_CONCEPTO_IVA: TDBLookupComboBox
          Left = 64
          Top = 27
          Width = 286
          Height = 21
          DataField = 'CtoIva'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 1
        end
        object ComboCD_CONCEPTO_IVA_INTRA: TDBLookupComboBox
          Left = 373
          Top = 27
          Width = 55
          Height = 21
          DataField = 'CTOIVAINTRA'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 2
          TabStop = False
        end
        object ComboDS_CONCEPTO_IVA_INTRA: TDBLookupComboBox
          Left = 427
          Top = 27
          Width = 222
          Height = 21
          DataField = 'CTOIVAINTRA'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 3
          TabStop = False
        end
        object CheckBoxIntracomunitaria: TCheckBox
          Left = 688
          Top = 33
          Width = 17
          Height = 17
          TabStop = False
          TabOrder = 7
          OnClick = CheckBoxIntracomunitariaClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 803
        Height = 128
        Align = alTop
        TabOrder = 2
        ExplicitWidth = 811
        object Label1: TLabel
          Left = 187
          Top = 14
          Width = 75
          Height = 14
          Caption = 'Fecha Factura'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 14
          Width = 57
          Height = 14
          Caption = 'N'#186' Factura '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 279
          Top = 14
          Width = 112
          Height = 14
          Caption = 'Importe total factura'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 398
          Top = 14
          Width = 81
          Height = 14
          Caption = 'Imp.Dto.P.Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbSubcuenta: TLabel
          Left = 10
          Top = 52
          Width = 106
          Height = 14
          Caption = 'Cliente / Proveedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbCtoSubcuenta: TLabel
          Left = 422
          Top = 52
          Width = 162
          Height = 14
          Caption = 'Concepto Cliente / Proveedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 655
          Top = 14
          Width = 89
          Height = 14
          Caption = 'N.I.F. si gen'#233'rico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label65: TLabel
          Left = 10
          Top = 88
          Width = 82
          Height = 14
          Caption = 'Forma de Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label64: TLabel
          Left = 239
          Top = 88
          Width = 55
          Height = 14
          Caption = 'D'#237'a Pago 1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label66: TLabel
          Left = 299
          Top = 88
          Width = 55
          Height = 14
          Caption = 'D'#237'a Pago 2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbProfArre: TLabel
          Left = 494
          Top = 14
          Width = 40
          Height = 14
          Alignment = taRightJustify
          Caption = '% Rete.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LbCtoContra: TLabel
          Left = 422
          Top = 88
          Width = 154
          Height = 14
          Caption = 'Concepto Ventas / Compras'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 359
          Top = 88
          Width = 55
          Height = 14
          Caption = 'D'#237'a Pago 3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lFacturaIntracom: TLabel
          Left = 98
          Top = 13
          Width = 77
          Height = 14
          Caption = 'Factura Intrac.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lbRetVentas: TLabel
          Left = 546
          Top = 14
          Width = 93
          Height = 14
          Caption = 'Imp.Reteni.Venta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboCD_CONCEPTO: TDBLookupComboBox
          Left = 422
          Top = 65
          Width = 55
          Height = 21
          DataField = 'CtoSubcuenta'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 10
        end
        object EditNUMEROFACTURA: TDBEdit
          Left = 10
          Top = 27
          Width = 86
          Height = 20
          AutoSize = False
          DataField = 'NumeroFactura'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditIMPORTE: TDBEdit
          Left = 279
          Top = 27
          Width = 92
          Height = 20
          AutoSize = False
          DataField = 'Importe'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnExit = EditIMPORTEExit
        end
        object EditIMPORTEPRONTOPAGO: TDBEdit
          Left = 398
          Top = 27
          Width = 67
          Height = 20
          TabStop = False
          AutoSize = False
          DataField = 'IMPORTEPRONTOPAGO'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object ComboBoxCD_SUBCUENTA: TDBLookupComboBox
          Left = 10
          Top = 65
          Width = 89
          Height = 22
          DataField = 'Subcuenta'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DMContaRef.SSubCtaClientes
          ParentFont = False
          TabOrder = 8
          OnCloseUp = ComboBoxCD_SUBCUENTACloseUp
          OnExit = ComboBoxCD_SUBCUENTAExit
        end
        object ComboBoxDS_SUBCUENTA: TDBLookupComboBox
          Left = 98
          Top = 65
          Width = 315
          Height = 22
          DataField = 'Subcuenta'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DMContaRef.SSubCtaClientes
          ParentFont = False
          TabOrder = 9
          OnExit = ComboBoxCD_SUBCUENTAExit
        end
        object EditFECHA: TDBEdit
          Left = 187
          Top = 27
          Width = 89
          Height = 20
          AutoSize = False
          DataField = 'Fecha'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = EditFECHAExit
        end
        object EditNIF: TDBEdit
          Left = 655
          Top = 27
          Width = 90
          Height = 20
          TabStop = False
          AutoSize = False
          DataField = 'NIF'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnExit = EditNIFExit
        end
        object ComboBoxCD_FORMAPAGO: TDBLookupComboBox
          Left = 10
          Top = 102
          Width = 53
          Height = 22
          DataField = 'FORMAPAGO'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object ComboBoxDS_FORMAPAGO: TDBLookupComboBox
          Left = 62
          Top = 102
          Width = 174
          Height = 22
          DataField = 'FORMAPAGO'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object EditDIAPAGO1: TDBEdit
          Left = 239
          Top = 102
          Width = 55
          Height = 20
          AutoSize = False
          DataField = 'DIAPAGO1'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object DIAPAGO2: TDBEdit
          Left = 299
          Top = 102
          Width = 55
          Height = 20
          AutoSize = False
          DataField = 'DIAPAGO2'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object ComboDS_CONCEPTO: TDBLookupComboBox
          Left = 476
          Top = 65
          Width = 253
          Height = 21
          DataField = 'CtoSubcuenta'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 11
        end
        object EditTANTORETENCION: TDBEdit
          Left = 494
          Top = 27
          Width = 40
          Height = 20
          TabStop = False
          AutoSize = False
          DataField = 'TANTORETENCION'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ComboCD_CONCEPTO_COMPRA_VENTA: TDBLookupComboBox
          Left = 422
          Top = 102
          Width = 55
          Height = 21
          DataField = 'CtoContra'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 17
        end
        object ComboDS_CONCEPTO_COMPRA_VENTA: TDBLookupComboBox
          Left = 476
          Top = 102
          Width = 253
          Height = 21
          DataField = 'CtoContra'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaFacturas.SConceptos
          ParentFont = False
          TabOrder = 18
        end
        object DIAPAGO3: TDBEdit
          Left = 359
          Top = 102
          Width = 55
          Height = 20
          AutoSize = False
          DataField = 'DIAPAGO3'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object EditNUMEROFACTURAINTRACOM: TDBEdit
          Left = 98
          Top = 26
          Width = 86
          Height = 20
          AutoSize = False
          DataField = 'NumeroFacturaIntracom'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
        end
        object EditIMPORTERETVENTA: TDBEdit
          Left = 546
          Top = 27
          Width = 73
          Height = 20
          AutoSize = False
          DataField = 'IMPORTERETVENTA'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnExit = EditIMPORTEExit
        end
      end
      object Datos: TGroupBox
        Left = 0
        Top = 128
        Width = 803
        Height = 230
        Align = alClient
        Color = 14275008
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        ExplicitWidth = 811
        ExplicitHeight = 235
        object Panel3: TPanel
          Left = 720
          Top = 15
          Width = 89
          Height = 218
          Align = alRight
          Color = 14275008
          TabOrder = 0
          object BtnResetIVA: TButton
            Left = 8
            Top = 105
            Width = 73
            Height = 22
            Hint = 'Inicializar'
            Caption = 'Reiniciar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BtnResetIVAClick
          end
          object BtnDeleteIVA: TButton
            Left = 8
            Top = 72
            Width = 73
            Height = 22
            Hint = 'Borrar'
            Caption = 'Eliminar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BtnDeleteIVAClick
          end
          object BtnNewIVA: TButton
            Left = 8
            Top = 10
            Width = 73
            Height = 22
            Hint = 'A'#241'adir'
            Caption = 'A'#241'adir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BtnNewIVAClick
          end
          object BtnModifyIVA: TButton
            Left = 8
            Top = 37
            Width = 73
            Height = 22
            Hint = 'A'#241'adir'
            Caption = 'Modificar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BtnModifyIVAClick
          end
        end
        object DBGridIVA: TDBGrid
          Left = 2
          Top = 15
          Width = 718
          Height = 218
          Align = alClient
          Color = 15596540
          DataSource = SGastos
          FixedColor = 10841401
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'SBCTA_IVA_DESC'
              Title.Caption = 'TIPO IVA'
              Width = 203
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASE_IMPONIBLE_IVA'
              Title.Caption = 'Base IMPONIBLE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUOTA_IVA'
              Title.Caption = 'CUOTA IVA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTO_IVA'
              Title.Caption = 'CTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRAPARTIDA_DESC'
              Width = 205
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRAPARTIDA'
              Visible = True
            end>
        end
      end
    end
    object TabSheetLastMoves: TTabSheet
      Caption = #218'ltimos Movimientos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 474
        Width = 827
        Height = 42
        Align = alBottom
        Color = 14275008
        TabOrder = 0
        object Label5: TLabel
          Left = 292
          Top = 14
          Width = 70
          Height = 14
          Caption = 'Subcuenta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 366
          Top = 14
          Width = 362
          Height = 14
          DataField = 'DESCSUBCUENTA'
          DataSource = SMovimientos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnEdtModificar: TButton
          Left = 8
          Top = 9
          Width = 88
          Height = 25
          Cursor = crHandPoint
          Caption = '&Modificar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BtnEdtModificarClick
        end
        object BtnEdtBorrarMovim: TButton
          Left = 102
          Top = 9
          Width = 88
          Height = 25
          Cursor = crHandPoint
          Caption = '&Borrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BtnEdtBorrarMovimClick
        end
        object BtnEdtMayor: TButton
          Left = 195
          Top = 9
          Width = 88
          Height = 25
          Cursor = crHandPoint
          Caption = 'Ma&yor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BtnEdtMayorClick
        end
      end
      object DBGridMoves: TDBGrid
        Left = 0
        Top = 0
        Width = 827
        Height = 474
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
        OnDrawColumnCell = DBGridMovesDrawColumnCell
        OnDblClick = DBGridMovesDblClick
        OnMouseDown = DBGridMovesMouseDown
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
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 386
    Top = 8
  end
  object Transaccion: TIBTransaction
    Left = 495
    Top = 7
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
    Left = 531
    Top = 7
    object QMovimientosASIENTO: TIntegerField
      DisplayWidth = 9
      FieldName = 'ASIENTO'
      Origin = 'DIARIO.ASIENTO'
      DisplayFormat = '###,###,###'
    end
    object QMovimientosAPUNTE: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'APT'
      DisplayWidth = 4
      FieldName = 'APUNTE'
      Origin = 'DIARIO.APUNTE'
    end
    object QMovimientosFECHA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'FECHA'
      Origin = 'DIARIO.FECHA'
    end
    object QMovimientosSUBCUENTA: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Origin = 'DIARIO.SUBCUENTA'
      Required = True
      Size = 10
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
      DisplayWidth = 48
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
      DisplayWidth = 14
      FieldName = 'IMPORTE'
      Origin = 'DIARIO.IMPORTE'
      DisplayFormat = '###,###,##0.#0'
    end
    object QMovimientosCONTRAPARTIDA: TIBStringField
      Alignment = taRightJustify
      DisplayLabel = 'CONTRAP'
      DisplayWidth = 10
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
    object QMovimientosCUENTA_ANALITICA: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUENTA_ANALITICA'
      Origin = 'DIARIO.CUENTA_ANALITICA'
      Visible = False
      Size = 10
    end
    object QMovimientosDESCCONCEPTO: TIBStringField
      DisplayWidth = 30
      FieldName = 'DESCCONCEPTO'
      Origin = 'CONCEPTOS.DESCRIPCION'
      Visible = False
      Size = 30
    end
    object QMovimientosDESCSUBCUENTA: TIBStringField
      DisplayWidth = 80
      FieldName = 'DESCSUBCUENTA'
      Origin = 'SUBCTAS.DESCRIPCION'
      Visible = False
      Size = 80
    end
    object QMovimientosABREVIATURA: TIBStringField
      FieldName = 'ABREVIATURA'
      Origin = 'SUBCTAS.ABREVIATURA'
      Visible = False
      Size = 10
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
    Left = 559
    Top = 7
  end
  object QSubcuentas: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 314
    Top = 16
  end
  object SGastos: TDataSource
    DataSet = QGastos
    Left = 270
    Top = 8
  end
  object QGastos: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = QGastosNewRecord
    Left = 220
    Top = 8
    object QGastosSBCTA_IVA: TStringField
      DisplayWidth = 10
      FieldName = 'SBCTA_IVA'
      Size = 10
    end
    object QGastosSBCTA_IVA_DESC: TStringField
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'SBCTA_IVA_DESC'
      LookupDataSet = DMContaRef.QSubCuentas
      LookupKeyFields = 'SUBCUENTA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'SBCTA_IVA'
      Size = 80
      Lookup = True
    end
    object QGastosCUOTA_IVA: TFloatField
      DisplayWidth = 10
      FieldName = 'CUOTA_IVA'
    end
    object QGastosBASE_IMPONIBLE_IVA: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_IMPONIBLE_IVA'
    end
    object QGastosCONTRAPARTIDA: TStringField
      DisplayWidth = 10
      FieldName = 'CONTRAPARTIDA'
      Size = 10
    end
    object QGastosCONTRAPARTIDA_DESC: TStringField
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'CONTRAPARTIDA_DESC'
      LookupDataSet = DMContaRef.QSubCuentas
      LookupKeyFields = 'SUBCUENTA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'CONTRAPARTIDA'
      Size = 80
      Lookup = True
    end
    object QGastosGENERADO: TStringField
      DisplayWidth = 1
      FieldName = 'GENERADO'
      Size = 1
    end
    object QGastosCTO_IVA: TStringField
      DisplayWidth = 3
      FieldName = 'CTO_IVA'
      Size = 3
    end
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 8
    object QFicheroNUMEROFACTURA: TStringField
      FieldName = 'NUMEROFACTURA'
      Size = 10
    end
    object QFicheroNUMEROFACTURAINTRACOM: TStringField
      FieldName = 'NUMEROFACTURAINTRACOM'
      Size = 10
    end
    object QFicheroFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QFicheroIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QFicheroIMPORTERETVENTA: TFloatField
      FieldName = 'IMPORTERETVENTA'
    end
    object QFicheroIMPORTEPRONTOPAGO: TFloatField
      FieldName = 'IMPORTEPRONTOPAGO'
    end
    object QFicheroSUBCUENTA: TStringField
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QFicheroCTOSUBCUENTA: TStringField
      FieldName = 'CTOSUBCUENTA'
      Size = 3
    end
    object QFicheroCTOIVA: TStringField
      FieldName = 'CTOIVA'
      Size = 3
    end
    object QFicheroCTOIVAINTRA: TStringField
      FieldName = 'CTOIVAINTRA'
      Size = 3
    end
    object QFicheroCTOCONTRA: TStringField
      FieldName = 'CTOCONTRA'
      Size = 3
    end
    object QFicheroCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 30
    end
    object QFicheroANALITICA: TStringField
      FieldName = 'ANALITICA'
      Size = 10
    end
    object QFicheroTANTORETENCION: TFloatField
      FieldName = 'TANTORETENCION'
    end
    object QFicheroNIF: TStringField
      FieldName = 'NIF'
      Size = 15
    end
    object QFicheroBANCO: TStringField
      FieldName = 'BANCO'
      Size = 10
    end
    object QFicheroFECHAVTO: TDateField
      FieldName = 'FECHAVTO'
    end
    object QFicheroCTOBANCO: TStringField
      FieldName = 'CTOBANCO'
      Size = 3
    end
    object QFicheroFORMAPAGO: TStringField
      FieldName = 'FORMAPAGO'
      Size = 3
    end
    object QFicheroDIAPAGO1: TIntegerField
      FieldName = 'DIAPAGO1'
    end
    object QFicheroDIAPAGO2: TIntegerField
      FieldName = 'DIAPAGO2'
    end
    object QFicheroDIAPAGO3: TIntegerField
      FieldName = 'DIAPAGO3'
    end
  end
end
