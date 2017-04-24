object WCuentas: TWCuentas
  Left = 627
  Top = 211
  ClientHeight = 520
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 22
      Top = 11
      Width = 141
      Height = 20
      AutoSize = False
      Caption = 'Archivo de Cuentas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 22
      Top = 33
      Width = 697
      Height = 1
      Pen.Color = clNavy
    end
    object DBText2: TDBText
      Left = 163
      Top = 11
      Width = 59
      Height = 20
      Alignment = taCenter
      DataField = 'CUENTA'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 223
      Top = 11
      Width = 459
      Height = 20
      DataField = 'DESCRIPCION'
      DataSource = SFichero
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 781
    Height = 479
    Align = alClient
    TabOrder = 1
    object PageControl: TPageControl
      Left = 1
      Top = 1
      Width = 667
      Height = 477
      ActivePage = TabCuentas
      Align = alClient
      TabOrder = 0
      OnChange = PageControlChange
      object TabCuentas: TTabSheet
        Caption = 'Cuentas'
        object FiltroBuscar: TGroupBox
          Left = 0
          Top = 0
          Width = 659
          Height = 53
          Align = alTop
          Caption = 'BUSCAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 24
            Width = 35
            Height = 13
            Caption = 'Cuenta'
          end
          object Label12: TLabel
            Left = 129
            Top = 24
            Width = 54
            Height = 13
            Caption = 'Descripci'#243'n'
          end
          object Label36: TLabel
            Left = 444
            Top = 24
            Width = 26
            Height = 13
            Caption = 'T'#237'tulo'
          end
          object Label37: TLabel
            Left = 551
            Top = 24
            Width = 29
            Height = 13
            Caption = 'Grupo'
          end
          object EditFiltroBDescripcion: TDBEdit
            Left = 197
            Top = 20
            Width = 218
            Height = 21
            DataField = 'BDescripcion'
            DataSource = DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 30
            ParentFont = False
            TabOrder = 1
            OnEnter = EditFiltroBCuentaEnter
            OnExit = EditFiltroBCuentaExit
          end
          object EditFiltroBCuenta: TDBEdit
            Left = 57
            Top = 20
            Width = 50
            Height = 21
            DataField = 'BCuenta'
            DataSource = DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 3
            ParentFont = False
            TabOrder = 0
            OnEnter = EditFiltroBCuentaEnter
            OnExit = EditFiltroBCuentaExit
          end
          object EditFiltroBTitulo: TDBEdit
            Left = 482
            Top = 20
            Width = 50
            Height = 21
            AutoSize = False
            DataField = 'BTitulo'
            DataSource = DSFiltro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 2
            ParentFont = False
            TabOrder = 2
            OnEnter = EditFiltroBCuentaEnter
            OnExit = EditFiltroBCuentaExit
          end
          object EditFiltroBGrupo: TDBEdit
            Left = 589
            Top = 20
            Width = 50
            Height = 21
            DataField = 'BGrupo'
            DataSource = DSFiltro
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 3
            ParentFont = False
            TabOrder = 3
            OnEnter = EditFiltroBCuentaEnter
            OnExit = EditFiltroBCuentaExit
          end
        end
        object DataGrid: TDBGrid
          Left = 0
          Top = 53
          Width = 659
          Height = 396
          Align = alClient
          DataSource = SFichero
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
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CUENTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIPCION'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMADB'
              Title.Caption = 'SUMA DEBE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMAHB'
              Title.Caption = 'SUMA HABER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRUPO1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRUPO2'
              Visible = True
            end>
        end
      end
      object TabDatos: TTabSheet
        Caption = 'Datos'
        ImageIndex = 1
        object GroupBox1: TGroupBox
          Left = 31
          Top = 41
          Width = 596
          Height = 156
          Caption = ' '
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label30: TLabel
            Left = 44
            Top = 63
            Width = 54
            Height = 13
            Caption = 'Descripci'#243'n'
          end
          object Label3: TLabel
            Left = 44
            Top = 32
            Width = 35
            Height = 13
            Caption = 'Cuenta'
          end
          object Label4: TLabel
            Left = 44
            Top = 91
            Width = 38
            Height = 13
            Caption = 'Grupo 1'
          end
          object Label5: TLabel
            Left = 44
            Top = 120
            Width = 38
            Height = 13
            Caption = 'Grupo 2'
          end
          object EditDescripcion: TDBEdit
            Left = 128
            Top = 59
            Width = 416
            Height = 21
            DataField = 'DESCRIPCION'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 59
            ParentFont = False
            TabOrder = 1
          end
          object EditCuenta: TDBEdit
            Left = 128
            Top = 31
            Width = 49
            Height = 21
            DataField = 'CUENTA'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 8
            ParentFont = False
            TabOrder = 0
            OnEnter = EditCuentaEnter
          end
          object ComboGrupo1: TDBLookupComboBox
            Left = 129
            Top = 87
            Width = 70
            Height = 21
            DataField = 'GRUPO1'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'GRUPO'
            ListField = 'GRUPO'
            ListSource = DMContaRef.SGrupos
            ParentFont = False
            TabOrder = 2
          end
          object ComboGrupo2: TDBLookupComboBox
            Left = 129
            Top = 116
            Width = 70
            Height = 21
            DataField = 'GRUPO2'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'GRUPO'
            ListField = 'GRUPO'
            ListSource = DMContaRef.SGrupos
            ParentFont = False
            TabOrder = 4
          end
          object ComboGrupo1Desc: TDBLookupComboBox
            Left = 198
            Top = 87
            Width = 348
            Height = 21
            DataField = 'GRUPO1'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'GRUPO'
            ListField = 'DESCRIPCION'
            ListSource = DMContaRef.SGrupos
            ParentFont = False
            TabOrder = 3
          end
          object ComboGrupo2Desc: TDBLookupComboBox
            Left = 198
            Top = 116
            Width = 348
            Height = 21
            DataField = 'GRUPO2'
            DataSource = SFichero
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'GRUPO'
            ListField = 'DESCRIPCION'
            ListSource = DMContaRef.SGrupos
            ParentFont = False
            TabOrder = 5
          end
        end
        object DBRadioGroup: TDBRadioGroup
          Left = 31
          Top = 226
          Width = 596
          Height = 127
          Caption = ' Tipo de Cuenta '
          Columns = 3
          DataField = 'TIPOCUENTA'
          DataSource = SFichero
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Clientes'
            'Proveedores'
            'I.V.A. Devengado'
            'I.V.A. Deducible'
            'Amort. Mater.'
            'Amort. Inmate.'
            'Banco / Caja'
            'Ventas'
            'Compras / Gastos'
            'N'#243'minas'
            'Otras')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'C'
            'P'
            'R'
            'S'
            'M'
            'I'
            'B'
            'V'
            'A'
            'N'
            'O')
        end
      end
      object TabAcumulados: TTabSheet
        Caption = 'Acumulados'
        ImageIndex = 2
        object PageControlAcumulados: TPageControl
          Left = 0
          Top = 0
          Width = 659
          Height = 449
          ActivePage = TabCurrentYear
          Align = alClient
          TabOrder = 0
          object TabCurrentYear: TTabSheet
            Caption = 'Ejercicio Actual'
            object Label19: TLabel
              Left = 143
              Top = 303
              Width = 63
              Height = 13
              Caption = 'SUMA DEBE'
            end
            object Label20: TLabel
              Left = 455
              Top = 303
              Width = 71
              Height = 13
              Caption = 'SUMA HABER'
            end
            object GroupBox2: TGroupBox
              Left = 14
              Top = 19
              Width = 321
              Height = 276
              Caption = ' PRIMER SEMESTRE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label6: TLabel
                Left = 23
                Top = 59
                Width = 34
                Height = 13
                Caption = 'ENERO'
              end
              object Label7: TLabel
                Left = 23
                Top = 91
                Width = 46
                Height = 13
                Caption = 'FEBRERO'
              end
              object Label8: TLabel
                Left = 23
                Top = 123
                Width = 36
                Height = 13
                Caption = 'MARZO'
              end
              object Label9: TLabel
                Left = 23
                Top = 155
                Width = 29
                Height = 13
                Caption = 'ABRIL'
              end
              object Label10: TLabel
                Left = 23
                Top = 187
                Width = 29
                Height = 13
                Caption = 'MAYO'
              end
              object Label11: TLabel
                Left = 23
                Top = 219
                Width = 31
                Height = 13
                Caption = 'JUNIO'
              end
              object GroupBox3: TGroupBox
                Left = 83
                Top = 33
                Width = 102
                Height = 211
                Caption = ' DEBE '
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Edit1: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB01'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit2: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB02'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit3: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB03'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit4: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB04'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit5: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB05'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit6: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB06'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object GroupBox4: TGroupBox
                Left = 195
                Top = 33
                Width = 102
                Height = 211
                Caption = ' HABER '
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Edit7: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB01'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit8: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB02'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit9: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB03'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit10: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB04'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit11: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB05'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit12: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB06'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
            end
            object GroupBox5: TGroupBox
              Left = 350
              Top = 19
              Width = 321
              Height = 276
              Caption = ' SEGUNDO SEMESTRE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label13: TLabel
                Left = 12
                Top = 59
                Width = 29
                Height = 13
                Caption = 'JULIO'
              end
              object Label14: TLabel
                Left = 12
                Top = 91
                Width = 42
                Height = 13
                Caption = 'AGOSTO'
              end
              object Label15: TLabel
                Left = 12
                Top = 123
                Width = 61
                Height = 13
                Caption = 'SEPTIEMBRE'
              end
              object Label16: TLabel
                Left = 12
                Top = 155
                Width = 47
                Height = 13
                Caption = 'OCTUBRE'
              end
              object Label17: TLabel
                Left = 12
                Top = 187
                Width = 58
                Height = 13
                Caption = 'NOVIEMBRE'
              end
              object Label18: TLabel
                Left = 12
                Top = 219
                Width = 55
                Height = 13
                Caption = 'DICIEMBRE'
              end
              object GroupBox6: TGroupBox
                Left = 83
                Top = 33
                Width = 102
                Height = 211
                Caption = ' DEBE '
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Edit13: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB07'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit14: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB08'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit15: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB09'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit16: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB10'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit17: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB11'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit18: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUDB12'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object GroupBox7: TGroupBox
                Left = 195
                Top = 33
                Width = 102
                Height = 211
                Caption = ' HABER '
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Edit19: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB07'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit20: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB08'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit21: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB09'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit22: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB10'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit23: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB11'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit24: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ACUHB12'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
            end
            object Edit25: TDBEdit
              Left = 211
              Top = 300
              Width = 107
              Height = 19
              Color = 14275008
              Ctl3D = False
              DataField = 'SUMADB'
              DataSource = SFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object Edit26: TDBEdit
              Left = 547
              Top = 300
              Width = 107
              Height = 19
              Color = 14275008
              Ctl3D = False
              DataField = 'SUMAHB'
              DataSource = SFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
          end
          object TabPreviousYear: TTabSheet
            Caption = 'Ejercicio Anterior'
            ImageIndex = 1
            object Label35: TLabel
              Left = 340
              Top = 314
              Width = 64
              Height = 13
              Caption = 'SUMA HABER'
              Font.Charset = ANSI_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 23
              Top = 314
              Width = 56
              Height = 13
              Caption = 'SUMA DEBE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object GroupBox8: TGroupBox
              Left = 4
              Top = 17
              Width = 321
              Height = 276
              Caption = ' PRIMER SEMESTRE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label21: TLabel
                Left = 23
                Top = 59
                Width = 34
                Height = 13
                Caption = 'ENERO'
              end
              object Label22: TLabel
                Left = 23
                Top = 91
                Width = 46
                Height = 13
                Caption = 'FEBRERO'
              end
              object Label23: TLabel
                Left = 23
                Top = 123
                Width = 36
                Height = 13
                Caption = 'MARZO'
              end
              object Label24: TLabel
                Left = 23
                Top = 155
                Width = 29
                Height = 13
                Caption = 'ABRIL'
              end
              object Label25: TLabel
                Left = 23
                Top = 187
                Width = 29
                Height = 13
                Caption = 'MAYO'
              end
              object Label26: TLabel
                Left = 23
                Top = 219
                Width = 31
                Height = 13
                Caption = 'JUNIO'
              end
              object GroupBox9: TGroupBox
                Left = 83
                Top = 33
                Width = 102
                Height = 211
                Caption = ' DEBE '
                Font.Charset = ANSI_CHARSET
                Font.Color = clOlive
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Edit27: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB01'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit28: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB02'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit29: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB03'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit30: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB04'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit31: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB05'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit32: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB06'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object GroupBox10: TGroupBox
                Left = 195
                Top = 33
                Width = 102
                Height = 211
                Caption = ' HABER '
                Font.Charset = ANSI_CHARSET
                Font.Color = clOlive
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Edit33: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB01'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit34: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB02'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit35: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB03'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit36: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB04'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit37: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB05'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit38: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB06'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
            end
            object GroupBox11: TGroupBox
              Left = 328
              Top = 17
              Width = 321
              Height = 276
              Caption = ' SEGUNDO SEMESTRE '
              Font.Charset = ANSI_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label27: TLabel
                Left = 12
                Top = 59
                Width = 29
                Height = 13
                Caption = 'JULIO'
              end
              object Label28: TLabel
                Left = 12
                Top = 91
                Width = 42
                Height = 13
                Caption = 'AGOSTO'
              end
              object Label29: TLabel
                Left = 12
                Top = 123
                Width = 61
                Height = 13
                Caption = 'SEPTIEMBRE'
              end
              object Label31: TLabel
                Left = 12
                Top = 155
                Width = 47
                Height = 13
                Caption = 'OCTUBRE'
              end
              object Label32: TLabel
                Left = 12
                Top = 187
                Width = 58
                Height = 13
                Caption = 'NOVIEMBRE'
              end
              object Label33: TLabel
                Left = 12
                Top = 219
                Width = 55
                Height = 13
                Caption = 'DICIEMBRE'
              end
              object GroupBox12: TGroupBox
                Left = 83
                Top = 33
                Width = 102
                Height = 211
                Caption = ' DEBE '
                Font.Charset = ANSI_CHARSET
                Font.Color = clOlive
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                object Edit39: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB07'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit40: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB08'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit41: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB09'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit42: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB10'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit43: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB11'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit44: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTDB12'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
              object GroupBox13: TGroupBox
                Left = 195
                Top = 33
                Width = 102
                Height = 211
                Caption = ' HABER '
                Font.Charset = ANSI_CHARSET
                Font.Color = clOlive
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                object Edit45: TDBEdit
                  Left = 9
                  Top = 22
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB07'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                end
                object Edit46: TDBEdit
                  Left = 9
                  Top = 54
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB08'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 1
                end
                object Edit47: TDBEdit
                  Left = 10
                  Top = 86
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB09'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 2
                end
                object Edit48: TDBEdit
                  Left = 10
                  Top = 118
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB10'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 3
                end
                object Edit49: TDBEdit
                  Left = 10
                  Top = 150
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB11'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
                object Edit50: TDBEdit
                  Left = 10
                  Top = 182
                  Width = 84
                  Height = 19
                  Color = 14275008
                  Ctl3D = False
                  DataField = 'ANTHB12'
                  DataSource = SFichero
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentCtl3D = False
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 5
                end
              end
            end
            object Edit52: TDBEdit
              Left = 440
              Top = 311
              Width = 107
              Height = 19
              Color = 14275008
              Ctl3D = False
              DataField = 'ANTHB'
              DataSource = SFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object Edit51: TDBEdit
              Left = 118
              Top = 311
              Width = 107
              Height = 19
              Color = 14275008
              Ctl3D = False
              DataField = 'ANTDB'
              DataSource = SFichero
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
          end
        end
      end
      object TabGraficos: TTabSheet
        Caption = 'Graficos'
        ImageIndex = 3
        object PageControlGraficos: TPageControl
          Left = 0
          Top = 0
          Width = 659
          Height = 449
          ActivePage = TabGraphicCurrentYear
          Align = alClient
          TabOrder = 0
          object TabGraphicCurrentYear: TTabSheet
            Caption = 'Ejercicio Actual'
            object Memo1: TMemo
              Left = 72
              Top = 96
              Width = 185
              Height = 89
              Lines.Strings = (
                'In this places shall appear a graphic '
                'verision of the data.')
              TabOrder = 0
            end
          end
          object TabGraphicPreviousYear: TTabSheet
            Caption = 'Ejercicio Anterior'
            ImageIndex = 1
          end
          object TabGraphicComparative: TTabSheet
            Caption = 'Comparativa'
            ImageIndex = 2
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 668
      Top = 1
      Width = 112
      Height = 477
      Align = alRight
      ParentBackground = False
      TabOrder = 1
      object BtnRefresh: TSpeedButton
        Left = 38
        Top = 381
        Width = 35
        Height = 33
        Cursor = crHandPoint
        Hint = 'Filtrar informaci'#243'n'
        Flat = True
        Glyph.Data = {
          EE070000424DEE070000000000003600000028000000190000001A0000000100
          180000000000B8070000120B0000120B00000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C00000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
          C0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C000000000000000C0C0C0000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C000000000000000000000C0C0C0000000000000FF
          FFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF000000
          000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000000000
          0000C0C0C0000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0FFFFFF000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000
          00000000000000000000C0C0C000C0C0C0000000000000FFFFFFC0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF000000000000C0C0C0C0C0
          C0C0C0C0C0C0C0000000000000000000000000C0C0C0C0C0C000C0C0C0000000
          000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080800000000000000000
          00000000000000808080C0C0C0C0C0C0000000000000000000000000C0C0C0C0
          C0C0C0C0C000C0C0C0000000000000FFFFFFC0C0C0C0C0C0C0C0C00000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
          0000000000C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000000000FFFFFFC0C0
          C0C0C0C0C0C0C0000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
          C0000000000000FFFFFFC0C0C0C0C0C0000000808080808080FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000808080808080000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0000000000000FFFFFF808080808080000000FF
          FF00FFFF00000000000000000000000000FFFFFFFFFFFF000000C0C0C0C0C0C0
          000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000000000FF
          FFFF808080808080000000FFFF00FFFF00000000000000000000000000FFFFFF
          FFFFFF000000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0000000000000FFFFFF000000000000FFFF00FFFFFFFFFFFFFFFF00
          FFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000000000FFFFFF000000000000
          FFFFFF000000000000000000000000000000000000FFFFFFFFFFFF000000C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0000000
          000000FFFFFF000000000000FFFFFF0000000000000000000000000000000000
          00FFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000C0C0C0000000000000000000000000000000FFFF00FFFFFFFFFF
          FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C08080
          8080808000000000000000000000000000000000000000000000000000000000
          0000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
          C0C0C0C0C0C0C0C0C0C080808080808000000000000000000000000000000000
          0000000000000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000
          0000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0808080000000000000000000000000000000808080C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000}
        Layout = blGlyphRight
        OnClick = BtnRefreshClick
      end
      object BtnAppend: TButton
        Left = 14
        Top = 11
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Nuevo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnAppendClick
      end
      object BtnDelete: TButton
        Left = 14
        Top = 67
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Eliminar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnDeleteClick
      end
      object BtnAccept: TButton
        Left = 14
        Top = 226
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = 'Ac&eptar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BtnAcceptClick
      end
      object BtnCancel: TButton
        Left = 14
        Top = 252
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BtnCancelClick
      end
      object BtnReports: TButton
        Left = 14
        Top = 119
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BtnReportsClick
      end
      object NavAnimate: TAnimate
        Left = 17
        Top = 311
        Width = 80
        Height = 50
        Cursor = crHandPoint
        CommonAVI = aviFindFolder
        StopFrame = 27
        Visible = False
      end
      object BtnModify: TButton
        Left = 14
        Top = 39
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = '&Modificar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = RejillaDblClick
      end
      object DBNavigator: TDBNavigator
        Left = 16
        Top = 172
        Width = 80
        Height = 25
        DataSource = SFichero
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 7
      end
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 409
    Top = 55
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    AfterEdit = QFicheroAfterEdit
    AfterScroll = QFicheroAfterScroll
    BeforeOpen = QFicheroBeforeOpen
    OnCalcFields = QFicheroCalcFields
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CUENTAS'
      'WHERE'
      
        '  CUENTA                         =:old_CUENTA                   ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO CUENTAS'
      
        '  (ANTDB                          ,ANTHB                        ' +
        '  ,ANTHB12                        ,ANTHB11                      ' +
        '  ,ANTHB10                        ,ANTHB09                      ' +
        '  ,ANTHB08                        ,ANTHB07                      ' +
        '  ,ANTHB06                        ,ANTHB05                      ' +
        '  ,ANTHB04                        ,ANTHB03                      ' +
        '  ,ANTHB02                        ,ANTHB01                      ' +
        '  ,ANTDB12                        ,ANTDB11                      ' +
        '  ,ANTDB10                        ,ANTDB09                      ' +
        '  ,ANTDB08                        ,ANTDB07                      ' +
        '  ,ANTDB06                        ,ANTDB05                      ' +
        '  ,ANTDB04                        ,ANTDB03                      ' +
        '  ,ANTDB02                        ,ANTDB01                      ' +
        '  ,ACUHB12                        ,ACUHB11                      ' +
        '  ,ACUHB10                        ,ACUHB09                      ' +
        '  ,ACUHB08                        ,ACUHB07                      ' +
        '  ,ACUHB06                        ,ACUHB05                      ' +
        '  ,ACUHB04                        ,ACUHB03                      ' +
        '  ,ACUHB02                        ,ACUHB01                      ' +
        '  ,ACUDB12                        ,ACUDB11                      ' +
        '  ,ACUDB10                        ,ACUDB09                      ' +
        '  ,ACUDB08                        ,ACUDB07                      ' +
        '  ,ACUDB06                        ,ACUDB05                      ' +
        '  ,ACUDB04                        ,ACUDB03                      ' +
        '  ,ACUDB02                        ,ACUDB01                      ' +
        '  ,SUMAHB                         ,SUMADB                       ' +
        '  ,DESCRIPCION                    ,GRUPO2                       ' +
        '  ,GRUPO1                         ,TIPOCUENTA                   ' +
        '  ,CUENTA                         )'
      'VALUES'
      
        '  (:ANTDB                          ,:ANTHB                      ' +
        '    ,:ANTHB12                        ,:ANTHB11                  ' +
        '      ,:ANTHB10                        ,:ANTHB09                ' +
        '        ,:ANTHB08                        ,:ANTHB07              ' +
        '          ,:ANTHB06                        ,:ANTHB05            ' +
        '            ,:ANTHB04                        ,:ANTHB03          ' +
        '              ,:ANTHB02                        ,:ANTHB01        ' +
        '                ,:ANTDB12                        ,:ANTDB11      ' +
        '                  ,:ANTDB10                        ,:ANTDB09    ' +
        '                    ,:ANTDB08                        ,:ANTDB07  ' +
        '                      ,:ANTDB06                        ,:ANTDB05' +
        '                        ,:ANTDB04                        ,:ANTDB' +
        '03                        ,:ANTDB02                        ,:ANT' +
        'DB01                        ,:ACUHB12                        ,:A' +
        'CUHB11                        ,:ACUHB10                        ,' +
        ':ACUHB09                        ,:ACUHB08                       ' +
        ' ,:ACUHB07                        ,:ACUHB06                     ' +
        '   ,:ACUHB05                        ,:ACUHB04                   ' +
        '     ,:ACUHB03                        ,:ACUHB02                 ' +
        '       ,:ACUHB01                        ,:ACUDB12               ' +
        '         ,:ACUDB11                        ,:ACUDB10             ' +
        '           ,:ACUDB09                        ,:ACUDB08           ' +
        '             ,:ACUDB07                        ,:ACUDB06         ' +
        '               ,:ACUDB05                        ,:ACUDB04       ' +
        '                 ,:ACUDB03                        ,:ACUDB02     ' +
        '                   ,:ACUDB01                        ,:SUMAHB    ' +
        '                     ,:SUMADB                         ,:DESCRIPC' +
        'ION                    ,:GRUPO2                         ,:GRUPO1' +
        '                         ,:TIPOCUENTA                     ,:CUEN' +
        'TA                         )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM CUENTAS'
      'WHERE'
      
        '  CUENTA                         =?CUENTA                       ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM CUENTAS')
    ModifySQL.Strings = (
      'UPDATE CUENTAS'
      'SET'
      
        '  ANTDB                          =:ANTDB                        ' +
        '   '
      
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
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,GRUPO2                         =:GRUPO2                      ' +
        '    '
      
        '  ,GRUPO1                         =:GRUPO1                      ' +
        '    '
      
        '  ,TIPOCUENTA                     =:TIPOCUENTA                  ' +
        '    '
      'WHERE'
      
        '  CUENTA                         =:CUENTA                       ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 339
    Top = 55
    object QFicheroCUENTA: TIBStringField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'CUENTA'
      Size = 3
    end
    object QFicheroDESCRIPCION: TIBStringField
      DisplayWidth = 59
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object QFicheroSUMADB: TFloatField
      DisplayLabel = 'SUMA~DEBE'
      DisplayWidth = 12
      FieldName = 'SUMADB'
      DisplayFormat = '###,###,###,##0.#0'
    end
    object QFicheroSUMAHB: TFloatField
      DisplayLabel = 'SUMA~HABER'
      DisplayWidth = 12
      FieldName = 'SUMAHB'
      DisplayFormat = '###,###,###,##0.#0'
    end
    object QFicheroGRUPO1: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'GRP1'
      DisplayWidth = 6
      FieldName = 'GRUPO1'
      Size = 3
    end
    object QFicheroGRUPO2: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'GRP2'
      DisplayWidth = 6
      FieldName = 'GRUPO2'
      Size = 3
    end
    object QFicheroTIPOCUENTA: TIBStringField
      Alignment = taCenter
      DisplayWidth = 11
      FieldName = 'TIPOCUENTA'
      Visible = False
      Size = 1
    end
    object QFicheroACUDB01: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB01'
      Visible = False
    end
    object QFicheroACUDB02: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB02'
      Visible = False
    end
    object QFicheroACUDB03: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB03'
      Visible = False
    end
    object QFicheroACUDB04: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB04'
      Visible = False
    end
    object QFicheroACUDB05: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB05'
      Visible = False
    end
    object QFicheroACUDB06: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB06'
      Visible = False
    end
    object QFicheroACUDB07: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB07'
      Visible = False
    end
    object QFicheroACUDB08: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB08'
      Visible = False
    end
    object QFicheroACUDB09: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB09'
      Visible = False
    end
    object QFicheroACUDB10: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB10'
      Visible = False
    end
    object QFicheroACUDB11: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB11'
      Visible = False
    end
    object QFicheroACUDB12: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUDB12'
      Visible = False
    end
    object QFicheroACUHB01: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB01'
      Visible = False
    end
    object QFicheroACUHB02: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB02'
      Visible = False
    end
    object QFicheroACUHB03: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB03'
      Visible = False
    end
    object QFicheroACUHB04: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB04'
      Visible = False
    end
    object QFicheroACUHB05: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB05'
      Visible = False
    end
    object QFicheroACUHB06: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB06'
      Visible = False
    end
    object QFicheroACUHB07: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB07'
      Visible = False
    end
    object QFicheroACUHB08: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB08'
      Visible = False
    end
    object QFicheroACUHB09: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB09'
      Visible = False
    end
    object QFicheroACUHB10: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB10'
      Visible = False
    end
    object QFicheroACUHB11: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB11'
      Visible = False
    end
    object QFicheroACUHB12: TFloatField
      DisplayWidth = 10
      FieldName = 'ACUHB12'
      Visible = False
    end
    object QFicheroANTDB01: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB01'
      Visible = False
    end
    object QFicheroANTDB02: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB02'
      Visible = False
    end
    object QFicheroANTDB03: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB03'
      Visible = False
    end
    object QFicheroANTDB04: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB04'
      Visible = False
    end
    object QFicheroANTDB05: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB05'
      Visible = False
    end
    object QFicheroANTDB06: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB06'
      Visible = False
    end
    object QFicheroANTDB07: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB07'
      Visible = False
    end
    object QFicheroANTDB08: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB08'
      Visible = False
    end
    object QFicheroANTDB09: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB09'
      Visible = False
    end
    object QFicheroANTDB10: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB10'
      Visible = False
    end
    object QFicheroANTDB11: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB11'
      Visible = False
    end
    object QFicheroANTDB12: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB12'
      Visible = False
    end
    object QFicheroANTHB01: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB01'
      Visible = False
    end
    object QFicheroANTHB02: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB02'
      Visible = False
    end
    object QFicheroANTHB03: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB03'
      Visible = False
    end
    object QFicheroANTHB04: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB04'
      Visible = False
    end
    object QFicheroANTHB05: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB05'
      Visible = False
    end
    object QFicheroANTHB06: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB06'
      Visible = False
    end
    object QFicheroANTHB07: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB07'
      Visible = False
    end
    object QFicheroANTHB08: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB08'
      Visible = False
    end
    object QFicheroANTHB09: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB09'
      Visible = False
    end
    object QFicheroANTHB10: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB10'
      Visible = False
    end
    object QFicheroANTHB11: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB11'
      Visible = False
    end
    object QFicheroANTHB12: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB12'
      Visible = False
    end
    object QFicheroANTHB: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTHB'
      Visible = False
    end
    object QFicheroANTDB: TFloatField
      DisplayWidth = 10
      FieldName = 'ANTDB'
      Visible = False
    end
    object QFicheroTipoCuentaDesc: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'TipoCuentaDesc'
      Visible = False
      Calculated = True
    end
  end
  object Transaccion: TIBTransaction
    Left = 283
    Top = 55
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 530
    Top = 11
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 586
    Top = 11
  end
  object QAux: TIBSQL
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    Left = 488
    Top = 55
  end
  object ReportDBLInk: TfrxDBDataset
    UserName = 'CUENTAS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CUENTA=CUENTA'
      'DESCRIPCION=DESCRIPCION'
      'SUMADB=SUMADB'
      'SUMAHB=SUMAHB'
      'GRUPO1=GRUPO1'
      'GRUPO2=GRUPO2'
      'TIPOCUENTA=TIPOCUENTA'
      'ACUDB01=ACUDB01'
      'ACUDB02=ACUDB02'
      'ACUDB03=ACUDB03'
      'ACUDB04=ACUDB04'
      'ACUDB05=ACUDB05'
      'ACUDB06=ACUDB06'
      'ACUDB07=ACUDB07'
      'ACUDB08=ACUDB08'
      'ACUDB09=ACUDB09'
      'ACUDB10=ACUDB10'
      'ACUDB11=ACUDB11'
      'ACUDB12=ACUDB12'
      'ACUHB01=ACUHB01'
      'ACUHB02=ACUHB02'
      'ACUHB03=ACUHB03'
      'ACUHB04=ACUHB04'
      'ACUHB05=ACUHB05'
      'ACUHB06=ACUHB06'
      'ACUHB07=ACUHB07'
      'ACUHB08=ACUHB08'
      'ACUHB09=ACUHB09'
      'ACUHB10=ACUHB10'
      'ACUHB11=ACUHB11'
      'ACUHB12=ACUHB12'
      'ANTDB01=ANTDB01'
      'ANTDB02=ANTDB02'
      'ANTDB03=ANTDB03'
      'ANTDB04=ANTDB04'
      'ANTDB05=ANTDB05'
      'ANTDB06=ANTDB06'
      'ANTDB07=ANTDB07'
      'ANTDB08=ANTDB08'
      'ANTDB09=ANTDB09'
      'ANTDB10=ANTDB10'
      'ANTDB11=ANTDB11'
      'ANTDB12=ANTDB12'
      'ANTHB01=ANTHB01'
      'ANTHB02=ANTHB02'
      'ANTHB03=ANTHB03'
      'ANTHB04=ANTHB04'
      'ANTHB05=ANTHB05'
      'ANTHB06=ANTHB06'
      'ANTHB07=ANTHB07'
      'ANTHB08=ANTHB08'
      'ANTHB09=ANTHB09'
      'ANTHB10=ANTHB10'
      'ANTHB11=ANTHB11'
      'ANTHB12=ANTHB12'
      'ANTHB=ANTHB'
      'ANTDB=ANTDB'
      'TipoCuentaDesc=TipoCuentaDesc')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 360
    Top = 193
  end
  object PDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 297
    Top = 242
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637498622700000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42792.463930208330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 193
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'CUENTAS'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'ENTERPRISE_NAME'
        Value = Null
      end
      item
        Name = 'USER_NAME'
        Value = Null
      end>
    Style = <>
    object DataPage1: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 6.350000000000000000
      RightMargin = 6.350000000000000000
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 116.001334760000000000
        Top = 18.897650000000000000
        Width = 745.701269000000000000
        object Shape3: TfrxShapeView
          Left = 41.000341440000000000
          Top = 85.001629700000000000
          Width = 655.000108060000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object InformeLabel4: TfrxMemoView
          Left = 73.999417870000000000
          Top = 94.000690630000000000
          Width = 43.559083250000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cuenta')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 130.998509800000000000
          Top = 94.000690630000000000
          Width = 72.340204200000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 221.408646930000000000
          Top = 63.998781490000000000
          Width = 265.164265740000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE CUENTAS')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 468.000302250000000000
          Top = 94.000690630000000000
          Width = 48.559401440000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Grupo 1')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 527.002545080000000000
          Top = 94.000690630000000000
          Width = 48.559401440000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Grupo 2')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 594.002273390000000000
          Top = 94.000690630000000000
          Width = 99.677544690000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tipo de Cuenta')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 26.456710000000000000
          Top = 24.676551370000000000
          Width = 459.001241320000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENTERPRISE_NAME]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 513.456709560000100000
          Top = 22.677180000000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 524.458921390000000000
          Top = 26.675922740000000000
          Width = 37.001598700000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Label16: TfrxMemoView
          Left = 524.458921390000000000
          Top = 41.676877310000000000
          Width = 42.001916890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 573.456748309999900000
          Top = 41.676877310000000000
          Width = 6.001893640000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object SystemVariable3: TfrxMemoView
          Left = 567.458634200000000000
          Top = 26.675922740000000000
          Width = 83.236589190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd-mmm-yyyy'#39', <Date>)]')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 658.692708870000000000
          Top = 26.675922740000000000
          Width = 42.001916890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[FormatDateTime('#39'hh:mm'#39', <Time>)]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 520.149628560000000000
          Top = 63.707129050000000000
          Width = 53.340506890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Usuario :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 576.706515480000000000
          Top = 63.707129050000000000
          Width = 134.505913640000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[USER_NAME][Page#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 158.740260000000000000
        Width = 745.701269000000000000
        DataSet = ReportDBLInk
        DataSetName = 'CUENTAS'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 130.998509800000000000
          Top = 1.999371370000006000
          Width = 323.448397870000000000
          Height = 13.001583200000000000
          DataField = 'DESCRIPCION'
          DataSet = ReportDBLInk
          DataSetName = 'CUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CUENTAS."DESCRIPCION"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 73.999417870000000000
          Top = 1.999371370000006000
          Width = 43.339870510000000000
          Height = 13.001583200000000000
          DataField = 'CUENTA'
          DataSet = ReportDBLInk
          DataSetName = 'CUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CUENTAS."CUENTA"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 466.000930880000000000
          Top = 1.999371370000006000
          Width = 44.999084180000000000
          Height = 13.001583200000000000
          DataField = 'GRUPO1'
          DataSet = ReportDBLInk
          DataSetName = 'CUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CUENTAS."GRUPO1"]')
          ParentFont = False
        end
        object DBText2: TfrxMemoView
          Left = 525.003173710000100000
          Top = 1.999371370000006000
          Width = 44.999084180000000000
          Height = 13.001583200000000000
          DataField = 'GRUPO2'
          DataSet = ReportDBLInk
          DataSetName = 'CUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CUENTAS."GRUPO2"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 596.001644760000000000
          Top = 1.999371370000006000
          Width = 80.001311510000000000
          Height = 13.001583200000000000
          DataField = 'TipoCuentaDesc'
          DataSet = ReportDBLInk
          DataSetName = 'CUENTAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[CUENTAS."TipoCuentaDesc"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 49.999402370000000000
        Top = 196.535560000000000000
        Width = 745.701269000000000000
      end
    end
  end
end
