object WEnlaceContable: TWEnlaceContable
  Left = 787
  Top = 255
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Enlace contable'
  ClientHeight = 345
  ClientWidth = 570
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Shape1: TShape
    Left = 26
    Top = 33
    Width = 484
    Height = 1
    Pen.Color = 7552051
  end
  object lTitulo: TLabel
    Left = 26
    Top = 13
    Width = 131
    Height = 19
    Caption = 'Enlace Contable'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Datos: TGroupBox
    Left = 26
    Top = 45
    Width = 525
    Height = 250
    Color = 14275008
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 11
      Width = 131
      Height = 13
      Alignment = taCenter
      Caption = 'Informaci'#243'n procesada'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Memo: TMemo
      Left = 18
      Top = 24
      Width = 484
      Height = 177
      Font.Charset = ANSI_CHARSET
      Font.Color = clBtnText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object BtnImprimir: TButton
      Left = 419
      Top = 212
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnImprimirClick
    end
    object gOrden: TRadioGroup
      Left = 18
      Top = 201
      Width = 237
      Height = 45
      Caption = ' Orden Impresi'#243'n '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Asiento'
        'Fecha')
      TabOrder = 2
    end
  end
  object BtnAccept: TButton
    Left = 466
    Top = 299
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnAcceptClick
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = QFicheroCalcFields
    Left = 326
    Top = 10
    object QFicheroASIENTO: TIntegerField
      FieldName = 'ASIENTO'
    end
    object QFicheroMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 1
    end
    object QFicheroAPUNTE: TIntegerField
      FieldName = 'APUNTE'
    end
    object QFicheroSUBCUENTA: TStringField
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QFicheroFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QFicheroIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QFicheroDEBEHABER: TStringField
      FieldName = 'DEBEHABER'
      Size = 1
    end
    object QFicheroCONTRAPARTIDA: TStringField
      FieldName = 'CONTRAPARTIDA'
      Size = 10
    end
    object QFicheroNUMEROFACTURA: TStringField
      FieldName = 'NUMEROFACTURA'
      Size = 10
    end
    object QFicheroCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 40
    end
    object QFicheroNIF: TStringField
      FieldName = 'NIF'
      Size = 15
    end
    object QFicheroRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
    object QFicheroIVA: TFloatField
      FieldName = 'IVA'
    end
    object QFicheroBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
    end
    object QFicheroCUOTAIVA: TFloatField
      FieldName = 'CUOTAIVA'
    end
    object QFicheroCUOTARECARGO: TFloatField
      FieldName = 'CUOTARECARGO'
    end
    object QFicheroCUENTA_ANALITICA: TStringField
      FieldName = 'CUENTA_ANALITICA'
      Size = 10
    end
    object QFicheroFECHAINICIAL: TDateTimeField
      FieldName = 'FECHAINICIAL'
    end
    object QFicheroFECHAFINAL: TDateTimeField
      FieldName = 'FECHAFINAL'
    end
    object QFicheroDESCSUBCUENTA: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCSUBCUENTA'
      Size = 100
      Calculated = True
    end
    object QFicheroDESCAPUNTE: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCAPUNTE'
      Size = 100
      Calculated = True
    end
    object QFicheroID_CONCEPTOS: TStringField
      FieldName = 'ID_CONCEPTOS'
      Size = 3
    end
    object QFicheroDEBE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEBE'
      Calculated = True
    end
    object QFicheroHABER: TFloatField
      FieldKind = fkCalculated
      FieldName = 'HABER'
      Calculated = True
    end
    object QFicheroFECHAIMPRESION: TDateTimeField
      FieldName = 'FECHAIMPRESION'
    end
    object QFicheroSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object QFicheroEJERCICIO: TIntegerField
      FieldName = 'EJERCICIO'
    end
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 402
    Top = 12
  end
  object QBuscaSubcuenta: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 320
    Top = 152
  end
  object QInsertaSubcuenta: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 352
    Top = 152
  end
  object QCarteraEfectos: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 288
    Top = 216
  end
  object QSubcuentas: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 288
    Top = 152
  end
  object QBorraDiario: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 464
    Top = 120
  end
  object QBorraCartera: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 384
    Top = 216
  end
  object QBuscaDiario: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 400
    Top = 120
  end
  object QInfSubcta: TIBQuery
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 325
    Top = 72
  end
  object QBuscaProvincia: TIBQuery
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 165
    Top = 97
  end
  object QInsProvincia: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 248
    Top = 96
  end
  object QModificaSubcuenta: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 352
    Top = 216
  end
  object QDiario: TIBQuery
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 77
    Top = 89
  end
end
