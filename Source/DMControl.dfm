object DMControlRef: TDMControlRef
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 431
  Width = 602
  object BDControl: TIBDatabase
    DatabaseName = 'LOCALHOST:C:\IB_DATA\SENCILLE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 42
    Top = 40
  end
  object TransaccionControl: TIBTransaction
    DefaultDatabase = BDControl
    Left = 176
    Top = 48
  end
  object QEmpresas: TIBDataSet
    Database = BDControl
    Transaction = TransaccionControl
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM EMPRESAS'
      'WHERE'
      
        '  ID_EMPRESA                     =:old_ID_EMPRESA               ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO EMPRESAS'
      
        '  (CERRADA   ,UBICACION                      ,NOMBRE            ' +
        '             ,ID_EMPRESA                     ,ULTIMA            ' +
        '        )'
      'VALUES'
      
        '  (:CERRADA  ,:UBICACION                      ,:NOMBRE          ' +
        '               ,:ID_EMPRESA                     ,:ULTIMA        ' +
        '         )')
    RefreshSQL.Strings = (
      'SELECT ID_EMPRESA,'
      '               NOMBRE       ,'
      '               UBICACION   ,'
      '               CERRADA     ,'
      '               ULTIMA         '
      'FROM EMPRESAS'
      'WHERE  ID_EMPRESA    =?ID_EMPRESA                      ')
    SelectSQL.Strings = (
      'SELECT ID_EMPRESA,'
      '               NOMBRE       ,'
      '               UBICACION   ,'
      '               CERRADA     ,'
      '               ULTIMA         '
      ' FROM EMPRESAS')
    ModifySQL.Strings = (
      'UPDATE EMPRESAS'
      'SET'
      
        '  CERRADA                        =:CERRADA                      ' +
        '   '
      
        '  ,UBICACION                      =:UBICACION                   ' +
        '    '
      
        '  ,NOMBRE                         =:NOMBRE                      ' +
        '    '
      
        '  ,ULTIMA                         =:ULTIMA                      ' +
        '    '
      'WHERE'
      
        '  ID_EMPRESA                     =:ID_EMPRESA                   ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 40
    Top = 176
    object QEmpresasID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'EMPRESAS.ID_EMPRESA'
      Required = True
    end
    object QEmpresasNOMBRE: TIBStringField
      DisplayWidth = 40
      FieldName = 'NOMBRE'
      Origin = 'EMPRESAS.NOMBRE'
      Size = 40
    end
    object QEmpresasUBICACION: TIBStringField
      FieldName = 'UBICACION'
      Origin = 'EMPRESAS.UBICACION'
      Size = 100
    end
    object QEmpresasCERRADA: TIBStringField
      FieldName = 'CERRADA'
      Origin = 'EMPRESAS.CERRADA'
      FixedChar = True
      Size = 1
    end
    object QEmpresasULTIMA: TIBStringField
      FieldName = 'ULTIMA'
      Origin = 'EMPRESAS.ULTIMA'
      FixedChar = True
      Size = 1
    end
  end
  object QUsuarios: TIBDataSet
    Database = BDControl
    Transaction = TransaccionControl
    BufferChunks = 1000
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
    Left = 358
    Top = 155
    object QUsuariosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'USUARIOS.ID_USUARIO'
      Required = True
    end
    object QUsuariosID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'USUARIOS.ID_EMPRESA'
    end
    object QUsuariosCLAVE: TIBStringField
      FieldName = 'CLAVE'
      Origin = 'USUARIOS.CLAVE'
      Size = 10
    end
    object QUsuariosNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'USUARIOS.NOMBRE'
      Size = 15
    end
  end
  object QControl: TIBDataSet
    Database = BDControl
    Transaction = TransaccionControl
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CONTROL'
      'WHERE'
      
        '  ID_CONTROL                     =:old_ID_CONTROL               ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO CONTROL'
      
        '  (PEDIR_CLAVE                    ,ID_CONTROL                   ' +
        '  )'
      'VALUES'
      
        '  (:PEDIR_CLAVE                    ,:ID_CONTROL                 ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM CONTROL'
      'WHERE'
      
        '  ID_CONTROL                     =?ID_CONTROL                   ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM CONTROL')
    ModifySQL.Strings = (
      'UPDATE CONTROL'
      'SET'
      
        '  PEDIR_CLAVE                    =:PEDIR_CLAVE                  ' +
        '   '
      'WHERE'
      
        '  ID_CONTROL                     =:ID_CONTROL                   ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 358
    Top = 219
    object QControlPEDIR_CLAVE: TIBStringField
      FieldName = 'PEDIR_CLAVE'
      Origin = 'CONTROL.PEDIR_CLAVE'
      FixedChar = True
      Size = 1
    end
    object QControlID_CONTROL: TSmallintField
      FieldName = 'ID_CONTROL'
      Origin = 'CONTROL.ID_CONTROL'
      Required = True
    end
  end
  object QAuxiliar: TIBSQL
    Database = BDControl
    Transaction = TransaccionControl
    Left = 360
    Top = 96
  end
  object sEmpresas: TDataSource
    DataSet = QEmpresas
    Left = 104
    Top = 176
  end
end
