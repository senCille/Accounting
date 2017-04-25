object WCargaApuntes: TWCargaApuntes
  Left = 664
  Top = 367
  Caption = 'Carga de Apuntes'
  ClientHeight = 388
  ClientWidth = 627
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 347
    Width = 627
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      627
      41)
    object BtnNewSubcuenta: TButton
      Left = 17
      Top = 8
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Caption = 'A'#241'adir S&ubcta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnNewSubcuentaClick
    end
    object BtnReset: TButton
      Left = 111
      Top = 8
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Caption = '&Inicializar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnResetClick
    end
    object BtnAccept: TButton
      Left = 517
      Top = 8
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'Ac&eptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnAcceptClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 627
    Height = 36
    Align = alTop
    TabOrder = 1
    object Shape1: TShape
      Left = 6
      Top = 26
      Width = 741
      Height = 1
    end
    object lTitulo: TLabel
      Left = 6
      Top = 5
      Width = 218
      Height = 19
      Caption = 'Carga de Asientos Simplificada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 36
    Width = 627
    Height = 311
    ActivePage = TabSheetLastMoves
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheetAsientos: TTabSheet
      Caption = 'Asientos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Datos: TGroupBox
        Left = 0
        Top = 0
        Width = 619
        Height = 280
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 627
        ExplicitHeight = 285
        object Label17: TLabel
          Left = 8
          Top = 220
          Width = 78
          Height = 13
          Caption = 'Cuenta Anal'#237'tica'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 9
          Top = 177
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
        object lSubcuenta: TLabel
          Left = 9
          Top = 97
          Width = 51
          Height = 13
          Caption = 'Subcuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lContrapartida: TLabel
          Left = 9
          Top = 138
          Width = 67
          Height = 13
          Caption = 'Contrapartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 9
          Top = 57
          Width = 46
          Height = 13
          Caption = 'Concepto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 117
          Top = 17
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
        object Label4: TLabel
          Left = 9
          Top = 17
          Width = 29
          Height = 13
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 315
          Top = 17
          Width = 55
          Height = 14
          Caption = 'N'#186' Factura '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ComboBoxDS_ANALITICA: TDBLookupComboBox
          Left = 107
          Top = 236
          Width = 309
          Height = 21
          DataField = 'CUENTA_ANALITICA'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'CUENTA'
          ListField = 'NOMBRE'
          ListSource = DataModuleCargaApuntes.SAnaliticas
          ParentFont = False
          TabOrder = 11
        end
        object ComboBoxCD_ANALITICA: TDBLookupComboBox
          Left = 8
          Top = 236
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
          ListSource = DataModuleCargaApuntes.SAnaliticas
          ParentFont = False
          TabOrder = 10
        end
        object ComboBoxCD_CONCEPTO: TDBLookupComboBox
          Left = 9
          Top = 72
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
          ListSource = DataModuleCargaApuntes.SConceptos
          ParentFont = False
          TabOrder = 3
        end
        object ComboBoxDS_CONTRAPARTIDA: TDBLookupComboBox
          Left = 108
          Top = 153
          Width = 309
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
          ListSource = DataModuleCargaApuntes.SSubcuentas
          ParentFont = False
          TabOrder = 8
        end
        object ComboBoxDS_SUBCUENTA: TDBLookupComboBox
          Left = 108
          Top = 112
          Width = 309
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
          ListSource = DataModuleCargaApuntes.SSubcuentas
          ParentFont = False
          TabOrder = 6
        end
        object EditCOMENTARIO: TDBEdit
          Left = 9
          Top = 193
          Width = 406
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
          TabOrder = 9
        end
        object ComboBoxCD_SUBCUENTA: TDBLookupComboBox
          Left = 9
          Top = 112
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
          ListSource = DataModuleCargaApuntes.SSubcuentas
          ParentFont = False
          TabOrder = 5
        end
        object ComboBoxCD_CONTRAPARTIDA: TDBLookupComboBox
          Left = 9
          Top = 153
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
          ListSource = DataModuleCargaApuntes.SSubcuentas
          ParentFont = False
          TabOrder = 7
        end
        object EditIMPORTE: TDBEdit
          Left = 117
          Top = 32
          Width = 126
          Height = 22
          AutoSize = False
          DataField = 'IMPORTE'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = PonerDecimal
        end
        object EditFECHA: TDBEdit
          Left = 9
          Top = 32
          Width = 89
          Height = 21
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
        object EditNUMERO_FACTURA: TDBEdit
          Left = 315
          Top = 32
          Width = 102
          Height = 20
          AutoSize = False
          DataField = 'NUMERO_FACTURA'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object ComboBoxDS_CONCEPTO: TDBLookupComboBox
          Left = 64
          Top = 72
          Width = 353
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
          ListSource = DataModuleCargaApuntes.SConceptos
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object TabSheetLastMoves: TTabSheet
      Caption = #218'ltimos Movimientos'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 231
        Width = 619
        Height = 49
        Align = alBottom
        TabOrder = 0
        object Label1: TLabel
          Left = 293
          Top = 18
          Width = 63
          Height = 14
          Caption = 'Subcuenta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBText1: TDBText
          Left = 367
          Top = 18
          Width = 362
          Height = 14
          DataField = 'DESCSUBCUENTA'
          DataSource = SMovimientos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object BtnDelete: TButton
          Left = 102
          Top = 13
          Width = 88
          Height = 25
          Cursor = crHandPoint
          Caption = '&Borrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BtnDeleteClick
        end
        object BtnModify: TButton
          Left = 8
          Top = 13
          Width = 88
          Height = 25
          Cursor = crHandPoint
          Caption = '&Modificar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BtnModifyClick
        end
        object BtnLibroMayor: TButton
          Left = 195
          Top = 13
          Width = 88
          Height = 25
          Cursor = crHandPoint
          Caption = 'Ma&yor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BtnLibroMayorClick
        end
      end
      object DBGridMoves: TDBGrid
        Left = 0
        Top = 0
        Width = 619
        Height = 231
        Align = alClient
        DataSource = SMovimientos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = 11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGridMovesDrawColumnCell
        OnDblClick = DBGridMovesDblClick
        OnMouseDown = DBGridMovesMouseDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ASIENTO'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APUNTE'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBCUENTA'
            Width = 93
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
            Width = 266
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBEHABER'
            Width = 13
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTRAPARTIDA'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOASIENTO'
            Width = 13
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ASIENTONOMINA'
            Width = 14
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EJERCICIO'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Width = 25
            Visible = True
          end>
      end
    end
  end
  object QSubcuentas: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 256
    Top = 80
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 322
    Top = 8
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 266
    Top = 8
    object QFicheroFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QFicheroID_CONCEPTOS: TStringField
      FieldName = 'ID_CONCEPTOS'
      Size = 3
    end
    object QFicheroIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QFicheroSUBCUENTA: TStringField
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QFicheroCONTRAPARTIDA: TStringField
      FieldName = 'CONTRAPARTIDA'
      Size = 10
    end
    object QFicheroCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 40
    end
    object QFicheroNUMERO_FACTURA: TStringField
      FieldName = 'NUMERO_FACTURA'
      Size = 10
    end
    object QFicheroCUENTA_ANALITICA: TStringField
      FieldName = 'CUENTA_ANALITICA'
      Size = 10
    end
  end
  object Transaccion: TIBTransaction
    Left = 403
    Top = 5
  end
  object SMovimientos: TDataSource
    AutoEdit = False
    DataSet = QMovimientos
    Left = 187
    Top = 141
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
    Left = 99
    Top = 135
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
      DisplayWidth = 10
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
    object QMovimientosTIPOASIENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPOASIENTO'
      Origin = 'DIARIO.TIPOASIENTO'
    end
    object QMovimientosASIENTONOMINA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ASIENTONOMINA'
      Origin = 'DIARIO.ASIENTONOMINA'
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
end
