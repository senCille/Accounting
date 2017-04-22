object WEfectosComerciales: TWEfectosComerciales
  Left = 990
  Top = 238
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Generaci'#243'n de Asiento'
  ClientHeight = 487
  ClientWidth = 433
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox2: TGroupBox
    Left = 0
    Top = 34
    Width = 433
    Height = 412
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 441
    ExplicitHeight = 417
    object Datos: TGroupBox
      Left = 2
      Top = 18
      Width = 429
      Height = 171
      Align = alTop
      Color = 14275008
      ParentColor = False
      TabOrder = 0
      ExplicitWidth = 437
      object Label7: TLabel
        Left = 24
        Top = 126
        Width = 50
        Height = 14
        Caption = 'Situaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 24
        Top = 41
        Width = 175
        Height = 14
        Caption = 'Subcuenta Efectos Comerciales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 24
        Top = 84
        Width = 53
        Height = 14
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 324
        Top = 126
        Width = 73
        Height = 14
        Caption = 'Total Importe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 183
        Top = 126
        Width = 78
        Height = 14
        Caption = 'Fecha Asiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object eSituacion: TDBComboBox
        Left = 24
        Top = 140
        Width = 114
        Height = 22
        DataField = 'SITUACION'
        DataSource = SFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'PENDIENTE'#9'N'
          'REMESADO'#9'B'
          'COBRADO'#9'C'
          'DEVUELTO'#9'D'
          'PAGADO'#9'P'
          'ACEPTADO'#9'A'
          'VENCIDO'#9'V')
        ParentFont = False
        TabOrder = 5
      end
      object eSubctaEfectosComerciales: TDBLookupComboBox
        Left = 24
        Top = 55
        Width = 89
        Height = 22
        DataField = 'SCTAEFECTOSCOMERCIALES'
        DataSource = SFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleEfectosComerciales.SSubcuentas
        ParentFont = False
        TabOrder = 1
      end
      object eDescSubctaEfectosComerciales: TDBLookupComboBox
        Left = 113
        Top = 55
        Width = 300
        Height = 22
        DataField = 'SCTAEFECTOSCOMERCIALES'
        DataSource = SFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleEfectosComerciales.SSubcuentas
        ParentFont = False
        TabOrder = 2
      end
      object eDescConcepto: TDBLookupComboBox
        Left = 113
        Top = 98
        Width = 300
        Height = 21
        DataField = 'ID_CONCEPTOS'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleEfectosComerciales.SConceptos
        ParentFont = False
        TabOrder = 4
      end
      object eConcepto: TDBLookupComboBox
        Left = 24
        Top = 98
        Width = 89
        Height = 21
        DataField = 'ID_CONCEPTOS'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'ID_CONCEPTOS'
        ListSource = DataModuleEfectosComerciales.SConceptos
        ParentFont = False
        TabOrder = 3
      end
      object CheckBoxModificarVtos: TCheckBox
        Left = 24
        Top = 16
        Width = 217
        Height = 17
        TabStop = False
        Caption = 'Modificar subcuenta vencimientos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object eImporte: TDBEdit
        Left = 324
        Top = 140
        Width = 89
        Height = 21
        AutoSize = False
        DataField = 'IMPORTEVTOS'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object eFechaVtos: TDBEdit
        Left = 183
        Top = 140
        Width = 89
        Height = 21
        AutoSize = False
        DataField = 'FECHAVTOS'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object GroupBox1: TGroupBox
      Left = 2
      Top = 189
      Width = 429
      Height = 221
      Align = alClient
      Color = 14275008
      ParentColor = False
      TabOrder = 1
      ExplicitWidth = 437
      ExplicitHeight = 226
      object Label81: TLabel
        Left = 24
        Top = 84
        Width = 250
        Height = 14
        Caption = 'Subcuenta Efectos Comerciales Descontados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label82: TLabel
        Left = 24
        Top = 126
        Width = 193
        Height = 14
        Caption = 'Subcuenta Deudas por Descuentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 41
        Width = 85
        Height = 14
        Caption = 'Importe Riesgo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 183
        Top = 41
        Width = 78
        Height = 14
        Caption = 'Fecha Asiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 24
        Top = 169
        Width = 53
        Height = 14
        Caption = 'Concepto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CheckBoxAsientoRiesgo: TCheckBox
        Left = 24
        Top = 16
        Width = 174
        Height = 17
        TabStop = False
        Caption = 'Generar asiento de riesgo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object eDescSctaEfectosDescontados: TDBLookupComboBox
        Left = 113
        Top = 98
        Width = 300
        Height = 22
        DataField = 'SCTAEFECTOSDESCONTADOS'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleEfectosComerciales.SSubcuentas
        ParentFont = False
        TabOrder = 4
      end
      object eSctaEfectosDescontados: TDBLookupComboBox
        Left = 24
        Top = 98
        Width = 89
        Height = 22
        DataField = 'SCTAEFECTOSDESCONTADOS'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleEfectosComerciales.SSubcuentas
        ParentFont = False
        TabOrder = 3
      end
      object eDescSctaDeudasDescuentos: TDBLookupComboBox
        Left = 113
        Top = 140
        Width = 300
        Height = 22
        DataField = 'SCTADEUDASDESCUENTOS'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleEfectosComerciales.SSubcuentas
        ParentFont = False
        TabOrder = 6
      end
      object eSctaDeudasDescuentos: TDBLookupComboBox
        Left = 24
        Top = 140
        Width = 89
        Height = 22
        DataField = 'SCTADEUDASDESCUENTOS'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleEfectosComerciales.SSubcuentas
        ParentFont = False
        TabOrder = 5
      end
      object eImporteRiesgo: TDBEdit
        Left = 24
        Top = 55
        Width = 89
        Height = 21
        AutoSize = False
        DataField = 'IMPORTERIESGO'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object eFechaRiesgo: TDBEdit
        Left = 183
        Top = 55
        Width = 89
        Height = 21
        AutoSize = False
        DataField = 'FECHARIESGO'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBLookupCombo1: TDBLookupComboBox
        Left = 24
        Top = 183
        Width = 89
        Height = 21
        DataField = 'ID_CONCEPTOS_RIESGO'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'ID_CONCEPTOS'
        ListSource = DataModuleEfectosComerciales.SConceptos
        ParentFont = False
        TabOrder = 7
      end
      object DBLookupCombo2: TDBLookupComboBox
        Left = 113
        Top = 183
        Width = 300
        Height = 21
        DataField = 'ID_CONCEPTOS_RIESGO'
        DataSource = SFichero
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CONCEPTOS'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleEfectosComerciales.SConceptos
        ParentFont = False
        TabOrder = 8
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 34
    Align = alTop
    Color = 14275008
    TabOrder = 0
    ExplicitWidth = 441
    object Shape1: TShape
      Left = 8
      Top = 25
      Width = 395
      Height = 1
      Pen.Color = 7552051
    end
    object lTitulo: TLabel
      Left = 8
      Top = 5
      Width = 163
      Height = 19
      Caption = 'Efectos Comerciales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 446
    Width = 433
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 1
    ExplicitTop = 451
    ExplicitWidth = 441
    DesignSize = (
      433
      41)
    object BtnProcess: TButton
      Left = 337
      Top = 8
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnProcessClick
    end
  end
  object SFichero: TDataSource
    DataSet = QFicheroEfectos
    Left = 339
    Top = 10
  end
  object QFicheroEfectos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 10
    object QFicheroEfectosSCTAEFECTOSCOMERCIALES: TStringField
      FieldName = 'SCTAEFECTOSCOMERCIALES'
      Size = 10
    end
    object QFicheroEfectosID_CONCEPTOS: TVarBytesField
      FieldName = 'ID_CONCEPTOS'
      Size = 3
    end
    object QFicheroEfectosSITUACION: TStringField
      FieldName = 'SITUACION'
      Size = 1
    end
    object QFicheroEfectosFECHAVTOS: TDateTimeField
      FieldName = 'FECHAVTOS'
    end
    object QFicheroEfectosIMPORTEVTOS: TFloatField
      FieldName = 'IMPORTEVTOS'
    end
    object QFicheroEfectosIMPORTERIESGO: TFloatField
      FieldName = 'IMPORTERIESGO'
    end
    object QFicheroEfectosFECHARIESGO: TDateTimeField
      FieldName = 'FECHARIESGO'
    end
    object QFicheroEfectosSCTAEFECTOSDESCONTADOS: TStringField
      FieldName = 'SCTAEFECTOSDESCONTADOS'
      Size = 10
    end
    object QFicheroEfectosSCTADEUDASDESCUENTOS: TStringField
      FieldName = 'SCTADEUDASDESCUENTOS'
      Size = 10
    end
    object QFicheroEfectosID_CONCEPTOS_RIESGO: TVarBytesField
      FieldName = 'ID_CONCEPTOS_RIESGO'
      Size = 3
    end
  end
end
