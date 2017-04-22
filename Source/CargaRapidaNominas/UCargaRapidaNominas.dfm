object WCargaRapidaNominas: TWCargaRapidaNominas
  Left = 933
  Top = 480
  Caption = 'Carga de Apuntes'
  ClientHeight = 536
  ClientWidth = 792
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 35
    Align = alTop
    Color = 14275008
    TabOrder = 0
    ExplicitWidth = 800
    object Shape1: TShape
      Left = 7
      Top = 27
      Width = 741
      Height = 1
      Pen.Color = 7552051
    end
    object lTitulo: TLabel
      Left = 7
      Top = 6
      Width = 205
      Height = 19
      Caption = 'Carga r'#225'pida de N'#243'minas'
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
    Top = 495
    Width = 792
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 1
    ExplicitTop = 500
    ExplicitWidth = 800
    DesignSize = (
      792
      41)
    object BtnEdtSubcuenta: TButton
      Left = 22
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
      Left = 693
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
  object PageControl1: TPageControl
    Left = 0
    Top = 35
    Width = 792
    Height = 460
    ActivePage = TabSheetAsientos
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 800
    ExplicitHeight = 465
    object TabSheetAsientos: TTabSheet
      Caption = 'Asientos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox8: TGroupBox
        Left = 0
        Top = 337
        Width = 784
        Height = 92
        Align = alBottom
        Caption = ' Asiento Empresa '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 342
        ExplicitWidth = 792
        object Label43: TLabel
          Left = 10
          Top = 15
          Width = 230
          Height = 14
          Caption = 'Subcuenta de Gasto Seg. Social Empresa  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 10
          Top = 53
          Width = 146
          Height = 14
          Caption = 'Subcuenta de Seg. Social   '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 372
          Top = 53
          Width = 119
          Height = 14
          Caption = 'Concepto de Asiento '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 372
          Top = 15
          Width = 47
          Height = 13
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboBoxDS_CONCEPTO_NOME: TDBLookupComboBox
          Left = 426
          Top = 66
          Width = 295
          Height = 21
          DataField = 'CtoNomE'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaNominas.SConceptos
          ParentFont = False
          TabOrder = 6
        end
        object ComboCD_SUBCUENTA_SSEMPRESA: TDBLookupComboBox
          Left = 10
          Top = 28
          Width = 96
          Height = 22
          DataField = 'SCTANOMCARGO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleCargaRapidaNominas.SSubCTAAmortGastos
          ParentFont = False
          TabOrder = 0
        end
        object ComboDS_SUBCUENTA_SSEMPRESA: TDBLookupComboBox
          Left = 105
          Top = 28
          Width = 254
          Height = 22
          DataField = 'SCTANOMCARGO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaNominas.SSubCTAAmortGastos
          ParentFont = False
          TabOrder = 1
        end
        object ComboCS_SUBCUENTA_SSSEMPRESA: TDBLookupComboBox
          Left = 10
          Top = 66
          Width = 96
          Height = 22
          DataField = 'SCTANOMSSE'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleCargaRapidaNominas.SSubcuentas
          ParentFont = False
          TabOrder = 3
        end
        object ComboDS_SUBCUENTA_SSSEMPRESA: TDBLookupComboBox
          Left = 105
          Top = 66
          Width = 254
          Height = 22
          DataField = 'SCTANOMSSE'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaNominas.SSubcuentas
          ParentFont = False
          TabOrder = 4
        end
        object EditEMPRESA: TDBEdit
          Left = 372
          Top = 28
          Width = 102
          Height = 20
          AutoSize = False
          DataField = 'IMPEMPRESA'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ComboBoxCD_CONCEPTO_NOME: TDBLookupComboBox
          Left = 372
          Top = 66
          Width = 55
          Height = 21
          DataField = 'CtoNomE'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DataModuleCargaRapidaNominas.SConceptos
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 202
        Width = 784
        Height = 135
        Align = alBottom
        Caption = ' AsientoTrabajador '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 207
        ExplicitWidth = 792
        object Label37: TLabel
          Left = 10
          Top = 16
          Width = 182
          Height = 14
          Caption = 'Subcuenta de Sueldos y salarios '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 10
          Top = 54
          Width = 140
          Height = 14
          Caption = 'Subcuenta de Seg. Social '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 372
          Top = 54
          Width = 166
          Height = 14
          Caption = 'Subcuenta de Hacienda I.R.P.F. '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 10
          Top = 93
          Width = 119
          Height = 14
          Caption = 'Concepto de Asiento '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 372
          Top = 16
          Width = 202
          Height = 14
          Caption = 'Subcuenta de otras remuneraciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ComboCD_SUBCUENTA_SALARIOS: TDBLookupComboBox
          Left = 10
          Top = 29
          Width = 96
          Height = 22
          DataField = 'SCTANOMSUELDO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleCargaRapidaNominas.SSubCTAAmortGastos
          ParentFont = False
          TabOrder = 0
        end
        object ComboDS_SUBCUENTA_SALARIOS: TDBLookupComboBox
          Left = 105
          Top = 29
          Width = 254
          Height = 22
          DataField = 'SCTANOMSUELDO'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaNominas.SSubCTAAmortGastos
          ParentFont = False
          TabOrder = 1
        end
        object ComboCD_SUBCUENTA_SS: TDBLookupComboBox
          Left = 10
          Top = 67
          Width = 96
          Height = 22
          DataField = 'SCTANOMSST'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleCargaRapidaNominas.SSubcuentas
          ParentFont = False
          TabOrder = 4
        end
        object ComboDS_SUBCUENTA_SS: TDBLookupComboBox
          Left = 105
          Top = 67
          Width = 254
          Height = 22
          DataField = 'SCTANOMSST'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaNominas.SSubcuentas
          ParentFont = False
          TabOrder = 5
        end
        object ComboCD_SUBCUENTA_IRPF: TDBLookupComboBox
          Left = 372
          Top = 67
          Width = 96
          Height = 22
          DataField = 'SCTANOMIRPF'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleCargaRapidaNominas.SSubcuentas
          ParentFont = False
          TabOrder = 6
        end
        object ComboDS_SUBCUENTA_IRPF: TDBLookupComboBox
          Left = 467
          Top = 67
          Width = 254
          Height = 22
          DataField = 'SCTANOMIRPF'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaNominas.SSubcuentas
          ParentFont = False
          TabOrder = 7
        end
        object ComboBoxCD_CONCEPTO: TDBLookupComboBox
          Left = 10
          Top = 106
          Width = 55
          Height = 21
          DataField = 'CTONOMT'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DataModuleCargaRapidaNominas.SConceptos
          ParentFont = False
          TabOrder = 8
        end
        object ComboBoxDS_CONCEPTO: TDBLookupComboBox
          Left = 64
          Top = 106
          Width = 295
          Height = 21
          DataField = 'CTONOMT'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaNominas.SConceptos
          ParentFont = False
          TabOrder = 9
        end
        object ComboCD_SUBCUENTA_OTRAS: TDBLookupComboBox
          Left = 372
          Top = 29
          Width = 96
          Height = 22
          DataField = 'SCTAOTRAS'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleCargaRapidaNominas.SSubCTAAmortGastos
          ParentFont = False
          TabOrder = 2
        end
        object ComboDS_SUBCUENTA_OTRAS: TDBLookupComboBox
          Left = 467
          Top = 29
          Width = 254
          Height = 22
          DataField = 'SCTAOTRAS'
          DataSource = SFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleCargaRapidaNominas.SSubCTAAmortGastos
          ParentFont = False
          TabOrder = 3
        end
      end
      object Datos: TGroupBox
        Left = 0
        Top = 0
        Width = 784
        Height = 202
        Align = alClient
        Color = 14275008
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        ExplicitWidth = 792
        ExplicitHeight = 207
        object Panel3: TPanel
          Left = 664
          Top = 58
          Width = 118
          Height = 142
          Align = alRight
          Color = 14275008
          TabOrder = 0
          ExplicitLeft = 672
          ExplicitHeight = 147
          object BtnReset: TButton
            Left = 10
            Top = 113
            Width = 95
            Height = 22
            Hint = 'Inicializar'
            Caption = 'Reiniciar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BtnEdtRestablecerClick
          end
          object BtnDelete: TButton
            Left = 10
            Top = 79
            Width = 95
            Height = 22
            Hint = 'Borrar'
            Caption = 'Eliminar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BtnEdtBorrarEmpleadoClick
          end
          object BtnNew: TButton
            Left = 10
            Top = 14
            Width = 95
            Height = 22
            Hint = 'A'#241'adir'
            Caption = 'A'#241'adir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BtnEdtAniadirClick
          end
          object BtnModify: TButton
            Left = 10
            Top = 38
            Width = 95
            Height = 22
            Hint = 'A'#241'adir'
            Caption = 'Modificar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = BtnModifyClick
          end
        end
        object Panel4: TPanel
          Left = 2
          Top = 15
          Width = 780
          Height = 43
          Align = alTop
          Color = 14275008
          TabOrder = 1
          ExplicitWidth = 788
          object Label2: TLabel
            Left = 120
            Top = 3
            Width = 66
            Height = 13
            Caption = 'Comentario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 9
            Top = 3
            Width = 33
            Height = 13
            Caption = 'Fecha'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 378
            Top = 3
            Width = 92
            Height = 13
            Caption = 'Cuenta Anal'#237'tica'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object EditFECHA: TDBEdit
            Left = 9
            Top = 17
            Width = 89
            Height = 20
            AutoSize = False
            DataField = 'FECHA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object EditCOMENTARIO: TDBEdit
            Left = 120
            Top = 17
            Width = 240
            Height = 20
            AutoSize = False
            DataField = 'COMENTARIO'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object ComboBoxCD_ANALITICA: TDBLookupComboBox
            Left = 378
            Top = 16
            Width = 100
            Height = 21
            DataField = 'CUENTA_ANALITICA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'CUENTA'
            ListField = 'CUENTA'
            ListSource = DataModuleCargaRapidaNominas.SAnaliticas
            ParentFont = False
            TabOrder = 2
          end
          object ComboBoxDS_ANALITICA: TDBLookupComboBox
            Left = 478
            Top = 16
            Width = 245
            Height = 21
            DataField = 'CUENTA_ANALITICA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'CUENTA'
            ListField = 'NOMBRE'
            ListSource = DataModuleCargaRapidaNominas.SAnaliticas
            ParentFont = False
            TabOrder = 3
          end
        end
        object DBGridEmpleados: TDBGrid
          Left = 2
          Top = 58
          Width = 662
          Height = 142
          Align = alClient
          Color = 15596540
          DataSource = SEmpleados
          FixedColor = 10841401
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'SUBCUENTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIPCION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMINA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IRPF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SSOCIAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'N'
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
      object Panel5: TPanel
        Left = 0
        Top = 395
        Width = 792
        Height = 39
        Align = alBottom
        Color = 14275008
        TabOrder = 0
        object Label1: TLabel
          Left = 288
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
          Left = 362
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
        Width = 792
        Height = 395
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
    Left = 306
    Top = 8
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 266
    Top = 8
    object QFicheroSCTANOMSUELDO: TStringField
      FieldName = 'SCTANOMSUELDO'
      Size = 10
    end
    object QFicheroSCTAOTRAS: TStringField
      FieldName = 'SCTAOTRAS'
      Size = 10
    end
    object QFicheroSCTANOMSST: TStringField
      FieldName = 'SCTANOMSST'
      Size = 10
    end
    object QFicheroSCTANOMIRPF: TStringField
      FieldName = 'SCTANOMIRPF'
      Size = 10
    end
    object QFicheroCTONOMT: TStringField
      FieldName = 'CTONOMT'
      Size = 3
    end
    object QFicheroSCTANOMCARGO: TStringField
      FieldName = 'SCTANOMCARGO'
      Size = 10
    end
    object QFicheroSCTANOMSSE: TStringField
      FieldName = 'SCTANOMSSE'
      Size = 10
    end
    object QFicheroCTONOME: TStringField
      FieldName = 'CTONOME'
      Size = 3
    end
    object QFicheroIMPEMPRESA: TFloatField
      FieldName = 'IMPEMPRESA'
    end
    object QFicheroFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QFicheroCUENTA_ANALITICA: TStringField
      FieldName = 'CUENTA_ANALITICA'
      Size = 10
    end
    object QFicheroCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 40
    end
  end
  object Transaccion: TIBTransaction
    Left = 387
    Top = 5
  end
  object SMovimientos: TDataSource
    AutoEdit = False
    DataSet = QMovimientos
    Left = 515
    Top = 5
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
    Left = 459
    Top = 5
    object QMovimientosASIENTO: TIntegerField
      DisplayWidth = 8
      FieldName = 'ASIENTO'
      Origin = 'DIARIO.ASIENTO'
      DisplayFormat = '###,###,###'
    end
    object QMovimientosAPUNTE: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'APTE'
      DisplayWidth = 5
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
      DisplayWidth = 47
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
      DisplayWidth = 11
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
      DisplayWidth = 10
      FieldName = 'ABREVIATURA'
      Origin = 'SUBCTAS.ABREVIATURA'
      Visible = False
      Size = 10
    end
    object QMovimientosEJERCICIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'EJERCICIO'
      Origin = 'DIARIO.EJERCICIO'
    end
    object QMovimientosSERIE: TIBStringField
      DisplayWidth = 5
      FieldName = 'SERIE'
      Origin = 'DIARIO.SERIE'
      Size = 5
    end
  end
  object SEmpleados: TDataSource
    DataSet = QEmpleados
    Left = 714
    Top = 6
  end
  object QEmpleados: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = QEmpleadosCalcFields
    Left = 640
    Top = 6
    object QEmpleadosSUBCUENTA: TStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QEmpleadosDESCRIPCION: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'DESCRIPCION'
      LookupDataSet = DMContaRef.QSubCTANominas
      LookupKeyFields = 'SUBCUENTA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'SUBCUENTA'
      Size = 80
      Lookup = True
    end
    object QEmpleadosNOMINA: TFloatField
      DisplayLabel = 'IMP. N'#211'MINA'
      DisplayWidth = 10
      FieldName = 'NOMINA'
    end
    object QEmpleadosIRPF: TFloatField
      DisplayWidth = 10
      FieldName = 'IRPF'
    end
    object QEmpleadosSSOCIAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SSOCIAL'
    end
    object QEmpleadosNETO: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'NETO'
      Calculated = True
    end
    object QEmpleadosN: TStringField
      DisplayLabel = 'N'#211'MINA'
      DisplayWidth = 7
      FieldName = 'N'
      Size = 1
    end
  end
end
