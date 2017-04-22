object WFiltroLibroFactEmitidas: TWFiltroLibroFactEmitidas
  Left = 955
  Top = 276
  BorderStyle = bsSingle
  ClientHeight = 493
  ClientWidth = 521
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 35
    Width = 521
    Height = 417
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object GroupBox3: TGroupBox
      Left = 11
      Top = 164
      Width = 497
      Height = 128
      Caption = ' Anal'#237'tica '
      TabOrder = 4
      object Label1: TLabel
        Left = 10
        Top = 18
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
      object Label8: TLabel
        Left = 10
        Top = 44
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
      object Label9: TLabel
        Left = 257
        Top = 44
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
      object Label10: TLabel
        Left = 10
        Top = 84
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
      object Label11: TLabel
        Left = 257
        Top = 84
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
      object ComboBoxCD_ANALITICA: TDBLookupComboBox
        Left = 113
        Top = 16
        Width = 100
        Height = 21
        DataField = 'CUENTA'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CUENTA'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroLibroFacturasEmitidas.SAnaliticas
        ParentFont = False
        TabOrder = 0
      end
      object ComboBoxDELEGACION: TDBLookupComboBox
        Left = 9
        Top = 58
        Width = 229
        Height = 21
        DataField = 'ID_DELEGACION'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_DELEGACION'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroLibroFacturasEmitidas.SDelegaciones
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxDEPARTAMENTO: TDBLookupComboBox
        Left = 257
        Top = 58
        Width = 229
        Height = 21
        DataField = 'ID_DEPARTAMENTO'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_DEPARTAMENTO'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroLibroFacturasEmitidas.SDepartamentos
        ParentFont = False
        TabOrder = 3
      end
      object ComboBoxSECCION: TDBLookupComboBox
        Left = 10
        Top = 98
        Width = 229
        Height = 21
        DataField = 'ID_SECCION'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_SECCION'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroLibroFacturasEmitidas.SSecciones
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxPROYECTO: TDBLookupComboBox
        Left = 257
        Top = 98
        Width = 229
        Height = 21
        DataField = 'ID_PROYECTO'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_PROYECTO'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroLibroFacturasEmitidas.SProyectos
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxDS_ANALITICA: TDBLookupComboBox
        Left = 212
        Top = 16
        Width = 274
        Height = 21
        DataField = 'CUENTA'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'CUENTA'
        ListField = 'NOMBRE'
        ListSource = DataModuleFiltroLibroFacturasEmitidas.SAnaliticas
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox4: TGroupBox
      Left = 11
      Top = 292
      Width = 239
      Height = 115
      Caption = ' Datos adicionales '
      TabOrder = 1
      object Label4: TLabel
        Left = 11
        Top = 23
        Width = 94
        Height = 13
        Caption = 'Fecha a imprimir'
      end
      object EditFECHA_IMPRIMIR: TDBEdit
        Left = 128
        Top = 19
        Width = 89
        Height = 21
        DataField = 'FECHA_IMPRIMIR'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CheckBoxFormatoOficial: TCheckBox
        Left = 9
        Top = 48
        Width = 120
        Height = 17
        Caption = 'Formato Oficial'
        TabOrder = 1
      end
    end
    object GroupBoxORDEN: TDBRadioGroup
      Left = 252
      Top = 292
      Width = 93
      Height = 115
      Caption = ' Orden por '
      DataField = 'ORDEN'
      DataSource = DSFiltro
      Items.Strings = (
        'Fecha'
        'Factura'
        'Asiento'
        'Subcuenta')
      TabOrder = 2
      Values.Strings = (
        'F'
        'N'
        'A'
        'S')
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 7
      Width = 497
      Height = 158
      TabOrder = 0
      object Label24: TLabel
        Left = 137
        Top = 12
        Width = 35
        Height = 13
        Caption = 'Desde'
      end
      object Label25: TLabel
        Left = 259
        Top = 11
        Width = 33
        Height = 13
        Caption = 'Hasta'
      end
      object Label2: TLabel
        Left = 37
        Top = 58
        Width = 87
        Height = 13
        Caption = 'Base Imponible'
      end
      object Label5: TLabel
        Left = 37
        Top = 82
        Width = 65
        Height = 13
        Caption = 'Cuota I.V.A.'
      end
      object Label6: TLabel
        Left = 37
        Top = 107
        Width = 45
        Height = 13
        Caption = '% I.V.A.'
      end
      object lbSubcuenta: TLabel
        Left = 37
        Top = 133
        Width = 60
        Height = 13
        Caption = 'Subcuenta'
      end
      object Label7: TLabel
        Left = 37
        Top = 34
        Width = 33
        Height = 13
        Caption = 'Fecha'
      end
      object EditBASE_DESDE: TDBEdit
        Left = 137
        Top = 54
        Width = 90
        Height = 21
        AutoSize = False
        DataField = 'BASE_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditBASE_HASTA: TDBEdit
        Left = 259
        Top = 54
        Width = 90
        Height = 21
        AutoSize = False
        DataField = 'BASE_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EditIMP_IVA_DESDE: TDBEdit
        Left = 137
        Top = 78
        Width = 90
        Height = 21
        AutoSize = False
        DataField = 'IMP_IVA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EditIMP_IVA_HASTA: TDBEdit
        Left = 259
        Top = 78
        Width = 90
        Height = 21
        AutoSize = False
        DataField = 'IMP_IVA_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object EditPRC_IVA_DESDE: TDBEdit
        Left = 137
        Top = 103
        Width = 52
        Height = 21
        AutoSize = False
        DataField = 'PRC_IVA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object EditPRC_IVA_HASTA: TDBEdit
        Left = 259
        Top = 103
        Width = 52
        Height = 21
        AutoSize = False
        DataField = 'PRC_IVA_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object EditFECHA_DESDE: TDBEdit
        Left = 137
        Top = 28
        Width = 89
        Height = 21
        DataField = 'FECHA_DESDE'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditFECHA_HASTA: TDBEdit
        Left = 259
        Top = 28
        Width = 89
        Height = 21
        DataField = 'FECHA_HASTA'
        DataSource = DSFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object ComboBoxCD_SUBCUENTA: TDBLookupComboBox
        Left = 115
        Top = 130
        Width = 100
        Height = 21
        DataField = 'SUBCUENTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltroLibroFacturasEmitidas.SSubcuentas
        ParentFont = False
        TabOrder = 8
      end
      object ComboBoxDS_SUBCUENTA: TDBLookupComboBox
        Left = 215
        Top = 130
        Width = 270
        Height = 21
        DataField = 'SUBCUENTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltroLibroFacturasEmitidas.SSubcuentas
        ParentFont = False
        TabOrder = 9
      end
    end
    object GroupBoxINFORME: TDBRadioGroup
      Left = 346
      Top = 292
      Width = 162
      Height = 66
      Caption = ' Informe '
      DataField = 'INFORME'
      DataSource = DSFiltro
      Items.Strings = (
        'Normal'
        'Por Subcuentas'
        'Por Tipo de I.V.A.')
      TabOrder = 3
      Values.Strings = (
        'N'
        'S'
        'I')
    end
    object GroupBoxINTRACOMUN: TDBRadioGroup
      Left = 346
      Top = 358
      Width = 162
      Height = 48
      Caption = ' Cliente Intracomunitario '
      Columns = 2
      DataField = 'INTRACOMUN'
      DataSource = DSFiltro
      Items.Strings = (
        'Excluir'
        'Incluir'
        'Solo')
      TabOrder = 5
      Values.Strings = (
        'E'
        'I'
        'S')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 35
    Align = alTop
    Color = 14275008
    TabOrder = 1
    object lTitulo: TLabel
      Left = 6
      Top = 5
      Width = 158
      Height = 19
      Caption = 'Listado de Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 6
      Top = 27
      Width = 523
      Height = 1
      Pen.Color = clNavy
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 452
    Width = 521
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 2
    DesignSize = (
      521
      41)
    object BtnProcess: TButton
      Left = 363
      Top = 9
      Width = 126
      Height = 24
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Procesar'
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
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 402
    Top = 8
    object CDSFiltroFECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object CDSFiltroFECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object CDSFiltroBASE_DESDE: TFloatField
      FieldName = 'BASE_DESDE'
    end
    object CDSFiltroBASE_HASTA: TFloatField
      FieldName = 'BASE_HASTA'
    end
    object CDSFiltroIMP_IVA_DESDE: TFloatField
      FieldName = 'IMP_IVA_DESDE'
    end
    object CDSFiltroIMP_IVA_HASTA: TFloatField
      FieldName = 'IMP_IVA_HASTA'
    end
    object CDSFiltroPRC_IVA_DESDE: TFloatField
      FieldName = 'PRC_IVA_DESDE'
    end
    object CDSFiltroPRC_IVA_HASTA: TFloatField
      FieldName = 'PRC_IVA_HASTA'
    end
    object CDSFiltroORDEN: TStringField
      FieldName = 'ORDEN'
      Size = 1
    end
    object CDSFiltroSUBCUENTA: TStringField
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object CDSFiltroFECHA_IMPRIMIR: TDateField
      FieldName = 'FECHA_IMPRIMIR'
    end
    object CDSFiltroINFORME: TStringField
      FieldName = 'INFORME'
      Size = 1
    end
    object CDSFiltroINTRACOMUN: TStringField
      FieldName = 'INTRACOMUN'
      Size = 1
    end
    object CDSFiltroCUENTA: TStringField
      FieldName = 'CUENTA'
      Size = 10
    end
    object CDSFiltroID_DELEGACION: TStringField
      FieldName = 'ID_DELEGACION'
      Size = 10
    end
    object CDSFiltroID_DEPARTAMENTO: TStringField
      FieldName = 'ID_DEPARTAMENTO'
      Size = 10
    end
    object CDSFiltroID_SECCION: TStringField
      FieldName = 'ID_SECCION'
      Size = 10
    end
    object CDSFiltroID_PROYECTO: TStringField
      FieldName = 'ID_PROYECTO'
      Size = 10
    end
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 450
    Top = 8
  end
end
