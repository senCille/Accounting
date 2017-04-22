object WIva300: TWIva300
  Left = 886
  Top = 251
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 550
  ClientWidth = 789
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Datos: TGroupBox
    Left = 0
    Top = 34
    Width = 789
    Height = 475
    Align = alClient
    Caption = ' Datos '
    Color = 14275008
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 797
    ExplicitHeight = 480
    object Label1: TLabel
      Left = 180
      Top = 14
      Width = 47
      Height = 13
      Caption = 'Ejercicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 233
      Top = 14
      Width = 43
      Height = 13
      Caption = 'Periodo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 641
      Top = 421
      Width = 57
      Height = 13
      Caption = 'Resultado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 49
      Top = 437
      Width = 156
      Height = 13
      Caption = 'Entregas Intracomunitarias'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label84: TLabel
      Left = 14
      Top = 59
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
    object Label27: TLabel
      Left = 420
      Top = 421
      Width = 167
      Height = 13
      Caption = 'Cuotas a compensar per'#237'odos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBoxFormaPago: TRadioGroup
      Left = 16
      Top = 14
      Width = 145
      Height = 41
      Caption = ' Forma de pago '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Cuenta'
        'Efectivo')
      ParentFont = False
      TabOrder = 0
    end
    object EditEJERCICIO: TDBEdit
      Left = 182
      Top = 28
      Width = 43
      Height = 20
      AutoSize = False
      DataField = 'ejercicio'
      DataSource = SIVA300
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditPERIODO: TDBEdit
      Left = 237
      Top = 28
      Width = 27
      Height = 20
      AutoSize = False
      DataField = 'periodo'
      DataSource = SIVA300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EditRESULTADO: TDBEdit
      Left = 614
      Top = 433
      Width = 113
      Height = 21
      TabStop = False
      AutoSize = False
      DataField = 'Resultado'
      DataSource = SIVA300
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object EditLIQUIDACION_32: TDBEdit
      Left = 217
      Top = 433
      Width = 116
      Height = 21
      AutoSize = False
      DataField = 'Liquidacion32'
      DataSource = SIVA300
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnExit = CalcularResultado
    end
    object CheckBoxCopiaDeclarante: TCheckBox
      Left = 287
      Top = 37
      Width = 151
      Height = 17
      TabStop = False
      Caption = 'Copia Declarante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object CheckBoxTrimestral: TCheckBox
      Left = 287
      Top = 19
      Width = 175
      Height = 17
      TabStop = False
      Caption = 'Generar Asiento Trimestral'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = CheckBoxTrimestralClick
    end
    object EditCCC: TDBEdit
      Left = 254
      Top = 57
      Width = 259
      Height = 20
      AutoSize = False
      DataField = 'CCC'
      DataSource = SIVA300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EditLIQUIDACION_31: TDBEdit
      Left = 438
      Top = 433
      Width = 116
      Height = 21
      AutoSize = False
      DataField = 'Liquidacion31'
      DataSource = SIVA300
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnExit = CalcularResultado
    end
    object PageControl1: TPageControl
      Left = 16
      Top = 80
      Width = 753
      Height = 329
      ActivePage = TabSheetIVADeventado
      TabOrder = 9
      object TabSheetIVADeventado: TTabSheet
        Caption = 'IVA Devengado'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 745
          Height = 300
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label3: TLabel
            Left = 103
            Top = 55
            Width = 97
            Height = 13
            Caption = 'R'#233'gimen General'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 80
            Top = 150
            Width = 120
            Height = 13
            Caption = 'Recargo Equivalencia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 17
            Top = 202
            Width = 167
            Height = 13
            Caption = 'Adq. Intracomunitarias + 216'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 594
            Top = 258
            Width = 134
            Height = 13
            Caption = 'Total Cuota devengada '
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 589
            Top = 27
            Width = 122
            Height = 13
            Caption = 'Exportaciones sin IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 152
            Top = 275
            Width = 48
            Height = 13
            Caption = 'Tipo 216'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 578
            Top = 74
            Width = 152
            Height = 13
            Caption = 'Otras operaciones exentas'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 19
            Top = 232
            Width = 145
            Height = 13
            Caption = 'Servicio Intracomunitario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox2: TGroupBox
            Left = 207
            Top = 8
            Width = 129
            Height = 293
            Caption = '    Base Imponible  '
            TabOrder = 0
            object EditBASE_01: TDBEdit
              Left = 7
              Top = 17
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base01'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object EditBASE_04: TDBEdit
              Left = 7
              Top = 41
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base04'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object EditBASE_07: TDBEdit
              Left = 7
              Top = 65
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base07'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object EditBASE_10: TDBEdit
              Left = 7
              Top = 115
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base10'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object EditBASE_13: TDBEdit
              Left = 7
              Top = 139
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base13'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object EditBASE_16: TDBEdit
              Left = 7
              Top = 163
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base16'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object EditBASE_19: TDBEdit
              Left = 7
              Top = 190
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base19'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object EditBASE_00: TDBEdit
              Left = 7
              Top = 87
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base00'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object EditBASE_216: TDBEdit
              Left = 7
              Top = 264
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base216'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object EditBASE_19SI: TDBEdit
              Left = 7
              Top = 218
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base19SI'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
          end
          object GroupBox3: TGroupBox
            Left = 341
            Top = 8
            Width = 66
            Height = 188
            Caption = ' Tipo %   '
            TabOrder = 1
            object EditTIPO_02: TDBEdit
              Left = 9
              Top = 17
              Width = 46
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'Tipo02'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object EditTIPO_05: TDBEdit
              Left = 9
              Top = 41
              Width = 46
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'Tipo05'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object EditTIPO_08: TDBEdit
              Left = 9
              Top = 65
              Width = 46
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'Tipo08'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object EditTIPO_11: TDBEdit
              Left = 9
              Top = 115
              Width = 46
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'Tipo11'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object EditTIPO_14: TDBEdit
              Left = 9
              Top = 139
              Width = 46
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'Tipo14'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object EditTIPO_17: TDBEdit
              Left = 9
              Top = 163
              Width = 46
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'Tipo17'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object EditTIPO_00: TDBEdit
              Left = 9
              Top = 87
              Width = 46
              Height = 21
              TabStop = False
              AutoSize = False
              DataField = 'Tipo00'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object GroupBox4: TGroupBox
            Left = 420
            Top = 8
            Width = 129
            Height = 293
            Caption = '            Cuota       '
            TabOrder = 2
            object EditCUOTA_03: TDBEdit
              Left = 15
              Top = 17
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota03'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = CalcularResultado
            end
            object EditCUOTA_06: TDBEdit
              Left = 15
              Top = 41
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota06'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnExit = CalcularResultado
            end
            object EditCUOTA_09: TDBEdit
              Left = 15
              Top = 65
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota09'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnExit = CalcularResultado
            end
            object EditCUOTA_12: TDBEdit
              Left = 15
              Top = 115
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota12'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnExit = CalcularResultado
            end
            object EditCUOTA_15: TDBEdit
              Left = 15
              Top = 139
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota15'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnExit = CalcularResultado
            end
            object EditCUOTA_18: TDBEdit
              Left = 15
              Top = 163
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota18'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnExit = CalcularResultado
            end
            object EditCUOTA_20: TDBEdit
              Left = 15
              Top = 190
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota20'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnExit = CalcularResultado
            end
            object EditCUOTA_216: TDBEdit
              Left = 15
              Top = 264
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota216'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnExit = CalcularResultado
            end
            object EditCUOTA_20SI: TDBEdit
              Left = 15
              Top = 222
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota20SI'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnExit = CalcularResultado
            end
          end
          object OvcDbNumericField21: TDBEdit
            Left = 609
            Top = 272
            Width = 113
            Height = 21
            TabStop = False
            AutoSize = False
            DataField = 'TotalDevengado'
            DataSource = SIVA300
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object EditBASE_36: TDBEdit
            Left = 594
            Top = 41
            Width = 116
            Height = 21
            AutoSize = False
            DataField = 'Base36'
            DataSource = SIVA300
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object EditBASE_37: TDBEdit
            Left = 594
            Top = 87
            Width = 116
            Height = 21
            AutoSize = False
            DataField = 'Base37'
            DataSource = SIVA300
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
        end
      end
      object TabSheetIVADeducible: TTabSheet
        Caption = 'IVA Deducible'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox5: TGroupBox
          Left = 0
          Top = 0
          Width = 745
          Height = 300
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label10: TLabel
            Left = 624
            Top = 145
            Width = 85
            Height = 13
            Caption = 'Total a Deducir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox8: TGroupBox
            Left = 48
            Top = 8
            Width = 481
            Height = 99
            Caption = '        Cuota       '
            TabOrder = 0
            object Label7: TLabel
              Left = 18
              Top = 16
              Width = 128
              Height = 13
              Caption = 'Operaciones interiores'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 373
              Top = 16
              Width = 83
              Height = 13
              Caption = 'Importaciones'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 181
              Top = 16
              Width = 131
              Height = 13
              Caption = 'Adq. Intracomunitarias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 337
              Top = 56
              Width = 137
              Height = 13
              Caption = 'Importacion B.Inversi'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 178
              Top = 56
              Width = 130
              Height = 13
              Caption = 'Adq. Intra. B. Inversi'#243'n'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 11
              Top = 56
              Width = 145
              Height = 13
              Caption = 'Servicio Intracomunitario'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditDEDUCIBLE_22: TDBEdit
              Left = 37
              Top = 29
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Deducible22'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = CalcularResultado
            end
            object EditDEDUCIBLE_23: TDBEdit
              Left = 367
              Top = 29
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Deducible23'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnExit = CalcularResultado
            end
            object EditDEDUCIBLE_24: TDBEdit
              Left = 200
              Top = 29
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Deducible24'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnExit = CalcularResultado
            end
            object EditDEDUCIBLE_23BI: TDBEdit
              Left = 367
              Top = 69
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Deducible23BI'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnExit = CalcularResultado
            end
            object EditDEDUCIBLE_24BI: TDBEdit
              Left = 200
              Top = 69
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Deducible24BI'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnExit = CalcularResultado
            end
            object EditDEDUCIBLE_24SI: TDBEdit
              Left = 37
              Top = 69
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Deducible24SI'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnExit = CalcularResultado
            end
          end
          object EditTOTAL_DEDUCIBLE: TDBEdit
            Left = 610
            Top = 159
            Width = 113
            Height = 21
            TabStop = False
            AutoSize = False
            DataField = 'TotalDeducible'
            DataSource = SIVA300
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object GroupBox6: TGroupBox
            Left = 45
            Top = 114
            Width = 485
            Height = 127
            Caption = ' Desglose Oper. Interiores'
            TabOrder = 1
            object Label13: TLabel
              Left = 14
              Top = 21
              Width = 40
              Height = 13
              Caption = 'Normal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 14
              Top = 47
              Width = 52
              Height = 13
              Caption = 'Reducido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 14
              Top = 72
              Width = 47
              Height = 13
              Caption = 'Super R.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 120
              Top = 21
              Width = 39
              Height = 13
              Caption = 'B. Imp.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 120
              Top = 47
              Width = 39
              Height = 13
              Caption = 'B. Imp.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 120
              Top = 72
              Width = 39
              Height = 13
              Caption = 'B. Imp.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 325
              Top = 21
              Width = 33
              Height = 13
              Caption = 'Cuota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 325
              Top = 47
              Width = 33
              Height = 13
              Caption = 'Cuota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 325
              Top = 72
              Width = 33
              Height = 13
              Caption = 'Cuota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 14
              Top = 98
              Width = 39
              Height = 13
              Caption = 'Exento'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 120
              Top = 98
              Width = 39
              Height = 13
              Caption = 'B. Imp.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditBASE_22TN: TDBEdit
              Left = 169
              Top = 17
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base22TN'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object EditBASE_22TR: TDBEdit
              Left = 169
              Top = 43
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base22TR'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object EditBASE_22TS: TDBEdit
              Left = 169
              Top = 68
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base22TS'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object EditCUOTA_22TN: TDBEdit
              Left = 371
              Top = 17
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota22TN'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object EditCUOTA_22TR: TDBEdit
              Left = 371
              Top = 43
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota22TR'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object EditCUOTA_22TS: TDBEdit
              Left = 371
              Top = 68
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota22TS'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object EditBASE_22TE: TDBEdit
              Left = 169
              Top = 94
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base22TE'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
          end
          object fcGroupBox1: TGroupBox
            Left = 45
            Top = 249
            Width = 485
            Height = 46
            Caption = ' Bienes de Inversi'#243'n '
            TabOrder = 2
            object Label30: TLabel
              Left = 120
              Top = 20
              Width = 39
              Height = 13
              Caption = 'B. Imp.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 325
              Top = 20
              Width = 33
              Height = 13
              Caption = 'Cuota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object EditBASE_22B: TDBEdit
              Left = 169
              Top = 16
              Width = 116
              Height = 21
              AutoSize = False
              DataField = 'Base22B'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object EditCUOTA_22B: TDBEdit
              Left = 371
              Top = 16
              Width = 90
              Height = 21
              AutoSize = False
              DataField = 'Cuota22B'
              DataSource = SIVA300
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 509
    Width = 789
    Height = 41
    Align = alBottom
    Color = 14275008
    TabOrder = 1
    ExplicitTop = 514
    ExplicitWidth = 797
    DesignSize = (
      789
      41)
    object BtnEdtErrores: TButton
      Left = 384
      Top = 8
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Ver Errores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnEdtErroresClick
    end
    object BtnProcess: TButton
      Left = 613
      Top = 8
      Width = 164
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnProcessClick
    end
    object BtnEdtBorrador: TButton
      Left = 488
      Top = 8
      Width = 96
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Borrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnEdtBorradorClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 34
    Align = alTop
    Color = 14275008
    TabOrder = 2
    ExplicitWidth = 797
    object Shape1: TShape
      Left = 7
      Top = 25
      Width = 738
      Height = 1
      Pen.Color = 7552051
    end
    object lTitulo: TLabel
      Left = 7
      Top = 5
      Width = 231
      Height = 19
      Caption = 'Impresi'#243'n Modelo I.V.A. 300'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object QIVA300: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 16
    object QIVA300EJERCICIO: TIntegerField
      FieldName = 'EJERCICIO'
    end
    object QIVA300FECHAINICIAL: TDateTimeField
      FieldName = 'FECHAINICIAL'
    end
    object QIVA300FECHAFINAL: TDateTimeField
      FieldName = 'FECHAFINAL'
    end
    object QIVA300PERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 2
    end
    object QIVA300BASE00: TFloatField
      FieldName = 'BASE00'
    end
    object QIVA300BASE00NORMAL: TFloatField
      FieldName = 'BASE00NORMAL'
    end
    object QIVA300BASE00CEE: TFloatField
      FieldName = 'BASE00CEE'
    end
    object QIVA300BASE00INTERES: TFloatField
      FieldName = 'BASE00INTERES'
    end
    object QIVA300BASE00EXPORTACION: TFloatField
      FieldName = 'BASE00EXPORTACION'
    end
    object QIVA300TIPO00: TFloatField
      FieldName = 'TIPO00'
    end
    object QIVA300BASE01: TFloatField
      FieldName = 'BASE01'
    end
    object QIVA300TIPO02: TFloatField
      FieldName = 'TIPO02'
    end
    object QIVA300CUOTA03: TFloatField
      FieldName = 'CUOTA03'
    end
    object QIVA300BASE04: TFloatField
      FieldName = 'BASE04'
    end
    object QIVA300TIPO05: TFloatField
      FieldName = 'TIPO05'
    end
    object QIVA300CUOTA06: TFloatField
      FieldName = 'CUOTA06'
    end
    object QIVA300BASE07: TFloatField
      FieldName = 'BASE07'
    end
    object QIVA300TIPO08: TFloatField
      FieldName = 'TIPO08'
    end
    object QIVA300CUOTA09: TFloatField
      FieldName = 'CUOTA09'
    end
    object QIVA300BASE10: TFloatField
      FieldName = 'BASE10'
    end
    object QIVA300TIPO11: TFloatField
      FieldName = 'TIPO11'
    end
    object QIVA300CUOTA12: TFloatField
      FieldName = 'CUOTA12'
    end
    object QIVA300BASE13: TFloatField
      FieldName = 'BASE13'
    end
    object QIVA300TIPO14: TFloatField
      FieldName = 'TIPO14'
    end
    object QIVA300CUOTA15: TFloatField
      FieldName = 'CUOTA15'
    end
    object QIVA300BASE16: TFloatField
      FieldName = 'BASE16'
    end
    object QIVA300TIPO17: TFloatField
      FieldName = 'TIPO17'
    end
    object QIVA300CUOTA18: TFloatField
      FieldName = 'CUOTA18'
    end
    object QIVA300BASE19: TFloatField
      FieldName = 'BASE19'
    end
    object QIVA300BASE19SI: TFloatField
      FieldName = 'BASE19SI'
    end
    object QIVA300CUOTA20: TFloatField
      FieldName = 'CUOTA20'
    end
    object QIVA300CUOTA20SI: TFloatField
      FieldName = 'CUOTA20SI'
    end
    object QIVA300BASE36: TFloatField
      FieldName = 'BASE36'
    end
    object QIVA300BASE37: TFloatField
      FieldName = 'BASE37'
    end
    object QIVA300BASEADQINT: TFloatField
      FieldName = 'BASEADQINT'
    end
    object QIVA300CUOTAADQINT: TFloatField
      FieldName = 'CUOTAADQINT'
    end
    object QIVA300BASE216: TFloatField
      FieldName = 'BASE216'
    end
    object QIVA300CUOTA216: TFloatField
      FieldName = 'CUOTA216'
    end
    object QIVA300TOTALDEVENGADO: TFloatField
      FieldName = 'TOTALDEVENGADO'
    end
    object QIVA300DEDUCIBLE22: TFloatField
      FieldName = 'DEDUCIBLE22'
    end
    object QIVA300CUOTA22B: TFloatField
      FieldName = 'CUOTA22B'
    end
    object QIVA300CUOTA22TN: TFloatField
      FieldName = 'CUOTA22TN'
    end
    object QIVA300CUOTA22TR: TFloatField
      FieldName = 'CUOTA22TR'
    end
    object QIVA300CUOTA22TS: TFloatField
      FieldName = 'CUOTA22TS'
    end
    object QIVA300BASE22B: TFloatField
      FieldName = 'BASE22B'
    end
    object QIVA300BASE22TN: TFloatField
      FieldName = 'BASE22TN'
    end
    object QIVA300BASE22TR: TFloatField
      FieldName = 'BASE22TR'
    end
    object QIVA300BASE22TS: TFloatField
      FieldName = 'BASE22TS'
    end
    object QIVA300BASE22TE: TFloatField
      FieldName = 'BASE22TE'
    end
    object QIVA300DEDUCIBLE23: TFloatField
      FieldName = 'DEDUCIBLE23'
    end
    object QIVA300DEDUCIBLE23BI: TFloatField
      FieldName = 'DEDUCIBLE23BI'
    end
    object QIVA300DEDUCIBLE24: TFloatField
      FieldName = 'DEDUCIBLE24'
    end
    object QIVA300DEDUCIBLE24BI: TFloatField
      FieldName = 'DEDUCIBLE24BI'
    end
    object QIVA300DEDUCIBLE24SI: TFloatField
      FieldName = 'DEDUCIBLE24SI'
    end
    object QIVA300DEDUCIBLE25: TFloatField
      FieldName = 'DEDUCIBLE25'
    end
    object QIVA300DEDUCIBLE26: TFloatField
      FieldName = 'DEDUCIBLE26'
    end
    object QIVA300TOTALDEDUCIBLE: TFloatField
      FieldName = 'TOTALDEDUCIBLE'
    end
    object QIVA300DIFERENCIA: TFloatField
      FieldName = 'DIFERENCIA'
    end
    object QIVA300LIQUIDACION29: TFloatField
      FieldName = 'LIQUIDACION29'
    end
    object QIVA300LIQUIDACION30: TFloatField
      FieldName = 'LIQUIDACION30'
    end
    object QIVA300LIQUIDACION31: TFloatField
      FieldName = 'LIQUIDACION31'
    end
    object QIVA300LIQUIDACION32: TFloatField
      FieldName = 'LIQUIDACION32'
    end
    object QIVA300LIQUIDACION33: TFloatField
      FieldName = 'LIQUIDACION33'
    end
    object QIVA300RESULTADO: TFloatField
      FieldName = 'RESULTADO'
    end
    object QIVA300COMPENSACION: TFloatField
      FieldName = 'COMPENSACION'
    end
    object QIVA300DEVOLUCION: TFloatField
      FieldName = 'DEVOLUCION'
    end
    object QIVA300INGRESO: TFloatField
      FieldName = 'INGRESO'
    end
    object QIVA300FECHAIMPRESION: TDateTimeField
      FieldName = 'FECHAIMPRESION'
    end
    object QIVA300OBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 350
    end
    object QIVA300CCC: TStringField
      FieldName = 'CCC'
      Size = 23
    end
  end
  object SIVA300: TDataSource
    DataSet = QIVA300
    Left = 600
    Top = 16
  end
end
