object WFiltroListadosAsientos: TWFiltroListadosAsientos
  Left = 950
  Top = 353
  ClientHeight = 466
  ClientWidth = 514
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
    Top = 36
    Width = 514
    Height = 389
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 14
      Top = 8
      Width = 496
      Height = 127
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label20: TLabel
        Left = 52
        Top = 56
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
        Left = 133
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
        Left = 259
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
      object Label3: TLabel
        Left = 52
        Top = 30
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
      object EditASIENTO_DESDE: TDBEdit
        Left = 114
        Top = 26
        Width = 88
        Height = 21
        DataField = 'ASIENTO_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditFECHA_DESDE: TDBEdit
        Left = 114
        Top = 52
        Width = 89
        Height = 21
        DataField = 'FECHA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditFECHA_HASTA: TDBEdit
        Left = 240
        Top = 52
        Width = 89
        Height = 21
        DataField = 'FECHA_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EditASIENTO_HASTA: TDBEdit
        Left = 240
        Top = 26
        Width = 88
        Height = 21
        DataField = 'ASIENTO_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RadioGroupConcepto: TDBRadioGroup
        Left = 114
        Top = 79
        Width = 278
        Height = 40
        Caption = ' Clase de Conceptos '
        Columns = 3
        DataField = 'TIPO_CONCEPTO'
        DataSource = DSFiltro
        Items.Strings = (
          'Todos'
          'Normal'
          'Especial')
        TabOrder = 4
        Values.Strings = (
          'T'
          'N'
          'E')
      end
    end
    object RadioGroupINFORME: TDBRadioGroup
      Left = 392
      Top = 257
      Width = 118
      Height = 121
      Caption = ' Informe '
      DataField = 'INFORME'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Normal'
        'Expandido')
      ParentFont = False
      TabOrder = 4
      Values.Strings = (
        'N'
        'E')
    end
    object RadioGroupOrden: TDBRadioGroup
      Left = 265
      Top = 257
      Width = 118
      Height = 121
      Caption = ' Orden por '
      DataField = 'ORDEN'
      DataSource = DSFiltro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Asiento'
        'Fecha')
      ParentFont = False
      TabOrder = 3
      Values.Strings = (
        'A'
        'F')
    end
    object GroupBox4: TGroupBox
      Left = 14
      Top = 257
      Width = 244
      Height = 121
      Caption = ' Datos adicionales '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label4: TLabel
        Left = 11
        Top = 53
        Width = 77
        Height = 13
        Caption = 'Fecha a imprimir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EditFECHA_IMPRIMIR: TDBEdit
        Left = 141
        Top = 49
        Width = 89
        Height = 21
        DataField = 'FECHA_IMPRIMIR'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object CheckBoxSoloAsientosDesc: TCheckBox
        Left = 10
        Top = 31
        Width = 219
        Height = 17
        Alignment = taLeftJustify
        Caption = 'S'#243'lo asientos descuadrados'
        TabOrder = 1
      end
      object CheckBoxFormatoOficial: TCheckBox
        Left = 10
        Top = 15
        Width = 219
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Formato Oficial'
        TabOrder = 0
      end
      object CheckBoxSoloAsientosMezcla: TCheckBox
        Left = 10
        Top = 77
        Width = 219
        Height = 17
        Alignment = taLeftJustify
        Caption = 'S'#243'lo asientos mezclados por error'
        TabOrder = 3
      end
    end
    object GroupBox3: TGroupBox
      Left = 14
      Top = 135
      Width = 496
      Height = 120
      Caption = ' Anal'#237'tica '
      TabOrder = 1
      object Label6: TLabel
        Left = 10
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
        Left = 10
        Top = 40
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
      object Label8: TLabel
        Left = 257
        Top = 40
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
        Left = 10
        Top = 76
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
        Left = 257
        Top = 76
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
        Top = 18
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
        ListField = 'CUENTA'
        ListSource = DataModuleFiltroListadosAsientos.SAnaliticas
        ParentFont = False
        TabOrder = 0
      end
      object ComboBoxDELEGACION: TDBLookupComboBox
        Left = 9
        Top = 54
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
        ListSource = DataModuleFiltroListadosAsientos.SDelegaciones
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxDEPARTAMENTO: TDBLookupComboBox
        Left = 257
        Top = 54
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
        ListSource = DataModuleFiltroListadosAsientos.SDepartamentos
        ParentFont = False
        TabOrder = 3
      end
      object ComboBoxSECCION: TDBLookupComboBox
        Left = 10
        Top = 90
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
        ListSource = DataModuleFiltroListadosAsientos.SSecciones
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxPROYECTO: TDBLookupComboBox
        Left = 257
        Top = 90
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
        ListSource = DataModuleFiltroListadosAsientos.SProyectos
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxDS_ANALITICA: TDBLookupComboBox
        Left = 212
        Top = 18
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
        ListSource = DataModuleFiltroListadosAsientos.SAnaliticas
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 514
    Height = 36
    Align = alTop
    TabOrder = 1
    object lTitulo: TLabel
      Left = 7
      Top = 5
      Width = 137
      Height = 19
      Caption = 'Listado de Asientos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 7
      Top = 27
      Width = 523
      Height = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 425
    Width = 514
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      514
      41)
    object BtnProcess: TButton
      Left = 344
      Top = 9
      Width = 147
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
    Left = 370
    Top = 8
    object CDSFiltroASIENTO_DESDE: TIntegerField
      FieldName = 'ASIENTO_DESDE'
    end
    object CDSFiltroASIENTO_HASTA: TIntegerField
      FieldName = 'ASIENTO_HASTA'
    end
    object CDSFiltroFECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object CDSFiltroFECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object CDSFiltroFECHA_IMPRIMIR: TDateField
      FieldName = 'FECHA_IMPRIMIR'
    end
    object CDSFiltroINFORME: TStringField
      FieldName = 'INFORME'
      Size = 1
    end
    object CDSFiltroORDEN: TStringField
      FieldName = 'ORDEN'
      Size = 1
    end
    object CDSFiltroTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
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
    Left = 426
    Top = 8
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
    Transparency = True
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
    Left = 393
    Top = 210
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
      'Subcuenta=Subcuenta'
      'DescSubcuenta=DescSubcuenta'
      'DescApunte=DescApunte'
      'Contrapartida=Contrapartida'
      'Debe=Debe'
      'Haber=Haber'
      'Saldo=Saldo'
      'FechaImpresion=FechaImpresion'
      'DebeHaber=DebeHaber'
      'Importe=Importe'
      'Descripcion=DESCRIPCION'
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
      'Titulo=TITULO'
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
      'Ejercicio=Ejercicio'
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
    DataSet = DataModuleFiltroListadosAsientos.QInformesConta
    BCDToCurrency = False
    Left = 470
    Top = 100
  end
  object FastReportAsientos: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636844884300000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42893.482379502310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
    Top = 100
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object LineaCabecera1: TfrxMemoView
          Left = 26.999076430000000000
          Top = 13.998750490000000000
          Width = 443.002490830000000000
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
          Left = 585.881957060000000000
          Top = 13.998750490000000000
          Width = 176.118538940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText102: TfrxMemoView
          Left = 644.000108060000000000
          Top = 18.001272760000000000
          Width = 64.781144200000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = Enlace1
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
        object Shape2: TfrxShapeView
          Left = 26.999076430000000000
          Top = 88.001947890000000000
          Width = 734.997640040000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object InformeLabel4: TfrxMemoView
          Left = 26.999076430000000000
          Top = 99.000380190000000000
          Width = 46.000659630000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 590.999766620000000000
          Top = 18.001272760000000000
          Width = 42.338295060000000000
          Height = 16.781113200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Label16: TfrxMemoView
          Left = 590.999766620000000000
          Top = 32.998447800000000000
          Width = 46.337037800000000000
          Height = 16.781113200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 644.000108060000000000
          Top = 32.998447800000000000
          Width = 9.781423640000000000
          Height = 12.000007750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 617.002607080000000000
          Top = 99.000380190000000000
          Width = 12.000007750000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'T')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 139.999464370000000000
          Top = 99.000380190000000000
          Width = 58.000667380000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Subcta.')
          ParentFont = False
        end
        object Label7: TfrxMemoView
          Left = 198.000131750000000000
          Top = 99.000380190000000000
          Width = 152.001358010000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n Subcuenta')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 377.002452080000000000
          Top = 99.000380190000000000
          Width = 240.000155000000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n del Apunte')
          ParentFont = False
        end
        object lbAsiento: TfrxMemoView
          Left = 74.001311510000000000
          Top = 99.000380190000000000
          Width = 42.999712810000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Asiento')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 119.000395690000000000
          Top = 99.000380190000000000
          Width = 18.999697310000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Apt')
          ParentFont = False
        end
        object LineaDescripcion: TfrxMemoView
          Left = 26.999076430000000000
          Top = 64.999728310000000000
          Width = 734.997640040000000000
          Height = 13.001583200000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Desde la Fecha [ENLACE1."FECHAINICIAL"] hasta [ENLACE1."FECHAFIN' +
              'AL"]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 288.765544700000000000
          Top = 37.998765990000000000
          Width = 241.708502560000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE ASIENTOS')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 631.001986200000000000
          Top = 99.000380190000000000
          Width = 66.999728310000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 698.001714510000000000
          Top = 99.000380190000000000
          Width = 63.000985570000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Contrap.')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 709.000465000000000000
          Top = 18.001272760000000000
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
        object Label10: TfrxMemoView
          Left = 354.000232500000000000
          Top = 99.000380190000000000
          Width = 18.001901390000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cto')
          ParentFont = False
        end
        object LineaTipoConta: TfrxMemoView
          Left = 726.000790940000000000
          Top = 34.000023250000000000
          Width = 18.780484570000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LineaTipoConta')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 588.165740000000000000
          Top = 54.692950000000000000
          Width = 174.655860830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario : [USER_NAME]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.999697310000000000
        Top = 166.299320000000000000
        Width = 793.701300000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object cAsiento: TfrxMemoView
          Left = 77.219577430000000000
          Top = 2.781105450000010000
          Width = 42.999712810000000000
          Height = 10.998432300000000000
          DataField = 'Asiento'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Asiento"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 122.222441140000000000
          Top = 2.781105450000010000
          Width = 18.999697310000000000
          Height = 10.998432300000000000
          DataField = 'Apunte'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Apunte"]')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 143.221509820000000000
          Top = 2.781105450000010000
          Width = 56.001296010000000000
          Height = 10.998432300000000000
          DataField = 'Subcuenta'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Subcuenta"]')
          ParentFont = False
        end
        object DBText11: TfrxMemoView
          Left = 201.222177200000000000
          Top = 2.781105450000010000
          Width = 154.000729380000000000
          Height = 10.998432300000000000
          DataField = 'DescSubcuenta'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescSubcuenta"]')
          ParentFont = False
        end
        object DBText2: TfrxMemoView
          Left = 357.222277950000000000
          Top = 2.781105450000010000
          Width = 18.001901390000000000
          Height = 10.998432300000000000
          DataField = 'id_conceptos'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."id_conceptos"]')
          ParentFont = False
        end
        object DBText10: TfrxMemoView
          Left = 380.220718000000000000
          Top = 2.781105450000010000
          Width = 236.999208180000000000
          Height = 10.998432300000000000
          DataField = 'DescApunte'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescApunte"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 620.220873000000000000
          Top = 2.781105450000010000
          Width = 12.000007750000000000
          Height = 10.998432300000000000
          DataField = 'DebeHaber'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."DebeHaber"]')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 634.224031650000000000
          Top = 2.781105450000000000
          Width = 66.999728310000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Importe"]')
          ParentFont = False
        end
        object DBText4: TfrxMemoView
          Left = 701.223759960000000000
          Top = 2.781105450000000000
          Width = 63.000985570000000000
          Height = 10.998432300000000000
          DataField = 'Contrapartida'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Contrapartida"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 26.219546430000000000
          Top = 2.781105450000010000
          Width = 57.339249630000000000
          Height = 10.998432300000000000
          DataField = 'Fecha'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Fecha"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 793.701300000000000000
        PrintOnLastPage = False
        object Line2: TfrxLineView
          Left = 52.913420000000000000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 273.913877690000000000
          Top = 3.998742740000000000
          Width = 104.001327010000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<ENLACE1."Debe">,MasterData1)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 537.914048190000000000
          Top = 3.998742740000000000
          Width = 104.001327010000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<ENLACE1."Haber">,MasterData1)]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 182.914133880000000000
          Top = 3.998742740000000000
          Width = 89.000372440000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Parcial Debe :')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 442.915561640000000000
          Top = 3.998742740000000000
          Width = 92.999115180000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Parcial Haber :')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 793.701300000000000000
        object Line1: TfrxLineView
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe2: TfrxMemoView
          Left = 277.693407690000000000
          Top = 7.778272740000000000
          Width = 104.001327010000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<ENLACE1."Debe">,MasterData1)]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 541.693578190000000000
          Top = 7.778272740000000000
          Width = 104.001327010000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<ENLACE1."Haber">,MasterData1)]')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 186.693663880000000000
          Top = 7.778272740000000000
          Width = 89.000372440000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Debe :')
          ParentFont = False
        end
        object Label9: TfrxMemoView
          Left = 446.695091640000000000
          Top = 7.778272740000000000
          Width = 92.999115180000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Haber :')
          ParentFont = False
        end
      end
    end
  end
  object FastReportAsientosExpandido: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636894259300000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42893.479431701390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 390
    Top = 156
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
          Width = 49.560976890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 387.073005890000000000
          Top = 39.998765990000000000
          Width = 284.284908010000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE ASIENTOS')
          ParentFont = False
        end
        object DBText102: TfrxMemoView
          Left = 950.001869510000000000
          Top = 20.999068680000000000
          Width = 61.001614200000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = Enlace1
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
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object InformeLabel4: TfrxMemoView
          Left = 42.999712810000000000
          Top = 101.000380190000000000
          Width = 61.999410120000000000
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
        object Label15: TfrxMemoView
          Left = 899.002785330000000000
          Top = 20.999068680000000000
          Width = 45.558454620000000000
          Height = 13.999379120000000000
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
          Left = 946.001240880000000000
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
        object Label6: TfrxMemoView
          Left = 192.000124000000000000
          Top = 101.000380190000000000
          Width = 77.000364690000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subcuenta')
          ParentFont = False
        end
        object Label7: TfrxMemoView
          Left = 272.995451900000000000
          Top = 101.000380190000000000
          Width = 224.001404510000000000
          Height = 13.995599590000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n Subcuenta')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 522.002226890000000000
          Top = 101.000380190000000000
          Width = 303.995156960000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n Apunte')
          ParentFont = False
        end
        object Label10: TfrxMemoView
          Left = 111.001016570000000000
          Top = 101.000380190000000000
          Width = 53.000349190000000000
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
        object Label12: TfrxMemoView
          Left = 166.000737130000000000
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
            'Apt')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 904.003103520000000000
          Top = 101.000380190000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Haber')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 978.002521390000000000
          Top = 101.000380190000000000
          Width = 77.000364690000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Contrapartida')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1016.002226450000000000
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
          Left = 829.002110200000000000
          Top = 101.000380190000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Debe')
          ParentFont = False
        end
        object LineaTipoConta: TfrxMemoView
          Left = 1034.004127840000000000
          Top = 37.001598700000000000
          Width = 13.999379120000000000
          Height = 12.000007750000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 498.002211390000000000
          Top = 101.000380190000000000
          Width = 23.002219580000000000
          Height = 13.995599590000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cto')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 41.574830000000000000
          Top = 15.118120000000000000
          Width = 443.002490830000000000
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
        object LineaDescripcion: TfrxMemoView
          Left = 41.574830000000000000
          Top = 66.119097820000000000
          Width = 734.997640040000000000
          Height = 13.001583200000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Desde la Fecha [ENLACE1."FECHAINICIAL"] hasta [ENLACE1."FECHAFIN' +
              'AL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 893.765303570000000000
          Top = 59.591849510000000000
          Width = 174.655860830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario : [USER_NAME]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.001901390000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 36.999712810000000000
          Width = 73.338000120000000000
          Height = 13.999379120000000000
          DataField = 'Fecha'
          DataSet = Enlace1
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
        object DBText12: TfrxMemoView
          Left = 111.001016570000000000
          Width = 53.000349190000000000
          Height = 13.999379120000000000
          DataField = 'Asiento'
          DataSet = Enlace1
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
        object DBText3: TfrxMemoView
          Left = 166.000737130000000000
          Width = 24.000015500000000000
          Height = 13.999379120000000000
          DataField = 'Apunte'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Apunte"]')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 192.000124000000000000
          Width = 77.000364690000000000
          Height = 13.999379120000000000
          DataField = 'Subcuenta'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Subcuenta"]')
          ParentFont = False
        end
        object DBText11: TfrxMemoView
          Left = 272.995451900000000000
          Width = 224.001404510000000000
          Height = 13.995599590000000000
          DataField = 'DescSubcuenta'
          DataSet = Enlace1
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
        object DBText2: TfrxMemoView
          Left = 498.002211390000000000
          Width = 22.998440050000000000
          Height = 13.995599590000000000
          DataField = 'id_conceptos'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."id_conceptos"]')
          ParentFont = False
        end
        object DBText10: TfrxMemoView
          Left = 522.002226890000000000
          Width = 303.995156960000000000
          Height = 13.999379120000000000
          DataField = 'DescApunte'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescApunte"]')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 829.002110200000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          DataSet = Enlace1
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
            '[ENLACE1."Debe"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 904.003103520000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          DataSet = Enlace1
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
            '[ENLACE1."Haber"]')
          ParentFont = False
        end
        object DBText4: TfrxMemoView
          Left = 978.002521390000000000
          Width = 77.000364690000000000
          Height = 13.999379120000000000
          DataField = 'Contrapartida'
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Contrapartida"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 49.999402370000000000
        Top = 207.874150000000000000
        Width = 1122.520410000000000000
        DataSetName = 'Enlace'
        RowCount = 0
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 49.999402370000000000
        Top = 317.480520000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 42.001916890000000000
          Top = 1.999371370000010000
          Width = 1015.000340560000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe5: TfrxMemoView
          Left = 904.003103520000000000
          Top = 6.001893640000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          DataSet = Enlace1
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
            '[SUM(<ENLACE1."Haber">,MasterData1)]')
          ParentFont = False
        end
        object Label9: TfrxMemoView
          Left = 750.002374140000000000
          Top = 6.001893639999990000
          Width = 77.000364690000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Importe4: TfrxMemoView
          Left = 829.002110200000000000
          Top = 6.001893640000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          DataSet = Enlace1
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
            '[SUM(<ENLACE1."Debe">,MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 389.291590000000000000
        Width = 1122.520410000000000000
        PrintOnLastPage = False
        object Line2: TfrxLineView
          Left = 45.354360000000000000
          Top = 3.779530000000000000
          Width = 1015.000340560000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe2: TfrxMemoView
          Left = 907.355546630000000000
          Top = 7.778272740000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          DataSet = Enlace1
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
            '[SUM(<ENLACE1."Haber">,MasterData1)]')
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 753.354817250000000000
          Top = 7.778272740000000000
          Width = 77.000364690000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 832.354553310000000000
          Top = 7.778272740000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          DataSet = Enlace1
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
            '[SUM(<ENLACE1."Debe">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636844884300000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42892.829261319400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 46
    Top = 124
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      DataSet = Enlace1
      DataSetName = 'ENLACE1'
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 793.701300000000000000
        object Importe1: TfrxMemoView
          Left = 255.016227690000000000
          Top = 5.219212740000000000
          Width = 104.001327010000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<ENLACE1."Debe">,MasterData1)]')
          ParentFont = False
        end
        object Importe4: TfrxMemoView
          Left = 519.016398190000000000
          Top = 5.219212740000000000
          Width = 104.001327010000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<ENLACE1."Haber">,MasterData1)]')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 164.016483880000000000
          Top = 5.219212740000000000
          Width = 89.000372440000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Debe :')
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 424.017911640000000000
          Top = 5.219212740000000000
          Width = 92.999115180000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Haber :')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 30.236240000000000000
          Top = 1.779530000000000000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 793.701300000000000000
        object Line1: TfrxLineView
          Left = 26.456710000000000000
          Top = 3.779530000000000000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe2: TfrxMemoView
          Left = 247.457167690000000000
          Top = 7.778272740000000000
          Width = 104.001327010000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<ENLACE1."Debe">,MasterData1)]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 511.457338190000000000
          Top = 7.778272740000000000
          Width = 104.001327010000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[SUM(<ENLACE1."Haber">,MasterData1)]')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 156.457423880000000000
          Top = 7.778272740000000000
          Width = 89.000372440000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Debe :')
          ParentFont = False
        end
        object Label9: TfrxMemoView
          Left = 416.458851640000000000
          Top = 7.778272740000000000
          Width = 92.999115180000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Haber :')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 166.299320000000000000
        Width = 793.701300000000000000
        RowCount = 0
        object cAsiento: TfrxMemoView
          Left = 73.677211000000000000
          Top = 3.779530000000000000
          Width = 42.999712810000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Asiento"] ')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 118.680074710000000000
          Top = 3.779530000000000000
          Width = 18.999697310000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Apunte"] ')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 139.679143390000000000
          Top = 3.779530000000000000
          Width = 56.001296010000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Subcuenta"] ')
          ParentFont = False
        end
        object DBText11: TfrxMemoView
          Left = 197.679810770000000000
          Top = 3.779530000000000000
          Width = 154.000729380000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescSubcuenta"] ')
          ParentFont = False
        end
        object DBText2: TfrxMemoView
          Left = 353.679911520000000000
          Top = 3.779530000000000000
          Width = 18.001901390000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."id_conceptos"] ')
          ParentFont = False
        end
        object DBText10: TfrxMemoView
          Left = 376.678351570000000000
          Top = 3.779530000000000000
          Width = 236.999208180000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescApunte"] ')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 616.678506570000000000
          Top = 3.779530000000000000
          Width = 12.000007750000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."DebeHaber"] ')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 630.681665220000000000
          Top = 3.779530000000000000
          Width = 66.999728310000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Importe"] ')
          ParentFont = False
        end
        object DBText4: TfrxMemoView
          Left = 697.681393530000000000
          Top = 3.779530000000000000
          Width = 63.000985570000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Contrapartida"] ')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 57.339249630000000000
          Height = 10.998432300000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Fecha"] ')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object LineaCabecera1: TfrxMemoView
          Left = 32.999076430000000000
          Top = 15.998750490000000000
          Width = 443.002490830000000000
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
          Left = 591.881957060000000000
          Top = 15.998750490000000000
          Width = 176.118538940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText102: TfrxMemoView
          Left = 650.000108060000000000
          Top = 20.001272760000000000
          Width = 64.781144200000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = Enlace1
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
        object Shape2: TfrxShapeView
          Left = 32.999076430000000000
          Top = 90.001947890000000000
          Width = 734.997640040000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object InformeLabel4: TfrxMemoView
          Left = 32.999076430000000000
          Top = 101.000380190000000000
          Width = 46.000659630000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 596.999766620000000000
          Top = 20.001272760000000000
          Width = 42.338295060000000000
          Height = 16.781113200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha')
          ParentFont = False
        end
        object Label16: TfrxMemoView
          Left = 596.999766620000000000
          Top = 34.998447800000000000
          Width = 46.337037800000000000
          Height = 16.781113200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 650.000108060000000000
          Top = 34.998447800000000000
          Width = 9.781423640000000000
          Height = 12.000007750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 623.002607080000000000
          Top = 101.000380190000000000
          Width = 12.000007750000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'T')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 145.999464370000000000
          Top = 101.000380190000000000
          Width = 58.000667380000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Subcta.')
          ParentFont = False
        end
        object Label7: TfrxMemoView
          Left = 204.000131750000000000
          Top = 101.000380190000000000
          Width = 152.001358010000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n Subcuenta')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 383.002452080000000000
          Top = 101.000380190000000000
          Width = 240.000155000000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n del Apunte')
          ParentFont = False
        end
        object lbAsiento: TfrxMemoView
          Left = 80.001311510000000000
          Top = 101.000380190000000000
          Width = 42.999712810000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Asiento')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 125.000395690000000000
          Top = 101.000380190000000000
          Width = 18.999697310000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Apt')
          ParentFont = False
        end
        object LineaDescripcion: TfrxMemoView
          Left = 32.999076430000000000
          Top = 66.999728310000000000
          Width = 734.997640040000000000
          Height = 13.001583200000000000
          DataSet = Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Desde la Fecha [ENLACE1."FECHAINICIAL"] hasta [ENLACE1."FECHAFIN' +
              'AL"]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 294.765544700000000000
          Top = 39.998765990000000000
          Width = 241.708502560000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE ASIENTOS')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 637.001986200000000000
          Top = 101.000380190000000000
          Width = 66.999728310000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 704.001714510000000000
          Top = 101.000380190000000000
          Width = 63.000985570000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Contrap.')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 715.000465000000000000
          Top = 20.001272760000000000
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
        object Label10: TfrxMemoView
          Left = 360.000232500000000000
          Top = 101.000380190000000000
          Width = 18.001901390000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cto')
          ParentFont = False
        end
        object LineaTipoConta: TfrxMemoView
          Left = 732.000790940000000000
          Top = 36.000023250000000000
          Width = 18.780484570000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LineaTipoConta')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 594.165740000000000000
          Top = 56.692950000000000000
          Width = 174.655860830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario : [USER_NAME]')
          ParentFont = False
        end
      end
    end
  end
end
