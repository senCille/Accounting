object WFiltroListadosMayor: TWFiltroListadosMayor
  Left = 747
  Top = 383
  ClientHeight = 729
  ClientWidth = 857
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 857
    Height = 38
    Align = alTop
    TabOrder = 0
    object lTitulo: TLabel
      Left = 7
      Top = 7
      Width = 106
      Height = 19
      Caption = 'Libro de Mayor'
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
      Top = 29
      Width = 523
      Height = 1
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 38
    Width = 857
    Height = 691
    ActivePage = TabSheetResults
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    OnChanging = PageControlChanging
    object TabSheetQuery: TTabSheet
      Caption = 'Datos para la Consulta'
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 849
        Height = 619
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 519
        ExplicitHeight = 413
        object GroupBox4: TGroupBox
          Left = 11
          Top = 329
          Width = 377
          Height = 88
          Caption = ' Datos adicionales '
          TabOrder = 3
          object Label4: TLabel
            Left = 258
            Top = 11
            Width = 79
            Height = 13
            Caption = 'Fecha Impresi'#243'n'
          end
          object EditFECHA_IMPRIMIR: TDBEdit
            Left = 258
            Top = 23
            Width = 94
            Height = 21
            DataField = 'FECHA_IMPRIMIR'
            DataSource = DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object CheckBoxSaltoPaginaPorSubcta: TCheckBox
            Left = 10
            Top = 50
            Width = 192
            Height = 17
            Caption = 'Salto de p'#225'gina por subcuenta'
            TabOrder = 2
          end
          object CheckBoxSaldosAcumulados: TCheckBox
            Left = 10
            Top = 31
            Width = 181
            Height = 17
            Caption = 'Imprimir saldos acumulados'
            TabOrder = 1
          end
          object CheckBoxFormatoOficial: TCheckBox
            Left = 10
            Top = 13
            Width = 125
            Height = 17
            Caption = 'Formato Oficial'
            TabOrder = 0
          end
          object CheckBoxSinPuntear: TCheckBox
            Left = 10
            Top = 68
            Width = 165
            Height = 17
            Caption = 'S'#243'lo asientos sin puntear'
            TabOrder = 3
          end
        end
        object GroupBox1: TGroupBox
          Left = 11
          Top = 215
          Width = 504
          Height = 115
          Caption = ' Anal'#237'tica '
          TabOrder = 2
          object Label6: TLabel
            Left = 11
            Top = 16
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
            Left = 11
            Top = 36
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
            Left = 258
            Top = 36
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
            Left = 11
            Top = 74
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
            Left = 258
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
            Left = 108
            Top = 14
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
            ListSource = DataModuleFiltroListadosMayor.SAnaliticas
            ParentFont = False
            TabOrder = 0
          end
          object ComboBoxDELEGACION: TDBLookupComboBox
            Left = 10
            Top = 49
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
            ListSource = DataModuleFiltroListadosMayor.SDelegaciones
            ParentFont = False
            TabOrder = 2
          end
          object ComboBoxDEPARTAMENTO: TDBLookupComboBox
            Left = 258
            Top = 49
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
            ListSource = DataModuleFiltroListadosMayor.SDepartamentos
            ParentFont = False
            TabOrder = 3
          end
          object ComboBoxSECCION: TDBLookupComboBox
            Left = 11
            Top = 87
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
            ListSource = DataModuleFiltroListadosMayor.SSecciones
            ParentFont = False
            TabOrder = 4
          end
          object ComboBoxPROYECTO: TDBLookupComboBox
            Left = 258
            Top = 87
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
            ListSource = DataModuleFiltroListadosMayor.SProyectos
            ParentFont = False
            TabOrder = 5
          end
          object ComboBoxDS_ANALITICA: TDBLookupComboBox
            Left = 207
            Top = 14
            Width = 280
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
            ListSource = DataModuleFiltroListadosMayor.SAnaliticas
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox5: TGroupBox
          Left = 11
          Top = 7
          Width = 504
          Height = 136
          Caption = ' Tipo Selecci'#243'n '
          TabOrder = 0
          object Label1: TLabel
            Left = 12
            Top = 107
            Width = 83
            Height = 13
            Caption = 'Subcuenta N.I.F.'
          end
          object Label5: TLabel
            Left = 223
            Top = 107
            Width = 115
            Height = 13
            Caption = 'Desc. Subcta. contenga'
          end
          object ComboBoxDS_SUBCUENTA_HASTA: TDBLookupComboBox
            Left = 207
            Top = 31
            Width = 280
            Height = 21
            DataField = 'SUBCUENTA_HASTA'
            DataSource = DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleFiltroListadosMayor.SSubcuentas
            ParentFont = False
            TabOrder = 4
          end
          object ComboBoxDS_SUBCUENTA_DESDE: TDBLookupComboBox
            Left = 207
            Top = 10
            Width = 280
            Height = 21
            DataField = 'SUBCUENTA_DESDE'
            DataSource = DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'SUBCUENTA'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleFiltroListadosMayor.SSubcuentas
            ParentFont = False
            TabOrder = 2
          end
          object ComboBoxCD_SUBCUENTA_DESDE: TDBLookupComboBox
            Left = 108
            Top = 10
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
            ListSource = DataModuleFiltroListadosMayor.SSubcuentas
            ParentFont = False
            TabOrder = 1
          end
          object ComboBoxCD_SUBCUENTA_HASTA: TDBLookupComboBox
            Left = 108
            Top = 31
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
            ListSource = DataModuleFiltroListadosMayor.SSubcuentas
            ParentFont = False
            TabOrder = 3
          end
          object ComboBoxDESC_CD_SUBCUENTA_DESDE: TDBLookupComboBox
            Left = 387
            Top = 55
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
            ListSource = DataModuleFiltroListadosMayor.SSubcuentas
            ParentFont = False
            TabOrder = 7
          end
          object ComboBoxDESC_CD_SUBCUENTA_HASTA: TDBLookupComboBox
            Left = 387
            Top = 76
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
            ListSource = DataModuleFiltroListadosMayor.SSubcuentas
            ParentFont = False
            TabOrder = 9
          end
          object ComboBoxDESC_DS_SUBCUENTA_HASTA: TDBLookupComboBox
            Left = 108
            Top = 76
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
            ListSource = DataModuleFiltroListadosMayor.SSubcuentas
            ParentFont = False
            TabOrder = 8
          end
          object ComboBoxDESC_DS_SUBCUENTA_DESDE: TDBLookupComboBox
            Left = 108
            Top = 55
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
            ListSource = DataModuleFiltroListadosMayor.SSubcuentas
            ParentFont = False
            TabOrder = 6
          end
          object CheckBoxDescripcion: TCheckBox
            Left = 12
            Top = 57
            Width = 94
            Height = 17
            Caption = 'Descripci'#243'n'
            TabOrder = 5
            OnClick = CheckBoxSubcuentaClick
          end
          object CheckBoxSubcuenta: TCheckBox
            Left = 12
            Top = 12
            Width = 94
            Height = 17
            Caption = 'Subcuenta'
            Checked = True
            State = cbChecked
            TabOrder = 0
            OnClick = CheckBoxSubcuentaClick
          end
          object EditBUSINESS_ID: TDBEdit
            Left = 108
            Top = 102
            Width = 108
            Height = 22
            AutoSize = False
            DataField = 'BUSINESS_ID'
            DataSource = DSFiltro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object EditCONTENIENDO: TDBEdit
            Left = 356
            Top = 102
            Width = 131
            Height = 22
            AutoSize = False
            DataField = 'CONTENIENDO'
            DataSource = DSFiltro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
        end
        object GroupBox2: TGroupBox
          Left = 11
          Top = 142
          Width = 504
          Height = 74
          TabOrder = 1
          object Label20: TLabel
            Left = 20
            Top = 24
            Width = 29
            Height = 13
            Caption = 'Fecha'
          end
          object Label24: TLabel
            Left = 117
            Top = 7
            Width = 30
            Height = 13
            Caption = 'Desde'
          end
          object Label25: TLabel
            Left = 203
            Top = 7
            Width = 28
            Height = 13
            Caption = 'Hasta'
          end
          object Label3: TLabel
            Left = 20
            Top = 52
            Width = 46
            Height = 13
            Caption = 'Concepto'
          end
          object EditFECHA_DESDE: TDBEdit
            Left = 108
            Top = 20
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
          object EditFECHA_HASTA: TDBEdit
            Left = 198
            Top = 20
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
          object RadioGroupConcepto: TDBRadioGroup
            Left = 291
            Top = 11
            Width = 206
            Height = 33
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
          object ComboBoxID_CONCEPTOS: TDBLookupComboBox
            Left = 108
            Top = 48
            Width = 100
            Height = 21
            DataField = 'ID_CONCEPTOS'
            DataSource = DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'ID_CONCEPTOS'
            ListSource = DataModuleFiltroListadosMayor.SConceptos
            ParentFont = False
            TabOrder = 3
          end
          object ComboBoxDS_CONCEPTOS: TDBLookupComboBox
            Left = 207
            Top = 48
            Width = 280
            Height = 21
            DataField = 'ID_CONCEPTOS'
            DataSource = DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleFiltroListadosMayor.SConceptos
            ParentFont = False
            TabOrder = 4
          end
        end
        object RadioGroupORDEN: TDBRadioGroup
          Left = 392
          Top = 329
          Width = 123
          Height = 88
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
      object Panel2: TPanel
        Left = 0
        Top = 619
        Width = 849
        Height = 41
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          849
          41)
        object BtnProcess: TButton
          Left = 707
          Top = 9
          Width = 135
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
          ExplicitLeft = 377
        end
      end
    end
    object TabSheetResults: TTabSheet
      Caption = 'Resultado de la Consulta'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 38
        Width = 849
        Height = 38
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 7
          Top = 7
          Width = 148
          Height = 19
          Caption = 'Entradas en el Mayor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape2: TShape
          Left = 7
          Top = 29
          Width = 523
          Height = 1
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 622
        Width = 849
        Height = 38
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          849
          38)
        object Cancelar: TButton
          Left = 683
          Top = 9
          Width = 135
          Height = 24
          Cursor = crHandPoint
          Anchors = [akRight, akBottom]
          Caption = '&Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = CancelarClick
        end
        object BtnPrint: TButton
          Left = 534
          Top = 9
          Width = 135
          Height = 24
          Cursor = crHandPoint
          Anchors = [akRight, akBottom]
          Caption = '&Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BtnPrintClick
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 849
        Height = 38
        Align = alTop
        TabOrder = 2
        object Label12: TLabel
          Left = 7
          Top = 7
          Width = 56
          Height = 19
          Caption = 'Cuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape4: TShape
          Left = 7
          Top = 29
          Width = 523
          Height = 1
        end
      end
      object DBGridSubcuentasMayor: TDBGrid
        Left = 0
        Top = 82
        Width = 530
        Height = 335
        DataSource = DataModuleFiltroListadosMayor.SSubcuentasMayor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBGridEntries: TDBGrid
        Left = 3
        Top = 480
        Width = 527
        Height = 71
        DataSource = DataModuleFiltroListadosMayor.SLinesDiario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel6: TPanel
        Left = 0
        Top = 584
        Width = 849
        Height = 38
        Align = alBottom
        TabOrder = 5
        object Label13: TLabel
          Left = 7
          Top = 7
          Width = 73
          Height = 19
          Caption = 'Sumatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape5: TShape
          Left = 7
          Top = 29
          Width = 523
          Height = 1
        end
      end
    end
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 362
    Top = 8
    object CDSFiltroSUBCUENTA_DESDE: TStringField
      FieldName = 'SUBCUENTA_DESDE'
      Size = 10
    end
    object CDSFiltroSUBCUENTA_HASTA: TStringField
      FieldName = 'SUBCUENTA_HASTA'
      Size = 10
    end
    object CDSFiltroBUSINESS_ID: TStringField
      FieldName = 'BUSINESS_ID'
    end
    object CDSFiltroCONTENIENDO: TStringField
      FieldName = 'CONTENIENDO'
      Size = 30
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
    object CDSFiltroFECHA_IMPRIMIR: TDateField
      FieldName = 'FECHA_IMPRIMIR'
    end
    object CDSFiltroTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Size = 1
    end
    object CDSFiltroID_CONCEPTOS: TStringField
      FieldName = 'ID_CONCEPTOS'
      Size = 3
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
    object CDSFiltroORDEN: TStringField
      FieldName = 'ORDEN'
      Size = 1
    end
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 434
    Top = 8
  end
end
