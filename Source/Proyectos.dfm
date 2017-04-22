object WProyectos: TWProyectos
  Left = 567
  Top = 314
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Archivo de PROYECTOS'
  ClientHeight = 458
  ClientWidth = 463
  Color = 14275008
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PanelSombra: TPanel
    Left = 0
    Top = 41
    Width = 358
    Height = 417
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DataGrid: TDBGrid
      Left = 0
      Top = 70
      Width = 358
      Height = 255
      Align = alClient
      Color = 15596540
      DataSource = SFichero
      FixedColor = 10841401
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'System'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'System'
      TitleFont.Style = [fsBold]
      OnDblClick = DataGridDblClick
      OnTitleClick = DataGridTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PROYECTO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Caption = 'Descripci'#243'n'
          Width = 240
          Visible = True
        end>
    end
    object Datos: TGroupBox
      Left = 0
      Top = 325
      Width = 358
      Height = 92
      Align = alBottom
      Color = 14275008
      ParentColor = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 10
        Width = 88
        Height = 16
        AutoSize = False
        Caption = 'Proyecto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 47
        Width = 77
        Height = 16
        AutoSize = False
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditDESCRIPCION: TDBEdit
        Left = 9
        Top = 61
        Width = 266
        Height = 20
        AutoSize = False
        DataField = 'NOMBRE'
        DataSource = SFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object EditCODIGO: TDBEdit
        Left = 8
        Top = 25
        Width = 97
        Height = 20
        AutoSize = False
        DataField = 'ID_PROYECTO'
        DataSource = SFichero
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object FiltroBuscar: TGroupBox
      Left = 0
      Top = 0
      Width = 358
      Height = 70
      Align = alTop
      Caption = ' Buscar '
      Color = 14275008
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label4: TLabel
        Left = 17
        Top = 43
        Width = 44
        Height = 13
        Caption = 'Nombre'
      end
      object Label5: TLabel
        Left = 16
        Top = 21
        Width = 51
        Height = 13
        Caption = 'Proyecto'
      end
      object EditFiltroBDESCRIPCION: TDBEdit
        Left = 74
        Top = 40
        Width = 268
        Height = 20
        Cursor = crHandPoint
        AutoSize = False
        DataField = 'BDESCRIPCION'
        DataSource = sFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 1
        OnEnter = LimpiarFiltro
      end
      object EditFiltroBCODIGO: TDBEdit
        Left = 74
        Top = 18
        Width = 97
        Height = 20
        Cursor = crHandPoint
        AutoSize = False
        DataField = 'BCODIGO'
        DataSource = sFiltro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        OnEnter = LimpiarFiltro
      end
    end
  end
  object Panel1: TPanel
    Left = 358
    Top = 41
    Width = 105
    Height = 417
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object BtnRefresh: TSpeedButton
      Left = 32
      Top = 314
      Width = 49
      Height = 41
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF2F2F2E8E8
        E8DEDEDED7D7D7D2D2D2D2D2D2D7D7D7DEDEDEE8E8E8F2F2F2FCFCFCFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFEFEFD9D9D9BABABAA0A0
        A08D8D8D7E7E7E7676767676767E7E7E8D8D8DA0A0A0BABABAD9D9D9EFEFEFFB
        FBFBFFFFFFFFFFFFFFFFFFF9F9F9F3F3F3F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6DDDDDDB6B6B6677E68355F381A53
        1D0B510F035307025006094F0D154E1827512A4157426B6B6B8C8C8CB6B6B6DD
        DDDDF6F6F6FEFEFEF9F9F9DCDCDCCACACAE7E7E7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEF2F2F2D1D1D169856B235A261B6F1F429A4862B8
        697ACD8189DC9189DC917ACD8162B869429A481B6F1F164E193652376C6C6C9D
        9D9DD1D1D1ECECECDADADA517A54949494D5D5D5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEF4F4F4B8C1B944704717681C4CA3526CCA745AC9633BBD
        4621B12D10A91C10A91C21B12D3BBD465AC9636CCA744CA35216681A204C2355
        5E55909090B2B2B24D7650005104767676CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9F9BCC7BD396D3C3B89415EBB6651C65B1FB02A09A71509A7
        1509A71509A71509A71509A71509A71509A7151FB02A51C65B5EBB66277E2C1A
        4E1D4D584E355F383A913F075A0C707070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEE1E4E24676495397589ED5A269C97109A71509A71509A71509A7
        1509A71509A71509A71509A71509A71509A71509A71509A71538BB435DBF6427
        7E2C0E4F123A913F8DDE94095C0D707070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF8F8F8769878387F3B9FD4A398D79C7BCA8249BA5209A71509A71509A7
        1509A71509A71509A71509A71509A71509A71509A71509A71509A71534B93E5A
        BA61469C4C58C86272D47B095C0D707070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD0DAD125662990C294A5DDA989CF8F91D2969EDAA291DA9781D98989DE
        9189DE917AD78363CD6D44C04E1FB02A09A71509A71509A71509A71509A71546
        C1505AC96209A71572D47B095C0D707070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF88A98A4B8C4DB2E0B696D49AA8DDACA3D6A686BD8A5B9C5E25752A0858
        0C055709156A1B2E85344CA3525DBD6348C25211AA1C09A71509A71509A7150C
        A81809A71509A71577D680095C0D707070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF5084538ABD8EB1E1B59CD3A078AE7B497C4C7FA282B5C8B6DFE7E0F8F9
        F9E7EFE8C1D4C28EB190538856145E18358C3A42B44B18AD2309A71509A71509
        A71509A71509A7157AD782095C0D707070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF256829AED7B193CB9868966BA4B7A6F2F2F2FCFCFCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFBDD0BF5585581062143FB44909A71509A71509
        A71509A71509A7157AD782095C0D707070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0A580E9FC9A2749375DDDDDDFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF9F9F9DCDCDC517A544395476DCD761CAC2710A91C09
        A7150FA91B19AB2488DA8F095C0D707070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF276B2BA7C2A9E0E0E0F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF9F9F9DCDCDC517A54509B53A2DDA77FCB857DCA8379CA8077
        C97D74C77A6FC676ADE5B1095C0D707070CFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9BBA9DF4F4F4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF3F3F3668F68519C56C0EBC3B8E8BDB7E7BBB5E6B9B3E6B8B2
        E5B7B0E5B5AFE5B3B6E9BA095C0D949494DBDBDBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE9EDEADADADACFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF
        CFCFCFCFCFCFCF69916C00510400510400510400510400510400510400510400
        5104005104005104005104005104DADADAF2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDBDBDB9494947070707070707070707070707070707070707070707070
        70707070767676949494CACACAF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFAFAFAF4F4F4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0051040051040051040051040051040051040051040051040051040051
        04005104005104517A54DCDCDCF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFAFAFAD9DDDAD3D3D3ECECECFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF10611497E19C77D68077D68077D68077D68077D68077D68077D6808DDE
        943A913F517A54DCDCDCF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFAFAE0E0E06B8B6DA2A2A2DBDBDBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF116115A7E4AB0CA81809A71509A71509A71509A71509A71558C8623A91
        3F456E48CFCFCFF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
        FCFCF2F2F2D7D7D76F9471135717838383D4D4D4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF136217BDE9C14BBB5309A71509A71509A71509A71557C7613A913F2851
        2B808080B6B6B6DADADAEBEBEBF4F4F4FAFAFAFDFDFDFAFAFAF4F4F4EBEBEBDA
        DADABBBBBB5479574D9F53045108838383D8D8D8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF136217C1EAC389CF8F47B95009A71509A71509A7153FB4490E61121C4D
        1F4255437070708E8E8EA7A7A7B9B9B9C5C5C5CBCBCBC5C5C5B9B9B9A7A7A76C
        806D376D393AAA4362B8680E5212949494E1E1E1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF146318C4EBC798D49B8CD0914EBD580FA91B09A71518AD2342B44B358C
        3A06510A194E1C2E51314659475B635B6A6B6A656D655366543A5D3D20562339
        8C3E42B44B50C55A429A48245727ADADADECECECFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF146318C6ECCA9DD6A19AD49D95D39A61C26928B13209A71511AA1C48C2
        525DBD634CA3522E8534156A1B055709055709156A1B2E85344CA3525DBD6348
        C25215AC205EC6671B6F1F4D6E50CCCCCCF8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF156319C8ECCBA3D8A8B2E3B6B0E0B396D39B7ECB844DBC561CAC2709A7
        151FB02A44C04E63CD6D7AD78389DE9189DE917AD78363CD6D44C04E1FB02A09
        A71546C1504CA35215561997A198E9E9E9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF156319CBEDCEAFE1B360A964A2D4A6ABDDAF98D49B92D19779CA7F4EBD
        5829B13409A71509A71509A71509A71509A71509A71509A71509A71509A71534
        B93E5ABA61146818587B5AD8D8D8F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF156319C9EECC4496492060244D9452AADAAEAEDFB19AD49D95D39A8FD1
        9488CE8E6CC5724EBD5839B64325B03118AB230FA91B09A7150DA81942BD4C67
        C26E2C81313C6D3FC7CAC7F4F4F4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0C5D1146974B517A54BEC9BF598C5C4E9452A6D6A9B8E4BBA3D9A796D3
        9B92D1978CD09186CD8C81CC877BCA8277C97D71C77877CA7E90D79685C98A39
        883E3B6E3EB6C1B7F2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF005104668F68DCDCDCF9F9F9E3ECE4729E75327B3789BF8EB7E3BAB8E5
        BCAADDAE9CD7A191D1968CD0918FD29596D79BA1DDA79FDAA472B47724712954
        8157C6CFC7F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF7EA781F3F3F3F9F9F9FFFFFFFFFFFFFFFFFFA8C3AA4E855136803A7AB4
        7EA1D1A5B8E2BBC3ECC6C2EBC5B1E0B596CC9A6CAD702E7B323D744192AD94EF
        EFEFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CFBB79A2
        7C457E481F662308570C07560B1E63224079436F9872AAC0ABF2F2F2FCFCFCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = VerTabla
    end
    object BtnNew: TButton
      Left = 10
      Top = 14
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Nuevo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnNewClick
    end
    object BtnDelete: TButton
      Left = 10
      Top = 72
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Borrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnDeleteClick
    end
    object BtnAccept: TButton
      Left = 10
      Top = 218
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Ac&eptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnAcceptClick
    end
    object BtnCancel: TButton
      Left = 10
      Top = 246
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnCancelClick
    end
    object Navigator: TDBNavigator
      Left = 12
      Top = 164
      Width = 80
      Height = 28
      DataSource = SFichero
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
    object BtnReport: TButton
      Left = 10
      Top = 114
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
      TabOrder = 6
      OnClick = BtnReportClick
    end
    object BtnModify: TButton
      Left = 10
      Top = 43
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Modificar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BtnModifyClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 41
    Align = alTop
    Color = 14275008
    TabOrder = 2
    object Shape1: TShape
      Left = 11
      Top = 34
      Width = 753
      Height = 1
      Pen.Color = 7552051
    end
    object Label3: TLabel
      Left = 14
      Top = 8
      Width = 171
      Height = 19
      Caption = 'Archivo de Proyectos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object SFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 311
    Top = 191
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PROYECTO'
      'WHERE'
      
        '  ID_PROYECTO                    =:old_ID_PROYECTO              ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO PROYECTO'
      
        '  (NOMBRE                         ,ID_PROYECTO                  ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:ID_PROYECTO                ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM PROYECTO'
      'WHERE'
      
        '  ID_PROYECTO                    =?ID_PROYECTO                  ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM PROYECTO')
    ModifySQL.Strings = (
      'UPDATE PROYECTO'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  ID_PROYECTO                    =:ID_PROYECTO                  ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 266
    Top = 190
    object QFicheroID_PROYECTO: TIBStringField
      DisplayLabel = 'PROYECTO'
      DisplayWidth = 11
      FieldName = 'ID_PROYECTO'
      Origin = 'PROYECTO.ID_PROYECTO'
      Required = True
      Size = 10
    end
    object QFicheroNOMBRE: TIBStringField
      DisplayWidth = 45
      FieldName = 'NOMBRE'
      Origin = 'PROYECTO.NOMBRE'
      Size = 50
    end
  end
  object Transaccion: TIBTransaction
    Left = 266
    Top = 141
  end
  object TbFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 263
    Top = 239
  end
  object sFiltro: TDataSource
    DataSet = TbFiltro
    Left = 313
    Top = 239
  end
  object FastReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.640013194400000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42793.706119363430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 97
    Top = 194
    Datasets = <
      item
        DataSet = ReportDBLInk
        DataSetName = 'PROYECTOS'
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
          Left = 246.999844560000000000
          Top = 94.000690630000000000
          Width = 75.896741930000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Proyecto')
          ParentFont = False
        end
        object InformeLabel5: TfrxMemoView
          Left = 366.999922060000000000
          Top = 94.000690630000000000
          Width = 101.000380190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 148.936159180000000000
          Top = 63.998781490000000000
          Width = 304.063188500000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'LISTADO DE PROYECTOS')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 22.677180000000000000
          Top = 24.676551370000000000
          Width = 459.001241320000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENTERPRISE_NAME]')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 509.677179560000000000
          Top = 22.677180000000000000
          Width = 197.238552580000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 520.679391390000000000
          Top = 26.675922740000000000
          Width = 37.001598700000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fecha :')
          ParentFont = False
        end
        object Label16: TfrxMemoView
          Left = 520.679391390000000000
          Top = 41.676877310000000000
          Width = 42.001916890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 569.677218309999900000
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
          Left = 563.679104200000000000
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
          Left = 654.913178870000000000
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
          Left = 516.370098560000000000
          Top = 63.707129050000000000
          Width = 53.340506890000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario :')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 572.926985480000000000
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
        DataSetName = 'PROYECTOS'
        RowCount = 0
        object InformeDBText2: TfrxMemoView
          Left = 366.999922060000000000
          Top = 1.999371370000006000
          Width = 269.000488690000000000
          Height = 13.001583200000000000
          DataField = 'NOMBRE'
          DataSet = ReportDBLInk
          DataSetName = 'PROYECTOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[PROYECTOS."NOMBRE"]')
          ParentFont = False
        end
        object InformeDBText1: TfrxMemoView
          Left = 239.002359080000000000
          Top = 1.999371370000006000
          Width = 79.457059190000000000
          Height = 13.001583200000000000
          DataField = 'ID_PROYECTO'
          DataSet = ReportDBLInk
          DataSetName = 'PROYECTOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PROYECTOS."ID_PROYECTO"]')
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
  object ReportDBLInk: TfrxDBDataset
    UserName = 'PROYECTOS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_PROYECTO=ID_PROYECTO'
      'NOMBRE=NOMBRE')
    DataSource = SFichero
    BCDToCurrency = False
    Left = 160
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
    Left = 97
    Top = 242
  end
end
