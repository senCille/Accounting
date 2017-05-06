object WUsuarios: TWUsuarios
  Left = 488
  Top = 193
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Archivo de USUARIOS'
  ClientHeight = 475
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Shape1: TShape
    Left = 17
    Top = 34
    Width = 722
    Height = 1
  end
  object Panel1: TPanel
    Left = 736
    Top = 41
    Width = 98
    Height = 434
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object BtnAccept: TButton
      Left = 7
      Top = 293
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Ac&eptar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnAcceptClick
    end
    object BtnCancel: TButton
      Left = 7
      Top = 322
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BtnCancelClick
    end
    object BtnNew: TButton
      Left = 7
      Top = 130
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Nuevo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnNavAniadirClick
    end
    object BtnDesmarcar: TButton
      Left = 7
      Top = 76
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Desmarcar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtnDesmarcarClick
    end
    object BtnMarcar: TButton
      Left = 7
      Top = 47
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Marcar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BtnMarcarClick
    end
    object BtnDelete: TButton
      Left = 7
      Top = 188
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = 'Eliminar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BtnDeleteClick
    end
    object BtnModify: TButton
      Left = 7
      Top = 159
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Caption = '&Modificar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BtnModifyClick
    end
  end
  object PanelSombra: TPanel
    Left = 0
    Top = 41
    Width = 248
    Height = 434
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object DataGrid: TDBGrid
      Left = 0
      Top = 0
      Width = 248
      Height = 434
      Align = alClient
      DataSource = SUsuarios
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnTitleClick = DataGridTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Caption = 'Usuario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLAVE'
          Title.Caption = 'Password'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 834
    Height = 41
    Align = alTop
    TabOrder = 2
    object Label8: TLabel
      Left = 17
      Top = 13
      Width = 142
      Height = 19
      Caption = 'Archivo de Usuarios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object PageControl: TPageControl
    Left = 248
    Top = 41
    Width = 488
    Height = 434
    ActivePage = TabPermisos
    Align = alClient
    TabOrder = 3
    object TabDatos: TTabSheet
      Caption = 'Datos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label27: TLabel
        Left = 5
        Top = 93
        Width = 42
        Height = 14
        Caption = 'Empresa'
      end
      object Label9: TLabel
        Left = 5
        Top = 50
        Width = 50
        Height = 14
        Caption = 'Password'
      end
      object Label25: TLabel
        Left = 5
        Top = 10
        Width = 37
        Height = 14
        Caption = 'Usuario'
      end
      object ComboEmpresas: TDBLookupComboBox
        Left = 5
        Top = 111
        Width = 236
        Height = 21
        DataField = 'ID_EMPRESA'
        DataSource = SUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        KeyField = 'ID_EMPRESA'
        ListField = 'NOMBRE'
        ListSource = DMControlRef.sEmpresas
        ParentFont = False
        TabOrder = 0
      end
      object EditClave: TDBEdit
        Left = 5
        Top = 66
        Width = 144
        Height = 20
        AutoSize = False
        Ctl3D = True
        DataField = 'CLAVE'
        DataSource = SUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object EditUsuario: TDBEdit
        Left = 5
        Top = 26
        Width = 144
        Height = 20
        AutoSize = False
        Ctl3D = True
        DataField = 'NOMBRE'
        DataSource = SUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabPermisos: TTabSheet
      Caption = 'Permisos'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object SUsuarios: TDataSource
    AutoEdit = False
    DataSet = QUsuarios
    Left = 197
    Top = 138
  end
  object QUsuarios: TIBDataSet
    Database = DMControlRef.BDControl
    Transaction = TransUsuarios
    AfterScroll = QUsuariosAfterScroll
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM USUARIOS'
      'WHERE'
      
        '  ID_USUARIO                     =:old_ID_USUARIO               ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO USUARIOS'
      
        '  (ID_USUARIO                     ,ID_EMPRESA                   ' +
        '  ,CLAVE                          ,NOMBRE                       ' +
        '  )'
      'VALUES'
      
        '  (:ID_USUARIO                     ,:ID_EMPRESA                 ' +
        '    ,:CLAVE                          ,:NOMBRE                   ' +
        '      )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM USUARIOS'
      'WHERE'
      
        '  ID_USUARIO                     =?ID_USUARIO                   ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM USUARIOS')
    ModifySQL.Strings = (
      'UPDATE USUARIOS'
      'SET'
      
        '  ID_EMPRESA                     =:ID_EMPRESA                   ' +
        '   '
      
        '  ,CLAVE                          =:CLAVE                       ' +
        '    '
      
        '  ,NOMBRE                         =:NOMBRE                      ' +
        '    '
      'WHERE'
      
        '  ID_USUARIO                     =:ID_USUARIO                   ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 127
    Top = 138
    object QUsuariosNOMBRE: TIBStringField
      DisplayLabel = 'USUARIO'
      DisplayWidth = 20
      FieldName = 'NOMBRE'
      Origin = 'USUARIOS.NOMBRE'
      Size = 15
    end
    object QUsuariosCLAVE: TIBStringField
      DisplayWidth = 18
      FieldName = 'CLAVE'
      Origin = 'USUARIOS.CLAVE'
      Size = 10
    end
    object QUsuariosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'USUARIOS.ID_USUARIO'
      Required = True
      Visible = False
    end
    object QUsuariosID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'USUARIOS.ID_EMPRESA'
      Visible = False
    end
  end
  object TransUsuarios: TIBTransaction
    DefaultDatabase = DMControlRef.BDControl
    Left = 25
    Top = 138
  end
  object QModulos: TIBDataSet
    Database = DMControlRef.BDControl
    Transaction = DMControlRef.TransaccionControl
    BufferChunks = 32
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT *'
      'FROM MODULOS '
      'ORDER BY IDMODULO')
    ParamCheck = True
    UniDirectional = False
    Left = 57
    Top = 280
    object QModulosIDMODULO: TIntegerField
      FieldName = 'IDMODULO'
      Origin = 'MODULOS.IDMODULO'
      Required = True
    end
    object QModulosDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'MODULOS.DESCRIPCION'
      Size = 25
    end
  end
  object SModulos: TDataSource
    DataSet = QModulos
    Left = 144
    Top = 280
  end
  object QMantenimientos: TIBDataSet
    Database = DMControlRef.BDControl
    Transaction = DMControlRef.TransaccionControl
    BufferChunks = 32
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT *'
      'FROM MANTENIMIENTOS'
      'WHERE IDMODULO = :IDMODULO'
      'ORDER BY IDMANTENIMIENTO')
    ParamCheck = True
    UniDirectional = False
    DataSource = SModulos
    Left = 57
    Top = 325
    object QMantenimientosIDMODULO: TIntegerField
      FieldName = 'IDMODULO'
      Origin = 'MANTENIMIENTOS.IDMODULO'
      Required = True
    end
    object QMantenimientosIDMANTENIMIENTO: TIntegerField
      FieldName = 'IDMANTENIMIENTO'
      Origin = 'MANTENIMIENTOS.IDMANTENIMIENTO'
      Required = True
    end
    object QMantenimientosDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'MANTENIMIENTOS.DESCRIPCION'
      Size = 25
    end
    object QMantenimientosWINDOWNAME: TIBStringField
      FieldName = 'WINDOWNAME'
      Origin = 'MANTENIMIENTOS.WINDOWNAME'
      Required = True
      Size = 25
    end
    object QMantenimientosPERMISOSESCRITURA: TIBStringField
      FieldName = 'PERMISOSESCRITURA'
      Origin = 'MANTENIMIENTOS.PERMISOSESCRITURA'
      FixedChar = True
      Size = 1
    end
    object QMantenimientosPERMISOIMPRESION: TIBStringField
      FieldName = 'PERMISOIMPRESION'
      Origin = 'MANTENIMIENTOS.PERMISOIMPRESION'
      FixedChar = True
      Size = 1
    end
  end
  object SMantenimientos: TDataSource
    DataSet = QMantenimientos
    Left = 144
    Top = 325
  end
  object QPermisos: TIBDataSet
    Database = DMControlRef.BDControl
    Transaction = TransPermisos
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PERMISOS_USUARIOS'
      'WHERE'
      
        '  IDMANTENIMIENTO                =:old_IDMANTENIMIENTO          ' +
        '       AND '
      
        '  IDMODULO                       =:old_IDMODULO                 ' +
        '       AND '
      
        '  IDUSUARIO                      =:old_IDUSUARIO                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO PERMISOS_USUARIOS'
      
        '  (IDUSUARIO                      ,IDMANTENIMIENTO              ' +
        '  ,IDMODULO                       ,ANIADIR                      ' +
        '  ,MODIFICAR                      ,BORRAR                       ' +
        '  ,IMPRESION                      )'
      'VALUES'
      
        '  (:IDUSUARIO                      ,:IDMANTENIMIENTO            ' +
        '    ,:IDMODULO                       ,:ANIADIR                  ' +
        '      ,:MODIFICAR                      ,:BORRAR                 ' +
        '        ,:IMPRESION                      )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM PERMISOS_USUARIOS'
      'WHERE'
      
        '  IDMANTENIMIENTO                =?IDMANTENIMIENTO              ' +
        '   AND '
      
        '  IDMODULO                       =?IDMODULO                     ' +
        '   AND '
      
        '  IDUSUARIO                      =?IDUSUARIO                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM PERMISOS_USUARIOS')
    ModifySQL.Strings = (
      'UPDATE PERMISOS_USUARIOS'
      'SET'
      
        '  ANIADIR                        =:ANIADIR                      ' +
        '   '
      
        '  ,MODIFICAR                      =:MODIFICAR                   ' +
        '    '
      
        '  ,BORRAR                         =:BORRAR                      ' +
        '    '
      
        '  ,IMPRESION                      =:IMPRESION                   ' +
        '    '
      'WHERE'
      
        '  IDMANTENIMIENTO                =:IDMANTENIMIENTO              ' +
        '   AND '
      
        '  IDMODULO                       =:IDMODULO                     ' +
        '   AND '
      
        '  IDUSUARIO                      =:IDUSUARIO                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    DataSource = SUsuarios
    Left = 57
    Top = 386
    object QPermisosIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'PERMISOS_USUARIOS.IDUSUARIO'
      Required = True
    end
    object QPermisosIDMANTENIMIENTO: TIntegerField
      FieldName = 'IDMANTENIMIENTO'
      Origin = 'PERMISOS_USUARIOS.IDMANTENIMIENTO'
      Required = True
    end
    object QPermisosIDMODULO: TIntegerField
      FieldName = 'IDMODULO'
      Origin = 'PERMISOS_USUARIOS.IDMODULO'
      Required = True
    end
    object QPermisosANIADIR: TIBStringField
      FieldName = 'ANIADIR'
      Origin = 'PERMISOS_USUARIOS.ANIADIR'
      FixedChar = True
      Size = 1
    end
    object QPermisosMODIFICAR: TIBStringField
      FieldName = 'MODIFICAR'
      Origin = 'PERMISOS_USUARIOS.MODIFICAR'
      FixedChar = True
      Size = 1
    end
    object QPermisosBORRAR: TIBStringField
      FieldName = 'BORRAR'
      Origin = 'PERMISOS_USUARIOS.BORRAR'
      FixedChar = True
      Size = 1
    end
    object QPermisosIMPRESION: TIBStringField
      FieldName = 'IMPRESION'
      Origin = 'PERMISOS_USUARIOS.IMPRESION'
      FixedChar = True
      Size = 1
    end
  end
  object TransPermisos: TIBTransaction
    DefaultDatabase = DMControlRef.BDControl
    Left = 142
    Top = 386
  end
  object SPermisos: TDataSource
    DataSet = QPermisos
    Left = 221
    Top = 386
  end
end
