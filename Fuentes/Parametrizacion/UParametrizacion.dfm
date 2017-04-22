object WParametrizacion: TWParametrizacion
  Left = 555
  Top = 270
  BorderStyle = bsSingle
  Caption = 'Parametrizaci'#243'n'
  ClientHeight = 504
  ClientWidth = 769
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 36
    Align = alTop
    Color = 14275008
    TabOrder = 0
    object Label2: TLabel
      Left = 7
      Top = 6
      Width = 134
      Height = 19
      Caption = 'Parametrizaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 7
      Top = 27
      Width = 720
      Height = 1
      Pen.Color = clNavy
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 463
    Width = 769
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 1
    DesignSize = (
      769
      41)
    object BtnEdtAceptar: TButton
      Left = 649
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
      TabOrder = 0
      OnClick = BtnEdtAceptarClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 36
    Width = 769
    Height = 427
    ActivePage = TabSheetCierreEjercicio
    Align = alClient
    TabOrder = 2
    object TabSheetGeneral: TTabSheet
      Caption = 'General'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GBFiscales: TGroupBox
        Left = 0
        Top = 0
        Width = 761
        Height = 399
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object LabelNif: TLabel
          Left = 451
          Top = 14
          Width = 24
          Height = 14
          Caption = 'N.I.F.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelDireccion: TLabel
          Left = 74
          Top = 52
          Width = 133
          Height = 14
          Caption = 'Nombre de la v'#237'a p'#250'blica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelPostal: TLabel
          Left = 18
          Top = 88
          Width = 48
          Height = 14
          Caption = 'C. Postal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelPoblacion: TLabel
          Left = 111
          Top = 88
          Width = 53
          Height = 14
          Caption = 'Poblaci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelProvincia: TLabel
          Left = 451
          Top = 88
          Width = 50
          Height = 14
          Caption = 'Provincia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 451
          Top = 127
          Width = 48
          Height = 14
          Caption = 'Tel'#233'fono'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 610
          Top = 127
          Width = 18
          Height = 14
          Caption = 'Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 18
          Top = 127
          Width = 115
          Height = 14
          Caption = 'Persona de Contacto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 18
          Top = 14
          Width = 412
          Height = 14
          Caption = 
            'Nombre Fiscal (Si es Persona Fisica,  (Apellidos, Nombre) coma o' +
            'bligatoria)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label60: TLabel
          Left = 547
          Top = 167
          Width = 82
          Height = 14
          AutoSize = False
          Caption = 'Asiento actual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object lLongSubcuentas: TLabel
          Left = 451
          Top = 167
          Width = 78
          Height = 14
          Caption = 'Long. Subctas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 656
          Top = 14
          Width = 44
          Height = 14
          Caption = 'Moneda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label74: TLabel
          Left = 18
          Top = 167
          Width = 123
          Height = 14
          Caption = 'Cod. Admon. Hacienda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label84: TLabel
          Left = 171
          Top = 167
          Width = 233
          Height = 14
          Caption = 'C.C.C. para Hacienda, formato con guiones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label85: TLabel
          Left = 18
          Top = 52
          Width = 46
          Height = 14
          Caption = 'Sigla V'#237'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label86: TLabel
          Left = 451
          Top = 52
          Width = 44
          Height = 14
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label87: TLabel
          Left = 502
          Top = 52
          Width = 46
          Height = 14
          Caption = 'Escalera'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label88: TLabel
          Left = 560
          Top = 52
          Width = 24
          Height = 14
          Caption = 'Piso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label90: TLabel
          Left = 610
          Top = 52
          Width = 36
          Height = 14
          Caption = 'Puerta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 572
          Top = 14
          Width = 76
          Height = 14
          Caption = 'Tipo Empresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 641
          Top = 167
          Width = 96
          Height = 14
          Caption = 'Filtro Subcuentas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object eNombreFiscal: TDBEdit
          Left = 18
          Top = 27
          Width = 417
          Height = 20
          AutoSize = False
          DataField = 'NOMBREFISCAL'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object CampoNif: TDBEdit
          Left = 451
          Top = 27
          Width = 109
          Height = 20
          AutoSize = False
          DataField = 'NIF'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object CampoDireccion: TDBEdit
          Left = 74
          Top = 65
          Width = 361
          Height = 20
          AutoSize = False
          DataField = 'DIRECCION'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object CampoCodPostal: TDBEdit
          Left = 18
          Top = 101
          Width = 85
          Height = 20
          AutoSize = False
          DataField = 'CODPOSTAL'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object CampoPoblacion: TDBEdit
          Left = 111
          Top = 101
          Width = 324
          Height = 20
          AutoSize = False
          DataField = 'POBLACION'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
        object DBLookupComboProvincia: TDBLookupComboBox
          Left = 451
          Top = 101
          Width = 272
          Height = 22
          DataField = 'PROVINCIA'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object OvcDbPictureField2: TDBEdit
          Left = 451
          Top = 140
          Width = 130
          Height = 20
          AutoSize = False
          DataField = 'TELEFONO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object OvcDbPictureField3: TDBEdit
          Left = 18
          Top = 140
          Width = 417
          Height = 20
          AutoSize = False
          DataField = 'CONTACTO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object OvcDbPictureField6: TDBEdit
          Left = 610
          Top = 140
          Width = 113
          Height = 20
          AutoSize = False
          DataField = 'FAX'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object eAsiento: TDBEdit
          Left = 547
          Top = 181
          Width = 82
          Height = 20
          AutoSize = False
          DataField = 'Asiento'
          DataSource = DSFiltro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object DBCheckBox3: TDBCheckBox
          Left = 18
          Top = 277
          Width = 209
          Height = 17
          Caption = 'Asiento recargo individualizado'
          DataField = 'RECARGO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object eLongSubcuenta: TDBEdit
          Left = 473
          Top = 181
          Width = 35
          Height = 20
          AutoSize = False
          DataField = 'LONGITUD_SUBCUENTAS'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
        end
        object eMoneda: TDBComboBox
          Left = 656
          Top = 27
          Width = 67
          Height = 21
          Style = csDropDownList
          DataField = 'MONEDA'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'PESETA'#9'P'
            'EURO'#9'E')
          ParentFont = False
          TabOrder = 3
        end
        object GroupBox2: TGroupBox
          Left = 18
          Top = 206
          Width = 417
          Height = 59
          Caption = ' Fecha de '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          object Label48: TLabel
            Left = 13
            Top = 16
            Width = 78
            Height = 14
            Caption = 'Inicio Ejercicio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label49: TLabel
            Left = 113
            Top = 16
            Width = 65
            Height = 14
            Caption = 'Fin Ejercicio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label46: TLabel
            Left = 203
            Top = 16
            Width = 93
            Height = 14
            Caption = 'Ult. Amortizaci'#243'n'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 316
            Top = 16
            Width = 79
            Height = 14
            Caption = 'Bloqueo Diario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object eFechaInicioEjer: TDBEdit
            Left = 11
            Top = 30
            Width = 89
            Height = 20
            AutoSize = False
            DataField = 'FECHA_INICIO_EJERCICIO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object eFechaFinEjer: TDBEdit
            Left = 107
            Top = 30
            Width = 89
            Height = 20
            AutoSize = False
            DataField = 'FECHA_FIN_EJERCICIO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object eFechaInicio: TDBEdit
            Left = 203
            Top = 30
            Width = 98
            Height = 20
            AutoSize = False
            DataField = 'FECHAAMORTIZACION'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBDateTimePicker1: TDBEdit
            Left = 307
            Top = 30
            Width = 98
            Height = 20
            AutoSize = False
            DataField = 'FECHABLOQUEO'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
        object OvcDbPictureField1: TDBEdit
          Left = 18
          Top = 65
          Width = 45
          Height = 20
          AutoSize = False
          DataField = 'SIGLAVIA'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object OvcDbPictureField4: TDBEdit
          Left = 451
          Top = 65
          Width = 45
          Height = 20
          AutoSize = False
          DataField = 'NUMEROCALLE'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object OvcDbPictureField9: TDBEdit
          Left = 502
          Top = 65
          Width = 45
          Height = 20
          AutoSize = False
          DataField = 'ESCALERA'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object OvcDbPictureField10: TDBEdit
          Left = 559
          Top = 65
          Width = 27
          Height = 20
          AutoSize = False
          DataField = 'PISO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object OvcDbPictureField11: TDBEdit
          Left = 610
          Top = 65
          Width = 37
          Height = 20
          AutoSize = False
          DataField = 'PUERTA'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object OvcDbPictureField12: TDBEdit
          Left = 39
          Top = 181
          Width = 63
          Height = 20
          AutoSize = False
          DataField = 'CODADMON'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
        object OvcDbPictureField13: TDBEdit
          Left = 171
          Top = 181
          Width = 264
          Height = 20
          AutoSize = False
          DataField = 'CCC'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object DBCheckBox1: TDBCheckBox
          Left = 18
          Top = 329
          Width = 224
          Height = 17
          Caption = 'Solicitar clave de acceso a SiamCont'
          DataField = 'PEDIR_CLAVE'
          DataSource = DSControl
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 18
          Top = 312
          Width = 209
          Height = 17
          Caption = 'Gestiona cartera de efectos'
          DataField = 'GESTIONA_CARTERA_EFECTOS'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox5: TDBCheckBox
          Left = 18
          Top = 347
          Width = 263
          Height = 17
          Caption = 'Incluir abrev. subcta en descripci'#243'n apunte'
          DataField = 'INCLUIR_ABREV'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GroupBox16: TGroupBox
          Left = 451
          Top = 206
          Width = 287
          Height = 163
          Caption = ' Intervalos Asientos '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
          object Label76: TLabel
            Left = 167
            Top = 20
            Width = 29
            Height = 14
            Caption = 'Inicio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label80: TLabel
            Left = 239
            Top = 20
            Width = 16
            Height = 14
            Caption = 'Fin'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label91: TLabel
            Left = 15
            Top = 37
            Width = 101
            Height = 14
            Caption = 'B'#250'squeda Asiento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label92: TLabel
            Left = 15
            Top = 66
            Width = 74
            Height = 14
            Caption = 'Filtro Asiento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object eAsientosInicio: TDBEdit
            Left = 158
            Top = 34
            Width = 47
            Height = 20
            AutoSize = False
            DataField = 'ASIENTOS_INICIO_INTERVALO_BQDA'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object eAsientosFin: TDBEdit
            Left = 224
            Top = 34
            Width = 47
            Height = 20
            AutoSize = False
            DataField = 'ASIENTOS_FIN_INTERVALO_BQDA'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object OvcDbNumericField3: TDBEdit
            Left = 158
            Top = 63
            Width = 47
            Height = 20
            AutoSize = False
            DataField = 'ASIENTO_INICIO_INTERVALO_FILTRO'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object OvcDbNumericField4: TDBEdit
            Left = 224
            Top = 63
            Width = 47
            Height = 20
            AutoSize = False
            DataField = 'ASIENTO_FIN_INTERVALO_FILTRO'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBCheckBox4: TDBCheckBox
            Left = 15
            Top = 125
            Width = 209
            Height = 19
            Caption = 'Filtro asientos al inicio de ejercicio'
            DataField = 'FILTRO_ASIENTOS_INICIO'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 15
            Top = 96
            Width = 209
            Height = 17
            Caption = 'Mostrar filtro de mayor'
            DataField = 'MOSTRAR_FILTRO_MAYOR'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 312
          Top = 274
          Width = 123
          Height = 95
          Caption = ' B'#250'squeda Subctas '
          DataField = 'BUSQUEDA_SUBCTAS'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Items.Strings = (
            'Por Subcuenta'
            'Por Descripci'#243'n')
          ParentFont = False
          TabOrder = 28
          Values.Strings = (
            'S'
            'D')
        end
        object eTipoEmpresa: TDBComboBox
          Left = 572
          Top = 27
          Width = 76
          Height = 21
          Style = csDropDownList
          DataField = 'TIPOEMPRESA'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'F'#205'SICA'#9'F'
            'JUR'#205'DICA'#9'J')
          ParentFont = False
          TabOrder = 2
        end
        object eFiltroSubctas: TDBEdit
          Left = 656
          Top = 181
          Width = 67
          Height = 21
          DataField = 'FILTROSUBCTAS'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 20
        end
        object DBCheckBox8: TDBCheckBox
          Left = 18
          Top = 294
          Width = 255
          Height = 17
          Caption = 'No modifica comentario en carga asientos'
          DataField = 'ACTCOMENTARIO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox9: TDBCheckBox
          Left = 18
          Top = 365
          Width = 209
          Height = 17
          Caption = 'Serie y ejercicio en facturas'
          DataField = 'TRATASERIE'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object TabSheetNominas: TTabSheet
      Caption = 'N'#243'minas'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 761
        Height = 205
        Align = alTop
        Caption = ' Asiento Trabajador'
        TabOrder = 0
        object Label37: TLabel
          Left = 19
          Top = 26
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
          Left = 19
          Top = 76
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
          Left = 387
          Top = 76
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
        object Label40: TLabel
          Left = 19
          Top = 125
          Width = 176
          Height = 14
          Caption = 'Subcuenta de Pago de N'#243'minas '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label41: TLabel
          Left = 387
          Top = 125
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
        object DBText22: TDBText
          Left = 668
          Top = 125
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'CTONOMT'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label100: TLabel
          Left = 387
          Top = 26
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
        object CBSUBCUENTA18: TDBLookupComboBox
          Left = 19
          Top = 40
          Width = 96
          Height = 22
          DataField = 'SCTANOMSUELDO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 0
        end
        object DBLookupCombo19: TDBLookupComboBox
          Left = 114
          Top = 40
          Width = 252
          Height = 22
          DataField = 'SCTANOMSUELDO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 1
        end
        object CBSUBCUENTA19: TDBLookupComboBox
          Left = 19
          Top = 90
          Width = 96
          Height = 22
          DataField = 'SCTANOMSST'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 4
        end
        object DBLookupCombo49: TDBLookupComboBox
          Left = 114
          Top = 90
          Width = 252
          Height = 22
          DataField = 'SCTANOMSST'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 5
        end
        object CBSUBCUENTA20: TDBLookupComboBox
          Left = 387
          Top = 90
          Width = 96
          Height = 22
          DataField = 'SCTANOMIRPF'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 6
        end
        object DBLookupCombo51: TDBLookupComboBox
          Left = 481
          Top = 90
          Width = 252
          Height = 22
          DataField = 'SCTANOMIRPF'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 7
        end
        object CBSUBCUENTA21: TDBLookupComboBox
          Left = 19
          Top = 139
          Width = 96
          Height = 22
          DataField = 'SCTANOMPAGO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 8
        end
        object DBLookupCombo53: TDBLookupComboBox
          Left = 114
          Top = 139
          Width = 252
          Height = 22
          DataField = 'SCTANOMPAGO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 9
        end
        object DBLookupCombo55: TDBLookupComboBox
          Left = 387
          Top = 139
          Width = 346
          Height = 22
          DataField = 'CTONOMT'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SConceptos
          ParentFont = False
          TabOrder = 10
        end
        object DBCheckBox7: TDBCheckBox
          Left = 19
          Top = 174
          Width = 193
          Height = 17
          Caption = 'Asiento n'#243'mina individualizado'
          DataField = 'ASIENTO_NOMINA_INDIVIDUAL'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object CBSUBCUENTA39: TDBLookupComboBox
          Left = 387
          Top = 40
          Width = 96
          Height = 22
          DataField = 'SCTAOTRASREMUN'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 2
        end
        object DBLookupCombo35: TDBLookupComboBox
          Left = 481
          Top = 40
          Width = 252
          Height = 22
          DataField = 'SCTAOTRASREMUN'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 205
        Width = 761
        Height = 194
        Align = alClient
        Caption = ' Asiento Empresa '
        TabOrder = 1
        object Label43: TLabel
          Left = 123
          Top = 21
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
          Left = 123
          Top = 66
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
          Left = 123
          Top = 113
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
        object DBText23: TDBText
          Left = 403
          Top = 113
          Width = 65
          Height = 14
          Alignment = taRightJustify
          DataField = 'CTONOME'
          DataSource = DSFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CBSUBCUENTA22: TDBLookupComboBox
          Left = 122
          Top = 35
          Width = 96
          Height = 22
          DataField = 'SCTANOMCARGO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 0
        end
        object DBLookupCombo57: TDBLookupComboBox
          Left = 218
          Top = 35
          Width = 252
          Height = 22
          DataField = 'SCTANOMCARGO'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 1
        end
        object CBSUBCUENTA23: TDBLookupComboBox
          Left = 122
          Top = 80
          Width = 96
          Height = 22
          DataField = 'SCTANOMSSE'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 2
        end
        object DBLookupCombo59: TDBLookupComboBox
          Left = 218
          Top = 80
          Width = 252
          Height = 22
          DataField = 'SCTANOMSSE'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 3
        end
        object DBLookupCombo61: TDBLookupComboBox
          Left = 122
          Top = 126
          Width = 348
          Height = 22
          DataField = 'CTONOME'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SConceptos
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object TabSheetCierreEjercicio: TTabSheet
      Caption = 'Cierre Ejercicio'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox12: TGroupBox
        Left = 8
        Top = 8
        Width = 609
        Height = 208
        Caption = ' DATOS PARA CIERRE DE EJERCICIO '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label62: TLabel
          Left = 139
          Top = 147
          Width = 113
          Height = 14
          Caption = 'Subcuenta de Cierre'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox14: TGroupBox
          Left = 9
          Top = 20
          Width = 289
          Height = 113
          Caption = ' Asiento Regularizaci'#243'n '
          TabOrder = 0
          object Label63: TLabel
            Left = 9
            Top = 19
            Width = 176
            Height = 14
            Caption = 'Concepto regularizaci'#243'n Normal'
          end
          object Label77: TLabel
            Left = 9
            Top = 59
            Width = 182
            Height = 14
            Caption = 'Concepto regularizaci'#243'n Especial'
          end
          object DBText29: TDBText
            Left = 201
            Top = 19
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTO_REGULARIZACION'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText30: TDBText
            Left = 201
            Top = 59
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTO_REGULARIZACION_ESP'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBLookupCombo16: TDBLookupComboBox
            Left = 9
            Top = 32
            Width = 257
            Height = 22
            DataField = 'CTO_REGULARIZACION'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleParametrizacion.SConceptos
            ParentFont = False
            TabOrder = 0
          end
          object DBLookupCombo18: TDBLookupComboBox
            Left = 9
            Top = 72
            Width = 257
            Height = 22
            DataField = 'CTO_REGULARIZACION_ESP'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleParametrizacion.SConceptos
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox15: TGroupBox
          Left = 312
          Top = 20
          Width = 289
          Height = 113
          Caption = ' Asiento Apertura '
          TabOrder = 1
          object Label78: TLabel
            Left = 11
            Top = 17
            Width = 145
            Height = 14
            Caption = 'Concepto apertura Normal'
          end
          object Label79: TLabel
            Left = 11
            Top = 60
            Width = 151
            Height = 14
            Caption = 'Concepto apertura Especial'
          end
          object DBText31: TDBText
            Left = 203
            Top = 60
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTO_APERTURA_ESP'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText32: TDBText
            Left = 203
            Top = 17
            Width = 65
            Height = 14
            Alignment = taRightJustify
            DataField = 'CTO_APERTURA'
            DataSource = DSFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBLookupCombo62: TDBLookupComboBox
            Left = 11
            Top = 30
            Width = 257
            Height = 22
            DataField = 'CTO_APERTURA'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleParametrizacion.SConceptos
            ParentFont = False
            TabOrder = 0
          end
          object DBLookupCombo64: TDBLookupComboBox
            Left = 11
            Top = 73
            Width = 257
            Height = 22
            DataField = 'CTO_APERTURA_ESP'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyField = 'ID_CONCEPTOS'
            ListField = 'DESCRIPCION'
            ListSource = DataModuleParametrizacion.SConceptos
            ParentFont = False
            TabOrder = 1
          end
        end
        object CBSUBCUENTA29: TDBLookupComboBox
          Left = 139
          Top = 161
          Width = 96
          Height = 22
          DataField = 'SUBCUENTA_CIERRE'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 2
        end
        object DBLookupCombo17: TDBLookupComboBox
          Left = 235
          Top = 161
          Width = 284
          Height = 22
          DataField = 'SUBCUENTA_CIERRE'
          DataSource = DSFichero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DataModuleParametrizacion.SSubcuentas
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object TabSheetDocumentos: TTabSheet
      Caption = 'Documentos'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox3: TGroupBox
        Left = 10
        Top = 17
        Width = 688
        Height = 176
        Caption = ' ENLACE CON WORD (97 - 2003) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object GroupBox11: TGroupBox
          Left = 9
          Top = 16
          Width = 664
          Height = 104
          Caption = ' NOMBRES DE CARTAS MODELO '
          TabOrder = 0
          object Label17: TLabel
            Left = 12
            Top = 22
            Width = 128
            Height = 14
            Caption = 'Reclamaci'#243'n a clientes '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 12
            Top = 49
            Width = 121
            Height = 14
            Caption = 'Pagos a Proveedores '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 12
            Top = 76
            Width = 173
            Height = 14
            Caption = 'Operaciones con terceros (347)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object PermSPClientes: TSpeedButton
            Left = 631
            Top = 19
            Width = 25
            Height = 20
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555555555555555555555555555555555555555555555555555555555555
              555555555555555555555555555555555555555FFFFFFFFFF555550000000000
              55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
              B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
              000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
              555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
              55555575FFF75555555555700007555555555557777555555555555555555555
              5555555555555555555555555555555555555555555555555555}
            Layout = blGlyphRight
            NumGlyphs = 2
            OnClick = PermSPClientesClick
          end
          object PermSPProveedor: TSpeedButton
            Left = 631
            Top = 46
            Width = 25
            Height = 20
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555555555555555555555555555555555555555555555555555555555555
              555555555555555555555555555555555555555FFFFFFFFFF555550000000000
              55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
              B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
              000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
              555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
              55555575FFF75555555555700007555555555557777555555555555555555555
              5555555555555555555555555555555555555555555555555555}
            Layout = blGlyphRight
            NumGlyphs = 2
            OnClick = PermSPProveedorClick
          end
          object PermSP347: TSpeedButton
            Left = 631
            Top = 73
            Width = 25
            Height = 20
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              5555555555555555555555555555555555555555555555555555555555555555
              555555555555555555555555555555555555555FFFFFFFFFF555550000000000
              55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
              B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
              000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
              555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
              55555575FFF75555555555700007555555555557777555555555555555555555
              5555555555555555555555555555555555555555555555555555}
            Layout = blGlyphRight
            NumGlyphs = 2
            OnClick = PermSP347Click
          end
          object OvcDbPictureField5: TDBEdit
            Left = 192
            Top = 19
            Width = 442
            Height = 20
            AutoSize = False
            DataField = 'DOCCLIENTE'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object OvcDbPictureField7: TDBEdit
            Left = 192
            Top = 46
            Width = 442
            Height = 20
            AutoSize = False
            DataField = 'DOCPROVEEDOR'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object OvcDbPictureField8: TDBEdit
            Left = 192
            Top = 73
            Width = 442
            Height = 20
            AutoSize = False
            DataField = 'DOC347'
            DataSource = DSFichero
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
        object CBImprimir: TDBCheckBox
          Left = 202
          Top = 122
          Width = 281
          Height = 17
          Caption = 'Previsualizar documento antes de imprimir ?'
          DataField = 'DOCIMPRIMIR'
          DataSource = DSFichero
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
  end
  object DSFichero: TDataSource
    AutoEdit = False
    DataSet = DMRef.QParametros
    Left = 481
    Top = 5
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 370
    Top = 8
    object CDSFiltroASIENTO: TIntegerField
      FieldName = 'ASIENTO'
    end
    object CDSFiltroASIENTO_OLD: TIntegerField
      FieldName = 'ASIENTO_OLD'
    end
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 426
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'doc'
    Filter = 'Ficheros DOC (*.doc)|*.doc|Todos              (*.*)|*.*'
    Left = 686
    Top = 4
  end
  object DSControl: TDataSource
    AutoEdit = False
    DataSet = DMControlRef.QControl
    Left = 546
    Top = 5
  end
end
