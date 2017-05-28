object WFiltroLibroFactEmitidas: TWFiltroLibroFactEmitidas
  Left = 955
  Top = 276
  BorderStyle = bsSingle
  ClientHeight = 493
  ClientWidth = 521
  Color = clBtnFace
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
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
      object Label8: TLabel
        Left = 10
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
      object Label9: TLabel
        Left = 257
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
      object Label10: TLabel
        Left = 10
        Top = 84
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
      object Label11: TLabel
        Left = 257
        Top = 84
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
        Width = 77
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
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label25: TLabel
        Left = 259
        Top = 11
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label2: TLabel
        Left = 37
        Top = 58
        Width = 72
        Height = 13
        Caption = 'Base Imponible'
      end
      object Label5: TLabel
        Left = 37
        Top = 82
        Width = 61
        Height = 13
        Caption = 'Cuota I.V.A.'
      end
      object Label6: TLabel
        Left = 37
        Top = 107
        Width = 43
        Height = 13
        Caption = '% I.V.A.'
      end
      object lbSubcuenta: TLabel
        Left = 37
        Top = 133
        Width = 51
        Height = 13
        Caption = 'Subcuenta'
      end
      object Label7: TLabel
        Left = 37
        Top = 34
        Width = 29
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
    TabOrder = 1
    object lTitulo: TLabel
      Left = 6
      Top = 5
      Width = 135
      Height = 19
      Caption = 'Listado de Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 6
      Top = 27
      Width = 523
      Height = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 452
    Width = 521
    Height = 41
    Align = alBottom
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
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
  object FastReportFacturasEmitidasSubcta: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.638457245400000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42883.565179780090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 378
    Top = 114
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
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1030.005074660000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText14: TfrxMemoView
          Left = 272.001435510000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.995599590000000000
          DataField = 'ClienteProveedor'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."ClienteProveedor"]')
          ParentFont = False
        end
        object DBText13: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 1015.000340560000000000
          Height = 15.998750490000000000
          DataField = 'Titulo'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Titulo"]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 911.002793080000000000
          Top = 15.998750490000000000
          Width = 161.000418940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 914.003739900000000000
          Top = 37.001598700000000000
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
        object DBText102: TfrxMemoView
          Left = 959.002824080000000000
          Top = 20.999068680000000000
          Width = 61.001614200000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FechaImpresion"]')
          ParentFont = False
        end
        object InformeLabel4: TfrxMemoView
          Left = 42.999712810000000000
          Top = 101.000380190000000000
          Width = 37.001598700000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'm.')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 914.003739900000000000
          Top = 20.999068680000000000
          Width = 37.598764440000000000
          Height = 12.801268110000000000
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
          Left = 959.002824080000000000
          Top = 37.001598700000000000
          Width = 6.001893640000000000
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
        object Label7: TfrxMemoView
          Left = 342.002110640000000000
          Top = 101.000380190000000000
          Width = 228.000147250000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre Fiscal')
          ParentFont = False
        end
        object lbAsiento: TfrxMemoView
          Left = 82.000682880000000000
          Top = 101.000380190000000000
          Width = 46.998455550000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Asiento')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 758.003639150000000000
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
            'Importe IVA')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 919.004058090000000000
          Top = 101.000380190000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe Neto')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1024.003181020000000000
          Top = 20.999068680000000000
          Width = 42.001916890000000000
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
        object Label4: TfrxMemoView
          Left = 732.000472750000000000
          Top = 101.000380190000000000
          Width = 24.000015500000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'IVA')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 572.001629260000000000
          Top = 101.000380190000000000
          Width = 80.999107430000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NIF/CIF')
          ParentFont = False
        end
        object Label101: TfrxMemoView
          Left = 130.998509800000000000
          Top = 101.000380190000000000
          Width = 78.001940140000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label11: TfrxMemoView
          Left = 210.999821310000000000
          Top = 101.000380190000000000
          Width = 58.000667380000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 827.002738830000000000
          Top = 101.000380190000000000
          Width = 24.000015500000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RE')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 853.002125700000000000
          Top = 101.000380190000000000
          Width = 63.998781490000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe RE')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 655.000108060000000000
          Top = 101.000380190000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Base Imp.')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1030.001295130000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Label10: TfrxMemoView
          Left = 995.002847330000000000
          Top = 101.000380190000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object SUBINFORME: TfrxMasterData
        FillType = ftBrush
        Height = 17.880956430000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object Importe15: TfrxMemoView
          Left = 995.002847330000000000
          Top = 1.001575450000000000
          Width = 73.999417870000000000
          Height = 13.995599590000000000
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
            '[ENLACE1."Importe"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 42.999712810000000000
          Top = 1.001575449999990000
          Width = 37.001598700000000000
          Height = 13.999379120000000000
          DataField = 'NumLinea'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."NumLinea"]')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 272.001435510000000000
          Top = 1.001575449999990000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataField = 'Subcuenta'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Subcuenta"]')
          ParentFont = False
        end
        object DBText11: TfrxMemoView
          Left = 342.002110640000000000
          Top = 1.001575449999990000
          Width = 228.000147250000000000
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
        object cAsiento: TfrxMemoView
          Left = 82.000682880000000000
          Top = 1.001575449999990000
          Width = 46.998455550000000000
          Height = 13.999379120000000000
          DataField = 'Asiento'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Asiento"]')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 827.002738830000000000
          Top = 1.001575450000000000
          Width = 24.000015500000000000
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
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."Recargo"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 919.004058090000000000
          Top = 1.001575450000000000
          Width = 73.001621950000000000
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
            '[ENLACE1."TotalFactura"]')
          ParentFont = False
        end
        object IVA: TfrxMemoView
          Left = 732.000472750000000000
          Top = 1.001575450000000000
          Width = 24.000015500000000000
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."IVA"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 572.001629260000000000
          Top = 1.001575449999990000
          Width = 80.999107430000000000
          Height = 13.999379120000000000
          DataField = 'NIF'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."NIF"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 130.998509800000000000
          Top = 1.001575449999990000
          Width = 78.001940140000000000
          Height = 13.999379120000000000
          DataField = 'Factura'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Factura"]')
          ParentFont = False
        end
        object DBText9: TfrxMemoView
          Left = 210.999821310000000000
          Top = 1.001575449999990000
          Width = 58.000667380000000000
          Height = 13.999379120000000000
          DataField = 'Fecha'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Fecha"]')
          ParentFont = False
        end
        object Importe4: TfrxMemoView
          Left = 853.002125700000000000
          Top = 1.001575450000000000
          Width = 63.998781490000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."cuotarecargo"]')
          ParentFont = False
        end
        object Importe5: TfrxMemoView
          Left = 655.000108060000000000
          Top = 1.001575450000000000
          Width = 73.999417870000000000
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
            '[ENLACE1."TotalBruto"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 758.003639150000000000
          Top = 1.001575450000000000
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
            '[ENLACE1."CuotaIVA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 245.669450000000000000
        Width = 1122.520410000000000000
        object Memo1: TfrxMemoView
          Left = 993.861429270000000000
          Top = 15.000000000000000000
          Width = 73.999417870000000000
          Height = 13.995599590000000000
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
            '[SUM(<ENLACE1."Importe">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 917.862640030000000000
          Top = 15.000000000000000000
          Width = 73.001621950000000000
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
            '[SUM(<ENLACE1."TotalFactura">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 851.860707640000000000
          Top = 15.000000000000000000
          Width = 63.998781490000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CuotaRecargo">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 653.858690000000000000
          Top = 15.000000000000000000
          Width = 73.999417870000000000
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
            '[SUM(<ENLACE1."TotalBruto">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 756.862221090000000000
          Top = 15.000000000000000000
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
            '[SUM(<ENLACE1."CuotaIVA">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 756.862221090000000000
          Top = 0.779530000000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe IVA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 917.862640030000000000
          Top = 0.779530000000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Imp. Neto')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 851.860707640000000000
          Top = 0.779530000000000000
          Width = 63.998781490000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe RE')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 653.858690000000000000
          Top = 0.779530000000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Base Imp.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 993.861429270000000000
          Top = 0.779530000000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
    end
  end
  object FastReportFacturasEmitidasTipoIVA: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.639097233800000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42883.565316898150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 378
    Top = 162
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
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.000340560000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText13: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 1015.000340560000000000
          Height = 15.998750490000000000
          DataField = 'Titulo'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Titulo"]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 896.001838510000000000
          Top = 15.998750490000000000
          Width = 161.000418940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 899.002785330000000000
          Top = 37.001598700000000000
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
        object DBText102: TfrxMemoView
          Left = 944.001869510000000000
          Top = 20.999068680000000000
          Width = 61.001614200000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FechaImpresion"]')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 899.002785330000000000
          Top = 20.999068680000000000
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
        object SystemVariable2: TfrxMemoView
          Left = 944.001869510000000000
          Top = 37.001598700000000000
          Width = 6.001893640000000000
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
        object lbAsiento: TfrxMemoView
          Left = 46.000659630000000000
          Top = 101.000380190000000000
          Width = 54.999720560000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Asiento')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 654.002312140000000000
          Top = 101.000380190000000000
          Width = 85.001629700000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe IVA')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 862.001186630000000000
          Top = 101.000380190000000000
          Width = 92.001319260000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe Neto')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1009.002226450000000000
          Top = 20.999068680000000000
          Width = 42.001916890000000000
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
        object Label4: TfrxMemoView
          Left = 617.000713440000000000
          Top = 101.000380190000000000
          Width = 37.999394620000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'IVA')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 264.000170500000000000
          Top = 101.000380190000000000
          Width = 85.999425620000000000
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
        object Label101: TfrxMemoView
          Left = 104.999122930000000000
          Top = 101.000380190000000000
          Width = 80.999107430000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label11: TfrxMemoView
          Left = 188.999177180000000000
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
            'Fecha')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 738.002366390000000000
          Top = 101.000380190000000000
          Width = 42.999712810000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RE')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 780.000503750000000000
          Top = 101.000380190000000000
          Width = 82.998478800000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe RE')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 527.002545080000000000
          Top = 101.000380190000000000
          Width = 90.999743810000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Base Imponible')
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
          ParentFont = False
        end
        object Label102: TfrxMemoView
          Left = 960.004399530000000000
          Top = 101.000380190000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Label26: TfrxMemoView
          Left = 354.002118390000000000
          Top = 101.000380190000000000
          Width = 171.998851240000000000
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
      object SUBINFORME: TfrxMasterData
        FillType = ftBrush
        Height = 17.877176900000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object cAsiento: TfrxMemoView
          Left = 46.000659630000000000
          Top = 1.001575449999990000
          Width = 54.999720560000000000
          Height = 13.999379120000000000
          DataField = 'Asiento'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Asiento"]')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 738.002366390000000000
          Top = 1.001575450000000000
          Width = 42.999712810000000000
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
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."Recargo"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 862.001186630000000000
          Top = 1.001575450000000000
          Width = 92.001319260000000000
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
            '[ENLACE1."TotalFactura"]')
          ParentFont = False
        end
        object IVA: TfrxMemoView
          Left = 617.000713440000000000
          Top = 1.001575450000000000
          Width = 37.999394620000000000
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
            '[ENLACE1."IVA"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 104.999122930000000000
          Top = 1.001575449999990000
          Width = 80.999107430000000000
          Height = 13.999379120000000000
          DataField = 'Factura'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Factura"]')
          ParentFont = False
        end
        object DBText9: TfrxMemoView
          Left = 188.999177180000000000
          Top = 1.001575449999990000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          DataField = 'Fecha'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Fecha"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 654.002312140000000000
          Top = 1.001575450000000000
          Width = 85.001629700000000000
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
            '[ENLACE1."CuotaIVA"]')
          ParentFont = False
        end
        object Importe4: TfrxMemoView
          Left = 780.000503750000000000
          Top = 1.001575450000000000
          Width = 82.998478800000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."cuotarecargo"]')
          ParentFont = False
        end
        object Importe5: TfrxMemoView
          Left = 527.002545080000000000
          Top = 1.001575450000000000
          Width = 90.999743810000000000
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
            '[ENLACE1."TotalBruto"]')
          ParentFont = False
        end
        object Importe15: TfrxMemoView
          Left = 960.004399530000000000
          Top = 1.001575450000000000
          Width = 92.999115180000000000
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
            '[ENLACE1."Importe"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 264.559230500000000000
          Top = 1.001575450000000000
          Width = 85.999425620000000000
          Height = 13.999379120000000000
          DataField = 'FSubcuenta'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FSubcuenta"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 354.561178390000000000
          Top = 1.001575450000000000
          Width = 171.001055320000000000
          Height = 13.999379120000000000
          DataField = 'FDescSubcuenta'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FDescSubcuenta"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 245.669450000000000000
        Width = 1122.520410000000000000
        object Memo1: TfrxMemoView
          Left = 993.861429270000000000
          Top = 15.000000000000000000
          Width = 73.999417870000000000
          Height = 13.995599590000000000
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
            '[SUM(<ENLACE1."Importe">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 917.862640030000000000
          Top = 15.000000000000000000
          Width = 73.001621950000000000
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
            '[SUM(<ENLACE1."TotalFactura">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 851.860707640000000000
          Top = 15.000000000000000000
          Width = 63.998781490000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CuotaRecargo">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 653.858690000000000000
          Top = 15.000000000000000000
          Width = 73.999417870000000000
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
            '[SUM(<ENLACE1."TotalBruto">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 756.862221090000000000
          Top = 15.000000000000000000
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
            '[SUM(<ENLACE1."CuotaIVA">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 756.862221090000000000
          Top = 0.779530000000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe IVA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 917.862640030000000000
          Top = 0.779530000000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Imp. Neto')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 851.860707640000000000
          Top = 0.779530000000000000
          Width = 63.998781490000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe RE')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 653.858690000000000000
          Top = 0.779530000000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Base Imp.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 993.861429270000000000
          Top = 0.779530000000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
    end
  end
  object FastReportFacturasEmitidas: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.638637905100000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42883.565033958330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 378
    Top = 74
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
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1030.005074660000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText14: TfrxMemoView
          Left = 272.001435510000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.995599590000000000
          DataField = 'ClienteProveedor'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."ClienteProveedor"]')
          ParentFont = False
        end
        object DBText13: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 863.819140560000000000
          Height = 15.998750490000000000
          DataField = 'Titulo'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Titulo"]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 911.002793080000000000
          Top = 15.998750490000000000
          Width = 161.000418940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 914.003739900000000000
          Top = 37.001598700000000000
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
        object DBText102: TfrxMemoView
          Left = 959.002824080000000000
          Top = 20.999068680000000000
          Width = 61.001614200000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FechaImpresion"]')
          ParentFont = False
        end
        object InformeLabel4: TfrxMemoView
          Left = 42.999712810000000000
          Top = 101.000380190000000000
          Width = 37.001598700000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'm.')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 914.003739900000000000
          Top = 20.999068680000000000
          Width = 37.598764440000000000
          Height = 12.801268110000000000
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
          Left = 959.002824080000000000
          Top = 37.001598700000000000
          Width = 6.001893640000000000
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
        object Label7: TfrxMemoView
          Left = 342.002110640000000000
          Top = 101.000380190000000000
          Width = 228.000147250000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre Fiscal')
          ParentFont = False
        end
        object lbAsiento: TfrxMemoView
          Left = 82.000682880000000000
          Top = 101.000380190000000000
          Width = 46.998455550000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Asiento')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 758.003639150000000000
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
            'Importe IVA')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 919.004058090000000000
          Top = 101.000380190000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Imp. Neto')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1024.003181020000000000
          Top = 20.999068680000000000
          Width = 42.001916890000000000
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
        object Label4: TfrxMemoView
          Left = 732.000472750000000000
          Top = 101.000380190000000000
          Width = 24.000015500000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'IVA')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 572.001629260000000000
          Top = 101.000380190000000000
          Width = 80.999107430000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NIF/CIF')
          ParentFont = False
        end
        object Label101: TfrxMemoView
          Left = 130.998509800000000000
          Top = 101.000380190000000000
          Width = 78.001940140000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label11: TfrxMemoView
          Left = 210.999821310000000000
          Top = 101.000380190000000000
          Width = 58.000667380000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 827.002738830000000000
          Top = 101.000380190000000000
          Width = 24.000015500000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RE')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 853.002125700000000000
          Top = 101.000380190000000000
          Width = 63.998781490000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe RE')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 655.000108060000000000
          Top = 101.000380190000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Base Imp.')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1030.001295130000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Label10: TfrxMemoView
          Left = 995.002847330000000000
          Top = 101.000380190000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object SUBINFORME: TfrxMasterData
        FillType = ftBrush
        Height = 17.880956430000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object Importe15: TfrxMemoView
          Left = 995.002847330000000000
          Top = 1.001575450000000000
          Width = 73.999417870000000000
          Height = 13.995599590000000000
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
            '[ENLACE1."Importe"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 42.999712810000000000
          Top = 1.001575449999990000
          Width = 37.001598700000000000
          Height = 13.999379120000000000
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."NumLinea"]')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 272.001435510000000000
          Top = 1.001575450000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataField = 'Subcuenta'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Subcuenta"]')
          ParentFont = False
        end
        object DBText11: TfrxMemoView
          Left = 342.002110640000000000
          Top = 1.001575450000000000
          Width = 228.000147250000000000
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
        object cAsiento: TfrxMemoView
          Left = 82.000682880000000000
          Top = 1.001575449999990000
          Width = 46.998455550000000000
          Height = 13.999379120000000000
          DataField = 'Asiento'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Asiento"]')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 827.002738830000000000
          Top = 1.001575450000000000
          Width = 24.000015500000000000
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
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."Recargo"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 919.004058090000000000
          Top = 1.001575450000000000
          Width = 73.001621950000000000
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
            '[ENLACE1."TotalFactura"]')
          ParentFont = False
        end
        object IVA: TfrxMemoView
          Left = 732.000472750000000000
          Top = 1.001575450000000000
          Width = 24.000015500000000000
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
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."IVA"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 572.001629260000000000
          Top = 1.001575449999990000
          Width = 80.999107430000000000
          Height = 13.999379120000000000
          DataField = 'NIF'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."NIF"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 130.998509800000000000
          Top = 1.001575449999990000
          Width = 78.001940140000000000
          Height = 13.999379120000000000
          DataField = 'Factura'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Factura"]')
          ParentFont = False
        end
        object DBText9: TfrxMemoView
          Left = 210.999821310000000000
          Top = 1.001575449999990000
          Width = 58.000667380000000000
          Height = 13.999379120000000000
          DataField = 'Fecha'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Fecha"]')
          ParentFont = False
        end
        object Importe4: TfrxMemoView
          Left = 853.002125700000000000
          Top = 1.001575450000000000
          Width = 63.998781490000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."cuotarecargo"]')
          ParentFont = False
        end
        object Importe5: TfrxMemoView
          Left = 655.000108060000000000
          Top = 1.001575450000000000
          Width = 73.999417870000000000
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
            '[ENLACE1."TotalBruto"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 758.003639150000000000
          Top = 1.001575450000000000
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
            '[ENLACE1."CuotaIVA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 245.669450000000000000
        Width = 1122.520410000000000000
        object Memo1: TfrxMemoView
          Left = 993.861429270000000000
          Top = 15.000000000000000000
          Width = 73.999417870000000000
          Height = 13.995599590000000000
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
            '[SUM(<ENLACE1."Importe">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 917.862640030000000000
          Top = 15.000000000000000000
          Width = 73.001621950000000000
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
            '[SUM(<ENLACE1."TotalFactura">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 851.860707640000000000
          Top = 15.000000000000000000
          Width = 63.998781490000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CuotaRecargo">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 653.858690000000000000
          Top = 15.000000000000000000
          Width = 73.999417870000000000
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
            '[SUM(<ENLACE1."TotalBruto">,SUBINFORME)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 756.862221090000000000
          Top = 15.000000000000000000
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
            '[SUM(<ENLACE1."CuotaIVA">,SUBINFORME)]'
            '')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 756.862221090000000000
          Top = 0.779530000000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe IVA')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 917.862640030000000000
          Top = 0.779530000000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Imp. Neto')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 851.860707640000000000
          Top = 0.779530000000000000
          Width = 63.998781490000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe RE')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 653.858690000000000000
          Top = 0.779530000000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Base Imp.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 993.861429270000000000
          Top = 0.779530000000000000
          Width = 73.999417870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
    end
  end
  object Enlace1: TfrxDBDataset
    UserName = 'ENLACE1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FechaInicial=FechaInicial'
      'Fecha=Fecha'
      'FechaFinal=FechaFinal'
      'Asiento=Asiento'
      'Apunte=Apunte'
      'Subcuenta=SUBCUENTA'
      'DescSubcuenta=DescSubcuenta'
      'DescApunte=DescApunte'
      'Contrapartida=Contrapartida'
      'Debe=Debe'
      'Haber=Haber'
      'Saldo=Saldo'
      'FechaImpresion=FechaImpresion'
      'DebeHaber=DebeHaber'
      'Importe=IMPORTE'
      'Descripcion=Descripcion'
      'FechaPrevista=FechaPrevista'
      'Observaciones=Observaciones'
      'NombreCliente=NombreCliente'
      'ID_Cliente=ID_Cliente'
      'NumLinea=NumLinea'
      'Factura=Factura'
      'NIF=NIF'
      'BaseImponible=BaseImponible'
      'CuotaIVA=CuotaIVA'
      'TotalFactura=TotalFactura'
      'IVA=IVA'
      'Titulo=Titulo'
      'ClienteProveedor=ClienteProveedor'
      'Provincia=Provincia'
      'ImporteVentas=ImporteVentas'
      'ImporteCompras=ImporteCompras'
      'TotalSumaDebe=TotalSumaDebe'
      'TotalSumaHaber=TotalSumaHaber'
      'TotalSumaSaldo=TotalSumaSaldo'
      'Gasto=Gasto'
      'BaseSinIVA=BaseSinIVA'
      'BaseConIVA=BaseConIVA'
      'DescConcepto=DescConcepto'
      'Ejercicio=EJERCICIO'
      'DescPeriodo=DescPeriodo'
      'Ingresos=Ingresos'
      'Gastos=Gastos'
      'Retenciones=Retenciones'
      'Mes=Mes'
      'Trimestre=Trimestre'
      'TotalBruto=TotalBruto'
      'TotalBruto16=TotalBruto16'
      'TotalBruto0=TotalBruto0'
      'BaseSinIVA16=BaseSinIVA16'
      'BaseSinIVA0=BaseSinIVA0'
      'BaseConIVA16=BaseConIVA16'
      'BaseConIVA0=BaseConIVA0'
      'CuotaIVA16=CuotaIVA16'
      'CuotaIVA0=CuotaIVA0'
      'Retenciones16=Retenciones16'
      'Retenciones0=Retenciones0'
      'TotalFactura16=TotalFactura16'
      'TotalFactura0=TotalFactura0'
      'DescInforme=DescInforme'
      'Recargo=Recargo'
      'CuotaRecargo=CuotaRecargo'
      'Id_Conceptos=Id_Conceptos'
      'Cuenta_Analitica=Cuenta_Analitica'
      'PUNTEO=PUNTEO'
      'FSubcuenta=FSubcuenta'
      'FDescSubcuenta=FDescSubcuenta')
    DataSource = DataModuleFiltroLibroFacturasEmitidas.SInformesConta
    BCDToCurrency = False
    Left = 485
    Top = 58
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
    Left = 376
    Top = 210
  end
end
