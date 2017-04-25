object WEditApunte: TWEditApunte
  Left = 811
  Top = 496
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Edici'#243'n Apunte Contable'
  ClientHeight = 217
  ClientWidth = 767
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 34
    Align = alTop
    TabOrder = 0
    object Shape1: TShape
      Left = 7
      Top = 26
      Width = 395
      Height = 1
    end
    object lTitulo: TLabel
      Left = 7
      Top = 6
      Width = 174
      Height = 19
      Caption = 'Edici'#243'n Apunte Contable'
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
    Top = 176
    Width = 767
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      767
      41)
    object BtnAccept: TButton
      Left = 665
      Top = 8
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnAcceptClick
    end
    object BtnNewSubAccount: TButton
      Left = 9
      Top = 10
      Width = 88
      Height = 23
      Cursor = crHandPoint
      Caption = 'A'#241'adir S&ubcta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnNewSubAccountClick
    end
  end
  object Datos: TGroupBox
    Left = 0
    Top = 34
    Width = 767
    Height = 142
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 11
      Top = 90
      Width = 55
      Height = 13
      Caption = 'Comentario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 389
      Top = 11
      Width = 94
      Height = 13
      Caption = 'Datos del Concepto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelSubcuenta: TLabel
      Left = 11
      Top = 11
      Width = 108
      Height = 13
      Caption = 'Datos de la Subcuenta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelContrapartida: TLabel
      Left = 11
      Top = 51
      Width = 124
      Height = 13
      Caption = 'Datos de la Contrapartida'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 640
      Top = 51
      Width = 77
      Height = 13
      Caption = 'N'#250'mero Factura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 389
      Top = 90
      Width = 135
      Height = 13
      Caption = 'Datos de la Cuenta Anal'#237'tica'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 488
      Top = 51
      Width = 38
      Height = 13
      Caption = 'Importe'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 402
      Top = 51
      Width = 24
      Height = 13
      Caption = 'D / H'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 447
      Top = 51
      Width = 20
      Height = 13
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtnDetalleIVA: TSpeedButton
      Left = 608
      Top = 65
      Width = 23
      Height = 22
      Hint = 'Detalle IVA'
      Glyph.Data = {
        CA050000424DCA05000000000000360000002800000016000000150000000100
        18000000000094050000120B0000120B00000000000000000000D8CEBAD9CFBD
        D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1
        C0D9D1C0E0D4D6DAD1EDDAD0BDD9D1C0D9D1C0D9D1C0D9D1C0D9D1C00000D9D1
        C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9
        D1C0D9D1C0D9D1C0C9C5FF6157FFD3CBE5DCD0BAD9D1C0D9D1C0D9D1C0D9D1C0
        0000D9D1C0B69E806A6053BCB1A0B9AE9DB8AD9CB8AD9CB8AD9CB8AD9CB8AD9C
        B8AD9CB9AD9CB8AC9BC6BCA7D2CFFE4435FD6055FFB5AEEED3C8B3D9D1C0D9D1
        C0D9D1C00000D9D1C08F75554E5359F3F5F8F3F5F8F2F4F6F2F4F6F2F4F6F2F4
        F6F2F4F6F0F1F5ECEDF6EDEFF7F7F9F8CDC9FF4C3EFD5143FD564AFEA39FFEED
        E2D1D9D1C0D9D1C00000D9D1C08F75564D5257FDFDFDFDFDFDF9F9F9F7F7F7FC
        FCFCF9F9F9FFFFF9D2CFFE796EFE8176FE8379FE7469FE5345FD5548FD5447FD
        5043FD958FFFEAE1D9D9D0BF0000D9D1C08F75564D5257FEFEFEEAEAEAB8B8B8
        C8C8C8B9B9B9C0C0C0DBDCD0C2BEFF4435FD4E40FD4F41FD5143FD5649FD5548
        FD5548FD5447FD483AFD817AFFE9DAD40000D9D1C08F75564D5257FEFEFEDEDE
        DEBFBFBFFDFDFDAAAAAADEDEDEFEFFF3C2BDFD493BFD5346FD5548FE5447FD55
        48FD5548FD5548FD5043FD5B50FFBAB6FFE2D4BF0000D9D1C08F75564D5257FE
        FEFEE0E0E0C9C9C9FFFFFFB3B3B3EEEEEEFCFCF9D3D1E6C6C1FFC7C3FDC7C4F7
        A9A2FE4E40FD5548FD4E40FD7166FFD3CEF6E3D5BCD9D1C00000D9D1C08F7556
        4D5257FEFEFEE0E0E0CBCBCBFFFFFFB3B3B3EFEFEFF3F3F3CACBC8F9F9F7FFFF
        FBD2D3C5D3D0FF4B3EFD4A3CFD7F77FFCCC4CFDAD0BCD9D1C0D9D1C00000D9D1
        C08F75564D5257FEFEFEE0E0E0BDBDBDF3F3F3AEAEAEDCDCDCDEDEDEBBBBBBDD
        DDDDE1E1E1BABAB1D3D0FF4334FD958DFFB7B8C75E543FD9D1C0D9D1C0D9D1C0
        0000D9D1C08F75564D5257FEFEFEE0E0E0AAAAAAD4D4D4A5A5A5C4C4C4C5C5C5
        ADADADC3C3C3C5C5C5B1B1AACCC9FB9E96FEFFFFFF636664322619D9D1C0D9D1
        C0D9D1C00000D9D1C08F75564D5257FEFEFEE6E6E6B3B3B3C9C9C9B2B2B2C1C1
        C1C2C2C2B7B7B7C3C3C3C4C4C4B5B5B4E4E4E6F5F5F6FFFFFF5C5E60322619D9
        D1C0D9D1C0D9D1C00000D9D1C08F75564D5257FDFDFDFDFDFDFBFBFBF7F7F7FC
        FCFCF9F9F9FBFBFBFFFFFFFDFDFDFEFEFEFEFEFEF4F4F3F7F7F5FFFFFF5C5D60
        322619D9D1C0D9D1C0D9D1C00000D9D1C08F75564D5257FDFDFDFCFCFCFAFAFA
        FAFAFAFAFAFAFBFBFBEDEDEDD2D2D2C2C2C2A8A8A8EDEDEDFCFCFCF9F9F9FFFF
        FF5C5D60322619D9D1C0D9D1C0D9D1C00000D9D1C08F75564D5257FDFDFDFCFC
        FCF9F9F9F9F9F9F9F9F9FAFAFADEDEDECECECEF1F1F1C9C9C9D0D0D0FDFDFDF8
        F8F8FFFFFF5C5D60322619D9D1C0D9D1C0D9D1C00000D9D1C08F75564D5257FD
        FDFDFFFFFFFDFDFDF8F8F8F9F9F9FAFAFAE0E0E0D5D5D5DFDFDFC6C6C6DADADA
        FEFEFDFFFFFCFFFFFF5B5D5F322619D9D1C0D9D1C0D9D1C00000D9D1C08F7556
        4E5358FEFEFEB8B8B8E1E1E1FFFFFFF9F9F9F9F9F9F8F8F8F7F7F7F7F7F7F7F7
        F7FEFEF8E3E3F75151E2CFCFFD656761322619D9D1C0D9D1C0D9D1C00000D9D1
        C08E745451565BFFFFFFB1B1B1BBBBBBF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE5E5FC2B2BE6BDBDFD6A6C62322619D9D1C0D9D1C0D9D1C0
        0000D9D1C07E5F3B3F464ECBCFD5CFD3D8CDD1D6C8CCD1C6CACFC6CACFC6CACF
        C6CACFC6CACFC6CACFC6CACFC8CCCFD3D7D2D1D5D76D7279312518D9D1C0D9D1
        C0D9D1C00000D9D1C0B48B5D82694D9D82649A7F609A7F609A7F609A80619A80
        619A80619A80619A80619A80619A80619A80619A7F609B81619B816490704BD9
        D1C0D9D1C0D9D1C00000D8CEBBD9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9
        D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0D9D1C0
        D9D1C0D9D1C0D9D1C0D9D0BE0000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnDetalleIVAClick
    end
    object EditImporte: TDBEdit
      Left = 488
      Top = 65
      Width = 92
      Height = 21
      AutoSize = False
      DataField = 'IMPORTE'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object ComboBoxContraDESCSUBCUENTA: TDBLookupComboBox
      Left = 110
      Top = 65
      Width = 272
      Height = 21
      DataField = 'CONTRAPARTIDA'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleCargaAsiento.SSubcuentas
      ParentFont = False
      TabOrder = 5
    end
    object ComboBoxDESCSUBCUENTA: TDBLookupComboBox
      Left = 110
      Top = 25
      Width = 272
      Height = 21
      DataField = 'SUBCUENTA'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleCargaAsiento.SSubcuentas
      ParentFont = False
      TabOrder = 1
    end
    object EditComentario: TDBEdit
      Left = 11
      Top = 104
      Width = 372
      Height = 21
      AutoSize = False
      DataField = 'COMENTARIO'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object ComboBoxDescConceptos: TDBLookupComboBox
      Left = 444
      Top = 25
      Width = 289
      Height = 21
      DataField = 'ID_CONCEPTOS'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_CONCEPTOS'
      ListField = 'DESCRIPCION'
      ListSource = DataModuleCargaAsiento.SConceptos
      ParentFont = False
      TabOrder = 3
    end
    object ComboBoxCD_SUBCUENTA: TDBLookupComboBox
      Left = 11
      Top = 25
      Width = 100
      Height = 21
      DataField = 'SUBCUENTA'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DataModuleCargaAsiento.SSubcuentas
      ParentFont = False
      TabOrder = 0
      OnCloseUp = ComboBoxCD_SUBCUENTACloseUp
    end
    object ComboBoxContrapartidaSUBCUENTA: TDBLookupComboBox
      Left = 11
      Top = 65
      Width = 100
      Height = 21
      DataField = 'CONTRAPARTIDA'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DataModuleCargaAsiento.SSubcuentas
      ParentFont = False
      TabOrder = 4
    end
    object ComboBoxCD_CONCEPTO: TDBLookupComboBox
      Left = 389
      Top = 25
      Width = 55
      Height = 21
      DataField = 'ID_CONCEPTOS'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_CONCEPTOS'
      ListField = 'ID_CONCEPTOS'
      ListSource = DataModuleCargaAsiento.SConceptos
      ParentFont = False
      TabOrder = 2
    end
    object EditFactura: TDBEdit
      Left = 640
      Top = 65
      Width = 93
      Height = 21
      AutoSize = False
      DataField = 'NUMEROFACTURA'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object EditAnaliticaNom: TDBLookupComboBox
      Left = 493
      Top = 104
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
      ListSource = DataModuleCargaAsiento.SAnaliticas
      ParentFont = False
      TabOrder = 12
    end
    object ComboBoxAnaliticaA: TDBLookupComboBox
      Left = 389
      Top = 104
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
      ListSource = DataModuleCargaAsiento.SAnaliticas
      ParentFont = False
      TabOrder = 11
    end
    object EditDebeHaber: TDBEdit
      Left = 408
      Top = 65
      Width = 16
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'DEBEHABER'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EditCD_TIPO: TDBEdit
      Left = 450
      Top = 65
      Width = 17
      Height = 21
      TabStop = False
      AutoSize = False
      DataField = 'TIPOASIENTO'
      DataSource = SFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 419
    Top = 7
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 6
    object QFicheroAPUNTE: TSmallintField
      FieldName = 'APUNTE'
    end
    object QFicheroFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QFicheroSUBCUENTA: TStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QFicheroCONTRAPARTIDA: TStringField
      FieldName = 'CONTRAPARTIDA'
      Size = 10
    end
    object QFicheroID_CONCEPTOS: TStringField
      FieldName = 'ID_CONCEPTOS'
      Size = 3
    end
    object QFicheroDEBEHABER: TStringField
      FieldName = 'DEBEHABER'
      Size = 1
    end
    object QFicheroIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QFicheroNUMEROFACTURA: TStringField
      FieldName = 'NUMEROFACTURA'
      Size = 10
    end
    object QFicheroCUENTA_ANALITICA: TStringField
      FieldName = 'CUENTA_ANALITICA'
      Size = 10
    end
    object QFicheroCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 40
    end
    object QFicheroTIPOASIENTO: TIntegerField
      FieldName = 'TIPOASIENTO'
    end
    object QFicheroIVA: TFloatField
      FieldName = 'IVA'
    end
    object QFicheroCUOTAIVA: TFloatField
      FieldName = 'CUOTAIVA'
    end
    object QFicheroCUOTARECARGO: TFloatField
      FieldName = 'CUOTARECARGO'
    end
    object QFicheroRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
    object QFicheroMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 1
    end
    object QFicheroBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
    end
  end
end
