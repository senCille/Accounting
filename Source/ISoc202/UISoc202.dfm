object WISoc202: TWISoc202
  Left = 1271
  Top = 219
  BorderIcons = [biSystemMenu, biMinimize]
  ClientHeight = 486
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  object Datos: TGroupBox
    Left = 0
    Top = 35
    Width = 756
    Height = 410
    Align = alClient
    Caption = ' Datos '
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 180
      Top = 16
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
      Top = 16
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
    object Label18: TLabel
      Left = 464
      Top = 75
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
    object Label84: TLabel
      Left = 464
      Top = 121
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
    object RadioGroupFORMA_PAGO: TRadioGroup
      Left = 7
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
    object EditBASE_DESDE: TDBEdit
      Left = 182
      Top = 30
      Width = 43
      Height = 20
      AutoSize = False
      DataField = 'EJERCICIO'
      DataSource = sISoc202
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
      Top = 30
      Width = 27
      Height = 20
      AutoSize = False
      DataField = 'PERIODO'
      DataSource = sISoc202
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 75
      Width = 349
      Height = 86
      Caption = ' A)  Calculo pago fraccionado: Modalidad Art. 38.2 ley 43/1995'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label7: TLabel
        Left = 12
        Top = 26
        Width = 126
        Height = 13
        Caption = 'Base del pago fraccionado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 12
        Top = 50
        Width = 139
        Height = 13
        Caption = 'A ingresar (18% del importe)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EditCASILLA_01: TDBEdit
        Left = 197
        Top = 22
        Width = 112
        Height = 21
        AutoSize = False
        DataField = 'CASILLA_01'
        DataSource = sISoc202
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = EditCASILLA_01Exit
      end
      object EditCASILLA_02: TDBEdit
        Left = 197
        Top = 46
        Width = 112
        Height = 21
        AutoSize = False
        DataField = 'CASILLA_02'
        DataSource = sISoc202
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object CheckBoxCopaDeclarante: TCheckBox
      Left = 304
      Top = 32
      Width = 137
      Height = 17
      TabStop = False
      Caption = 'Copia Declarante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 163
      Width = 741
      Height = 238
      Caption = ' B)  Calculo pago fraccionado: Modalidad Art. 38.3 ley 43/1995'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object Label14: TLabel
        Left = 189
        Top = 158
        Width = 67
        Height = 13
        Caption = 'Bonificaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 20
        Top = 182
        Width = 212
        Height = 13
        Caption = 'Retenciones e ingresos a cuenta del periodo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 46
        Top = 206
        Width = 189
        Height = 13
        Caption = 'Pagos fraccionados periodos anteriores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 542
        Top = 163
        Width = 67
        Height = 13
        Caption = 'B)  A Ingresar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 10
        Top = 17
        Width = 338
        Height = 123
        Caption = ' B1)  Caso General '
        TabOrder = 0
        object Label3: TLabel
          Left = 41
          Top = 33
          Width = 126
          Height = 13
          Caption = 'Base del pago fraccionado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 41
          Top = 57
          Width = 52
          Height = 13
          Caption = 'Porcentaje'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 41
          Top = 81
          Width = 48
          Height = 13
          Caption = 'Resultado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EditCASILLA_03: TDBEdit
          Left = 192
          Top = 29
          Width = 112
          Height = 21
          AutoSize = False
          DataField = 'CASILLA_03'
          DataSource = sISoc202
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = CalculoB
        end
        object EditCASILLA_04: TDBEdit
          Left = 250
          Top = 53
          Width = 54
          Height = 21
          AutoSize = False
          DataField = 'CASILLA_04'
          DataSource = sISoc202
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnExit = CalculoB
        end
        object EditCASILLA_05: TDBEdit
          Left = 192
          Top = 77
          Width = 112
          Height = 21
          AutoSize = False
          DataField = 'CASILLA_05'
          DataSource = sISoc202
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
        Left = 383
        Top = 17
        Width = 344
        Height = 123
        Caption = ' B2)  Empresas de Reducida dimensi'#243'n '
        TabOrder = 1
        object Label6: TLabel
          Left = 12
          Top = 26
          Width = 109
          Height = 13
          Caption = 'Base pago fraccionado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 11
          Top = 50
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
        object Label10: TLabel
          Left = 12
          Top = 74
          Width = 28
          Height = 13
          Caption = 'Resto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 175
          Top = 50
          Width = 34
          Height = 13
          Caption = '(21 %)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 175
          Top = 74
          Width = 34
          Height = 13
          Caption = '(25 %)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 157
          Top = 98
          Width = 48
          Height = 13
          Caption = 'Resultado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object EditCASILLA_06: TDBEdit
          Left = 147
          Top = 22
          Width = 112
          Height = 21
          AutoSize = False
          DataField = 'CASILLA_06'
          DataSource = sISoc202
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = CalculoB
        end
        object EditCASILLA_07b: TDBEdit
          Left = 51
          Top = 70
          Width = 112
          Height = 21
          TabStop = False
          AutoSize = False
          DataField = 'CASILLA_07B'
          DataSource = sISoc202
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnExit = CalculoB
        end
        object EditCASILLA_06b: TDBEdit
          Left = 51
          Top = 46
          Width = 112
          Height = 21
          AutoSize = False
          DataField = 'CASILLA_06B'
          DataSource = sISoc202
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnExit = CalculoB
        end
        object EditCASILLA_08: TDBEdit
          Left = 219
          Top = 70
          Width = 112
          Height = 21
          TabStop = False
          AutoSize = False
          DataField = 'CASILLA_08'
          DataSource = sISoc202
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnExit = CalculoB
        end
        object EditCASILLA_07: TDBEdit
          Left = 219
          Top = 46
          Width = 112
          Height = 21
          TabStop = False
          AutoSize = False
          DataField = 'CASILLA_07'
          DataSource = sISoc202
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = CalculoB
        end
        object EditCASILLA_09: TDBEdit
          Left = 219
          Top = 94
          Width = 112
          Height = 21
          TabStop = False
          AutoSize = False
          DataField = 'CASILLA_09'
          DataSource = sISoc202
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object EditCASILLA_10: TDBEdit
        Left = 272
        Top = 154
        Width = 112
        Height = 21
        AutoSize = False
        DataField = 'CASILLA_10'
        DataSource = sISoc202
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = CalculoB
      end
      object EditCASILLA_11: TDBEdit
        Left = 272
        Top = 178
        Width = 112
        Height = 21
        AutoSize = False
        DataField = 'CASILLA_11'
        DataSource = sISoc202
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnExit = CalculoB
      end
      object EditCASILLA_12: TDBEdit
        Left = 272
        Top = 202
        Width = 112
        Height = 21
        AutoSize = False
        DataField = 'CASILLA_12'
        DataSource = sISoc202
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnExit = CalculoB
      end
      object EditCASILLA_13: TDBEdit
        Left = 528
        Top = 178
        Width = 112
        Height = 21
        TabStop = False
        AutoSize = False
        DataField = 'CASILLA_13'
        DataSource = sISoc202
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object EditFECHA_IMPRIMIR: TDBEdit
      Left = 464
      Top = 90
      Width = 89
      Height = 21
      DataField = 'FECHA_IMPRESION'
      DataSource = sISoc202
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object EditCCC: TDBEdit
      Left = 464
      Top = 135
      Width = 257
      Height = 20
      AutoSize = False
      DataField = 'CCC'
      DataSource = sISoc202
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 35
    Align = alTop
    TabOrder = 1
    object Shape1: TShape
      Left = 5
      Top = 23
      Width = 738
      Height = 1
    end
    object lTitulo: TLabel
      Left = 7
      Top = 5
      Width = 282
      Height = 19
      Caption = 'Impresi'#243'n Modelo Imp. Sociedades 202'
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
    Top = 445
    Width = 756
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      756
      41)
    object BtnVerErrores: TButton
      Left = 493
      Top = 8
      Width = 96
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
      TabOrder = 0
      OnClick = BtnVerErroresClick
    end
    object BtnProcess: TButton
      Left = 603
      Top = 8
      Width = 132
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnProcessClick
    end
  end
  object QIsoc202: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 432
    Top = 8
    object QIsoc202EJERCICIO: TIntegerField
      FieldName = 'EJERCICIO'
    end
    object QIsoc202PERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 2
    end
    object QIsoc202CASILLA_00: TFloatField
      FieldName = 'CASILLA_00'
    end
    object QIsoc202CASILLA_01: TFloatField
      FieldName = 'CASILLA_01'
    end
    object QIsoc202CASILLA_02: TFloatField
      FieldName = 'CASILLA_02'
    end
    object QIsoc202CASILLA_03: TFloatField
      FieldName = 'CASILLA_03'
    end
    object QIsoc202CASILLA_04: TFloatField
      FieldName = 'CASILLA_04'
    end
    object QIsoc202CASILLA_05: TFloatField
      FieldName = 'CASILLA_05'
    end
    object QIsoc202CASILLA_06: TFloatField
      FieldName = 'CASILLA_06'
    end
    object QIsoc202CASILLA_06B: TFloatField
      FieldName = 'CASILLA_06B'
    end
    object QIsoc202CASILLA_07: TFloatField
      FieldName = 'CASILLA_07'
    end
    object QIsoc202CASILLA_07B: TFloatField
      FieldName = 'CASILLA_07B'
    end
    object QIsoc202CASILLA_08: TFloatField
      FieldName = 'CASILLA_08'
    end
    object QIsoc202CASILLA_09: TFloatField
      FieldName = 'CASILLA_09'
    end
    object QIsoc202CASILLA_10: TFloatField
      FieldName = 'CASILLA_10'
    end
    object QIsoc202CASILLA_11: TFloatField
      FieldName = 'CASILLA_11'
    end
    object QIsoc202CASILLA_12: TFloatField
      FieldName = 'CASILLA_12'
    end
    object QIsoc202CASILLA_13: TFloatField
      FieldName = 'CASILLA_13'
    end
    object QIsoc202OBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 350
    end
    object QIsoc202INGRESO: TFloatField
      FieldName = 'INGRESO'
    end
    object QIsoc202FECHA_IMPRESION: TDateField
      FieldName = 'FECHA_IMPRESION'
    end
    object QIsoc202CCC: TStringField
      FieldName = 'CCC'
      Size = 23
    end
  end
  object sISoc202: TDataSource
    DataSet = QIsoc202
    Left = 480
    Top = 8
  end
end
