object WFiltro347: TWFiltro347
  Left = 828
  Top = 241
  ClientHeight = 491
  ClientWidth = 528
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
    Width = 528
    Height = 414
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GroupBox4: TGroupBox
      Left = 11
      Top = 334
      Width = 504
      Height = 72
      Caption = ' Datos adicionales '
      TabOrder = 5
      object Label4: TLabel
        Left = 20
        Top = 22
        Width = 77
        Height = 13
        Caption = 'Fecha a imprimir'
      end
      object EditFECHA_IMPRIMIR: TDBEdit
        Left = 135
        Top = 18
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
        TabOrder = 0
      end
      object CheckBoxGenerarCartas: TCheckBox
        Left = 258
        Top = 18
        Width = 120
        Height = 17
        Caption = 'Generar Cartas'
        TabOrder = 1
        Visible = False
      end
      object CheckBoxGenerarDiskette: TCheckBox
        Left = 258
        Top = 45
        Width = 191
        Height = 17
        Caption = 'Generar fichero importaci'#243'n'
        TabOrder = 2
      end
    end
    object RaditoGroupConcepto: TDBRadioGroup
      Left = 11
      Top = 256
      Width = 161
      Height = 75
      Caption = ' Clase de Conceptos '
      DataField = 'TIPO_CONCEPTO'
      DataSource = DSFiltro
      Items.Strings = (
        'Todos'
        'Normal'
        'Especial')
      TabOrder = 2
      Values.Strings = (
        'T'
        'N'
        'E')
    end
    object GroupBox3: TGroupBox
      Left = 11
      Top = 9
      Width = 504
      Height = 138
      Caption = ' Tipo Selecci'#243'n '
      TabOrder = 0
      object CheckBoxDescripcion: TCheckBox
        Left = 12
        Top = 69
        Width = 94
        Height = 17
        Caption = 'Descripci'#243'n'
        TabOrder = 5
        OnClick = CheckBoxSubcuentaClick
      end
      object CheckBoxSubcuenta: TCheckBox
        Left = 12
        Top = 21
        Width = 94
        Height = 17
        Caption = 'Subcuenta'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = CheckBoxSubcuentaClick
      end
      object ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 207
        Top = 41
        Width = 280
        Height = 21
        DataField = 'SUBCUENTA_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 207
        Top = 19
        Width = 280
        Height = 21
        DataField = 'SUBCUENTA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 108
        Top = 19
        Width = 100
        Height = 21
        DataField = 'SUBCUENTA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 1
      end
      object ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 108
        Top = 41
        Width = 100
        Height = 21
        DataField = 'SUBCUENTA_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 3
      end
      object ComboBoxDESC_CD_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 387
        Top = 67
        Width = 100
        Height = 21
        DataField = 'DESCRIPCION_DESDE'
        DataSource = DSFiltro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DESCRIPCION'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 7
      end
      object ComboBoxDESC_CD_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 387
        Top = 89
        Width = 100
        Height = 21
        DataField = 'DESCRIPCION_HASTA'
        DataSource = DSFiltro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DESCRIPCION'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 9
      end
      object ComboBoxDESC_DS_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 108
        Top = 89
        Width = 280
        Height = 21
        DataField = 'DESCRIPCION_HASTA'
        DataSource = DSFiltro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DESCRIPCION'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 8
      end
      object ComboBoxDESC_DS_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 108
        Top = 67
        Width = 279
        Height = 21
        DataField = 'DESCRIPCION_DESDE'
        DataSource = DSFiltro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DESCRIPCION'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltro347.SSubcuentas
        ParentFont = False
        TabOrder = 6
      end
      object CheckBoxExcluirProfesionales: TCheckBox
        Left = 108
        Top = 113
        Width = 208
        Height = 17
        Caption = 'Excluir profesionales'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 147
      Width = 504
      Height = 107
      TabOrder = 1
      object Label20: TLabel
        Left = 20
        Top = 56
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label24: TLabel
        Left = 135
        Top = 11
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label25: TLabel
        Left = 258
        Top = 10
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label2: TLabel
        Left = 20
        Top = 81
        Width = 38
        Height = 13
        Caption = 'Importe'
      end
      object Label7: TLabel
        Left = 20
        Top = 30
        Width = 36
        Height = 13
        Caption = 'Asiento'
      end
      object EditFECHA_DESDE: TDBEdit
        Left = 135
        Top = 52
        Width = 89
        Height = 21
        DataField = 'FECHA_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EditFECHA_HASTA: TDBEdit
        Left = 258
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
      object EditIMPORTE_DESDE: TDBEdit
        Left = 135
        Top = 77
        Width = 90
        Height = 21
        AutoSize = False
        DataField = 'IMPORTE_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EditIMPORTE_HASTA: TDBEdit
        Left = 258
        Top = 77
        Width = 90
        Height = 21
        AutoSize = False
        DataField = 'IMPORTE_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object EditASIENTO_DESDE: TDBEdit
        Left = 135
        Top = 26
        Width = 89
        Height = 21
        DataField = 'ASIENTO_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditASIENTO_HASTA: TDBEdit
        Left = 258
        Top = 26
        Width = 89
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
    end
    object RaditoGroupTipo216: TDBRadioGroup
      Left = 183
      Top = 256
      Width = 161
      Height = 75
      Caption = ' Tipo 216 '
      DataField = 'TIPO_216'
      DataSource = DSFiltro
      Items.Strings = (
        'Incluir'
        'Excluir'
        'S'#243'lo')
      TabOrder = 3
      Values.Strings = (
        'I'
        'E'
        'S')
    end
    object RaditoGroupOrden: TDBRadioGroup
      Left = 354
      Top = 256
      Width = 161
      Height = 75
      Caption = ' Orden por '
      DataField = 'ORDEN'
      DataSource = DSFiltro
      Items.Strings = (
        'Subcuenta'
        'Descripci'#243'n')
      TabOrder = 4
      Values.Strings = (
        'S'
        'D')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 450
    Width = 528
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      528
      41)
    object BtnAccept: TButton
      Left = 365
      Top = 9
      Width = 145
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
      OnClick = BtnAcceptClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 36
    Align = alTop
    TabOrder = 2
    object lTitulo: TLabel
      Left = 8
      Top = 6
      Width = 227
      Height = 19
      Caption = 'Operaciones con Terceros (347)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 8
      Top = 28
      Width = 523
      Height = 1
    end
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 6
    object CDSFiltroSUBCUENTA_DESDE: TStringField
      FieldName = 'SUBCUENTA_DESDE'
      Size = 10
    end
    object CDSFiltroSUBCUENTA_HASTA: TStringField
      FieldName = 'SUBCUENTA_HASTA'
      Size = 10
    end
    object CDSFiltroDESCRIPCION_DESDE: TStringField
      FieldName = 'DESCRIPCION_DESDE'
      Size = 80
    end
    object CDSFiltroDESCRIPCION_HASTA: TStringField
      FieldName = 'DESCRIPCION_HASTA'
      Size = 80
    end
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
    object CDSFiltroIMPORTE_DESDE: TFloatField
      FieldName = 'IMPORTE_DESDE'
    end
    object CDSFiltroIMPORTE_HASTA: TFloatField
      FieldName = 'IMPORTE_HASTA'
    end
    object CDSFiltroTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Size = 1
    end
    object CDSFiltroTIPO_216: TStringField
      FieldName = 'TIPO_216'
      Size = 1
    end
    object CDSFiltroORDEN: TStringField
      FieldName = 'ORDEN'
      Size = 1
    end
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 432
    Top = 6
  end
  object FastReportOperaTer347: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.639623298600000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42846.893427164400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 353
    Top = 194
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
        object Shape4: TfrxShapeView
          Left = 591.000077060000000000
          Top = 15.998750490000000000
          Width = 187.457128940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText102: TfrxMemoView
          Left = 652.000108060000000000
          Top = 20.001272760000000000
          Width = 64.781144200000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = DataModuleFiltroBalances.Enlace1
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
          Left = 32.995296900000000000
          Top = 90.001947890000000000
          Width = 734.997640040000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 596.001023880000000000
          Top = 20.001272760000000000
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
        object Label16: TfrxMemoView
          Left = 596.001023880000000000
          Top = 34.998447800000000000
          Width = 51.560348260000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 652.000108060000000000
          Top = 34.998447800000000000
          Width = 11.780795010000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 34.998447800000000000
          Top = 101.000380190000000000
          Width = 73.001621950000000000
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
        object Label7: TfrxMemoView
          Left = 112.002592020000000000
          Top = 101.000380190000000000
          Width = 293.000504190000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 408.000263500000000000
          Top = 101.000380190000000000
          Width = 106.004477910000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N.I.F.')
          ParentFont = False
        end
        object LineaDescripcion: TfrxMemoView
          Left = 32.999076430000000000
          Top = 66.999728310000000000
          Width = 735.001419570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DESCRIPTION]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 241.205825070000000000
          Top = 39.998765990000000000
          Width = 281.794197740000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'OPERACIONES CON TERCEROS (347)')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 569.000682440000000000
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
            'Ventas')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 671.002638080000000000
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
            'Compras')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 720.000465000000000000
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
        object Label4: TfrxMemoView
          Left = 515.002537330000000000
          Top = 101.000380190000000000
          Width = 51.004757350000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Provincia')
          ParentFont = False
        end
        object LineaTipoConta: TfrxMemoView
          Left = 735.001419570000000000
          Top = 37.001598700000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 34.015770000000000000
          Top = 19.778280490000000000
          Width = 814.001155630000000000
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
        object Memo1: TfrxMemoView
          Left = 614.740554500000000000
          Top = 56.692950000000000000
          Width = 160.142465630000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario: [USER_NAME]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.004734100000000000
        Top = 166.299320000000000000
        Width = 793.701300000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText10: TfrxMemoView
          Left = 408.000263500000000000
          Width = 106.004477910000000000
          Height = 13.999379120000000000
          DataField = 'NIF'
          DataSet = DataModuleFiltroBalances.Enlace1
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
        object DBText101: TfrxMemoView
          Left = 34.998447800000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          DataField = 'Subcuenta'
          DataSet = DataModuleFiltroBalances.Enlace1
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
          Left = 112.002592020000000000
          Width = 293.000504190000000000
          Height = 13.999379120000000000
          DataField = 'DescSubcuenta'
          DataSet = DataModuleFiltroBalances.Enlace1
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
        object Importe2: TfrxMemoView
          Left = 569.000682440000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 671.002638080000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object DBText103: TfrxMemoView
          Left = 515.002537330000000000
          Width = 51.004757350000000000
          Height = 13.999379120000000000
          DataField = 'Provincia'
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Provincia"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 30.999705060000000000
        Top = 204.094620000000000000
        Width = 793.701300000000000000
        object Line2: TfrxLineView
          Left = 32.999076430000000000
          Top = 3.000946820000000000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe5: TfrxMemoView
          Left = 569.000682440000000000
          Top = 6.999689560000010000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe4: TfrxMemoView
          Left = 671.002638080000000000
          Top = 6.999689560000010000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 499.000007310000000000
          Top = 6.999689560000010000
          Width = 63.000985570000000000
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
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 49.999402370000000000
        Top = 294.803340000000000000
        Width = 793.701300000000000000
        object Line1: TfrxLineView
          Left = 32.999076430000000000
          Top = 6.999689559999980000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe1: TfrxMemoView
          Left = 569.000682440000000000
          Top = 10.998432300000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 671.002638080000000000
          Top = 10.998432300000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 499.000007310000000000
          Top = 10.998432300000000000
          Width = 63.000985570000000000
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
      end
    end
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
    Left = 353
    Top = 322
  end
  object Enlace1: TfrxDBDataset
    UserName = 'ENLACE1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FechaInicial=FECHAINICIAL'
      'Fecha=Fecha'
      'FechaFinal=FECHAFINAL'
      'Asiento=Asiento'
      'Apunte=Apunte'
      'Subcuenta=Subcuenta'
      'DescSubcuenta=DescSubcuenta'
      'DescApunte=DescApunte'
      'Contrapartida=Contrapartida'
      'Debe=Debe'
      'Haber=Haber'
      'Saldo=Saldo'
      'FechaImpresion=FECHAIMPRESION'
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
    DataSource = DataModuleFiltro347.SInformesConta
    BCDToCurrency = False
    Left = 456
    Top = 193
  end
  object FastReportOperaTer349: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.639664537000000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42846.893738206000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 353
    Top = 258
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
        object Shape4: TfrxShapeView
          Left = 589.000077060000000000
          Top = 15.998750490000000000
          Width = 187.457128940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText102: TfrxMemoView
          Left = 651.000108060000000000
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
          Left = 32.995296900000000000
          Top = 90.001947890000000000
          Width = 734.997640040000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 595.001023880000000000
          Top = 20.001272760000000000
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
        object Label16: TfrxMemoView
          Left = 595.001023880000000000
          Top = 34.998447800000000000
          Width = 51.560348260000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 651.000108060000000000
          Top = 34.998447800000000000
          Width = 11.780795010000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 37.999394620000000000
          Top = 101.000380190000000000
          Width = 82.998478800000000000
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
        object Label7: TfrxMemoView
          Left = 125.000395690000000000
          Top = 101.000380190000000000
          Width = 310.000830130000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 440.001544010000000000
          Top = 101.000380190000000000
          Width = 121.999448870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N.I.F.')
          ParentFont = False
        end
        object LineaDescripcion: TfrxMemoView
          Left = 32.999076430000000000
          Top = 66.999728310000000000
          Width = 735.001419570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DESCRIPTION]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 230.264085720000000000
          Top = 39.998765990000000000
          Width = 292.335306910000000000
          Height = 15.840010230000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'OPERACIONES CON TERCEROS (349)')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 569.000682440000000000
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
            'Ventas')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 671.002638080000000000
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
            'Compras')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 720.000465000000000000
          Top = 20.001272760000000000
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
        object LineaTipoConta: TfrxMemoView
          Left = 735.001419570000000000
          Top = 37.001598700000000000
          Width = 22.560014570000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 34.015770000000000000
          Top = 15.998750490000000000
          Width = 814.001155630000000000
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
        object Memo1: TfrxMemoView
          Left = 614.740554500000000000
          Top = 56.692950000000000000
          Width = 160.142465630000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario: [USER_NAME]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.004734100000000000
        Top = 166.299320000000000000
        Width = 793.701300000000000000
        DataSetName = 'Enlace'
        RowCount = 0
        object DBText10: TfrxMemoView
          Left = 440.001544010000000000
          Width = 121.999448870000000000
          Height = 13.999379120000000000
          DataField = 'NIF'
          DataSet = Enlace1
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
        object DBText101: TfrxMemoView
          Left = 37.999394620000000000
          Width = 82.000682880000000000
          Height = 13.999379120000000000
          DataField = 'Subcuenta'
          DataSet = Enlace1
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
          Left = 125.000395690000000000
          Width = 310.000830130000000000
          Height = 13.999379120000000000
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
        object Importe2: TfrxMemoView
          Left = 569.000682440000000000
          Width = 92.999115180000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 671.002638080000000000
          Width = 92.999115180000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 30.999705060000000000
        Top = 204.094620000000000000
        Width = 793.701300000000000000
        object Line2: TfrxLineView
          Left = 32.999076430000000000
          Top = 3.000946820000000000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe5: TfrxMemoView
          Left = 569.000682440000000000
          Top = 6.999689560000010000
          Width = 92.999115180000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe4: TfrxMemoView
          Left = 671.002638080000000000
          Top = 6.999689560000010000
          Width = 92.999115180000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 499.000007310000000000
          Top = 6.999689560000010000
          Width = 63.000985570000000000
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
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 49.999402370000000000
        Top = 294.803340000000000000
        Width = 793.701300000000000000
        object Line1: TfrxLineView
          Left = 32.999076430000000000
          Top = 6.999689559999980000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe1: TfrxMemoView
          Left = 569.000682440000000000
          Top = 10.998432300000000000
          Width = 92.999115180000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 671.002638080000000000
          Top = 10.998432300000000000
          Width = 92.999115180000000000
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
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 499.000007310000000000
          Top = 10.998432300000000000
          Width = 63.000985570000000000
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
      end
    end
  end
end
