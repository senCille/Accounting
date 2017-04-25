object WIrpf110: TWIrpf110
  Left = 854
  Top = 210
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 500
  ClientWidth = 756
  Color = clBtnFace
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
  PixelsPerInch = 96
  TextHeight = 16
  object Datos: TGroupBox
    Left = 0
    Top = 36
    Width = 756
    Height = 423
    Align = alClient
    Caption = ' Datos '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 180
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Ejercicio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 233
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Periodo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 333
      Top = 11
      Width = 78
      Height = 14
      Caption = 'Fecha a imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 473
      Top = 49
      Width = 59
      Height = 14
      Caption = 'Fecha inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 569
      Top = 49
      Width = 53
      Height = 14
      Caption = 'Fecha final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label84: TLabel
      Left = 182
      Top = 50
      Width = 208
      Height = 14
      Caption = 'C.C.C. para Hacienda, formato con guiones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object GroupBoxFormapago: TRadioGroup
      Left = 16
      Top = 16
      Width = 145
      Height = 41
      Caption = ' Forma de pago '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Cuenta'
        'Efectivo')
      ParentFont = False
      TabOrder = 0
    end
    object EditEJERCICIO: TDBEdit
      Left = 182
      Top = 22
      Width = 43
      Height = 20
      AutoSize = False
      DataField = 'EJERCICIO'
      DataSource = sIrpf110
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EditPERIODO: TDBEdit
      Left = 237
      Top = 22
      Width = 27
      Height = 20
      AutoSize = False
      DataField = 'PERIODO'
      DataSource = sIrpf110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 87
      Width = 745
      Height = 76
      Caption = ' Rendimientos del trabajo '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object GroupBox2: TGroupBox
        Left = 6
        Top = 14
        Width = 360
        Height = 56
        Caption = ' Dinerarios '
        TabOrder = 0
        object Label3: TLabel
          Left = 10
          Top = 14
          Width = 59
          Height = 14
          Caption = 'Perceptores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 89
          Top = 14
          Width = 88
          Height = 14
          Caption = 'Imp. Percepciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 210
          Top = 14
          Width = 82
          Height = 14
          Caption = 'Imp. Retenciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EditLIQUIDACION_01: TDBEdit
          Left = 17
          Top = 28
          Width = 41
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_01'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditLIQUIDACION_02: TDBEdit
          Left = 91
          Top = 28
          Width = 101
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_02'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditLIQUIDACION_03: TDBEdit
          Left = 213
          Top = 28
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_03'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = CalcularResultado
        end
      end
      object GroupBox3: TGroupBox
        Left = 378
        Top = 14
        Width = 360
        Height = 56
        Caption = ' En especie '
        TabOrder = 1
        object Label6: TLabel
          Left = 10
          Top = 14
          Width = 59
          Height = 14
          Caption = 'Perceptores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 89
          Top = 14
          Width = 88
          Height = 14
          Caption = 'Imp. Percepciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 210
          Top = 14
          Width = 82
          Height = 14
          Caption = 'Imp. Retenciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EditLIQUIDACION_04: TDBEdit
          Left = 17
          Top = 28
          Width = 41
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_04'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditLIQUIDACION_05: TDBEdit
          Left = 89
          Top = 28
          Width = 102
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_05'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditLIQUIDACION_06: TDBEdit
          Left = 213
          Top = 28
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_06'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = CalcularResultado
        end
      end
    end
    object CheckBoxDeclarante: TCheckBox
      Left = 24
      Top = 64
      Width = 137
      Height = 17
      TabStop = False
      Caption = 'Copia Declarante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object EditFECHA_IMPRIMIR: TDBEdit
      Left = 334
      Top = 26
      Width = 89
      Height = 21
      DataField = 'FECHA_IMPRESION'
      DataSource = sIrpf110
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object GroupBox4: TGroupBox
      Left = 5
      Top = 164
      Width = 745
      Height = 76
      Caption = ' Rendimientos de actividades economicas '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      object GroupBox5: TGroupBox
        Left = 6
        Top = 14
        Width = 360
        Height = 56
        Caption = ' Dinerarios '
        TabOrder = 0
        object Label10: TLabel
          Left = 10
          Top = 14
          Width = 59
          Height = 14
          Caption = 'Perceptores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 89
          Top = 14
          Width = 88
          Height = 14
          Caption = 'Imp. Percepciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 210
          Top = 14
          Width = 82
          Height = 14
          Caption = 'Imp. Retenciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EditLIQUIDACION_07: TDBEdit
          Left = 17
          Top = 28
          Width = 41
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_07'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditLIQUIDACION_08: TDBEdit
          Left = 90
          Top = 28
          Width = 101
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_08'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditLIQUIDACION_09: TDBEdit
          Left = 213
          Top = 28
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_09'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = CalcularResultado
        end
      end
      object GroupBox6: TGroupBox
        Left = 378
        Top = 14
        Width = 360
        Height = 56
        Caption = ' En Especie'
        TabOrder = 1
        object Label13: TLabel
          Left = 10
          Top = 14
          Width = 59
          Height = 14
          Caption = 'Perceptores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 89
          Top = 14
          Width = 88
          Height = 14
          Caption = 'Imp. Percepciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 210
          Top = 14
          Width = 82
          Height = 14
          Caption = 'Imp. Retenciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EditLIQUIDACION_10: TDBEdit
          Left = 17
          Top = 28
          Width = 41
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_10'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditLIQUIDACION_11: TDBEdit
          Left = 89
          Top = 28
          Width = 102
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_11'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditLIQUIDACION_12: TDBEdit
          Left = 213
          Top = 28
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_12'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = CalcularResultado
        end
      end
    end
    object GroupBox7: TGroupBox
      Left = 5
      Top = 240
      Width = 745
      Height = 76
      Caption = 'Premios por juegos, concursos, rifas o combinaciones aleatorias '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      object GroupBox8: TGroupBox
        Left = 6
        Top = 14
        Width = 360
        Height = 56
        Caption = ' Dinerarios '
        TabOrder = 0
        object Label16: TLabel
          Left = 10
          Top = 14
          Width = 59
          Height = 14
          Caption = 'Perceptores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 89
          Top = 14
          Width = 88
          Height = 14
          Caption = 'Imp. Percepciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 210
          Top = 14
          Width = 82
          Height = 14
          Caption = 'Imp. Retenciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EditLIQUIDACION_13: TDBEdit
          Left = 17
          Top = 28
          Width = 41
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_13'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditLIQUIDACION_14: TDBEdit
          Left = 90
          Top = 28
          Width = 102
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_14'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditLIQUIDACION_15: TDBEdit
          Left = 213
          Top = 28
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_15'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = CalcularResultado
        end
      end
      object GroupBox9: TGroupBox
        Left = 378
        Top = 14
        Width = 360
        Height = 56
        Caption = ' En Especie'
        TabOrder = 1
        object Label19: TLabel
          Left = 10
          Top = 14
          Width = 59
          Height = 14
          Caption = 'Perceptores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 89
          Top = 14
          Width = 88
          Height = 14
          Caption = 'Imp. Percepciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 210
          Top = 14
          Width = 82
          Height = 14
          Caption = 'Imp. Retenciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EditLIQUIDACION_16: TDBEdit
          Left = 17
          Top = 28
          Width = 41
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_16'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditLIQUIDACION_17: TDBEdit
          Left = 89
          Top = 28
          Width = 102
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_17'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditLIQUIDACION_18: TDBEdit
          Left = 213
          Top = 28
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_18'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = CalcularResultado
        end
      end
    end
    object GroupBox10: TGroupBox
      Left = 5
      Top = 325
      Width = 368
      Height = 76
      Caption = 'Derechos de Imagen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      object GroupBox11: TGroupBox
        Left = 6
        Top = 14
        Width = 360
        Height = 56
        Caption = ' Dinerarios o en Especie '
        TabOrder = 0
        object Label22: TLabel
          Left = 10
          Top = 14
          Width = 59
          Height = 14
          Caption = 'Perceptores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 89
          Top = 14
          Width = 88
          Height = 14
          Caption = 'Imp. Percepciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 210
          Top = 14
          Width = 82
          Height = 14
          Caption = 'Imp. Retenciones'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object EditLIQUIDACION_19: TDBEdit
          Left = 17
          Top = 28
          Width = 41
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_19'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EditLIQUIDACION_20: TDBEdit
          Left = 89
          Top = 28
          Width = 102
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_20'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EditLIQUIDACION_21: TDBEdit
          Left = 213
          Top = 28
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'LIQUIDACION_21'
          DataSource = sIrpf110
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = CalcularResultado
        end
      end
    end
    object GroupBox12: TGroupBox
      Left = 383
      Top = 315
      Width = 367
      Height = 100
      Caption = 'Total Liquidacion '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      object Label25: TLabel
        Left = 8
        Top = 18
        Width = 204
        Height = 14
        Caption = 'Suma de Retenciones e ingresos a cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 22
        Top = 45
        Width = 191
        Height = 14
        Caption = 'A deducir (caso decla. complementaria)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 126
        Top = 72
        Width = 100
        Height = 14
        Caption = 'Resultado a ingresar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object EditLIQUIDACION_22: TDBEdit
        Left = 245
        Top = 15
        Width = 113
        Height = 21
        AutoSize = False
        DataField = 'LIQUIDACION_22'
        DataSource = sIrpf110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EditLIQUIDACION_23: TDBEdit
        Left = 245
        Top = 42
        Width = 113
        Height = 21
        AutoSize = False
        DataField = 'LIQUIDACION_23'
        DataSource = sIrpf110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = CalcularOtro
      end
      object EditLIQUIDACION_24: TDBEdit
        Left = 245
        Top = 69
        Width = 113
        Height = 21
        AutoSize = False
        DataField = 'LIQUIDACION_24'
        DataSource = sIrpf110
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object EditFECHA_DESDE: TDBEdit
      Left = 465
      Top = 64
      Width = 89
      Height = 21
      DataField = 'FECHA_DESDE'
      DataSource = sIrpf110
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object EditFECHA_HASTA: TDBEdit
      Left = 561
      Top = 64
      Width = 89
      Height = 21
      DataField = 'FECHA_HASTA'
      DataSource = sIrpf110
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EditCCC: TDBEdit
      Left = 182
      Top = 64
      Width = 257
      Height = 20
      AutoSize = False
      DataField = 'CCC'
      DataSource = sIrpf110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 36
    Align = alTop
    TabOrder = 1
    object Shape1: TShape
      Left = 6
      Top = 26
      Width = 738
      Height = 1
    end
    object lTitulo: TLabel
      Left = 6
      Top = 6
      Width = 228
      Height = 19
      Caption = 'Impresi'#243'n Modelo I.R.P.F.   110'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 459
    Width = 756
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      756
      41)
    object BtnedtCalcular: TButton
      Left = 462
      Top = 8
      Width = 104
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Calcular Saldos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnedtCalcularClick
    end
    object BtnEdtErrores: TButton
      Left = 351
      Top = 8
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Ver Errores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnEdtErroresClick
    end
    object BtnEdtProcesar: TButton
      Left = 599
      Top = 8
      Width = 128
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnEdtProcesarClick
    end
  end
  object QIrpf110: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 16
    object QIrpf110EJERCICIO: TIntegerField
      FieldName = 'EJERCICIO'
    end
    object QIrpf110PERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 2
    end
    object QIrpf110LIQUIDACION_01: TIntegerField
      FieldName = 'LIQUIDACION_01'
    end
    object QIrpf110LIQUIDACION_02: TFloatField
      FieldName = 'LIQUIDACION_02'
    end
    object QIrpf110LIQUIDACION_03: TFloatField
      FieldName = 'LIQUIDACION_03'
    end
    object QIrpf110LIQUIDACION_04: TIntegerField
      FieldName = 'LIQUIDACION_04'
    end
    object QIrpf110LIQUIDACION_05: TFloatField
      FieldName = 'LIQUIDACION_05'
    end
    object QIrpf110LIQUIDACION_06: TFloatField
      FieldName = 'LIQUIDACION_06'
    end
    object QIrpf110LIQUIDACION_07: TIntegerField
      FieldName = 'LIQUIDACION_07'
    end
    object QIrpf110LIQUIDACION_08: TFloatField
      FieldName = 'LIQUIDACION_08'
    end
    object QIrpf110LIQUIDACION_09: TFloatField
      FieldName = 'LIQUIDACION_09'
    end
    object QIrpf110LIQUIDACION_10: TIntegerField
      FieldName = 'LIQUIDACION_10'
    end
    object QIrpf110LIQUIDACION_11: TFloatField
      FieldName = 'LIQUIDACION_11'
    end
    object QIrpf110LIQUIDACION_12: TFloatField
      FieldName = 'LIQUIDACION_12'
    end
    object QIrpf110LIQUIDACION_13: TIntegerField
      FieldName = 'LIQUIDACION_13'
    end
    object QIrpf110LIQUIDACION_14: TFloatField
      FieldName = 'LIQUIDACION_14'
    end
    object QIrpf110LIQUIDACION_15: TFloatField
      FieldName = 'LIQUIDACION_15'
    end
    object QIrpf110LIQUIDACION_16: TIntegerField
      FieldName = 'LIQUIDACION_16'
    end
    object QIrpf110LIQUIDACION_17: TFloatField
      FieldName = 'LIQUIDACION_17'
    end
    object QIrpf110LIQUIDACION_18: TFloatField
      FieldName = 'LIQUIDACION_18'
    end
    object QIrpf110LIQUIDACION_19: TIntegerField
      FieldName = 'LIQUIDACION_19'
    end
    object QIrpf110LIQUIDACION_20: TFloatField
      FieldName = 'LIQUIDACION_20'
    end
    object QIrpf110LIQUIDACION_21: TFloatField
      FieldName = 'LIQUIDACION_21'
    end
    object QIrpf110LIQUIDACION_22: TFloatField
      FieldName = 'LIQUIDACION_22'
    end
    object QIrpf110LIQUIDACION_23: TFloatField
      FieldName = 'LIQUIDACION_23'
    end
    object QIrpf110LIQUIDACION_24: TFloatField
      FieldName = 'LIQUIDACION_24'
    end
    object QIrpf110INGRESO: TFloatField
      FieldName = 'INGRESO'
    end
    object QIrpf110FECHA_IMPRESION: TDateField
      FieldName = 'FECHA_IMPRESION'
    end
    object QIrpf110FECHA_DESDE: TDateField
      FieldName = 'FECHA_DESDE'
    end
    object QIrpf110FECHA_HASTA: TDateField
      FieldName = 'FECHA_HASTA'
    end
    object QIrpf110CCC: TStringField
      FieldName = 'CCC'
      Size = 23
    end
  end
  object sIrpf110: TDataSource
    DataSet = QIrpf110
    Left = 536
    Top = 16
  end
end
