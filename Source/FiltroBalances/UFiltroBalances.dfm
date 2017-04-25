object WFiltroBalances: TWFiltroBalances
  Left = 865
  Top = 279
  ClientHeight = 490
  ClientWidth = 525
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
    Width = 525
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
      Top = 297
      Width = 246
      Height = 109
      Caption = ' Datos adicionales '
      TabOrder = 2
      object Label4: TLabel
        Left = 10
        Top = 19
        Width = 77
        Height = 13
        Caption = 'Fecha a imprimir'
      end
      object lSubtotales1: TLabel
        Left = 10
        Top = 41
        Width = 87
        Height = 13
        Caption = 'Subtotales al nivel'
      end
      object lSubtotales2: TLabel
        Left = 180
        Top = 41
        Width = 17
        Height = 13
        Caption = 'y al'
      end
      object EditFECHA_IMPRIMIR: TDBEdit
        Left = 141
        Top = 15
        Width = 98
        Height = 20
        AutoSize = False
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
      object CheckBoxConSubcuentas: TCheckBox
        Left = 10
        Top = 62
        Width = 117
        Height = 17
        Caption = 'Con subcuentas'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CheckBoxSoloSaldos: TCheckBox
        Left = 141
        Top = 63
        Width = 92
        Height = 17
        Caption = 'S'#243'lo saldos'
        TabOrder = 4
      end
      object EditNIVEL_1: TDBEdit
        Left = 141
        Top = 37
        Width = 25
        Height = 20
        AutoSize = False
        DataField = 'NIVEL_1'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EditNIVEL_2: TDBEdit
        Left = 214
        Top = 37
        Width = 25
        Height = 20
        AutoSize = False
        DataField = 'NIVEL_2'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox3: TGroupBox
      Left = 11
      Top = 181
      Width = 504
      Height = 116
      Caption = ' Anal'#237'tica '
      TabOrder = 1
      object Label6: TLabel
        Left = 10
        Top = 15
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
        Top = 38
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
        Top = 38
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
        Top = 75
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
        Top = 74
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
        Top = 13
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
        ListSource = DataModuleFiltroBalances.SAnaliticas
        ParentFont = False
        TabOrder = 0
      end
      object ComboBoxDELEGACION: TDBLookupComboBox
        Left = 9
        Top = 51
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
        ListSource = DataModuleFiltroBalances.SDelegaciones
        ParentFont = False
        TabOrder = 2
      end
      object ComboBoxDEPARTAMENTO: TDBLookupComboBox
        Left = 257
        Top = 51
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
        ListSource = DataModuleFiltroBalances.SDepartamentos
        ParentFont = False
        TabOrder = 3
      end
      object ComboBoxSECCION: TDBLookupComboBox
        Left = 10
        Top = 88
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
        ListSource = DataModuleFiltroBalances.SSecciones
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxPROYECTO: TDBLookupComboBox
        Left = 257
        Top = 88
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
        ListSource = DataModuleFiltroBalances.SProyectos
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxDS_ANALITICA: TDBLookupComboBox
        Left = 212
        Top = 13
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
        ListSource = DataModuleFiltroBalances.SAnaliticas
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 7
      Width = 504
      Height = 176
      TabOrder = 0
      object Label20: TLabel
        Left = 20
        Top = 25
        Width = 29
        Height = 13
        Caption = 'Fecha'
      end
      object Label24: TLabel
        Left = 123
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label25: TLabel
        Left = 259
        Top = 7
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object EditDTE_SINCE: TDBEdit
        Left = 123
        Top = 21
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
        TabOrder = 0
      end
      object EditDTE_UNTIL: TDBEdit
        Left = 259
        Top = 21
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
        TabOrder = 1
      end
      object GroupBoxConcepto: TDBRadioGroup
        Left = 123
        Top = 42
        Width = 278
        Height = 37
        Caption = ' Clase de Conceptos '
        Columns = 3
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
      object ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 207
        Top = 104
        Width = 280
        Height = 21
        DataField = 'DESCRIPCION_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltroBalances.SSubcuentas
        ParentFont = False
        TabOrder = 7
      end
      object ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 207
        Top = 83
        Width = 280
        Height = 21
        DataField = 'DESCRIPCION_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'DESCRIPCION'
        ListSource = DataModuleFiltroBalances.SSubcuentas
        ParentFont = False
        TabOrder = 5
      end
      object ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 108
        Top = 83
        Width = 100
        Height = 21
        DataField = 'DESCRIPCION_DESDE'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltroBalances.SSubcuentas
        ParentFont = False
        TabOrder = 4
      end
      object ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 108
        Top = 104
        Width = 100
        Height = 21
        DataField = 'DESCRIPCION_HASTA'
        DataSource = DSFiltro
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SUBCUENTA'
        ListField = 'SUBCUENTA'
        ListSource = DataModuleFiltroBalances.SSubcuentas
        ParentFont = False
        TabOrder = 6
      end
      object CombBoxDescrCD_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 387
        Top = 128
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
        ListSource = DataModuleFiltroBalances.SSubcuentas
        ParentFont = False
        TabOrder = 10
      end
      object CombBoxDescrCD_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 387
        Top = 149
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
        ListSource = DataModuleFiltroBalances.SSubcuentas
        ParentFont = False
        TabOrder = 11
      end
      object CombBoxDescrDS_SUBCUENTA_HASTA: TDBLookupComboBox
        Left = 108
        Top = 149
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
        ListSource = DataModuleFiltroBalances.SSubcuentas
        ParentFont = False
        TabOrder = 12
      end
      object CombBoxDescrDS_SUBCUENTA_DESDE: TDBLookupComboBox
        Left = 108
        Top = 128
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
        ListSource = DataModuleFiltroBalances.SSubcuentas
        ParentFont = False
        TabOrder = 9
      end
      object CheckBoxSubcuenta: TCheckBox
        Left = 12
        Top = 85
        Width = 94
        Height = 17
        Caption = 'Subcuenta'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = CheckBoxSubcuentaClick
      end
      object CheckBoxDescripcion: TCheckBox
        Left = 12
        Top = 130
        Width = 94
        Height = 17
        Caption = 'Descripci'#243'n'
        TabOrder = 8
        OnClick = CheckBoxSubcuentaClick
      end
    end
    object GroupBox5: TGroupBox
      Left = 258
      Top = 297
      Width = 257
      Height = 109
      Caption = ' Consolidar empresa con las seleccionadas'
      TabOrder = 3
      object lbEmpresas: TCheckListBox
        Left = 10
        Top = 16
        Width = 229
        Height = 82
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 525
    Height = 35
    Align = alTop
    TabOrder = 1
    object lTitulo: TLabel
      Left = 6
      Top = 6
      Width = 191
      Height = 19
      Caption = 'Balance de Sumas y Saldos'
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
      Top = 26
      Width = 523
      Height = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 449
    Width = 525
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      525
      41)
    object BtnProcess: TButton
      Left = 366
      Top = 9
      Width = 161
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
    object CDSFiltroFECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object CDSFiltroFECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object CDSFiltroTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Size = 1
    end
    object CDSFiltroFECHA_IMPRIMIR: TDateField
      FieldName = 'FECHA_IMPRIMIR'
    end
    object CDSFiltroNIVEL_1: TIntegerField
      FieldName = 'NIVEL_1'
    end
    object CDSFiltroNIVEL_2: TIntegerField
      FieldName = 'NIVEL_2'
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
    Left = 404
    Top = 6
  end
end
