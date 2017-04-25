object WNuevaSubcuenta: TWNuevaSubcuenta
  Left = 536
  Top = 330
  BorderStyle = bsSingle
  ClientHeight = 411
  ClientWidth = 785
  Color = clBtnFace
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 22
    Top = 17
    Width = 161
    Height = 19
    Caption = 'Archivo de Subcuentas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape1: TShape
    Left = 22
    Top = 39
    Width = 697
    Height = 1
    Pen.Color = clNavy
  end
  object BtnAccept: TButton
    Left = 691
    Top = 355
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = 'Ac&eptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BtnAcceptClick
  end
  object BtnCancel: TButton
    Left = 691
    Top = 325
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnCancelClick
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 42
    Width = 659
    Height = 95
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label30: TLabel
      Left = 19
      Top = 43
      Width = 54
      Height = 13
      Caption = 'Descripci'#243'n'
    end
    object Label3: TLabel
      Left = 19
      Top = 17
      Width = 51
      Height = 13
      Caption = 'Subcuenta'
    end
    object Label4: TLabel
      Left = 19
      Top = 69
      Width = 67
      Height = 13
      Caption = 'Contrapartida'
    end
    object EditDESCRIPCION: TDBEdit
      Left = 103
      Top = 39
      Width = 509
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 48
      ParentFont = False
      TabOrder = 1
    end
    object EditSUBCUENTA: TDBEdit
      Left = 103
      Top = 13
      Width = 93
      Height = 21
      DataField = 'SUBCUENTA'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 12
      ParentFont = False
      TabOrder = 0
      OnExit = EditSUBCUENTAExit
    end
    object ComboBoxCOD_CONTRAPARTIDA: TDBLookupComboBox
      Left = 103
      Top = 65
      Width = 109
      Height = 21
      DataField = 'CONTRAPARTIDA'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'SUBCUENTA'
      ListSource = DMContaRef.SSubCuentas
      ParentFont = False
      TabOrder = 2
    end
    object ComboBoxDES_CONTRAPARTIDA: TDBLookupComboBox
      Left = 212
      Top = 65
      Width = 402
      Height = 21
      DataField = 'CONTRAPARTIDA'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'SUBCUENTA'
      ListField = 'DESCRIPCION'
      ListSource = DMContaRef.SSubCuentas
      ParentFont = False
      TabOrder = 3
    end
    object CheckBoxOBSOLETO: TDBCheckBox
      Left = 567
      Top = 15
      Width = 78
      Height = 16
      TabStop = False
      Alignment = taLeftJustify
      Caption = 'Obsoleto'
      DataField = 'OBSOLETO'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object ChecBoxSubctaRet: TCheckBox
      Left = 272
      Top = 16
      Width = 217
      Height = 17
      Caption = 'Crear subcuenta retenci'#243'n ventas'
      TabOrder = 5
    end
  end
  object GroupBox14: TGroupBox
    Left = 24
    Top = 137
    Width = 659
    Height = 175
    Caption = ' Datos Fiscales '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label37: TLabel
      Left = 19
      Top = 20
      Width = 29
      Height = 13
      Caption = 'N.I.F.'
    end
    object Label38: TLabel
      Left = 19
      Top = 122
      Width = 43
      Height = 13
      Caption = 'Provincia'
    end
    object Label36: TLabel
      Left = 543
      Top = 46
      Width = 12
      Height = 13
      Caption = 'N'#186
    end
    object Label40: TLabel
      Left = 19
      Top = 46
      Width = 43
      Height = 13
      Caption = 'Direcci'#243'n'
    end
    object Label41: TLabel
      Left = 19
      Top = 94
      Width = 55
      Height = 13
      Caption = 'Cod. Postal'
    end
    object Label42: TLabel
      Left = 222
      Top = 94
      Width = 45
      Height = 13
      Caption = 'Poblaci'#243'n'
    end
    object Label43: TLabel
      Left = 19
      Top = 149
      Width = 42
      Height = 13
      Caption = 'Tel'#233'fono'
    end
    object Label44: TLabel
      Left = 251
      Top = 149
      Width = 18
      Height = 13
      Caption = 'Fax'
    end
    object Label5: TLabel
      Left = 389
      Top = 122
      Width = 19
      Height = 13
      Caption = 'Pa'#237's'
    end
    object EditNIF: TDBEdit
      Left = 103
      Top = 16
      Width = 137
      Height = 21
      DataField = 'NIF'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = EditNIFExit
    end
    object ComboBoxPROVINCIA: TDBLookupComboBox
      Left = 103
      Top = 118
      Width = 225
      Height = 21
      DataField = 'PROVINCIA'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOMBRE'
      ListSource = DMRef.SProvinciasNom
      ParentFont = False
      TabOrder = 8
    end
    object EditDIRECCION: TDBEdit
      Left = 103
      Top = 42
      Width = 418
      Height = 21
      DataField = 'DIRECCION'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EditCODPOSTAL: TDBEdit
      Left = 103
      Top = 90
      Width = 97
      Height = 21
      DataField = 'CODPOSTAL'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EditTELEFONO: TDBEdit
      Left = 103
      Top = 145
      Width = 121
      Height = 21
      DataField = 'TELEFONO'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object EditFAX: TDBEdit
      Left = 282
      Top = 145
      Width = 121
      Height = 21
      DataField = 'FAX'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object CheckBoxPROFESIONAL: TDBCheckBox
      Left = 282
      Top = 18
      Width = 88
      Height = 17
      TabStop = False
      Alignment = taLeftJustify
      Caption = 'Profesional'
      DataField = 'PROFESIONAL'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object CheckBoxARRENDADOR: TDBCheckBox
      Left = 399
      Top = 18
      Width = 88
      Height = 17
      TabStop = False
      Alignment = taLeftJustify
      Caption = 'Arrendador'
      DataField = 'ARRENDADOR'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object EditDIRECCION1: TDBEdit
      Left = 103
      Top = 63
      Width = 418
      Height = 21
      DataField = 'DIRECCION1'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object EditPOBLACION: TDBEdit
      Left = 282
      Top = 90
      Width = 361
      Height = 21
      DataField = 'POBLACION'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object ComboBoxPAIS: TDBLookupComboBox
      Left = 418
      Top = 118
      Width = 225
      Height = 21
      DataField = 'PAIS'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'PAIS'
      ListField = 'NOMBRE'
      ListSource = DMRef.SPaisNom
      ParentFont = False
      TabOrder = 9
    end
    object EditNUMERO: TDBEdit
      Left = 564
      Top = 42
      Width = 81
      Height = 21
      DataField = 'NUMERO'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CheckBoxINTRACOMUNITARIO: TDBCheckBox
      Left = 524
      Top = 18
      Width = 121
      Height = 16
      TabStop = False
      Alignment = taLeftJustify
      Caption = 'Intracomunitario'
      DataField = 'INTRACOMUNITARIO'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object GroupBox25: TGroupBox
    Left = 24
    Top = 312
    Width = 659
    Height = 75
    Caption = ' Forma de Pago '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Label64: TLabel
      Left = 418
      Top = 20
      Width = 51
      Height = 13
      Caption = 'D'#237'a Pago 1'
    end
    object Label65: TLabel
      Left = 103
      Top = 20
      Width = 57
      Height = 13
      Caption = 'Forma Pago'
    end
    object Label66: TLabel
      Left = 503
      Top = 20
      Width = 51
      Height = 13
      Caption = 'D'#237'a Pago 2'
    end
    object Label1: TLabel
      Left = 585
      Top = 20
      Width = 51
      Height = 13
      Caption = 'D'#237'a Pago 3'
    end
    object EditDIAPAGO1: TDBEdit
      Left = 418
      Top = 34
      Width = 59
      Height = 21
      DataField = 'DIAPAGO1'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EditComboBoxCD_FORMAPAGO: TDBLookupComboBox
      Left = 103
      Top = 34
      Width = 68
      Height = 21
      DataField = 'FORMAPAGO'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'FORMAPAGO'
      ListField = 'FORMAPAGO'
      ListSource = SFormaPago
      ParentFont = False
      TabOrder = 0
    end
    object EditComboBoxDS_FORMAPAGO: TDBLookupComboBox
      Left = 171
      Top = 34
      Width = 231
      Height = 21
      DataField = 'FORMAPAGO'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'FORMAPAGO'
      ListField = 'DESCRIBE'
      ListSource = SFormaPago
      ParentFont = False
      TabOrder = 1
    end
    object EditDIAPAGO2: TDBEdit
      Left = 503
      Top = 34
      Width = 59
      Height = 21
      DataField = 'DIAPAGO2'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EditDIAPAGO3: TDBEdit
      Left = 585
      Top = 34
      Width = 59
      Height = 21
      DataField = 'DIAPAGO3'
      DataSource = DSFichero
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object DSFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 305
    Top = 5
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    OnNewRecord = QFicheroNewRecord
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCTAS'
      
        '  (PRESTOT                        ,PRES12                       ' +
        '  ,PRES11                         ,PRES10                       ' +
        '  ,PRES09                         ,PRES08                       ' +
        '  ,PRES07                         ,PRES06                       ' +
        '  ,PRES05                         ,PRES04                       ' +
        '  ,PRES03                         ,PRES02                       ' +
        '  ,PRES01                         ,RECARGO                      ' +
        '  ,IVA                            ,ANTDB                        ' +
        '  ,ANTHB                          ,ANTHB12                      ' +
        '  ,ANTHB11                        ,ANTHB10                      ' +
        '  ,ANTHB09                        ,ANTHB08                      ' +
        '  ,ANTHB07                        ,ANTHB06                      ' +
        '  ,ANTHB05                        ,ANTHB04                      ' +
        '  ,ANTHB03                        ,ANTHB02                      ' +
        '  ,ANTHB01                        ,ANTDB12                      ' +
        '  ,ANTDB11                        ,ANTDB10                      ' +
        '  ,ANTDB09                        ,ANTDB08                      ' +
        '  ,ANTDB07                        ,ANTDB06                      ' +
        '  ,ANTDB05                        ,ANTDB04                      ' +
        '  ,ANTDB03                        ,ANTDB02                      ' +
        '  ,ANTDB01                        ,ACUHB12                      ' +
        '  ,ACUHB11                        ,ACUHB10                      ' +
        '  ,ACUHB09                        ,ACUHB08                      ' +
        '  ,ACUHB07                        ,ACUHB06                      ' +
        '  ,ACUHB05                        ,ACUHB04                      ' +
        '  ,ACUHB03                        ,ACUHB02                      ' +
        '  ,ACUHB01                        ,ACUDB12                      ' +
        '  ,ACUDB11                        ,ACUDB10                      ' +
        '  ,ACUDB09                        ,ACUDB08                      ' +
        '  ,ACUDB07                        ,ACUDB06                      ' +
        '  ,ACUDB05                        ,ACUDB04                      ' +
        '  ,ACUDB03                        ,ACUDB02                      ' +
        '  ,ACUDB01                        ,SUMAHB                       ' +
        '  ,SUMADB                         ,ABREVIATURA                  ' +
        '  ,CONTRAPARTIDA                  ,SUBCUENTA                    ' +
        '  ,NUMERO                         ,CODPOSTAL                    ' +
        '  ,DIAPAGO3                       ,DIAPAGO2                     ' +
        '  ,DIAPAGO1                       ,NIF                          ' +
        '  ,FAX                            ,TELEFONO                     ' +
        '  ,DESCRIPCION                    ,PROVINCIA                    ' +
        '  ,POBLACION                      ,PAIS                         ' +
        '  ,INTRACOMUNITARIO               ,FORMAPAGO                    ' +
        '  ,DIRECCION1                     ,PROFESIONAL                  ' +
        '  ,ARRENDADOR                     ,TIPOIVA                      ' +
        '  ,DIRECCION                      ,OBSOLETO                     ' +
        '  ,SUBCTARET                      )'
      'VALUES'
      
        '  (:PRESTOT                        ,:PRES12                     ' +
        '    ,:PRES11                         ,:PRES10                   ' +
        '      ,:PRES09                         ,:PRES08                 ' +
        '        ,:PRES07                         ,:PRES06               ' +
        '          ,:PRES05                         ,:PRES04             ' +
        '            ,:PRES03                         ,:PRES02           ' +
        '              ,:PRES01                         ,:RECARGO        ' +
        '                ,:IVA                            ,:ANTDB        ' +
        '                  ,:ANTHB                          ,:ANTHB12    ' +
        '                    ,:ANTHB11                        ,:ANTHB10  ' +
        '                      ,:ANTHB09                        ,:ANTHB08' +
        '                        ,:ANTHB07                        ,:ANTHB' +
        '06                        ,:ANTHB05                        ,:ANT' +
        'HB04                        ,:ANTHB03                        ,:A' +
        'NTHB02                        ,:ANTHB01                        ,' +
        ':ANTDB12                        ,:ANTDB11                       ' +
        ' ,:ANTDB10                        ,:ANTDB09                     ' +
        '   ,:ANTDB08                        ,:ANTDB07                   ' +
        '     ,:ANTDB06                        ,:ANTDB05                 ' +
        '       ,:ANTDB04                        ,:ANTDB03               ' +
        '         ,:ANTDB02                        ,:ANTDB01             ' +
        '           ,:ACUHB12                        ,:ACUHB11           ' +
        '             ,:ACUHB10                        ,:ACUHB09         ' +
        '               ,:ACUHB08                        ,:ACUHB07       ' +
        '                 ,:ACUHB06                        ,:ACUHB05     ' +
        '                   ,:ACUHB04                        ,:ACUHB03   ' +
        '                     ,:ACUHB02                        ,:ACUHB01 ' +
        '                       ,:ACUDB12                        ,:ACUDB1' +
        '1                        ,:ACUDB10                        ,:ACUD' +
        'B09                        ,:ACUDB08                        ,:AC' +
        'UDB07                        ,:ACUDB06                        ,:' +
        'ACUDB05                        ,:ACUDB04                        ' +
        ',:ACUDB03                        ,:ACUDB02                      ' +
        '  ,:ACUDB01                        ,:SUMAHB                     ' +
        '    ,:SUMADB                         ,:ABREVIATURA              ' +
        '      ,:CONTRAPARTIDA                  ,:SUBCUENTA              ' +
        '        ,:NUMERO                         ,:CODPOSTAL            ' +
        '          ,:DIAPAGO3                       ,:DIAPAGO2           ' +
        '            ,:DIAPAGO1                       ,:NIF              ' +
        '              ,:FAX                            ,:TELEFONO       ' +
        '                ,:DESCRIPCION                    ,:PROVINCIA    ' +
        '                  ,:POBLACION                      ,:PAIS       ' +
        '                    ,:INTRACOMUNITARIO               ,:FORMAPAGO' +
        '                      ,:DIRECCION1                     ,:PROFESI' +
        'ONAL                    ,:ARRENDADOR                     ,:TIPOI' +
        'VA                        ,:DIRECCION                      ,:OBS' +
        'OLETO                       ,:SUBCTARET                      )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM SUBCTAS')
    ModifySQL.Strings = (
      'UPDATE SUBCTAS'
      'SET'
      
        '  PRESTOT                        =:PRESTOT                      ' +
        '   '
      
        '  ,PRES12                         =:PRES12                      ' +
        '    '
      
        '  ,PRES11                         =:PRES11                      ' +
        '    '
      
        '  ,PRES10                         =:PRES10                      ' +
        '    '
      
        '  ,PRES09                         =:PRES09                      ' +
        '    '
      
        '  ,PRES08                         =:PRES08                      ' +
        '    '
      
        '  ,PRES07                         =:PRES07                      ' +
        '    '
      
        '  ,PRES06                         =:PRES06                      ' +
        '    '
      
        '  ,PRES05                         =:PRES05                      ' +
        '    '
      
        '  ,PRES04                         =:PRES04                      ' +
        '    '
      
        '  ,PRES03                         =:PRES03                      ' +
        '    '
      
        '  ,PRES02                         =:PRES02                      ' +
        '    '
      
        '  ,PRES01                         =:PRES01                      ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,ANTDB                          =:ANTDB                       ' +
        '    '
      
        '  ,ANTHB                          =:ANTHB                       ' +
        '    '
      
        '  ,ANTHB12                        =:ANTHB12                     ' +
        '    '
      
        '  ,ANTHB11                        =:ANTHB11                     ' +
        '    '
      
        '  ,ANTHB10                        =:ANTHB10                     ' +
        '    '
      
        '  ,ANTHB09                        =:ANTHB09                     ' +
        '    '
      
        '  ,ANTHB08                        =:ANTHB08                     ' +
        '    '
      
        '  ,ANTHB07                        =:ANTHB07                     ' +
        '    '
      
        '  ,ANTHB06                        =:ANTHB06                     ' +
        '    '
      
        '  ,ANTHB05                        =:ANTHB05                     ' +
        '    '
      
        '  ,ANTHB04                        =:ANTHB04                     ' +
        '    '
      
        '  ,ANTHB03                        =:ANTHB03                     ' +
        '    '
      
        '  ,ANTHB02                        =:ANTHB02                     ' +
        '    '
      
        '  ,ANTHB01                        =:ANTHB01                     ' +
        '    '
      
        '  ,ANTDB12                        =:ANTDB12                     ' +
        '    '
      
        '  ,ANTDB11                        =:ANTDB11                     ' +
        '    '
      
        '  ,ANTDB10                        =:ANTDB10                     ' +
        '    '
      
        '  ,ANTDB09                        =:ANTDB09                     ' +
        '    '
      
        '  ,ANTDB08                        =:ANTDB08                     ' +
        '    '
      
        '  ,ANTDB07                        =:ANTDB07                     ' +
        '    '
      
        '  ,ANTDB06                        =:ANTDB06                     ' +
        '    '
      
        '  ,ANTDB05                        =:ANTDB05                     ' +
        '    '
      
        '  ,ANTDB04                        =:ANTDB04                     ' +
        '    '
      
        '  ,ANTDB03                        =:ANTDB03                     ' +
        '    '
      
        '  ,ANTDB02                        =:ANTDB02                     ' +
        '    '
      
        '  ,ANTDB01                        =:ANTDB01                     ' +
        '    '
      
        '  ,ACUHB12                        =:ACUHB12                     ' +
        '    '
      
        '  ,ACUHB11                        =:ACUHB11                     ' +
        '    '
      
        '  ,ACUHB10                        =:ACUHB10                     ' +
        '    '
      
        '  ,ACUHB09                        =:ACUHB09                     ' +
        '    '
      
        '  ,ACUHB08                        =:ACUHB08                     ' +
        '    '
      
        '  ,ACUHB07                        =:ACUHB07                     ' +
        '    '
      
        '  ,ACUHB06                        =:ACUHB06                     ' +
        '    '
      
        '  ,ACUHB05                        =:ACUHB05                     ' +
        '    '
      
        '  ,ACUHB04                        =:ACUHB04                     ' +
        '    '
      
        '  ,ACUHB03                        =:ACUHB03                     ' +
        '    '
      
        '  ,ACUHB02                        =:ACUHB02                     ' +
        '    '
      
        '  ,ACUHB01                        =:ACUHB01                     ' +
        '    '
      
        '  ,ACUDB12                        =:ACUDB12                     ' +
        '    '
      
        '  ,ACUDB11                        =:ACUDB11                     ' +
        '    '
      
        '  ,ACUDB10                        =:ACUDB10                     ' +
        '    '
      
        '  ,ACUDB09                        =:ACUDB09                     ' +
        '    '
      
        '  ,ACUDB08                        =:ACUDB08                     ' +
        '    '
      
        '  ,ACUDB07                        =:ACUDB07                     ' +
        '    '
      
        '  ,ACUDB06                        =:ACUDB06                     ' +
        '    '
      
        '  ,ACUDB05                        =:ACUDB05                     ' +
        '    '
      
        '  ,ACUDB04                        =:ACUDB04                     ' +
        '    '
      
        '  ,ACUDB03                        =:ACUDB03                     ' +
        '    '
      
        '  ,ACUDB02                        =:ACUDB02                     ' +
        '    '
      
        '  ,ACUDB01                        =:ACUDB01                     ' +
        '    '
      
        '  ,SUMAHB                         =:SUMAHB                      ' +
        '    '
      
        '  ,SUMADB                         =:SUMADB                      ' +
        '    '
      
        '  ,ABREVIATURA                    =:ABREVIATURA                 ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,DIAPAGO3                       =:DIAPAGO3                    ' +
        '    '
      
        '  ,DIAPAGO2                       =:DIAPAGO2                    ' +
        '    '
      
        '  ,DIAPAGO1                       =:DIAPAGO1                    ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PAIS                           =:PAIS                        ' +
        '    '
      
        '  ,INTRACOMUNITARIO               =:INTRACOMUNITARIO            ' +
        '    '
      
        '  ,FORMAPAGO                      =:FORMAPAGO                   ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,PROFESIONAL                    =:PROFESIONAL                 ' +
        '    '
      
        '  ,ARRENDADOR                     =:ARRENDADOR                  ' +
        '    '
      
        '  ,TIPOIVA                        =:TIPOIVA                     ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,OBSOLETO                       =:OBSOLETO                    ' +
        '    '
      
        '  ,SUBCTARET                      =:SUBCTARET                   ' +
        '    '
      ','
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   '
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    ParamCheck = True
    UniDirectional = False
    Left = 271
    Top = 4
    object QFicheroSUBCUENTA: TIBStringField
      DisplayWidth = 12
      FieldName = 'SUBCUENTA'
      Origin = 'SUBCTAS.SUBCUENTA'
      Required = True
      Size = 10
    end
    object QFicheroDESCRIPCION: TIBStringField
      DisplayWidth = 48
      FieldName = 'DESCRIPCION'
      Origin = 'SUBCTAS.DESCRIPCION'
      Size = 80
    end
    object QFicheroSUMADB: TFloatField
      DisplayWidth = 13
      FieldName = 'SUMADB'
      Origin = 'SUBCTAS.SUMADB'
      DisplayFormat = '###,###,###,##0.#0'
    end
    object QFicheroSUMAHB: TFloatField
      DisplayWidth = 13
      FieldName = 'SUMAHB'
      Origin = 'SUBCTAS.SUMAHB'
      DisplayFormat = '###,###,###,##0.#0'
    end
    object QFicheroSaldo: TFloatField
      DisplayLabel = 'SALDO'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      DisplayFormat = '###,###,###,##0.#0'
      Calculated = True
    end
    object QFicheroACUDB01: TFloatField
      FieldName = 'ACUDB01'
      Origin = 'SUBCTAS.ACUDB01'
      Visible = False
    end
    object QFicheroACUDB02: TFloatField
      FieldName = 'ACUDB02'
      Origin = 'SUBCTAS.ACUDB02'
      Visible = False
    end
    object QFicheroACUDB03: TFloatField
      FieldName = 'ACUDB03'
      Origin = 'SUBCTAS.ACUDB03'
      Visible = False
    end
    object QFicheroACUDB04: TFloatField
      FieldName = 'ACUDB04'
      Origin = 'SUBCTAS.ACUDB04'
      Visible = False
    end
    object QFicheroACUDB05: TFloatField
      FieldName = 'ACUDB05'
      Origin = 'SUBCTAS.ACUDB05'
      Visible = False
    end
    object QFicheroACUDB06: TFloatField
      FieldName = 'ACUDB06'
      Origin = 'SUBCTAS.ACUDB06'
      Visible = False
    end
    object QFicheroACUDB07: TFloatField
      FieldName = 'ACUDB07'
      Origin = 'SUBCTAS.ACUDB07'
      Visible = False
    end
    object QFicheroACUDB08: TFloatField
      FieldName = 'ACUDB08'
      Origin = 'SUBCTAS.ACUDB08'
      Visible = False
    end
    object QFicheroACUDB09: TFloatField
      FieldName = 'ACUDB09'
      Origin = 'SUBCTAS.ACUDB09'
      Visible = False
    end
    object QFicheroACUDB10: TFloatField
      FieldName = 'ACUDB10'
      Origin = 'SUBCTAS.ACUDB10'
      Visible = False
    end
    object QFicheroACUDB11: TFloatField
      FieldName = 'ACUDB11'
      Origin = 'SUBCTAS.ACUDB11'
      Visible = False
    end
    object QFicheroACUDB12: TFloatField
      FieldName = 'ACUDB12'
      Origin = 'SUBCTAS.ACUDB12'
      Visible = False
    end
    object QFicheroACUHB01: TFloatField
      FieldName = 'ACUHB01'
      Origin = 'SUBCTAS.ACUHB01'
      Visible = False
    end
    object QFicheroACUHB02: TFloatField
      FieldName = 'ACUHB02'
      Origin = 'SUBCTAS.ACUHB02'
      Visible = False
    end
    object QFicheroACUHB03: TFloatField
      FieldName = 'ACUHB03'
      Origin = 'SUBCTAS.ACUHB03'
      Visible = False
    end
    object QFicheroACUHB04: TFloatField
      FieldName = 'ACUHB04'
      Origin = 'SUBCTAS.ACUHB04'
      Visible = False
    end
    object QFicheroACUHB05: TFloatField
      FieldName = 'ACUHB05'
      Origin = 'SUBCTAS.ACUHB05'
      Visible = False
    end
    object QFicheroACUHB06: TFloatField
      FieldName = 'ACUHB06'
      Origin = 'SUBCTAS.ACUHB06'
      Visible = False
    end
    object QFicheroACUHB07: TFloatField
      FieldName = 'ACUHB07'
      Origin = 'SUBCTAS.ACUHB07'
      Visible = False
    end
    object QFicheroACUHB08: TFloatField
      FieldName = 'ACUHB08'
      Origin = 'SUBCTAS.ACUHB08'
      Visible = False
    end
    object QFicheroACUHB09: TFloatField
      FieldName = 'ACUHB09'
      Origin = 'SUBCTAS.ACUHB09'
      Visible = False
    end
    object QFicheroACUHB10: TFloatField
      FieldName = 'ACUHB10'
      Origin = 'SUBCTAS.ACUHB10'
      Visible = False
    end
    object QFicheroACUHB11: TFloatField
      FieldName = 'ACUHB11'
      Origin = 'SUBCTAS.ACUHB11'
      Visible = False
    end
    object QFicheroACUHB12: TFloatField
      FieldName = 'ACUHB12'
      Origin = 'SUBCTAS.ACUHB12'
      Visible = False
    end
    object QFicheroANTDB: TFloatField
      FieldName = 'ANTDB'
      Origin = 'SUBCTAS.ANTDB'
      Visible = False
    end
    object QFicheroANTDB01: TFloatField
      FieldName = 'ANTDB01'
      Origin = 'SUBCTAS.ANTDB01'
      Visible = False
    end
    object QFicheroANTDB02: TFloatField
      FieldName = 'ANTDB02'
      Origin = 'SUBCTAS.ANTDB02'
      Visible = False
    end
    object QFicheroANTDB03: TFloatField
      FieldName = 'ANTDB03'
      Origin = 'SUBCTAS.ANTDB03'
      Visible = False
    end
    object QFicheroANTDB04: TFloatField
      FieldName = 'ANTDB04'
      Origin = 'SUBCTAS.ANTDB04'
      Visible = False
    end
    object QFicheroANTDB05: TFloatField
      FieldName = 'ANTDB05'
      Origin = 'SUBCTAS.ANTDB05'
      Visible = False
    end
    object QFicheroANTDB06: TFloatField
      FieldName = 'ANTDB06'
      Origin = 'SUBCTAS.ANTDB06'
      Visible = False
    end
    object QFicheroANTDB07: TFloatField
      FieldName = 'ANTDB07'
      Origin = 'SUBCTAS.ANTDB07'
      Visible = False
    end
    object QFicheroANTDB08: TFloatField
      FieldName = 'ANTDB08'
      Origin = 'SUBCTAS.ANTDB08'
      Visible = False
    end
    object QFicheroANTDB09: TFloatField
      FieldName = 'ANTDB09'
      Origin = 'SUBCTAS.ANTDB09'
      Visible = False
    end
    object QFicheroANTDB10: TFloatField
      FieldName = 'ANTDB10'
      Origin = 'SUBCTAS.ANTDB10'
      Visible = False
    end
    object QFicheroANTDB11: TFloatField
      FieldName = 'ANTDB11'
      Origin = 'SUBCTAS.ANTDB11'
      Visible = False
    end
    object QFicheroANTDB12: TFloatField
      FieldName = 'ANTDB12'
      Origin = 'SUBCTAS.ANTDB12'
      Visible = False
    end
    object QFicheroANTHB: TFloatField
      FieldName = 'ANTHB'
      Origin = 'SUBCTAS.ANTHB'
      Visible = False
    end
    object QFicheroANTHB01: TFloatField
      FieldName = 'ANTHB01'
      Origin = 'SUBCTAS.ANTHB01'
      Visible = False
    end
    object QFicheroANTHB02: TFloatField
      FieldName = 'ANTHB02'
      Origin = 'SUBCTAS.ANTHB02'
      Visible = False
    end
    object QFicheroANTHB03: TFloatField
      FieldName = 'ANTHB03'
      Origin = 'SUBCTAS.ANTHB03'
      Visible = False
    end
    object QFicheroANTHB04: TFloatField
      FieldName = 'ANTHB04'
      Origin = 'SUBCTAS.ANTHB04'
      Visible = False
    end
    object QFicheroANTHB05: TFloatField
      FieldName = 'ANTHB05'
      Origin = 'SUBCTAS.ANTHB05'
      Visible = False
    end
    object QFicheroANTHB06: TFloatField
      FieldName = 'ANTHB06'
      Origin = 'SUBCTAS.ANTHB06'
      Visible = False
    end
    object QFicheroANTHB07: TFloatField
      FieldName = 'ANTHB07'
      Origin = 'SUBCTAS.ANTHB07'
      Visible = False
    end
    object QFicheroANTHB08: TFloatField
      FieldName = 'ANTHB08'
      Origin = 'SUBCTAS.ANTHB08'
      Visible = False
    end
    object QFicheroANTHB09: TFloatField
      FieldName = 'ANTHB09'
      Origin = 'SUBCTAS.ANTHB09'
      Visible = False
    end
    object QFicheroANTHB10: TFloatField
      FieldName = 'ANTHB10'
      Origin = 'SUBCTAS.ANTHB10'
      Visible = False
    end
    object QFicheroANTHB11: TFloatField
      FieldName = 'ANTHB11'
      Origin = 'SUBCTAS.ANTHB11'
      Visible = False
    end
    object QFicheroANTHB12: TFloatField
      FieldName = 'ANTHB12'
      Origin = 'SUBCTAS.ANTHB12'
      Visible = False
    end
    object QFicheroARRENDADOR: TIBStringField
      FieldName = 'ARRENDADOR'
      Origin = 'SUBCTAS.ARRENDADOR'
      Visible = False
      Size = 1
    end
    object QFicheroCONTRAPARTIDA: TIBStringField
      FieldName = 'CONTRAPARTIDA'
      Origin = 'SUBCTAS.CONTRAPARTIDA'
      Visible = False
      Size = 10
    end
    object QFicheroDIRECCION: TIBStringField
      FieldName = 'DIRECCION'
      Origin = 'SUBCTAS.DIRECCION'
      Visible = False
      Size = 35
    end
    object QFicheroFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'SUBCTAS.FAX'
      Visible = False
      Size = 16
    end
    object QFicheroIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'SUBCTAS.IVA'
      Visible = False
    end
    object QFicheroPROFESIONAL: TIBStringField
      FieldName = 'PROFESIONAL'
      Origin = 'SUBCTAS.PROFESIONAL'
      Visible = False
      Size = 1
    end
    object QFicheroRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'SUBCTAS.RECARGO'
      Visible = False
    end
    object QFicheroTELEFONO: TIBStringField
      FieldName = 'TELEFONO'
      Origin = 'SUBCTAS.TELEFONO'
      Visible = False
      Size = 16
    end
    object QFicheroTIPOIVA: TIBStringField
      FieldName = 'TIPOIVA'
      Origin = 'SUBCTAS.TIPOIVA'
      Visible = False
      Size = 1
    end
    object QFicheroDIRECCION1: TIBStringField
      FieldName = 'DIRECCION1'
      Origin = 'SUBCTAS.DIRECCION1'
      Visible = False
      Size = 35
    end
    object QFicheroNIF: TIBStringField
      FieldName = 'NIF'
      Origin = 'SUBCTAS.NIF'
      Visible = False
    end
    object QFicheroCODPOSTAL: TIBStringField
      FieldName = 'CODPOSTAL'
      Origin = 'SUBCTAS.CODPOSTAL'
      Visible = False
      Size = 10
    end
    object QFicheroPOBLACION: TIBStringField
      FieldName = 'POBLACION'
      Origin = 'SUBCTAS.POBLACION'
      Visible = False
      Size = 60
    end
    object QFicheroPROVINCIA: TIBStringField
      FieldName = 'PROVINCIA'
      Origin = 'SUBCTAS.PROVINCIA'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object QFicheroPAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = 'SUBCTAS.PAIS'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object QFicheroNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = 'SUBCTAS.NUMERO'
      Visible = False
      Size = 10
    end
    object QFicheroFORMAPAGO: TIBStringField
      FieldName = 'FORMAPAGO'
      Origin = 'SUBCTAS.FORMAPAGO'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object QFicheroDIAPAGO1: TSmallintField
      FieldName = 'DIAPAGO1'
      Origin = 'SUBCTAS.DIAPAGO1'
      Visible = False
    end
    object QFicheroDIAPAGO2: TSmallintField
      FieldName = 'DIAPAGO2'
      Origin = 'SUBCTAS.DIAPAGO2'
      Visible = False
    end
    object QFicheroPRES01: TFloatField
      FieldName = 'PRES01'
      Origin = 'SUBCTAS.PRES01'
      Visible = False
    end
    object QFicheroPRES02: TFloatField
      FieldName = 'PRES02'
      Origin = 'SUBCTAS.PRES02'
      Visible = False
    end
    object QFicheroPRES03: TFloatField
      FieldName = 'PRES03'
      Origin = 'SUBCTAS.PRES03'
      Visible = False
    end
    object QFicheroPRES04: TFloatField
      FieldName = 'PRES04'
      Origin = 'SUBCTAS.PRES04'
      Visible = False
    end
    object QFicheroPRES05: TFloatField
      FieldName = 'PRES05'
      Origin = 'SUBCTAS.PRES05'
      Visible = False
    end
    object QFicheroPRES06: TFloatField
      FieldName = 'PRES06'
      Origin = 'SUBCTAS.PRES06'
      Visible = False
    end
    object QFicheroPRES07: TFloatField
      FieldName = 'PRES07'
      Origin = 'SUBCTAS.PRES07'
      Visible = False
    end
    object QFicheroPRES08: TFloatField
      FieldName = 'PRES08'
      Origin = 'SUBCTAS.PRES08'
      Visible = False
    end
    object QFicheroPRES09: TFloatField
      FieldName = 'PRES09'
      Origin = 'SUBCTAS.PRES09'
      Visible = False
    end
    object QFicheroPRES10: TFloatField
      FieldName = 'PRES10'
      Origin = 'SUBCTAS.PRES10'
      Visible = False
    end
    object QFicheroPRES11: TFloatField
      FieldName = 'PRES11'
      Origin = 'SUBCTAS.PRES11'
      Visible = False
    end
    object QFicheroPRES12: TFloatField
      FieldName = 'PRES12'
      Origin = 'SUBCTAS.PRES12'
      Visible = False
    end
    object QFicheroPRESTOT: TFloatField
      FieldName = 'PRESTOT'
      Origin = 'SUBCTAS.PRESTOT'
      Visible = False
    end
    object QFicheroOBSOLETO: TIBStringField
      FieldName = 'OBSOLETO'
      Origin = 'SUBCTAS.OBSOLETO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QFicheroDESCFORMAPAGO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCFORMAPAGO'
      LookupDataSet = DMRef.QFormaPago
      LookupKeyFields = 'FORMAPAGO'
      LookupResultField = 'DESCRIBE'
      KeyFields = 'FORMAPAGO'
      Visible = False
      Size = 40
      Lookup = True
    end
    object QFicheroDIAPAGO3: TSmallintField
      FieldName = 'DIAPAGO3'
      Origin = 'SUBCTAS.DIAPAGO3'
    end
    object QFicheroABREVIATURA: TIBStringField
      FieldName = 'ABREVIATURA'
      Origin = 'SUBCTAS.ABREVIATURA'
      Size = 10
    end
    object QFicheroINTRACOMUNITARIO: TIBStringField
      FieldName = 'INTRACOMUNITARIO'
      Origin = 'SUBCTAS.INTRACOMUNITARIO'
      FixedChar = True
      Size = 1
    end
    object QFicheroSUBCTARET: TIBStringField
      FieldName = 'SUBCTARET'
      Origin = 'SUBCTAS.SUBCTARET'
      Size = 10
    end
  end
  object Transaccion: TIBTransaction
    Left = 235
    Top = 5
  end
  object QFormaPago: TIBDataSet
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM FORMAS'
      'WHERE'
      
        '  FORMAPAGO                      =:old_FORMAPAGO                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO FORMAS'
      
        '  (DESCRIBE                       ,INTERVALO                    ' +
        '  ,NUMVENCI                       ,FORMAPAGO                    ' +
        '  ,CLASE                          ,OBSOLETO                     ' +
        '  )'
      'VALUES'
      
        '  (:DESCRIBE                       ,:INTERVALO                  ' +
        '    ,:NUMVENCI                       ,:FORMAPAGO                ' +
        '      ,:CLASE                          ,:OBSOLETO               ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM FORMAS'
      'WHERE'
      
        '  FORMAPAGO                      =?FORMAPAGO                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM FORMAS')
    ModifySQL.Strings = (
      'UPDATE FORMAS'
      'SET'
      
        '  DESCRIBE                       =:DESCRIBE                     ' +
        '   '
      
        '  ,INTERVALO                      =:INTERVALO                   ' +
        '    '
      
        '  ,NUMVENCI                       =:NUMVENCI                    ' +
        '    '
      
        '  ,CLASE                          =:CLASE                       ' +
        '    '
      
        '  ,OBSOLETO                       =:OBSOLETO                    ' +
        '    '
      'WHERE'
      
        '  FORMAPAGO                      =:FORMAPAGO                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 663
    Top = 10
    object QFormaPagoFORMAPAGO: TIBStringField
      FieldName = 'FORMAPAGO'
      Origin = 'FORMAS.FORMAPAGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QFormaPagoCLASE: TIBStringField
      FieldName = 'CLASE'
      Origin = 'FORMAS.CLASE'
      FixedChar = True
      Size = 1
    end
    object QFormaPagoDESCRIBE: TIBStringField
      FieldName = 'DESCRIBE'
      Origin = 'FORMAS.DESCRIBE'
      Size = 40
    end
    object QFormaPagoINTERVALO: TSmallintField
      FieldName = 'INTERVALO'
      Origin = 'FORMAS.INTERVALO'
    end
    object QFormaPagoNUMVENCI: TSmallintField
      FieldName = 'NUMVENCI'
      Origin = 'FORMAS.NUMVENCI'
    end
    object QFormaPagoOBSOLETO: TIBStringField
      FieldName = 'OBSOLETO'
      Origin = 'FORMAS.OBSOLETO'
      FixedChar = True
      Size = 1
    end
  end
  object SFormaPago: TDataSource
    AutoEdit = False
    DataSet = QFormaPago
    Left = 736
    Top = 8
  end
end
