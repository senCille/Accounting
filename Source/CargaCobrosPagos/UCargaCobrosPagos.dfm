object WCargaCobrosPagos: TWCargaCobrosPagos
  Left = 461
  Top = 291
  Caption = 'Carga R'#225'pida de Cobros / Pagos'
  ClientHeight = 519
  ClientWidth = 762
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
  object Panel2: TPanel
    Left = 0
    Top = 478
    Width = 762
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      762
      41)
    object BtnEdtSubcuenta: TButton
      Left = 9
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
      OnClick = BtnEdtSubcuentaClick
    end
    object BtnEdtGuardar: TButton
      Left = 679
      Top = 8
      Width = 83
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
      TabOrder = 1
      OnClick = BtnEdtGuardarClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 35
    Align = alTop
    TabOrder = 1
    object Shape1: TShape
      Left = 6
      Top = 25
      Width = 741
      Height = 1
    end
    object lTitulo: TLabel
      Left = 6
      Top = 4
      Width = 229
      Height = 19
      Caption = 'Carga R'#225'pida de Cobros / Pagos'
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
    Top = 35
    Width = 762
    Height = 443
    ActivePage = TabSheetAsientos
    Align = alClient
    TabOrder = 2
    object TabSheetAsientos: TTabSheet
      Caption = 'Asientos'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 754
        Height = 97
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object LbSubcuenta: TLabel
          Left = 15
          Top = 16
          Width = 116
          Height = 14
          Caption = 'Subcuenta Banco / Caja'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object LbCtoSubcuenta: TLabel
          Left = 406
          Top = 16
          Width = 106
          Height = 14
          Caption = 'Concepto por Defecto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object eConceptoDfto: TDBLookupComboBox
          Left = 406
          Top = 31
          Width = 55
          Height = 21
          DataField = 'ID_CONCEPTOS_DFTO'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DMContaRef.SConceptos
          ParentFont = False
          TabOrder = 2
        end
        object eSubcuentaBanco: TDBLookupComboBox
          Left = 15
          Top = 31
          Width = 91
          Height = 22
          DataField = 'SUBCUENTABANCO'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DMContaRef.SSubCTABanco
          ParentFont = False
          TabOrder = 0
        end
        object eSubcuentaBancoDesc: TDBLookupComboBox
          Left = 105
          Top = 31
          Width = 291
          Height = 22
          DataField = 'SUBCUENTABANCO'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DMContaRef.SSubCTABanco
          ParentFont = False
          TabOrder = 1
        end
        object eConceptoDftoDesc: TDBLookupComboBox
          Left = 460
          Top = 31
          Width = 269
          Height = 21
          DataField = 'ID_CONCEPTOS_DFTO'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DMContaRef.SConceptos
          ParentFont = False
          TabOrder = 3
        end
        object oGenerarUnicoAsiento: TCheckBox
          Left = 15
          Top = 66
          Width = 200
          Height = 17
          TabStop = False
          Caption = 'Generar '#250'nico asiento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = oGenerarUnicoAsientoClick
        end
        object gTotalImporte: TGroupBox
          Left = 584
          Top = 55
          Width = 145
          Height = 36
          Caption = ' TOTAL IMPORTE '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          object LabelTotalImporte: TLabel
            Left = 17
            Top = 15
            Width = 113
            Height = 17
            Cursor = crIBeam
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 309
        Width = 754
        Height = 103
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 162
          Top = 61
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
          Left = 108
          Top = 15
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
        object Label4: TLabel
          Left = 11
          Top = 61
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
        object lSubcuenta: TLabel
          Left = 445
          Top = 15
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
        object Label17: TLabel
          Left = 445
          Top = 61
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
        object Label2: TLabel
          Left = 11
          Top = 15
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
        object Label16: TLabel
          Left = 345
          Top = 61
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
        object Label6: TLabel
          Left = 119
          Top = 61
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
        object eDescSubcuentaCBDESCSUBCUENTA: TDBLookupComboBox
          Left = 536
          Top = 29
          Width = 196
          Height = 21
          DataField = 'SUBCUENTA'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'DESCRIPCION'
          ListSource = DMContaRef.SSubCtaCobrosPagos
          ParentFont = False
          TabOrder = 4
        end
        object EditCOMENTARIO: TDBEdit
          Left = 162
          Top = 75
          Width = 175
          Height = 21
          AutoSize = False
          DataField = 'COMENTARIO'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object eConceptoAsientoDesc: TDBLookupComboBox
          Left = 162
          Top = 29
          Width = 274
          Height = 21
          DataField = 'ID_CONCEPTOS'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'DESCRIPCION'
          ListSource = DMContaRef.SConceptos
          ParentFont = False
          TabOrder = 2
        end
        object EditIMPORTE: TDBEdit
          Left = 11
          Top = 75
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'IMPORTE'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnExit = EditDEBEHABERExit
        end
        object eSubcuentaCBSUBCUENTA: TDBLookupComboBox
          Left = 445
          Top = 29
          Width = 91
          Height = 21
          DataField = 'SUBCUENTA'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'SUBCUENTA'
          ListField = 'SUBCUENTA'
          ListSource = DMContaRef.SSubCtaCobrosPagos
          ParentFont = False
          TabOrder = 3
          OnCloseUp = eSubcuentaCBSUBCUENTACloseUp
        end
        object eConceptoAsiento: TDBLookupComboBox
          Left = 108
          Top = 29
          Width = 54
          Height = 21
          DataField = 'ID_CONCEPTOS'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CONCEPTOS'
          ListField = 'ID_CONCEPTOS'
          ListSource = DMContaRef.SConceptos
          ParentFont = False
          TabOrder = 1
        end
        object eAnaliticaNom: TDBLookupComboBox
          Left = 536
          Top = 75
          Width = 196
          Height = 21
          DataField = 'CUENTA_ANALITICA'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'CUENTA'
          ListField = 'NOMBRE'
          ListSource = DataModuleCargaCobrosPagos.SAnaliticas
          ParentFont = False
          TabOrder = 7
        end
        object eAnalitica: TDBLookupComboBox
          Left = 445
          Top = 75
          Width = 91
          Height = 21
          DataField = 'CUENTA_ANALITICA'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'CUENTA'
          ListField = 'CUENTA'
          ListSource = DataModuleCargaCobrosPagos.SAnaliticas
          ParentFont = False
          TabOrder = 10
        end
        object EditFACTURA: TDBEdit
          Left = 345
          Top = 75
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'NUMEROFACTURA'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object EditDEBEHABER: TDBEdit
          Left = 125
          Top = 75
          Width = 16
          Height = 21
          AutoSize = False
          DataField = 'DEBEHABER'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnExit = EditDEBEHABERExit
        end
        object EditFECHA: TDBEdit
          Left = 11
          Top = 28
          Width = 90
          Height = 21
          AutoSize = False
          DataField = 'FECHA'
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = EditDEBEHABERExit
        end
      end
      object Datos: TGroupBox
        Left = 0
        Top = 97
        Width = 754
        Height = 212
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Panel4: TPanel
          Left = 655
          Top = 15
          Width = 97
          Height = 195
          Align = alRight
          TabOrder = 0
          object PermAniadir: TButton
            Left = 10
            Top = 15
            Width = 79
            Height = 22
            Hint = 'A'#241'adir'
            Caption = 'A'#241'adir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = PermAniadirClick
          end
          object PermBorrar: TButton
            Left = 10
            Top = 40
            Width = 79
            Height = 22
            Caption = 'Eliminar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = PermBorrarClick
          end
          object PermBqdaDiario: TButton
            Left = 10
            Top = 82
            Width = 79
            Height = 22
            Hint = 'B'#250'squeda en Diario'
            Caption = 'en el Diario'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = PermBqdaDiarioClick
          end
          object PermBqdaCartera: TButton
            Left = 10
            Top = 107
            Width = 79
            Height = 22
            Hint = 'Cartera de Efectos'
            Caption = 'en la Cartera'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = PermBqdaCarteraClick
          end
          object PermMayor: TButton
            Left = 10
            Top = 133
            Width = 79
            Height = 22
            Hint = 'Mayor de Subcuenta'
            Caption = 'en el Mayor'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = PermMayorClick
          end
        end
        object DBGridMain: TDBGrid
          Left = 2
          Top = 15
          Width = 653
          Height = 195
          Align = alClient
          DataSource = SCobrosPagos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCCONCEPTO'
              Title.Caption = 'DESCR. CONCEPTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBCUENTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBCUENTADESC'
              Title.Caption = 'DESCR. SUBCUENTA'
              Width = 253
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
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
      object Panel3: TPanel
        Left = 0
        Top = 389
        Width = 747
        Height = 48
        Align = alBottom
        TabOrder = 0
        object Label5: TLabel
          Left = 291
          Top = 16
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
          Left = 365
          Top = 16
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
        object BtnEdtModificar: TButton
          Left = 8
          Top = 11
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
          TabOrder = 0
          OnClick = BtnEdtModificarClick
        end
        object BtnEdtBorrarMovim: TButton
          Left = 102
          Top = 11
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
          TabOrder = 1
          OnClick = BtnEdtBorrarMovimClick
        end
        object BtnEdtMayor: TButton
          Left = 195
          Top = 11
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
          OnClick = BtnEdtMayorClick
        end
      end
      object DBGridMoves: TDBGrid
        Left = 0
        Top = 0
        Width = 747
        Height = 389
        Align = alClient
        DataSource = SMovimientos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
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
  object Transaccion: TIBTransaction
    Left = 495
    Top = 7
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
    Left = 555
    Top = 7
    object QMovimientosASIENTO: TIntegerField
      DisplayWidth = 9
      FieldName = 'ASIENTO'
      Origin = 'DIARIO.ASIENTO'
      DisplayFormat = '###,###,###'
    end
    object QMovimientosAPUNTE: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'APT'
      DisplayWidth = 4
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
      DisplayWidth = 48
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
    object QMovimientosTIPOASIENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPOASIENTO'
      Origin = 'DIARIO.TIPOASIENTO'
      Visible = False
    end
    object QMovimientosASIENTONOMINA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ASIENTONOMINA'
      Origin = 'DIARIO.ASIENTONOMINA'
      Visible = False
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
  object SMovimientos: TDataSource
    AutoEdit = False
    DataSet = QMovimientos
    Left = 607
    Top = 7
  end
  object SCobrosPagos: TDataSource
    DataSet = QCobrosPagos
    Left = 262
    Top = 8
  end
  object QCobrosPagos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = QCobrosPagosAfterPost
    OnCalcFields = QCobrosPagosCalcFields
    OnNewRecord = QCobrosPagosNewRecord
    Left = 198
    Top = 4
    object QCobrosPagosFECHA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECHA'
    end
    object QCobrosPagosSUBCUENTA: TStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object QCobrosPagosID_CONCEPTOS: TStringField
      FieldName = 'ID_CONCEPTOS'
      Size = 3
    end
    object QCobrosPagosSUBCUENTADESC: TStringField
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'SUBCUENTADESC'
      LookupDataSet = DMContaRef.QSubCtaCobrosPagos
      LookupKeyFields = 'SUBCUENTA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'SUBCUENTA'
      Size = 80
      Lookup = True
    end
    object QCobrosPagosIMPORTE: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPORTE'
    end
    object QCobrosPagosDESCCONCEPTO: TStringField
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'DESCCONCEPTO'
      Size = 30
      Calculated = True
    end
    object QCobrosPagosID_DIARIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_DIARIO'
    end
    object QCobrosPagosID_CARTERAEFECTOS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CARTERAEFECTOS'
    end
    object QCobrosPagosNUMEROFACTURA: TStringField
      DisplayWidth = 10
      FieldName = 'NUMEROFACTURA'
      Size = 10
    end
    object QCobrosPagosCUENTA_ANALITICA: TStringField
      DisplayWidth = 10
      FieldName = 'CUENTA_ANALITICA'
      Size = 10
    end
    object QCobrosPagosSITUACION: TStringField
      DisplayWidth = 1
      FieldName = 'SITUACION'
      Size = 1
    end
    object QCobrosPagosASIENTO_GENERADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ASIENTO_GENERADO'
    end
    object QCobrosPagosCOMENTARIO: TStringField
      DisplayWidth = 40
      FieldName = 'COMENTARIO'
      Size = 40
    end
    object QCobrosPagosDEBEHABER: TStringField
      DisplayWidth = 1
      FieldName = 'DEBEHABER'
      Size = 1
    end
    object QCobrosPagosIMPORTE_PUNTEO: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPORTE_PUNTEO'
    end
  end
  object QFichero: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 318
    Top = 10
    object QFicheroSUBCUENTABANCO: TStringField
      FieldName = 'SUBCUENTABANCO'
      Size = 10
    end
    object QFicheroID_CONCEPTOS_DFTO: TStringField
      FieldName = 'ID_CONCEPTOS_DFTO'
      Size = 3
    end
  end
  object SFichero: TDataSource
    DataSet = QFichero
    Left = 368
    Top = 10
  end
  object QDiario: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 440
    Top = 10
  end
end
