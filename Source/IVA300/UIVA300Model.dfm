object DataModuleIVA300: TDataModuleIVA300
  OldCreateOrder = False
  Height = 540
  Width = 713
  object QSubCuentas: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCTAS'
      
        '  (PAIS                           ,CODPOSTAL                    ' +
        '  ,POBLACION                      ,PROVINCIA                    ' +
        '  ,SUMADB                         ,SUMAHB                       ' +
        '  ,ACUDB01                        ,ACUDB02                      ' +
        '  ,ACUDB03                        ,ACUDB04                      ' +
        '  ,ACUDB05                        ,ACUDB06                      ' +
        '  ,ACUDB07                        ,ACUDB08                      ' +
        '  ,ACUDB09                        ,ACUDB10                      ' +
        '  ,ACUDB11                        ,ACUDB12                      ' +
        '  ,ACUHB01                        ,ACUHB02                      ' +
        '  ,ACUHB03                        ,ACUHB04                      ' +
        '  ,ACUHB05                        ,ACUHB06                      ' +
        '  ,ACUHB07                        ,ACUHB08                      ' +
        '  ,ACUHB09                        ,ACUHB10                      ' +
        '  ,ACUHB11                        ,ACUHB12                      ' +
        '  ,ANTDB01                        ,ANTDB02                      ' +
        '  ,ANTDB03                        ,ANTDB04                      ' +
        '  ,ANTDB05                        ,ANTDB06                      ' +
        '  ,ANTDB07                        ,ANTDB08                      ' +
        '  ,ANTDB09                        ,ANTDB10                      ' +
        '  ,ANTDB11                        ,ANTDB12                      ' +
        '  ,ANTHB01                        ,ANTHB02                      ' +
        '  ,ANTHB03                        ,ANTHB04                      ' +
        '  ,ANTHB05                        ,ANTHB06                      ' +
        '  ,ANTHB07                        ,ANTHB08                      ' +
        '  ,ANTHB09                        ,ANTHB10                      ' +
        '  ,ANTHB11                        ,ANTHB12                      ' +
        '  ,ANTHB                          ,ANTDB                        ' +
        '  ,IVA                            ,RECARGO                      ' +
        '  ,NUMERO                         ,SUBCUENTA                    ' +
        '  ,CONTRAPARTIDA                  ,DESCRIPCION                  ' +
        '  ,TELEFONO                       ,FAX                          ' +
        '  ,DIRECCION                      ,TIPOIVA                      ' +
        '  ,ARRENDADOR                     ,PROFESIONAL                  ' +
        '  ,DIRECCION1                     ,NIF                          ' +
        '  )'
      'VALUES'
      
        '  (:PAIS                           ,:CODPOSTAL                  ' +
        '    ,:POBLACION                      ,:PROVINCIA                ' +
        '      ,:SUMADB                         ,:SUMAHB                 ' +
        '        ,:ACUDB01                        ,:ACUDB02              ' +
        '          ,:ACUDB03                        ,:ACUDB04            ' +
        '            ,:ACUDB05                        ,:ACUDB06          ' +
        '              ,:ACUDB07                        ,:ACUDB08        ' +
        '                ,:ACUDB09                        ,:ACUDB10      ' +
        '                  ,:ACUDB11                        ,:ACUDB12    ' +
        '                    ,:ACUHB01                        ,:ACUHB02  ' +
        '                      ,:ACUHB03                        ,:ACUHB04' +
        '                        ,:ACUHB05                        ,:ACUHB' +
        '06                        ,:ACUHB07                        ,:ACU' +
        'HB08                        ,:ACUHB09                        ,:A' +
        'CUHB10                        ,:ACUHB11                        ,' +
        ':ACUHB12                        ,:ANTDB01                       ' +
        ' ,:ANTDB02                        ,:ANTDB03                     ' +
        '   ,:ANTDB04                        ,:ANTDB05                   ' +
        '     ,:ANTDB06                        ,:ANTDB07                 ' +
        '       ,:ANTDB08                        ,:ANTDB09               ' +
        '         ,:ANTDB10                        ,:ANTDB11             ' +
        '           ,:ANTDB12                        ,:ANTHB01           ' +
        '             ,:ANTHB02                        ,:ANTHB03         ' +
        '               ,:ANTHB04                        ,:ANTHB05       ' +
        '                 ,:ANTHB06                        ,:ANTHB07     ' +
        '                   ,:ANTHB08                        ,:ANTHB09   ' +
        '                     ,:ANTHB10                        ,:ANTHB11 ' +
        '                       ,:ANTHB12                        ,:ANTHB ' +
        '                         ,:ANTDB                          ,:IVA ' +
        '                           ,:RECARGO                        ,:NU' +
        'MERO                         ,:SUBCUENTA                      ,:' +
        'CONTRAPARTIDA                  ,:DESCRIPCION                    ' +
        ',:TELEFONO                       ,:FAX                          ' +
        '  ,:DIRECCION                      ,:TIPOIVA                    ' +
        '    ,:ARRENDADOR                     ,:PROFESIONAL              ' +
        '      ,:DIRECCION1                     ,:NIF                    ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT SUBCUENTA,'
      '               DESCRIPCION,'
      '               ABREVIATURA'
      'FROM SUBCTAS'
      'WHERE CHAR_LENGTH(SUBCUENTA) = :prmLENGTH')
    ModifySQL.Strings = (
      'UPDATE SUBCTAS'
      'SET'
      
        '  PAIS                           =:PAIS                         ' +
        '   '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,SUMADB                         =:SUMADB                      ' +
        '    '
      
        '  ,SUMAHB                         =:SUMAHB                      ' +
        '    '
      
        '  ,ACUDB01                        =:ACUDB01                     ' +
        '    '
      
        '  ,ACUDB02                        =:ACUDB02                     ' +
        '    '
      
        '  ,ACUDB03                        =:ACUDB03                     ' +
        '    '
      
        '  ,ACUDB04                        =:ACUDB04                     ' +
        '    '
      
        '  ,ACUDB05                        =:ACUDB05                     ' +
        '    '
      
        '  ,ACUDB06                        =:ACUDB06                     ' +
        '    '
      
        '  ,ACUDB07                        =:ACUDB07                     ' +
        '    '
      
        '  ,ACUDB08                        =:ACUDB08                     ' +
        '    '
      
        '  ,ACUDB09                        =:ACUDB09                     ' +
        '    '
      
        '  ,ACUDB10                        =:ACUDB10                     ' +
        '    '
      
        '  ,ACUDB11                        =:ACUDB11                     ' +
        '    '
      
        '  ,ACUDB12                        =:ACUDB12                     ' +
        '    '
      
        '  ,ACUHB01                        =:ACUHB01                     ' +
        '    '
      
        '  ,ACUHB02                        =:ACUHB02                     ' +
        '    '
      
        '  ,ACUHB03                        =:ACUHB03                     ' +
        '    '
      
        '  ,ACUHB04                        =:ACUHB04                     ' +
        '    '
      
        '  ,ACUHB05                        =:ACUHB05                     ' +
        '    '
      
        '  ,ACUHB06                        =:ACUHB06                     ' +
        '    '
      
        '  ,ACUHB07                        =:ACUHB07                     ' +
        '    '
      
        '  ,ACUHB08                        =:ACUHB08                     ' +
        '    '
      
        '  ,ACUHB09                        =:ACUHB09                     ' +
        '    '
      
        '  ,ACUHB10                        =:ACUHB10                     ' +
        '    '
      
        '  ,ACUHB11                        =:ACUHB11                     ' +
        '    '
      
        '  ,ACUHB12                        =:ACUHB12                     ' +
        '    '
      
        '  ,ANTDB01                        =:ANTDB01                     ' +
        '    '
      
        '  ,ANTDB02                        =:ANTDB02                     ' +
        '    '
      
        '  ,ANTDB03                        =:ANTDB03                     ' +
        '    '
      
        '  ,ANTDB04                        =:ANTDB04                     ' +
        '    '
      
        '  ,ANTDB05                        =:ANTDB05                     ' +
        '    '
      
        '  ,ANTDB06                        =:ANTDB06                     ' +
        '    '
      
        '  ,ANTDB07                        =:ANTDB07                     ' +
        '    '
      
        '  ,ANTDB08                        =:ANTDB08                     ' +
        '    '
      
        '  ,ANTDB09                        =:ANTDB09                     ' +
        '    '
      
        '  ,ANTDB10                        =:ANTDB10                     ' +
        '    '
      
        '  ,ANTDB11                        =:ANTDB11                     ' +
        '    '
      
        '  ,ANTDB12                        =:ANTDB12                     ' +
        '    '
      
        '  ,ANTHB01                        =:ANTHB01                     ' +
        '    '
      
        '  ,ANTHB02                        =:ANTHB02                     ' +
        '    '
      
        '  ,ANTHB03                        =:ANTHB03                     ' +
        '    '
      
        '  ,ANTHB04                        =:ANTHB04                     ' +
        '    '
      
        '  ,ANTHB05                        =:ANTHB05                     ' +
        '    '
      
        '  ,ANTHB06                        =:ANTHB06                     ' +
        '    '
      
        '  ,ANTHB07                        =:ANTHB07                     ' +
        '    '
      
        '  ,ANTHB08                        =:ANTHB08                     ' +
        '    '
      
        '  ,ANTHB09                        =:ANTHB09                     ' +
        '    '
      
        '  ,ANTHB10                        =:ANTHB10                     ' +
        '    '
      
        '  ,ANTHB11                        =:ANTHB11                     ' +
        '    '
      
        '  ,ANTHB12                        =:ANTHB12                     ' +
        '    '
      
        '  ,ANTHB                          =:ANTHB                       ' +
        '    '
      
        '  ,ANTDB                          =:ANTDB                       ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,TIPOIVA                        =:TIPOIVA                     ' +
        '    '
      
        '  ,ARRENDADOR                     =:ARRENDADOR                  ' +
        '    '
      
        '  ,PROFESIONAL                    =:PROFESIONAL                 ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      'WHERE'
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 107
    Top = 119
    object IBStringField1: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object IBStringField2: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 80
    end
    object IBStringField3: TIBStringField
      FieldName = 'ABREVIATURA'
      Origin = 'SUBCTAS.ABREVIATURA'
      Size = 10
    end
  end
  object SSubcuentas: TDataSource
    AutoEdit = False
    DataSet = QSubCuentas
    Left = 183
    Top = 119
  end
  object QEmpresas: TIBDataSet
    Database = DMControlRef.BDControl
    Transaction = DMControlRef.TransaccionControl
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT NOMBRE,'
      '               CERRADA,'
      '               UBICACION,'
      '               ID_EMPRESA,'
      '               ULTIMA'
      'FROM EMPRESAS'
      'WHERE CERRADA = '#39'N'#39)
    ParamCheck = True
    UniDirectional = False
    Left = 98
    Top = 28
    object QEmpresasNOMBRE: TIBStringField
      DisplayWidth = 40
      FieldName = 'NOMBRE'
      Origin = 'EMPRESAS.NOMBRE'
      Size = 40
    end
    object QEmpresasCERRADA: TIBStringField
      FieldName = 'CERRADA'
      Origin = 'EMPRESAS.CERRADA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QEmpresasUBICACION: TIBStringField
      FieldName = 'UBICACION'
      Origin = 'EMPRESAS.UBICACION'
      Visible = False
      Size = 100
    end
    object QEmpresasID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'EMPRESAS.ID_EMPRESA'
      Required = True
      Visible = False
    end
    object QEmpresasULTIMA: TIBStringField
      FieldName = 'ULTIMA'
      Origin = 'EMPRESAS.ULTIMA'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object SEmpresas: TDataSource
    AutoEdit = False
    DataSet = QEmpresas
    Left = 171
    Top = 30
  end
  object DBEmpresa: TIBDatabase
    LoginPrompt = False
    DefaultTransaction = Transaccion
    ServerType = 'IBServer'
    Left = 424
    Top = 16
  end
  object Transaccion: TIBTransaction
    DefaultDatabase = DBEmpresa
    Left = 488
    Top = 16
  end
  object QAnaliticas: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCTAS'
      
        '  (PAIS                           ,CODPOSTAL                    ' +
        '  ,POBLACION                      ,PROVINCIA                    ' +
        '  ,SUMADB                         ,SUMAHB                       ' +
        '  ,ACUDB01                        ,ACUDB02                      ' +
        '  ,ACUDB03                        ,ACUDB04                      ' +
        '  ,ACUDB05                        ,ACUDB06                      ' +
        '  ,ACUDB07                        ,ACUDB08                      ' +
        '  ,ACUDB09                        ,ACUDB10                      ' +
        '  ,ACUDB11                        ,ACUDB12                      ' +
        '  ,ACUHB01                        ,ACUHB02                      ' +
        '  ,ACUHB03                        ,ACUHB04                      ' +
        '  ,ACUHB05                        ,ACUHB06                      ' +
        '  ,ACUHB07                        ,ACUHB08                      ' +
        '  ,ACUHB09                        ,ACUHB10                      ' +
        '  ,ACUHB11                        ,ACUHB12                      ' +
        '  ,ANTDB01                        ,ANTDB02                      ' +
        '  ,ANTDB03                        ,ANTDB04                      ' +
        '  ,ANTDB05                        ,ANTDB06                      ' +
        '  ,ANTDB07                        ,ANTDB08                      ' +
        '  ,ANTDB09                        ,ANTDB10                      ' +
        '  ,ANTDB11                        ,ANTDB12                      ' +
        '  ,ANTHB01                        ,ANTHB02                      ' +
        '  ,ANTHB03                        ,ANTHB04                      ' +
        '  ,ANTHB05                        ,ANTHB06                      ' +
        '  ,ANTHB07                        ,ANTHB08                      ' +
        '  ,ANTHB09                        ,ANTHB10                      ' +
        '  ,ANTHB11                        ,ANTHB12                      ' +
        '  ,ANTHB                          ,ANTDB                        ' +
        '  ,IVA                            ,RECARGO                      ' +
        '  ,NUMERO                         ,SUBCUENTA                    ' +
        '  ,CONTRAPARTIDA                  ,DESCRIPCION                  ' +
        '  ,TELEFONO                       ,FAX                          ' +
        '  ,DIRECCION                      ,TIPOIVA                      ' +
        '  ,ARRENDADOR                     ,PROFESIONAL                  ' +
        '  ,DIRECCION1                     ,NIF                          ' +
        '  )'
      'VALUES'
      
        '  (:PAIS                           ,:CODPOSTAL                  ' +
        '    ,:POBLACION                      ,:PROVINCIA                ' +
        '      ,:SUMADB                         ,:SUMAHB                 ' +
        '        ,:ACUDB01                        ,:ACUDB02              ' +
        '          ,:ACUDB03                        ,:ACUDB04            ' +
        '            ,:ACUDB05                        ,:ACUDB06          ' +
        '              ,:ACUDB07                        ,:ACUDB08        ' +
        '                ,:ACUDB09                        ,:ACUDB10      ' +
        '                  ,:ACUDB11                        ,:ACUDB12    ' +
        '                    ,:ACUHB01                        ,:ACUHB02  ' +
        '                      ,:ACUHB03                        ,:ACUHB04' +
        '                        ,:ACUHB05                        ,:ACUHB' +
        '06                        ,:ACUHB07                        ,:ACU' +
        'HB08                        ,:ACUHB09                        ,:A' +
        'CUHB10                        ,:ACUHB11                        ,' +
        ':ACUHB12                        ,:ANTDB01                       ' +
        ' ,:ANTDB02                        ,:ANTDB03                     ' +
        '   ,:ANTDB04                        ,:ANTDB05                   ' +
        '     ,:ANTDB06                        ,:ANTDB07                 ' +
        '       ,:ANTDB08                        ,:ANTDB09               ' +
        '         ,:ANTDB10                        ,:ANTDB11             ' +
        '           ,:ANTDB12                        ,:ANTHB01           ' +
        '             ,:ANTHB02                        ,:ANTHB03         ' +
        '               ,:ANTHB04                        ,:ANTHB05       ' +
        '                 ,:ANTHB06                        ,:ANTHB07     ' +
        '                   ,:ANTHB08                        ,:ANTHB09   ' +
        '                     ,:ANTHB10                        ,:ANTHB11 ' +
        '                       ,:ANTHB12                        ,:ANTHB ' +
        '                         ,:ANTDB                          ,:IVA ' +
        '                           ,:RECARGO                        ,:NU' +
        'MERO                         ,:SUBCUENTA                      ,:' +
        'CONTRAPARTIDA                  ,:DESCRIPCION                    ' +
        ',:TELEFONO                       ,:FAX                          ' +
        '  ,:DIRECCION                      ,:TIPOIVA                    ' +
        '    ,:ARRENDADOR                     ,:PROFESIONAL              ' +
        '      ,:DIRECCION1                     ,:NIF                    ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT CUENTA,'
      '               NOMBRE,'
      '               ID_DELEGACION,'
      '               ID_DEPARTAMENTO,'
      '               ID_SECCION,'
      '               ID_PROYECTO'
      'FROM ANALITICAS'
      '')
    ModifySQL.Strings = (
      'UPDATE SUBCTAS'
      'SET'
      
        '  PAIS                           =:PAIS                         ' +
        '   '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,SUMADB                         =:SUMADB                      ' +
        '    '
      
        '  ,SUMAHB                         =:SUMAHB                      ' +
        '    '
      
        '  ,ACUDB01                        =:ACUDB01                     ' +
        '    '
      
        '  ,ACUDB02                        =:ACUDB02                     ' +
        '    '
      
        '  ,ACUDB03                        =:ACUDB03                     ' +
        '    '
      
        '  ,ACUDB04                        =:ACUDB04                     ' +
        '    '
      
        '  ,ACUDB05                        =:ACUDB05                     ' +
        '    '
      
        '  ,ACUDB06                        =:ACUDB06                     ' +
        '    '
      
        '  ,ACUDB07                        =:ACUDB07                     ' +
        '    '
      
        '  ,ACUDB08                        =:ACUDB08                     ' +
        '    '
      
        '  ,ACUDB09                        =:ACUDB09                     ' +
        '    '
      
        '  ,ACUDB10                        =:ACUDB10                     ' +
        '    '
      
        '  ,ACUDB11                        =:ACUDB11                     ' +
        '    '
      
        '  ,ACUDB12                        =:ACUDB12                     ' +
        '    '
      
        '  ,ACUHB01                        =:ACUHB01                     ' +
        '    '
      
        '  ,ACUHB02                        =:ACUHB02                     ' +
        '    '
      
        '  ,ACUHB03                        =:ACUHB03                     ' +
        '    '
      
        '  ,ACUHB04                        =:ACUHB04                     ' +
        '    '
      
        '  ,ACUHB05                        =:ACUHB05                     ' +
        '    '
      
        '  ,ACUHB06                        =:ACUHB06                     ' +
        '    '
      
        '  ,ACUHB07                        =:ACUHB07                     ' +
        '    '
      
        '  ,ACUHB08                        =:ACUHB08                     ' +
        '    '
      
        '  ,ACUHB09                        =:ACUHB09                     ' +
        '    '
      
        '  ,ACUHB10                        =:ACUHB10                     ' +
        '    '
      
        '  ,ACUHB11                        =:ACUHB11                     ' +
        '    '
      
        '  ,ACUHB12                        =:ACUHB12                     ' +
        '    '
      
        '  ,ANTDB01                        =:ANTDB01                     ' +
        '    '
      
        '  ,ANTDB02                        =:ANTDB02                     ' +
        '    '
      
        '  ,ANTDB03                        =:ANTDB03                     ' +
        '    '
      
        '  ,ANTDB04                        =:ANTDB04                     ' +
        '    '
      
        '  ,ANTDB05                        =:ANTDB05                     ' +
        '    '
      
        '  ,ANTDB06                        =:ANTDB06                     ' +
        '    '
      
        '  ,ANTDB07                        =:ANTDB07                     ' +
        '    '
      
        '  ,ANTDB08                        =:ANTDB08                     ' +
        '    '
      
        '  ,ANTDB09                        =:ANTDB09                     ' +
        '    '
      
        '  ,ANTDB10                        =:ANTDB10                     ' +
        '    '
      
        '  ,ANTDB11                        =:ANTDB11                     ' +
        '    '
      
        '  ,ANTDB12                        =:ANTDB12                     ' +
        '    '
      
        '  ,ANTHB01                        =:ANTHB01                     ' +
        '    '
      
        '  ,ANTHB02                        =:ANTHB02                     ' +
        '    '
      
        '  ,ANTHB03                        =:ANTHB03                     ' +
        '    '
      
        '  ,ANTHB04                        =:ANTHB04                     ' +
        '    '
      
        '  ,ANTHB05                        =:ANTHB05                     ' +
        '    '
      
        '  ,ANTHB06                        =:ANTHB06                     ' +
        '    '
      
        '  ,ANTHB07                        =:ANTHB07                     ' +
        '    '
      
        '  ,ANTHB08                        =:ANTHB08                     ' +
        '    '
      
        '  ,ANTHB09                        =:ANTHB09                     ' +
        '    '
      
        '  ,ANTHB10                        =:ANTHB10                     ' +
        '    '
      
        '  ,ANTHB11                        =:ANTHB11                     ' +
        '    '
      
        '  ,ANTHB12                        =:ANTHB12                     ' +
        '    '
      
        '  ,ANTHB                          =:ANTHB                       ' +
        '    '
      
        '  ,ANTDB                          =:ANTDB                       ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,TIPOIVA                        =:TIPOIVA                     ' +
        '    '
      
        '  ,ARRENDADOR                     =:ARRENDADOR                  ' +
        '    '
      
        '  ,PROFESIONAL                    =:PROFESIONAL                 ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      'WHERE'
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 107
    Top = 175
    object QAnaliticasID_PROYECTO: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'ANALITICAS.ID_PROYECTO'
      Size = 10
    end
    object QAnaliticasID_SECCION: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'ANALITICAS.ID_SECCION'
      Size = 10
    end
    object QAnaliticasID_DEPARTAMENTO: TIBStringField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ANALITICAS.ID_DEPARTAMENTO'
      Size = 10
    end
    object QAnaliticasID_DELEGACION: TIBStringField
      FieldName = 'ID_DELEGACION'
      Origin = 'ANALITICAS.ID_DELEGACION'
      Size = 10
    end
    object QAnaliticasNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'ANALITICAS.NOMBRE'
      Size = 50
    end
    object QAnaliticasCUENTA: TIBStringField
      FieldName = 'CUENTA'
      Origin = 'ANALITICAS.CUENTA'
      Required = True
      Size = 10
    end
  end
  object SAnaliticas: TDataSource
    AutoEdit = False
    DataSet = QAnaliticas
    Left = 183
    Top = 175
  end
  object QDelegaciones: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCTAS'
      
        '  (PAIS                           ,CODPOSTAL                    ' +
        '  ,POBLACION                      ,PROVINCIA                    ' +
        '  ,SUMADB                         ,SUMAHB                       ' +
        '  ,ACUDB01                        ,ACUDB02                      ' +
        '  ,ACUDB03                        ,ACUDB04                      ' +
        '  ,ACUDB05                        ,ACUDB06                      ' +
        '  ,ACUDB07                        ,ACUDB08                      ' +
        '  ,ACUDB09                        ,ACUDB10                      ' +
        '  ,ACUDB11                        ,ACUDB12                      ' +
        '  ,ACUHB01                        ,ACUHB02                      ' +
        '  ,ACUHB03                        ,ACUHB04                      ' +
        '  ,ACUHB05                        ,ACUHB06                      ' +
        '  ,ACUHB07                        ,ACUHB08                      ' +
        '  ,ACUHB09                        ,ACUHB10                      ' +
        '  ,ACUHB11                        ,ACUHB12                      ' +
        '  ,ANTDB01                        ,ANTDB02                      ' +
        '  ,ANTDB03                        ,ANTDB04                      ' +
        '  ,ANTDB05                        ,ANTDB06                      ' +
        '  ,ANTDB07                        ,ANTDB08                      ' +
        '  ,ANTDB09                        ,ANTDB10                      ' +
        '  ,ANTDB11                        ,ANTDB12                      ' +
        '  ,ANTHB01                        ,ANTHB02                      ' +
        '  ,ANTHB03                        ,ANTHB04                      ' +
        '  ,ANTHB05                        ,ANTHB06                      ' +
        '  ,ANTHB07                        ,ANTHB08                      ' +
        '  ,ANTHB09                        ,ANTHB10                      ' +
        '  ,ANTHB11                        ,ANTHB12                      ' +
        '  ,ANTHB                          ,ANTDB                        ' +
        '  ,IVA                            ,RECARGO                      ' +
        '  ,NUMERO                         ,SUBCUENTA                    ' +
        '  ,CONTRAPARTIDA                  ,DESCRIPCION                  ' +
        '  ,TELEFONO                       ,FAX                          ' +
        '  ,DIRECCION                      ,TIPOIVA                      ' +
        '  ,ARRENDADOR                     ,PROFESIONAL                  ' +
        '  ,DIRECCION1                     ,NIF                          ' +
        '  )'
      'VALUES'
      
        '  (:PAIS                           ,:CODPOSTAL                  ' +
        '    ,:POBLACION                      ,:PROVINCIA                ' +
        '      ,:SUMADB                         ,:SUMAHB                 ' +
        '        ,:ACUDB01                        ,:ACUDB02              ' +
        '          ,:ACUDB03                        ,:ACUDB04            ' +
        '            ,:ACUDB05                        ,:ACUDB06          ' +
        '              ,:ACUDB07                        ,:ACUDB08        ' +
        '                ,:ACUDB09                        ,:ACUDB10      ' +
        '                  ,:ACUDB11                        ,:ACUDB12    ' +
        '                    ,:ACUHB01                        ,:ACUHB02  ' +
        '                      ,:ACUHB03                        ,:ACUHB04' +
        '                        ,:ACUHB05                        ,:ACUHB' +
        '06                        ,:ACUHB07                        ,:ACU' +
        'HB08                        ,:ACUHB09                        ,:A' +
        'CUHB10                        ,:ACUHB11                        ,' +
        ':ACUHB12                        ,:ANTDB01                       ' +
        ' ,:ANTDB02                        ,:ANTDB03                     ' +
        '   ,:ANTDB04                        ,:ANTDB05                   ' +
        '     ,:ANTDB06                        ,:ANTDB07                 ' +
        '       ,:ANTDB08                        ,:ANTDB09               ' +
        '         ,:ANTDB10                        ,:ANTDB11             ' +
        '           ,:ANTDB12                        ,:ANTHB01           ' +
        '             ,:ANTHB02                        ,:ANTHB03         ' +
        '               ,:ANTHB04                        ,:ANTHB05       ' +
        '                 ,:ANTHB06                        ,:ANTHB07     ' +
        '                   ,:ANTHB08                        ,:ANTHB09   ' +
        '                     ,:ANTHB10                        ,:ANTHB11 ' +
        '                       ,:ANTHB12                        ,:ANTHB ' +
        '                         ,:ANTDB                          ,:IVA ' +
        '                           ,:RECARGO                        ,:NU' +
        'MERO                         ,:SUBCUENTA                      ,:' +
        'CONTRAPARTIDA                  ,:DESCRIPCION                    ' +
        ',:TELEFONO                       ,:FAX                          ' +
        '  ,:DIRECCION                      ,:TIPOIVA                    ' +
        '    ,:ARRENDADOR                     ,:PROFESIONAL              ' +
        '      ,:DIRECCION1                     ,:NIF                    ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT ID_DELEGACION,'
      '               NOMBRE'
      'FROM DELEGACION')
    ModifySQL.Strings = (
      'UPDATE SUBCTAS'
      'SET'
      
        '  PAIS                           =:PAIS                         ' +
        '   '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,SUMADB                         =:SUMADB                      ' +
        '    '
      
        '  ,SUMAHB                         =:SUMAHB                      ' +
        '    '
      
        '  ,ACUDB01                        =:ACUDB01                     ' +
        '    '
      
        '  ,ACUDB02                        =:ACUDB02                     ' +
        '    '
      
        '  ,ACUDB03                        =:ACUDB03                     ' +
        '    '
      
        '  ,ACUDB04                        =:ACUDB04                     ' +
        '    '
      
        '  ,ACUDB05                        =:ACUDB05                     ' +
        '    '
      
        '  ,ACUDB06                        =:ACUDB06                     ' +
        '    '
      
        '  ,ACUDB07                        =:ACUDB07                     ' +
        '    '
      
        '  ,ACUDB08                        =:ACUDB08                     ' +
        '    '
      
        '  ,ACUDB09                        =:ACUDB09                     ' +
        '    '
      
        '  ,ACUDB10                        =:ACUDB10                     ' +
        '    '
      
        '  ,ACUDB11                        =:ACUDB11                     ' +
        '    '
      
        '  ,ACUDB12                        =:ACUDB12                     ' +
        '    '
      
        '  ,ACUHB01                        =:ACUHB01                     ' +
        '    '
      
        '  ,ACUHB02                        =:ACUHB02                     ' +
        '    '
      
        '  ,ACUHB03                        =:ACUHB03                     ' +
        '    '
      
        '  ,ACUHB04                        =:ACUHB04                     ' +
        '    '
      
        '  ,ACUHB05                        =:ACUHB05                     ' +
        '    '
      
        '  ,ACUHB06                        =:ACUHB06                     ' +
        '    '
      
        '  ,ACUHB07                        =:ACUHB07                     ' +
        '    '
      
        '  ,ACUHB08                        =:ACUHB08                     ' +
        '    '
      
        '  ,ACUHB09                        =:ACUHB09                     ' +
        '    '
      
        '  ,ACUHB10                        =:ACUHB10                     ' +
        '    '
      
        '  ,ACUHB11                        =:ACUHB11                     ' +
        '    '
      
        '  ,ACUHB12                        =:ACUHB12                     ' +
        '    '
      
        '  ,ANTDB01                        =:ANTDB01                     ' +
        '    '
      
        '  ,ANTDB02                        =:ANTDB02                     ' +
        '    '
      
        '  ,ANTDB03                        =:ANTDB03                     ' +
        '    '
      
        '  ,ANTDB04                        =:ANTDB04                     ' +
        '    '
      
        '  ,ANTDB05                        =:ANTDB05                     ' +
        '    '
      
        '  ,ANTDB06                        =:ANTDB06                     ' +
        '    '
      
        '  ,ANTDB07                        =:ANTDB07                     ' +
        '    '
      
        '  ,ANTDB08                        =:ANTDB08                     ' +
        '    '
      
        '  ,ANTDB09                        =:ANTDB09                     ' +
        '    '
      
        '  ,ANTDB10                        =:ANTDB10                     ' +
        '    '
      
        '  ,ANTDB11                        =:ANTDB11                     ' +
        '    '
      
        '  ,ANTDB12                        =:ANTDB12                     ' +
        '    '
      
        '  ,ANTHB01                        =:ANTHB01                     ' +
        '    '
      
        '  ,ANTHB02                        =:ANTHB02                     ' +
        '    '
      
        '  ,ANTHB03                        =:ANTHB03                     ' +
        '    '
      
        '  ,ANTHB04                        =:ANTHB04                     ' +
        '    '
      
        '  ,ANTHB05                        =:ANTHB05                     ' +
        '    '
      
        '  ,ANTHB06                        =:ANTHB06                     ' +
        '    '
      
        '  ,ANTHB07                        =:ANTHB07                     ' +
        '    '
      
        '  ,ANTHB08                        =:ANTHB08                     ' +
        '    '
      
        '  ,ANTHB09                        =:ANTHB09                     ' +
        '    '
      
        '  ,ANTHB10                        =:ANTHB10                     ' +
        '    '
      
        '  ,ANTHB11                        =:ANTHB11                     ' +
        '    '
      
        '  ,ANTHB12                        =:ANTHB12                     ' +
        '    '
      
        '  ,ANTHB                          =:ANTHB                       ' +
        '    '
      
        '  ,ANTDB                          =:ANTDB                       ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,TIPOIVA                        =:TIPOIVA                     ' +
        '    '
      
        '  ,ARRENDADOR                     =:ARRENDADOR                  ' +
        '    '
      
        '  ,PROFESIONAL                    =:PROFESIONAL                 ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      'WHERE'
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 107
    Top = 223
    object QDelegacionesID_DELEGACION: TIBStringField
      FieldName = 'ID_DELEGACION'
      Origin = 'DELEGACION.ID_DELEGACION'
      Required = True
      Size = 10
    end
    object QDelegacionesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'DELEGACION.NOMBRE'
      Size = 50
    end
  end
  object SDelegaciones: TDataSource
    AutoEdit = False
    DataSet = QDelegaciones
    Left = 183
    Top = 223
  end
  object QDepartamentos: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCTAS'
      
        '  (PAIS                           ,CODPOSTAL                    ' +
        '  ,POBLACION                      ,PROVINCIA                    ' +
        '  ,SUMADB                         ,SUMAHB                       ' +
        '  ,ACUDB01                        ,ACUDB02                      ' +
        '  ,ACUDB03                        ,ACUDB04                      ' +
        '  ,ACUDB05                        ,ACUDB06                      ' +
        '  ,ACUDB07                        ,ACUDB08                      ' +
        '  ,ACUDB09                        ,ACUDB10                      ' +
        '  ,ACUDB11                        ,ACUDB12                      ' +
        '  ,ACUHB01                        ,ACUHB02                      ' +
        '  ,ACUHB03                        ,ACUHB04                      ' +
        '  ,ACUHB05                        ,ACUHB06                      ' +
        '  ,ACUHB07                        ,ACUHB08                      ' +
        '  ,ACUHB09                        ,ACUHB10                      ' +
        '  ,ACUHB11                        ,ACUHB12                      ' +
        '  ,ANTDB01                        ,ANTDB02                      ' +
        '  ,ANTDB03                        ,ANTDB04                      ' +
        '  ,ANTDB05                        ,ANTDB06                      ' +
        '  ,ANTDB07                        ,ANTDB08                      ' +
        '  ,ANTDB09                        ,ANTDB10                      ' +
        '  ,ANTDB11                        ,ANTDB12                      ' +
        '  ,ANTHB01                        ,ANTHB02                      ' +
        '  ,ANTHB03                        ,ANTHB04                      ' +
        '  ,ANTHB05                        ,ANTHB06                      ' +
        '  ,ANTHB07                        ,ANTHB08                      ' +
        '  ,ANTHB09                        ,ANTHB10                      ' +
        '  ,ANTHB11                        ,ANTHB12                      ' +
        '  ,ANTHB                          ,ANTDB                        ' +
        '  ,IVA                            ,RECARGO                      ' +
        '  ,NUMERO                         ,SUBCUENTA                    ' +
        '  ,CONTRAPARTIDA                  ,DESCRIPCION                  ' +
        '  ,TELEFONO                       ,FAX                          ' +
        '  ,DIRECCION                      ,TIPOIVA                      ' +
        '  ,ARRENDADOR                     ,PROFESIONAL                  ' +
        '  ,DIRECCION1                     ,NIF                          ' +
        '  )'
      'VALUES'
      
        '  (:PAIS                           ,:CODPOSTAL                  ' +
        '    ,:POBLACION                      ,:PROVINCIA                ' +
        '      ,:SUMADB                         ,:SUMAHB                 ' +
        '        ,:ACUDB01                        ,:ACUDB02              ' +
        '          ,:ACUDB03                        ,:ACUDB04            ' +
        '            ,:ACUDB05                        ,:ACUDB06          ' +
        '              ,:ACUDB07                        ,:ACUDB08        ' +
        '                ,:ACUDB09                        ,:ACUDB10      ' +
        '                  ,:ACUDB11                        ,:ACUDB12    ' +
        '                    ,:ACUHB01                        ,:ACUHB02  ' +
        '                      ,:ACUHB03                        ,:ACUHB04' +
        '                        ,:ACUHB05                        ,:ACUHB' +
        '06                        ,:ACUHB07                        ,:ACU' +
        'HB08                        ,:ACUHB09                        ,:A' +
        'CUHB10                        ,:ACUHB11                        ,' +
        ':ACUHB12                        ,:ANTDB01                       ' +
        ' ,:ANTDB02                        ,:ANTDB03                     ' +
        '   ,:ANTDB04                        ,:ANTDB05                   ' +
        '     ,:ANTDB06                        ,:ANTDB07                 ' +
        '       ,:ANTDB08                        ,:ANTDB09               ' +
        '         ,:ANTDB10                        ,:ANTDB11             ' +
        '           ,:ANTDB12                        ,:ANTHB01           ' +
        '             ,:ANTHB02                        ,:ANTHB03         ' +
        '               ,:ANTHB04                        ,:ANTHB05       ' +
        '                 ,:ANTHB06                        ,:ANTHB07     ' +
        '                   ,:ANTHB08                        ,:ANTHB09   ' +
        '                     ,:ANTHB10                        ,:ANTHB11 ' +
        '                       ,:ANTHB12                        ,:ANTHB ' +
        '                         ,:ANTDB                          ,:IVA ' +
        '                           ,:RECARGO                        ,:NU' +
        'MERO                         ,:SUBCUENTA                      ,:' +
        'CONTRAPARTIDA                  ,:DESCRIPCION                    ' +
        ',:TELEFONO                       ,:FAX                          ' +
        '  ,:DIRECCION                      ,:TIPOIVA                    ' +
        '    ,:ARRENDADOR                     ,:PROFESIONAL              ' +
        '      ,:DIRECCION1                     ,:NIF                    ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT ID_DEPARTAMENTO, '
      '               NOMBRE'
      'FROM DEPARTAMENTO')
    ModifySQL.Strings = (
      'UPDATE SUBCTAS'
      'SET'
      
        '  PAIS                           =:PAIS                         ' +
        '   '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,SUMADB                         =:SUMADB                      ' +
        '    '
      
        '  ,SUMAHB                         =:SUMAHB                      ' +
        '    '
      
        '  ,ACUDB01                        =:ACUDB01                     ' +
        '    '
      
        '  ,ACUDB02                        =:ACUDB02                     ' +
        '    '
      
        '  ,ACUDB03                        =:ACUDB03                     ' +
        '    '
      
        '  ,ACUDB04                        =:ACUDB04                     ' +
        '    '
      
        '  ,ACUDB05                        =:ACUDB05                     ' +
        '    '
      
        '  ,ACUDB06                        =:ACUDB06                     ' +
        '    '
      
        '  ,ACUDB07                        =:ACUDB07                     ' +
        '    '
      
        '  ,ACUDB08                        =:ACUDB08                     ' +
        '    '
      
        '  ,ACUDB09                        =:ACUDB09                     ' +
        '    '
      
        '  ,ACUDB10                        =:ACUDB10                     ' +
        '    '
      
        '  ,ACUDB11                        =:ACUDB11                     ' +
        '    '
      
        '  ,ACUDB12                        =:ACUDB12                     ' +
        '    '
      
        '  ,ACUHB01                        =:ACUHB01                     ' +
        '    '
      
        '  ,ACUHB02                        =:ACUHB02                     ' +
        '    '
      
        '  ,ACUHB03                        =:ACUHB03                     ' +
        '    '
      
        '  ,ACUHB04                        =:ACUHB04                     ' +
        '    '
      
        '  ,ACUHB05                        =:ACUHB05                     ' +
        '    '
      
        '  ,ACUHB06                        =:ACUHB06                     ' +
        '    '
      
        '  ,ACUHB07                        =:ACUHB07                     ' +
        '    '
      
        '  ,ACUHB08                        =:ACUHB08                     ' +
        '    '
      
        '  ,ACUHB09                        =:ACUHB09                     ' +
        '    '
      
        '  ,ACUHB10                        =:ACUHB10                     ' +
        '    '
      
        '  ,ACUHB11                        =:ACUHB11                     ' +
        '    '
      
        '  ,ACUHB12                        =:ACUHB12                     ' +
        '    '
      
        '  ,ANTDB01                        =:ANTDB01                     ' +
        '    '
      
        '  ,ANTDB02                        =:ANTDB02                     ' +
        '    '
      
        '  ,ANTDB03                        =:ANTDB03                     ' +
        '    '
      
        '  ,ANTDB04                        =:ANTDB04                     ' +
        '    '
      
        '  ,ANTDB05                        =:ANTDB05                     ' +
        '    '
      
        '  ,ANTDB06                        =:ANTDB06                     ' +
        '    '
      
        '  ,ANTDB07                        =:ANTDB07                     ' +
        '    '
      
        '  ,ANTDB08                        =:ANTDB08                     ' +
        '    '
      
        '  ,ANTDB09                        =:ANTDB09                     ' +
        '    '
      
        '  ,ANTDB10                        =:ANTDB10                     ' +
        '    '
      
        '  ,ANTDB11                        =:ANTDB11                     ' +
        '    '
      
        '  ,ANTDB12                        =:ANTDB12                     ' +
        '    '
      
        '  ,ANTHB01                        =:ANTHB01                     ' +
        '    '
      
        '  ,ANTHB02                        =:ANTHB02                     ' +
        '    '
      
        '  ,ANTHB03                        =:ANTHB03                     ' +
        '    '
      
        '  ,ANTHB04                        =:ANTHB04                     ' +
        '    '
      
        '  ,ANTHB05                        =:ANTHB05                     ' +
        '    '
      
        '  ,ANTHB06                        =:ANTHB06                     ' +
        '    '
      
        '  ,ANTHB07                        =:ANTHB07                     ' +
        '    '
      
        '  ,ANTHB08                        =:ANTHB08                     ' +
        '    '
      
        '  ,ANTHB09                        =:ANTHB09                     ' +
        '    '
      
        '  ,ANTHB10                        =:ANTHB10                     ' +
        '    '
      
        '  ,ANTHB11                        =:ANTHB11                     ' +
        '    '
      
        '  ,ANTHB12                        =:ANTHB12                     ' +
        '    '
      
        '  ,ANTHB                          =:ANTHB                       ' +
        '    '
      
        '  ,ANTDB                          =:ANTDB                       ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,TIPOIVA                        =:TIPOIVA                     ' +
        '    '
      
        '  ,ARRENDADOR                     =:ARRENDADOR                  ' +
        '    '
      
        '  ,PROFESIONAL                    =:PROFESIONAL                 ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      'WHERE'
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 107
    Top = 271
    object QDepartamentosID_DEPARTAMENTO: TIBStringField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'DEPARTAMENTO.ID_DEPARTAMENTO'
      Required = True
      Size = 10
    end
    object QDepartamentosNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'DEPARTAMENTO.NOMBRE'
      Size = 50
    end
  end
  object SDepartamentos: TDataSource
    AutoEdit = False
    DataSet = QDepartamentos
    Left = 183
    Top = 271
  end
  object QSecciones: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCTAS'
      
        '  (PAIS                           ,CODPOSTAL                    ' +
        '  ,POBLACION                      ,PROVINCIA                    ' +
        '  ,SUMADB                         ,SUMAHB                       ' +
        '  ,ACUDB01                        ,ACUDB02                      ' +
        '  ,ACUDB03                        ,ACUDB04                      ' +
        '  ,ACUDB05                        ,ACUDB06                      ' +
        '  ,ACUDB07                        ,ACUDB08                      ' +
        '  ,ACUDB09                        ,ACUDB10                      ' +
        '  ,ACUDB11                        ,ACUDB12                      ' +
        '  ,ACUHB01                        ,ACUHB02                      ' +
        '  ,ACUHB03                        ,ACUHB04                      ' +
        '  ,ACUHB05                        ,ACUHB06                      ' +
        '  ,ACUHB07                        ,ACUHB08                      ' +
        '  ,ACUHB09                        ,ACUHB10                      ' +
        '  ,ACUHB11                        ,ACUHB12                      ' +
        '  ,ANTDB01                        ,ANTDB02                      ' +
        '  ,ANTDB03                        ,ANTDB04                      ' +
        '  ,ANTDB05                        ,ANTDB06                      ' +
        '  ,ANTDB07                        ,ANTDB08                      ' +
        '  ,ANTDB09                        ,ANTDB10                      ' +
        '  ,ANTDB11                        ,ANTDB12                      ' +
        '  ,ANTHB01                        ,ANTHB02                      ' +
        '  ,ANTHB03                        ,ANTHB04                      ' +
        '  ,ANTHB05                        ,ANTHB06                      ' +
        '  ,ANTHB07                        ,ANTHB08                      ' +
        '  ,ANTHB09                        ,ANTHB10                      ' +
        '  ,ANTHB11                        ,ANTHB12                      ' +
        '  ,ANTHB                          ,ANTDB                        ' +
        '  ,IVA                            ,RECARGO                      ' +
        '  ,NUMERO                         ,SUBCUENTA                    ' +
        '  ,CONTRAPARTIDA                  ,DESCRIPCION                  ' +
        '  ,TELEFONO                       ,FAX                          ' +
        '  ,DIRECCION                      ,TIPOIVA                      ' +
        '  ,ARRENDADOR                     ,PROFESIONAL                  ' +
        '  ,DIRECCION1                     ,NIF                          ' +
        '  )'
      'VALUES'
      
        '  (:PAIS                           ,:CODPOSTAL                  ' +
        '    ,:POBLACION                      ,:PROVINCIA                ' +
        '      ,:SUMADB                         ,:SUMAHB                 ' +
        '        ,:ACUDB01                        ,:ACUDB02              ' +
        '          ,:ACUDB03                        ,:ACUDB04            ' +
        '            ,:ACUDB05                        ,:ACUDB06          ' +
        '              ,:ACUDB07                        ,:ACUDB08        ' +
        '                ,:ACUDB09                        ,:ACUDB10      ' +
        '                  ,:ACUDB11                        ,:ACUDB12    ' +
        '                    ,:ACUHB01                        ,:ACUHB02  ' +
        '                      ,:ACUHB03                        ,:ACUHB04' +
        '                        ,:ACUHB05                        ,:ACUHB' +
        '06                        ,:ACUHB07                        ,:ACU' +
        'HB08                        ,:ACUHB09                        ,:A' +
        'CUHB10                        ,:ACUHB11                        ,' +
        ':ACUHB12                        ,:ANTDB01                       ' +
        ' ,:ANTDB02                        ,:ANTDB03                     ' +
        '   ,:ANTDB04                        ,:ANTDB05                   ' +
        '     ,:ANTDB06                        ,:ANTDB07                 ' +
        '       ,:ANTDB08                        ,:ANTDB09               ' +
        '         ,:ANTDB10                        ,:ANTDB11             ' +
        '           ,:ANTDB12                        ,:ANTHB01           ' +
        '             ,:ANTHB02                        ,:ANTHB03         ' +
        '               ,:ANTHB04                        ,:ANTHB05       ' +
        '                 ,:ANTHB06                        ,:ANTHB07     ' +
        '                   ,:ANTHB08                        ,:ANTHB09   ' +
        '                     ,:ANTHB10                        ,:ANTHB11 ' +
        '                       ,:ANTHB12                        ,:ANTHB ' +
        '                         ,:ANTDB                          ,:IVA ' +
        '                           ,:RECARGO                        ,:NU' +
        'MERO                         ,:SUBCUENTA                      ,:' +
        'CONTRAPARTIDA                  ,:DESCRIPCION                    ' +
        ',:TELEFONO                       ,:FAX                          ' +
        '  ,:DIRECCION                      ,:TIPOIVA                    ' +
        '    ,:ARRENDADOR                     ,:PROFESIONAL              ' +
        '      ,:DIRECCION1                     ,:NIF                    ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT ID_SECCION,'
      '              NOMBRE'
      'FROM SECCION')
    ModifySQL.Strings = (
      'UPDATE SUBCTAS'
      'SET'
      
        '  PAIS                           =:PAIS                         ' +
        '   '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,SUMADB                         =:SUMADB                      ' +
        '    '
      
        '  ,SUMAHB                         =:SUMAHB                      ' +
        '    '
      
        '  ,ACUDB01                        =:ACUDB01                     ' +
        '    '
      
        '  ,ACUDB02                        =:ACUDB02                     ' +
        '    '
      
        '  ,ACUDB03                        =:ACUDB03                     ' +
        '    '
      
        '  ,ACUDB04                        =:ACUDB04                     ' +
        '    '
      
        '  ,ACUDB05                        =:ACUDB05                     ' +
        '    '
      
        '  ,ACUDB06                        =:ACUDB06                     ' +
        '    '
      
        '  ,ACUDB07                        =:ACUDB07                     ' +
        '    '
      
        '  ,ACUDB08                        =:ACUDB08                     ' +
        '    '
      
        '  ,ACUDB09                        =:ACUDB09                     ' +
        '    '
      
        '  ,ACUDB10                        =:ACUDB10                     ' +
        '    '
      
        '  ,ACUDB11                        =:ACUDB11                     ' +
        '    '
      
        '  ,ACUDB12                        =:ACUDB12                     ' +
        '    '
      
        '  ,ACUHB01                        =:ACUHB01                     ' +
        '    '
      
        '  ,ACUHB02                        =:ACUHB02                     ' +
        '    '
      
        '  ,ACUHB03                        =:ACUHB03                     ' +
        '    '
      
        '  ,ACUHB04                        =:ACUHB04                     ' +
        '    '
      
        '  ,ACUHB05                        =:ACUHB05                     ' +
        '    '
      
        '  ,ACUHB06                        =:ACUHB06                     ' +
        '    '
      
        '  ,ACUHB07                        =:ACUHB07                     ' +
        '    '
      
        '  ,ACUHB08                        =:ACUHB08                     ' +
        '    '
      
        '  ,ACUHB09                        =:ACUHB09                     ' +
        '    '
      
        '  ,ACUHB10                        =:ACUHB10                     ' +
        '    '
      
        '  ,ACUHB11                        =:ACUHB11                     ' +
        '    '
      
        '  ,ACUHB12                        =:ACUHB12                     ' +
        '    '
      
        '  ,ANTDB01                        =:ANTDB01                     ' +
        '    '
      
        '  ,ANTDB02                        =:ANTDB02                     ' +
        '    '
      
        '  ,ANTDB03                        =:ANTDB03                     ' +
        '    '
      
        '  ,ANTDB04                        =:ANTDB04                     ' +
        '    '
      
        '  ,ANTDB05                        =:ANTDB05                     ' +
        '    '
      
        '  ,ANTDB06                        =:ANTDB06                     ' +
        '    '
      
        '  ,ANTDB07                        =:ANTDB07                     ' +
        '    '
      
        '  ,ANTDB08                        =:ANTDB08                     ' +
        '    '
      
        '  ,ANTDB09                        =:ANTDB09                     ' +
        '    '
      
        '  ,ANTDB10                        =:ANTDB10                     ' +
        '    '
      
        '  ,ANTDB11                        =:ANTDB11                     ' +
        '    '
      
        '  ,ANTDB12                        =:ANTDB12                     ' +
        '    '
      
        '  ,ANTHB01                        =:ANTHB01                     ' +
        '    '
      
        '  ,ANTHB02                        =:ANTHB02                     ' +
        '    '
      
        '  ,ANTHB03                        =:ANTHB03                     ' +
        '    '
      
        '  ,ANTHB04                        =:ANTHB04                     ' +
        '    '
      
        '  ,ANTHB05                        =:ANTHB05                     ' +
        '    '
      
        '  ,ANTHB06                        =:ANTHB06                     ' +
        '    '
      
        '  ,ANTHB07                        =:ANTHB07                     ' +
        '    '
      
        '  ,ANTHB08                        =:ANTHB08                     ' +
        '    '
      
        '  ,ANTHB09                        =:ANTHB09                     ' +
        '    '
      
        '  ,ANTHB10                        =:ANTHB10                     ' +
        '    '
      
        '  ,ANTHB11                        =:ANTHB11                     ' +
        '    '
      
        '  ,ANTHB12                        =:ANTHB12                     ' +
        '    '
      
        '  ,ANTHB                          =:ANTHB                       ' +
        '    '
      
        '  ,ANTDB                          =:ANTDB                       ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,TIPOIVA                        =:TIPOIVA                     ' +
        '    '
      
        '  ,ARRENDADOR                     =:ARRENDADOR                  ' +
        '    '
      
        '  ,PROFESIONAL                    =:PROFESIONAL                 ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      'WHERE'
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 107
    Top = 319
    object QSeccionesID_SECCION: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'SECCION.ID_SECCION'
      Required = True
      Size = 10
    end
    object QSeccionesNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'SECCION.NOMBRE'
      Size = 50
    end
  end
  object SSecciones: TDataSource
    AutoEdit = False
    DataSet = QSecciones
    Left = 183
    Top = 319
  end
  object QProyectos: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =:old_SUBCUENTA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SUBCTAS'
      
        '  (PAIS                           ,CODPOSTAL                    ' +
        '  ,POBLACION                      ,PROVINCIA                    ' +
        '  ,SUMADB                         ,SUMAHB                       ' +
        '  ,ACUDB01                        ,ACUDB02                      ' +
        '  ,ACUDB03                        ,ACUDB04                      ' +
        '  ,ACUDB05                        ,ACUDB06                      ' +
        '  ,ACUDB07                        ,ACUDB08                      ' +
        '  ,ACUDB09                        ,ACUDB10                      ' +
        '  ,ACUDB11                        ,ACUDB12                      ' +
        '  ,ACUHB01                        ,ACUHB02                      ' +
        '  ,ACUHB03                        ,ACUHB04                      ' +
        '  ,ACUHB05                        ,ACUHB06                      ' +
        '  ,ACUHB07                        ,ACUHB08                      ' +
        '  ,ACUHB09                        ,ACUHB10                      ' +
        '  ,ACUHB11                        ,ACUHB12                      ' +
        '  ,ANTDB01                        ,ANTDB02                      ' +
        '  ,ANTDB03                        ,ANTDB04                      ' +
        '  ,ANTDB05                        ,ANTDB06                      ' +
        '  ,ANTDB07                        ,ANTDB08                      ' +
        '  ,ANTDB09                        ,ANTDB10                      ' +
        '  ,ANTDB11                        ,ANTDB12                      ' +
        '  ,ANTHB01                        ,ANTHB02                      ' +
        '  ,ANTHB03                        ,ANTHB04                      ' +
        '  ,ANTHB05                        ,ANTHB06                      ' +
        '  ,ANTHB07                        ,ANTHB08                      ' +
        '  ,ANTHB09                        ,ANTHB10                      ' +
        '  ,ANTHB11                        ,ANTHB12                      ' +
        '  ,ANTHB                          ,ANTDB                        ' +
        '  ,IVA                            ,RECARGO                      ' +
        '  ,NUMERO                         ,SUBCUENTA                    ' +
        '  ,CONTRAPARTIDA                  ,DESCRIPCION                  ' +
        '  ,TELEFONO                       ,FAX                          ' +
        '  ,DIRECCION                      ,TIPOIVA                      ' +
        '  ,ARRENDADOR                     ,PROFESIONAL                  ' +
        '  ,DIRECCION1                     ,NIF                          ' +
        '  )'
      'VALUES'
      
        '  (:PAIS                           ,:CODPOSTAL                  ' +
        '    ,:POBLACION                      ,:PROVINCIA                ' +
        '      ,:SUMADB                         ,:SUMAHB                 ' +
        '        ,:ACUDB01                        ,:ACUDB02              ' +
        '          ,:ACUDB03                        ,:ACUDB04            ' +
        '            ,:ACUDB05                        ,:ACUDB06          ' +
        '              ,:ACUDB07                        ,:ACUDB08        ' +
        '                ,:ACUDB09                        ,:ACUDB10      ' +
        '                  ,:ACUDB11                        ,:ACUDB12    ' +
        '                    ,:ACUHB01                        ,:ACUHB02  ' +
        '                      ,:ACUHB03                        ,:ACUHB04' +
        '                        ,:ACUHB05                        ,:ACUHB' +
        '06                        ,:ACUHB07                        ,:ACU' +
        'HB08                        ,:ACUHB09                        ,:A' +
        'CUHB10                        ,:ACUHB11                        ,' +
        ':ACUHB12                        ,:ANTDB01                       ' +
        ' ,:ANTDB02                        ,:ANTDB03                     ' +
        '   ,:ANTDB04                        ,:ANTDB05                   ' +
        '     ,:ANTDB06                        ,:ANTDB07                 ' +
        '       ,:ANTDB08                        ,:ANTDB09               ' +
        '         ,:ANTDB10                        ,:ANTDB11             ' +
        '           ,:ANTDB12                        ,:ANTHB01           ' +
        '             ,:ANTHB02                        ,:ANTHB03         ' +
        '               ,:ANTHB04                        ,:ANTHB05       ' +
        '                 ,:ANTHB06                        ,:ANTHB07     ' +
        '                   ,:ANTHB08                        ,:ANTHB09   ' +
        '                     ,:ANTHB10                        ,:ANTHB11 ' +
        '                       ,:ANTHB12                        ,:ANTHB ' +
        '                         ,:ANTDB                          ,:IVA ' +
        '                           ,:RECARGO                        ,:NU' +
        'MERO                         ,:SUBCUENTA                      ,:' +
        'CONTRAPARTIDA                  ,:DESCRIPCION                    ' +
        ',:TELEFONO                       ,:FAX                          ' +
        '  ,:DIRECCION                      ,:TIPOIVA                    ' +
        '    ,:ARRENDADOR                     ,:PROFESIONAL              ' +
        '      ,:DIRECCION1                     ,:NIF                    ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SUBCTAS'
      'WHERE'
      
        '  SUBCUENTA                      =?SUBCUENTA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT ID_PROYECTO,'
      '               NOMBRE'
      'FROM PROYECTO')
    ModifySQL.Strings = (
      'UPDATE SUBCTAS'
      'SET'
      
        '  PAIS                           =:PAIS                         ' +
        '   '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,SUMADB                         =:SUMADB                      ' +
        '    '
      
        '  ,SUMAHB                         =:SUMAHB                      ' +
        '    '
      
        '  ,ACUDB01                        =:ACUDB01                     ' +
        '    '
      
        '  ,ACUDB02                        =:ACUDB02                     ' +
        '    '
      
        '  ,ACUDB03                        =:ACUDB03                     ' +
        '    '
      
        '  ,ACUDB04                        =:ACUDB04                     ' +
        '    '
      
        '  ,ACUDB05                        =:ACUDB05                     ' +
        '    '
      
        '  ,ACUDB06                        =:ACUDB06                     ' +
        '    '
      
        '  ,ACUDB07                        =:ACUDB07                     ' +
        '    '
      
        '  ,ACUDB08                        =:ACUDB08                     ' +
        '    '
      
        '  ,ACUDB09                        =:ACUDB09                     ' +
        '    '
      
        '  ,ACUDB10                        =:ACUDB10                     ' +
        '    '
      
        '  ,ACUDB11                        =:ACUDB11                     ' +
        '    '
      
        '  ,ACUDB12                        =:ACUDB12                     ' +
        '    '
      
        '  ,ACUHB01                        =:ACUHB01                     ' +
        '    '
      
        '  ,ACUHB02                        =:ACUHB02                     ' +
        '    '
      
        '  ,ACUHB03                        =:ACUHB03                     ' +
        '    '
      
        '  ,ACUHB04                        =:ACUHB04                     ' +
        '    '
      
        '  ,ACUHB05                        =:ACUHB05                     ' +
        '    '
      
        '  ,ACUHB06                        =:ACUHB06                     ' +
        '    '
      
        '  ,ACUHB07                        =:ACUHB07                     ' +
        '    '
      
        '  ,ACUHB08                        =:ACUHB08                     ' +
        '    '
      
        '  ,ACUHB09                        =:ACUHB09                     ' +
        '    '
      
        '  ,ACUHB10                        =:ACUHB10                     ' +
        '    '
      
        '  ,ACUHB11                        =:ACUHB11                     ' +
        '    '
      
        '  ,ACUHB12                        =:ACUHB12                     ' +
        '    '
      
        '  ,ANTDB01                        =:ANTDB01                     ' +
        '    '
      
        '  ,ANTDB02                        =:ANTDB02                     ' +
        '    '
      
        '  ,ANTDB03                        =:ANTDB03                     ' +
        '    '
      
        '  ,ANTDB04                        =:ANTDB04                     ' +
        '    '
      
        '  ,ANTDB05                        =:ANTDB05                     ' +
        '    '
      
        '  ,ANTDB06                        =:ANTDB06                     ' +
        '    '
      
        '  ,ANTDB07                        =:ANTDB07                     ' +
        '    '
      
        '  ,ANTDB08                        =:ANTDB08                     ' +
        '    '
      
        '  ,ANTDB09                        =:ANTDB09                     ' +
        '    '
      
        '  ,ANTDB10                        =:ANTDB10                     ' +
        '    '
      
        '  ,ANTDB11                        =:ANTDB11                     ' +
        '    '
      
        '  ,ANTDB12                        =:ANTDB12                     ' +
        '    '
      
        '  ,ANTHB01                        =:ANTHB01                     ' +
        '    '
      
        '  ,ANTHB02                        =:ANTHB02                     ' +
        '    '
      
        '  ,ANTHB03                        =:ANTHB03                     ' +
        '    '
      
        '  ,ANTHB04                        =:ANTHB04                     ' +
        '    '
      
        '  ,ANTHB05                        =:ANTHB05                     ' +
        '    '
      
        '  ,ANTHB06                        =:ANTHB06                     ' +
        '    '
      
        '  ,ANTHB07                        =:ANTHB07                     ' +
        '    '
      
        '  ,ANTHB08                        =:ANTHB08                     ' +
        '    '
      
        '  ,ANTHB09                        =:ANTHB09                     ' +
        '    '
      
        '  ,ANTHB10                        =:ANTHB10                     ' +
        '    '
      
        '  ,ANTHB11                        =:ANTHB11                     ' +
        '    '
      
        '  ,ANTHB12                        =:ANTHB12                     ' +
        '    '
      
        '  ,ANTHB                          =:ANTHB                       ' +
        '    '
      
        '  ,ANTDB                          =:ANTDB                       ' +
        '    '
      
        '  ,IVA                            =:IVA                         ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,NUMERO                         =:NUMERO                      ' +
        '    '
      
        '  ,CONTRAPARTIDA                  =:CONTRAPARTIDA               ' +
        '    '
      
        '  ,DESCRIPCION                    =:DESCRIPCION                 ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,TIPOIVA                        =:TIPOIVA                     ' +
        '    '
      
        '  ,ARRENDADOR                     =:ARRENDADOR                  ' +
        '    '
      
        '  ,PROFESIONAL                    =:PROFESIONAL                 ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      'WHERE'
      
        '  SUBCUENTA                      =:SUBCUENTA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 107
    Top = 367
    object QProyectosID_PROYECTO: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'PROYECTO.ID_PROYECTO'
      Required = True
      Size = 10
    end
    object QProyectosNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'PROYECTO.NOMBRE'
      Size = 50
    end
  end
  object SProyectos: TDataSource
    AutoEdit = False
    DataSet = QProyectos
    Left = 183
    Top = 367
  end
  object FastReportModelo300: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.639546446800000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42846.815425995370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 433
    Top = 242
    Datasets = <
      item
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
      end>
    Variables = <>
    Style = <>
    object DataPage1: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      TopMargin = 6.350000000000000000
      BottomMargin = 12.700000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 80.999107430000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object LineaCabecera1: TfrxMemoView
          Left = 32.999076430000000000
          Top = 15.998750490000000000
          Width = 516.000333250000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LineaCabecera1')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Left = 553.000992880000000000
          Top = 15.998750490000000000
          Width = 176.118538940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText10: TfrxMemoView
          Left = 609.001023880000000000
          Top = 20.001272760000000000
          Width = 70.560045570000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FechaImpresion"]')
          ParentFont = False
        end
        object LineaDescripcion: TfrxMemoView
          Left = 32.995296900000000000
          Top = 66.999728310000000000
          Width = 690.002335390000000000
          Height = 13.995599590000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'LineaDescripcion')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 223.132112610000000000
          Top = 39.998765990000000000
          Width = 215.289587860000000000
          Height = 15.840010230000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'MODELO I.V.A. 300')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 679.001380820000000000
          Top = 20.001272760000000000
          Width = 45.781446890000000000
          Height = 13.999379120000000000
          DisplayFormat.FormatStr = 'hh:mm am/pm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 609.001023880000000000
          Top = 34.998447800000000000
          Width = 13.560953640000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 558.001939700000000000
          Top = 20.001272760000000000
          Width = 45.558454620000000000
          Height = 13.999379120000000000
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
          Left = 558.001939700000000000
          Top = 34.998447800000000000
          Width = 49.560976890000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 866.003708900000000000
        Top = 120.944960000000000000
        Width = 793.701300000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object Line1: TfrxLineView
          Left = 32.999076430000000000
          Width = 690.002335390000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label1: TfrxMemoView
          Left = 39.998765990000000000
          Top = 3.000946819999996000
          Width = 140.999146180000000000
          Height = 15.840010230000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'I.V.A. Devengado')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 308.999254680000000000
          Top = 10.000636379999990000
          Width = 89.000372440000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Base Imponible')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 474.999991810000000000
          Top = 10.000636379999990000
          Width = 39.000970070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo %')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 573.003204710000000000
          Top = 10.000636379999990000
          Width = 34.000651880000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cuota')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 272.001435510000000000
          Top = 25.001590949999990000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe: TfrxMemoView
          Left = 308.999254680000000000
          Top = 27.000962320000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base01"]')
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 275.002382330000000000
          Top = 27.000962320000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '01')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 303.001140570000000000
          Top = 25.001590949999990000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape2: TfrxShapeView
          Left = 272.001435510000000000
          Top = 48.000030999999990000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe1: TfrxMemoView
          Left = 308.999254680000000000
          Top = 49.999402370000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base04"]')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 275.002382330000000000
          Top = 49.999402370000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '04')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 303.001140570000000000
          Top = 48.000030999999990000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape3: TfrxShapeView
          Left = 272.001435510000000000
          Top = 70.000675130000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe3: TfrxMemoView
          Left = 308.999254680000000000
          Top = 72.000046500000010000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base07"]')
          ParentFont = False
        end
        object Label7: TfrxMemoView
          Left = 275.002382330000000000
          Top = 72.000046500000010000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '07')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 303.001140570000000000
          Top = 70.000675130000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape5: TfrxShapeView
          Left = 272.001435510000000000
          Top = 92.999115180000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe7: TfrxMemoView
          Left = 308.999254680000000000
          Top = 94.998486550000010000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base00"]')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 275.002382330000000000
          Top = 94.998486550000010000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '00')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 303.001140570000000000
          Top = 92.999115180000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape6: TfrxShapeView
          Left = 438.002172640000000000
          Top = 25.001590949999990000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object IVA: TfrxMemoView
          Left = 474.999991810000000000
          Top = 27.000962320000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Tipo02"]')
          ParentFont = False
        end
        object Label9: TfrxMemoView
          Left = 440.999339930000000000
          Top = 27.000962320000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '02')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 469.001877700000000000
          Top = 25.001590949999990000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape7: TfrxShapeView
          Left = 438.002172640000000000
          Top = 48.000030999999990000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object IVA1: TfrxMemoView
          Left = 474.999991810000000000
          Top = 49.999402370000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Tipo05"]')
          ParentFont = False
        end
        object Label10: TfrxMemoView
          Left = 440.999339930000000000
          Top = 49.999402370000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '05')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 469.001877700000000000
          Top = 48.000030999999990000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape8: TfrxShapeView
          Left = 438.002172640000000000
          Top = 70.000675130000000000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object IVA2: TfrxMemoView
          Left = 474.999991810000000000
          Top = 72.000046500000010000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Tipo08"]')
          ParentFont = False
        end
        object Label11: TfrxMemoView
          Left = 440.999339930000000000
          Top = 72.000046500000010000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '08')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 469.001877700000000000
          Top = 70.000675130000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape9: TfrxShapeView
          Left = 536.001606010000000000
          Top = 25.001590949999990000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe4: TfrxMemoView
          Left = 573.003204710000000000
          Top = 27.000962320000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota03"]')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 539.002552830000000000
          Top = 27.000962320000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '03')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 567.001311070000000000
          Top = 25.001590949999990000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape10: TfrxShapeView
          Left = 536.001606010000000000
          Top = 48.000030999999990000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe11: TfrxMemoView
          Left = 573.003204710000000000
          Top = 49.999402370000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota06"]')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 539.002552830000000000
          Top = 49.999402370000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '06')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 567.001311070000000000
          Top = 48.000030999999990000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape11: TfrxShapeView
          Left = 536.001606010000000000
          Top = 70.000675130000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe12: TfrxMemoView
          Left = 573.003204710000000000
          Top = 72.000046500000010000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota09"]')
          ParentFont = False
        end
        object Label14: TfrxMemoView
          Left = 539.002552830000000000
          Top = 72.000046500000010000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '09')
          ParentFont = False
        end
        object Line11: TfrxLineView
          Left = 567.001311070000000000
          Top = 70.000675130000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label17: TfrxMemoView
          Left = 157.999472120000000000
          Top = 49.999402370000000000
          Width = 97.001637450000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R'#233'gimen general')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          Left = 272.001435510000000000
          Top = 164.999161680000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe5: TfrxMemoView
          Left = 308.999254680000000000
          Top = 167.002312580000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base10"]')
          ParentFont = False
        end
        object Label18: TfrxMemoView
          Left = 275.002382330000000000
          Top = 167.002312580000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '10')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 303.001140570000000000
          Top = 164.999161680000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape13: TfrxShapeView
          Left = 272.001435510000000000
          Top = 185.000434440000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe8: TfrxMemoView
          Left = 308.999254680000000000
          Top = 186.999805810000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base13"]')
          ParentFont = False
        end
        object Label19: TfrxMemoView
          Left = 275.002382330000000000
          Top = 186.999805810000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '13')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 303.001140570000000000
          Top = 185.000434440000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape14: TfrxShapeView
          Left = 272.001435510000000000
          Top = 205.999503120000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe9: TfrxMemoView
          Left = 308.999254680000000000
          Top = 207.998874490000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base16"]')
          ParentFont = False
        end
        object Label20: TfrxMemoView
          Left = 275.002382330000000000
          Top = 207.998874490000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '16')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 303.001140570000000000
          Top = 205.999503120000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape15: TfrxShapeView
          Left = 438.002172640000000000
          Top = 164.999161680000000000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object IVA4: TfrxMemoView
          Left = 474.999991810000000000
          Top = 167.002312580000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Tipo11"]')
          ParentFont = False
        end
        object Label21: TfrxMemoView
          Left = 440.999339930000000000
          Top = 167.002312580000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '11')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 469.001877700000000000
          Top = 164.999161680000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape16: TfrxShapeView
          Left = 438.002172640000000000
          Top = 185.000434440000000000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object IVA5: TfrxMemoView
          Left = 474.999991810000000000
          Top = 186.999805810000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Tipo14"]')
          ParentFont = False
        end
        object Label101: TfrxMemoView
          Left = 440.999339930000000000
          Top = 186.999805810000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '14')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 469.001877700000000000
          Top = 185.000434440000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape17: TfrxShapeView
          Left = 438.002172640000000000
          Top = 205.999503120000000000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object IVA6: TfrxMemoView
          Left = 474.999991810000000000
          Top = 207.998874490000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Tipo17"]')
          ParentFont = False
        end
        object Label23: TfrxMemoView
          Left = 440.999339930000000000
          Top = 207.998874490000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '17')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 469.001877700000000000
          Top = 205.999503120000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape18: TfrxShapeView
          Left = 536.001606010000000000
          Top = 164.999161680000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe13: TfrxMemoView
          Left = 573.003204710000000000
          Top = 167.002312580000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota12"]')
          ParentFont = False
        end
        object Label24: TfrxMemoView
          Left = 539.002552830000000000
          Top = 167.002312580000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '12')
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 567.001311070000000000
          Top = 164.999161680000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape101: TfrxShapeView
          Left = 536.001606010000000000
          Top = 185.000434440000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe14: TfrxMemoView
          Left = 573.003204710000000000
          Top = 186.999805810000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota15"]')
          ParentFont = False
        end
        object Label25: TfrxMemoView
          Left = 539.002552830000000000
          Top = 186.999805810000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '15')
          ParentFont = False
        end
        object Line101: TfrxLineView
          Left = 567.001311070000000000
          Top = 185.000434440000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape20: TfrxShapeView
          Left = 536.001606010000000000
          Top = 205.999503120000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe15: TfrxMemoView
          Left = 573.003204710000000000
          Top = 207.998874490000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota18"]')
          ParentFont = False
        end
        object Label26: TfrxMemoView
          Left = 539.002552830000000000
          Top = 207.998874490000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '18')
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 567.001311070000000000
          Top = 205.999503120000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label27: TfrxMemoView
          Left = 130.998509800000000000
          Top = 186.999805810000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Recargo equivalencia')
          ParentFont = False
        end
        object Shape21: TfrxShapeView
          Left = 272.001435510000000000
          Top = 229.001722700000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe10: TfrxMemoView
          Left = 308.999254680000000000
          Top = 231.001094070000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base19"]')
          ParentFont = False
        end
        object Label28: TfrxMemoView
          Left = 275.002382330000000000
          Top = 231.001094070000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '19')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 303.001140570000000000
          Top = 229.001722700000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape23: TfrxShapeView
          Left = 536.001606010000000000
          Top = 229.001722700000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe16: TfrxMemoView
          Left = 573.003204710000000000
          Top = 231.001094070000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota20"]')
          ParentFont = False
        end
        object Label30: TfrxMemoView
          Left = 539.002552830000000000
          Top = 231.001094070000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '20')
          ParentFont = False
        end
        object Line23: TfrxLineView
          Left = 567.001311070000000000
          Top = 229.001722700000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label31: TfrxMemoView
          Left = 34.359707230000000000
          Top = 231.001094070000000000
          Width = 220.641402340000000000
          Height = 14.400009300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Adquisiciones Intracomunitarias + 216')
          ParentFont = False
        end
        object Shape22: TfrxShapeView
          Left = 536.001606010000000000
          Top = 279.001125070000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe17: TfrxMemoView
          Left = 573.003204710000000000
          Top = 281.000496440000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."TotalDevengado"]')
          ParentFont = False
        end
        object Label301: TfrxMemoView
          Left = 539.002552830000000000
          Top = 281.000496440000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '21')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 567.001311070000000000
          Top = 279.001125070000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label32: TfrxMemoView
          Left = 39.998765990000000000
          Top = 281.000496440000000000
          Width = 356.001489760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total cuota devengada ( 03 + 06 + 09 + 12 +15 + 18 + 20 + 216 )')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 32.999076430000000000
          Top = 301.001769200000000000
          Width = 690.002335390000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label33: TfrxMemoView
          Left = 39.998765990000000000
          Top = 308.999254680000100000
          Width = 140.999146180000000000
          Height = 15.840010230000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'I.V.A. Deducible')
          ParentFont = False
        end
        object Shape24: TfrxShapeView
          Left = 536.001606010000000000
          Top = 327.001156070000100000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe18: TfrxMemoView
          Left = 573.003204710000000000
          Top = 329.000527440000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Deducible22"]')
          ParentFont = False
        end
        object Label34: TfrxMemoView
          Left = 539.002552830000000000
          Top = 329.000527440000100000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '22')
          ParentFont = False
        end
        object Line25: TfrxLineView
          Left = 567.001311070000000000
          Top = 327.001156070000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape25: TfrxShapeView
          Left = 536.001606010000000000
          Top = 347.002428830000100000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Label35: TfrxMemoView
          Left = 539.002552830000000000
          Top = 349.001800200000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '22o')
          ParentFont = False
        end
        object Line26: TfrxLineView
          Left = 567.001311070000000000
          Top = 347.002428830000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label22: TfrxMemoView
          Left = 68.001303760000000000
          Top = 329.000527440000100000
          Width = 375.001187070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'I.V..A. deducible por cuotas soportadas en operaciones interiore' +
              's')
          ParentFont = False
        end
        object Label29: TfrxMemoView
          Left = 68.001303760000000000
          Top = 349.001800200000000000
          Width = 375.001187070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Desglose por cuotas soportadas en operaciones interiores')
          ParentFont = False
        end
        object Label39: TfrxMemoView
          Left = 474.999991810000000000
          Top = 370.000868880000100000
          Width = 39.000970070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo %')
          ParentFont = False
        end
        object Label40: TfrxMemoView
          Left = 573.003204710000000000
          Top = 370.000868880000100000
          Width = 34.000651880000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cuota')
          ParentFont = False
        end
        object Shape30: TfrxShapeView
          Left = 438.002172640000000000
          Top = 388.002770270000100000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object Label45: TfrxMemoView
          Left = 440.999339930000000000
          Top = 390.002141640000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '02')
          ParentFont = False
        end
        object Line31: TfrxLineView
          Left = 469.001877700000000000
          Top = 388.002770270000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape31: TfrxShapeView
          Left = 438.002172640000000000
          Top = 411.001210320000000000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object Label102: TfrxMemoView
          Left = 440.999339930000000000
          Top = 413.000581690000100000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '05')
          ParentFont = False
        end
        object Line32: TfrxLineView
          Left = 469.001877700000000000
          Top = 411.001210320000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape32: TfrxShapeView
          Left = 438.002172640000000000
          Top = 433.001854450000100000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object Label47: TfrxMemoView
          Left = 440.999339930000000000
          Top = 435.001225820000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '08')
          ParentFont = False
        end
        object Line33: TfrxLineView
          Left = 469.001877700000000000
          Top = 433.001854450000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape33: TfrxShapeView
          Left = 536.001606010000000000
          Top = 388.002770270000100000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe23: TfrxMemoView
          Left = 573.003204710000000000
          Top = 390.002141640000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota22TN"]')
          ParentFont = False
        end
        object Label48: TfrxMemoView
          Left = 539.002552830000000000
          Top = 390.002141640000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '03')
          ParentFont = False
        end
        object Line34: TfrxLineView
          Left = 567.001311070000000000
          Top = 388.002770270000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape102: TfrxShapeView
          Left = 536.001606010000000000
          Top = 411.001210320000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe22: TfrxMemoView
          Left = 573.003204710000000000
          Top = 413.000581690000100000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota22TR"]')
          ParentFont = False
        end
        object Label49: TfrxMemoView
          Left = 539.002552830000000000
          Top = 413.000581690000100000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '06')
          ParentFont = False
        end
        object Line102: TfrxLineView
          Left = 567.001311070000000000
          Top = 411.001210320000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape35: TfrxShapeView
          Left = 536.001606010000000000
          Top = 433.001854450000100000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe21: TfrxMemoView
          Left = 573.003204710000000000
          Top = 435.001225820000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota22TS"]')
          ParentFont = False
        end
        object Label50: TfrxMemoView
          Left = 539.002552830000000000
          Top = 435.001225820000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '09')
          ParentFont = False
        end
        object Line36: TfrxLineView
          Left = 567.001311070000000000
          Top = 433.001854450000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape26: TfrxShapeView
          Left = 536.001606010000000000
          Top = 481.999681370000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe24: TfrxMemoView
          Left = 573.003204710000000000
          Top = 484.002832270000100000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota22B"]')
          ParentFont = False
        end
        object Label38: TfrxMemoView
          Left = 539.002552830000000000
          Top = 484.002832270000100000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '22b')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 567.001311070000000000
          Top = 481.999681370000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape27: TfrxShapeView
          Left = 536.001606010000000000
          Top = 504.000325500000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe25: TfrxMemoView
          Left = 573.003204710000000000
          Top = 505.999696870000100000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Deducible23"]')
          ParentFont = False
        end
        object Label41: TfrxMemoView
          Left = 539.002552830000000000
          Top = 505.999696870000100000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '23')
          ParentFont = False
        end
        object Line28: TfrxLineView
          Left = 567.001311070000000000
          Top = 504.000325500000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label42: TfrxMemoView
          Left = 68.001303760000000000
          Top = 484.002832270000100000
          Width = 375.001187070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Desglose por cuotas soportadas en Bienes de Inversi'#243'n')
          ParentFont = False
        end
        object Label43: TfrxMemoView
          Left = 68.001303760000000000
          Top = 505.999696870000100000
          Width = 375.001187070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'I.V.A. deducible por cuotas satisfechas en las importaciones')
          ParentFont = False
        end
        object Shape28: TfrxShapeView
          Left = 536.001606010000000000
          Top = 549.003189209999900000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe26: TfrxMemoView
          Left = 573.003204710000000000
          Top = 551.002560580000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Deducible24"]')
          ParentFont = False
        end
        object Label44: TfrxMemoView
          Left = 539.002552830000000000
          Top = 551.002560579999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '24')
          ParentFont = False
        end
        object Line29: TfrxLineView
          Left = 567.001311070000000000
          Top = 549.003189209999900000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape29: TfrxShapeView
          Left = 536.001606010000000000
          Top = 612.000395250000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Label53: TfrxMemoView
          Left = 539.002552830000000000
          Top = 613.999766620000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '25')
          ParentFont = False
        end
        object Line30: TfrxLineView
          Left = 567.001311070000000000
          Top = 612.000395250000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label54: TfrxMemoView
          Left = 68.001303760000000000
          Top = 551.002560579999900000
          Width = 375.001187070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'I.V.A. deducible en adquisiciones intracomunitarias')
          ParentFont = False
        end
        object Label55: TfrxMemoView
          Left = 68.001303760000000000
          Top = 613.999766620000000000
          Width = 375.001187070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Compensaciones R'#233'gimen Especial A.G. y P.')
          ParentFont = False
        end
        object Shape38: TfrxShapeView
          Left = 536.001606010000000000
          Top = 654.002312140000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe27: TfrxMemoView
          Left = 573.003204710000000000
          Top = 656.001683510000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."TotalDeducible"]')
          ParentFont = False
        end
        object Label56: TfrxMemoView
          Left = 539.002552830000000000
          Top = 656.001683509999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '27')
          ParentFont = False
        end
        object Line39: TfrxLineView
          Left = 567.001311070000000000
          Top = 654.002312140000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label57: TfrxMemoView
          Left = 135.998827990000000000
          Top = 656.001683509999900000
          Width = 260.001427760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total a deducir ( 22 + 23 + 24 + 25 + 26 + 216 )')
          ParentFont = False
        end
        object Shape39: TfrxShapeView
          Left = 536.001606010000000000
          Top = 632.001668010000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Label58: TfrxMemoView
          Left = 539.002552830000000000
          Top = 634.001039380000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '26')
          ParentFont = False
        end
        object Line301: TfrxLineView
          Left = 567.001311070000000000
          Top = 632.001668010000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label59: TfrxMemoView
          Left = 68.001303760000000000
          Top = 634.001039380000000000
          Width = 375.001187070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Regularizaci'#243'n inversiones')
          ParentFont = False
        end
        object Line41: TfrxLineView
          Left = 32.999076430000000000
          Top = 676.002956269999900000
          Width = 690.002335390000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape40: TfrxShapeView
          Left = 536.001606010000000000
          Top = 689.000759940000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe28: TfrxMemoView
          Left = 573.003204710000000000
          Top = 691.000131310000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Resultado"]')
          ParentFont = False
        end
        object Label60: TfrxMemoView
          Left = 539.002552830000000000
          Top = 691.000131309999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '28')
          ParentFont = False
        end
        object Line42: TfrxLineView
          Left = 567.001311070000000000
          Top = 689.000759940000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label61: TfrxMemoView
          Left = 329.083677100000000000
          Top = 691.000131309999900000
          Width = 113.918813730000000000
          Height = 14.400009300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Diferencia ( 21 - 27 )')
          ParentFont = False
        end
        object Line43: TfrxLineView
          Left = 32.999076430000000000
          Top = 719.002669079999900000
          Width = 690.002335390000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape41: TfrxShapeView
          Left = 272.001435510000000000
          Top = 756.000488250000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe32: TfrxMemoView
          Left = 308.999254680000000000
          Top = 758.003639150000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Liquidacion32"]')
          ParentFont = False
        end
        object Label62: TfrxMemoView
          Left = 275.002382330000000000
          Top = 758.003639149999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '35')
          ParentFont = False
        end
        object Line44: TfrxLineView
          Left = 303.001140570000000000
          Top = 756.000488250000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape42: TfrxShapeView
          Left = 272.001435510000000000
          Top = 779.002707830000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe31: TfrxMemoView
          Left = 308.999254680000000000
          Top = 781.002079200000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base36"]')
          ParentFont = False
        end
        object Label63: TfrxMemoView
          Left = 275.002382330000000000
          Top = 781.002079199999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '36')
          ParentFont = False
        end
        object Line45: TfrxLineView
          Left = 303.001140570000000000
          Top = 779.002707830000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label64: TfrxMemoView
          Left = 68.001303760000000000
          Top = 756.000488250000000000
          Width = 157.001676200000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Entregas intracomunitarias')
          ParentFont = False
        end
        object Label65: TfrxMemoView
          Left = 68.001303760000000000
          Top = 779.002707830000000000
          Width = 157.001676200000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Exportaciones sin I.V.A.')
          ParentFont = False
        end
        object Shape43: TfrxShapeView
          Left = 272.001435510000000000
          Top = 825.003367459999900000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe30: TfrxMemoView
          Left = 308.999254680000000000
          Top = 827.002738830000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base216"]')
          ParentFont = False
        end
        object Label66: TfrxMemoView
          Left = 275.002382330000000000
          Top = 827.002738830000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '216')
          ParentFont = False
        end
        object Line46: TfrxLineView
          Left = 303.001140570000000000
          Top = 825.003367459999900000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label67: TfrxMemoView
          Left = 68.001303760000000000
          Top = 825.003367459999900000
          Width = 157.001676200000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tipo 216')
          ParentFont = False
        end
        object Shape44: TfrxShapeView
          Left = 272.001435510000000000
          Top = 388.002770270000100000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe6: TfrxMemoView
          Left = 308.999254680000000000
          Top = 390.002141640000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base22TN"]')
          ParentFont = False
        end
        object Label68: TfrxMemoView
          Left = 275.002382330000000000
          Top = 390.002141640000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '01')
          ParentFont = False
        end
        object Line47: TfrxLineView
          Left = 303.001140570000000000
          Top = 388.002770270000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape45: TfrxShapeView
          Left = 272.001435510000000000
          Top = 411.001210320000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe19: TfrxMemoView
          Left = 308.999254680000000000
          Top = 413.000581690000100000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base22TR"]')
          ParentFont = False
        end
        object Label69: TfrxMemoView
          Left = 275.002382330000000000
          Top = 413.000581690000100000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '04')
          ParentFont = False
        end
        object Line48: TfrxLineView
          Left = 303.001140570000000000
          Top = 411.001210320000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape46: TfrxShapeView
          Left = 272.001435510000000000
          Top = 433.001854450000100000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe20: TfrxMemoView
          Left = 308.999254680000000000
          Top = 435.001225820000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base22TS"]')
          ParentFont = False
        end
        object Label70: TfrxMemoView
          Left = 275.002382330000000000
          Top = 435.001225820000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '07')
          ParentFont = False
        end
        object Line49: TfrxLineView
          Left = 303.001140570000000000
          Top = 433.001854450000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label72: TfrxMemoView
          Left = 308.999254680000000000
          Top = 370.000868880000100000
          Width = 89.000372440000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Base Imponible')
          ParentFont = False
        end
        object IVA7: TfrxMemoView
          Left = 474.999991810000000000
          Top = 390.002141640000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '16')
          ParentFont = False
        end
        object IVA8: TfrxMemoView
          Left = 474.999991810000000000
          Top = 413.000581690000100000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '7')
          ParentFont = False
        end
        object IVA9: TfrxMemoView
          Left = 474.999991810000000000
          Top = 435.001225820000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '4')
          ParentFont = False
        end
        object Label73: TfrxMemoView
          Left = 308.999254680000000000
          Top = 736.002995020000000000
          Width = 89.000372440000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Base Imponible')
          ParentFont = False
        end
        object Shape401: TfrxShapeView
          Left = 536.001606010000000000
          Top = 825.003367459999900000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe29: TfrxMemoView
          Left = 573.003204710000000000
          Top = 827.002738830000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota216"]')
          ParentFont = False
        end
        object Line37: TfrxLineView
          Left = 567.001311070000000000
          Top = 825.003367459999900000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Importe33: TfrxMemoView
          Left = 573.003204710000000000
          Top = 349.001800200000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Deducible22"]')
          ParentFont = False
        end
        object Label75: TfrxMemoView
          Left = 573.003204710000000000
          Top = 736.002995020000000000
          Width = 34.080022010000000000
          Height = 14.400009300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cuota')
          ParentFont = False
        end
        object Shape37: TfrxShapeView
          Left = 438.002172640000000000
          Top = 92.999115180000000000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object Label76: TfrxMemoView
          Left = 440.999339930000000000
          Top = 94.998486550000010000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '00')
          ParentFont = False
        end
        object Line38: TfrxLineView
          Left = 469.001877700000000000
          Top = 92.999115180000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object IVA3: TfrxMemoView
          Left = 474.999991810000000000
          Top = 94.998486549999990000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object Shape47: TfrxShapeView
          Left = 272.001435510000000000
          Top = 456.000294500000100000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe2: TfrxMemoView
          Left = 308.999254680000000000
          Top = 457.999665870000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base22TE"]')
          ParentFont = False
        end
        object Label78: TfrxMemoView
          Left = 275.002382330000000000
          Top = 457.999665870000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '00')
          ParentFont = False
        end
        object Line50: TfrxLineView
          Left = 303.001140570000000000
          Top = 456.000294500000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape48: TfrxShapeView
          Left = 438.002172640000000000
          Top = 456.000294500000100000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object Label79: TfrxMemoView
          Left = 440.999339930000000000
          Top = 457.999665870000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '00')
          ParentFont = False
        end
        object Line51: TfrxLineView
          Left = 469.001877700000000000
          Top = 456.000294500000100000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label80: TfrxMemoView
          Left = 474.999991810000000000
          Top = 457.999665870000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object Shape49: TfrxShapeView
          Left = 438.002172640000000000
          Top = 756.000488250000000000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object Label81: TfrxMemoView
          Left = 440.999339930000000000
          Top = 758.003639149999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '35')
          ParentFont = False
        end
        object Line52: TfrxLineView
          Left = 469.001877700000000000
          Top = 756.000488250000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label801: TfrxMemoView
          Left = 474.999991810000000000
          Top = 758.003639150000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object Shape51: TfrxShapeView
          Left = 438.002172640000000000
          Top = 779.002707830000000000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object Label85: TfrxMemoView
          Left = 440.999339930000000000
          Top = 781.002079199999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '36')
          ParentFont = False
        end
        object Line54: TfrxLineView
          Left = 469.001877700000000000
          Top = 779.002707830000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label86: TfrxMemoView
          Left = 474.999991810000000000
          Top = 781.002079200000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object Label87: TfrxMemoView
          Left = 474.999991810000000000
          Top = 736.002995020000000000
          Width = 39.000970070000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo %')
          ParentFont = False
        end
        object Shape52: TfrxShapeView
          Left = 272.001435510000000000
          Top = 802.001147880000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe34: TfrxMemoView
          Left = 308.999254680000000000
          Top = 804.000519250000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base37"]')
          ParentFont = False
        end
        object Label88: TfrxMemoView
          Left = 275.002382330000000000
          Top = 804.000519249999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '37')
          ParentFont = False
        end
        object Line55: TfrxLineView
          Left = 303.001140570000000000
          Top = 802.001147880000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label89: TfrxMemoView
          Left = 68.001303760000000000
          Top = 802.001147880000000000
          Width = 157.001676200000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Otras operaciones exentas')
          ParentFont = False
        end
        object Shape53: TfrxShapeView
          Left = 438.002172640000000000
          Top = 802.001147880000000000
          Width = 92.999115180000000000
          Height = 18.999697310000000000
        end
        object Label90: TfrxMemoView
          Left = 440.999339930000000000
          Top = 804.000519249999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '37')
          ParentFont = False
        end
        object Line56: TfrxLineView
          Left = 469.001877700000000000
          Top = 802.001147880000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label91: TfrxMemoView
          Left = 474.999991810000000000
          Top = 804.000519250000000000
          Width = 56.001296010000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '0')
          ParentFont = False
        end
        object Shape50: TfrxShapeView
          Left = 272.001435510000000000
          Top = 846.002436140000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe301: TfrxMemoView
          Left = 308.999254680000000000
          Top = 848.001807510000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."BaseAdqInt"]')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Left = 303.001140570000000000
          Top = 846.002436140000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label84: TfrxMemoView
          Left = 68.001303760000000000
          Top = 846.002436140000000000
          Width = 157.001676200000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Adquisiciones Intra. sin 216')
          ParentFont = False
        end
        object Shape54: TfrxShapeView
          Left = 536.001606010000000000
          Top = 846.002436140000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object DBText36: TfrxMemoView
          Left = 573.003204710000000000
          Top = 848.001807510000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."CuotaAdqInt"]')
          ParentFont = False
        end
        object Line57: TfrxLineView
          Left = 567.001311070000000000
          Top = 846.002436140000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label74: TfrxMemoView
          Left = 278.883959640000000000
          Top = 114.001963390000000000
          Width = 121.598818690000000000
          Height = 13.598748940000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          HAlign = haRight
          Memo.UTF8W = (
            'Desglose base sin IVA')
          ParentFont = False
        end
        object Importe80: TfrxMemoView
          Left = 363.004958850000000000
          Top = 130.998509800000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base00Normal"]')
          ParentFont = False
        end
        object Label83: TfrxMemoView
          Left = 320.999262430000000000
          Top = 130.998509800000000000
          Width = 38.880025110000000000
          Height = 13.598748940000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Normal')
          ParentFont = False
        end
        object Label93: TfrxMemoView
          Left = 325.001784700000000000
          Top = 147.998835740000000000
          Width = 34.998447800000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'C.E.E.')
          ParentFont = False
        end
        object Importe81: TfrxMemoView
          Left = 363.004958850000000000
          Top = 147.998835740000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base00Cee"]')
          ParentFont = False
        end
        object Importe82: TfrxMemoView
          Left = 574.001000630000000000
          Top = 130.998509800000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base00Interes"]')
          ParentFont = False
        end
        object Label94: TfrxMemoView
          Left = 521.000651440000000000
          Top = 130.998509800000000000
          Width = 49.761291980000000000
          Height = 13.598748940000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Intereses')
          ParentFont = False
        end
        object Label95: TfrxMemoView
          Left = 495.001264570000000000
          Top = 147.998835740000000000
          Width = 76.320049290000000000
          Height = 13.598748940000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Exportaciones')
          ParentFont = False
        end
        object Importe83: TfrxMemoView
          Left = 574.001000630000000000
          Top = 147.998835740000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base00Exportacion"]')
          ParentFont = False
        end
        object Shape55: TfrxShapeView
          Left = 537.003181460000000000
          Top = 525.003173709999900000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe25BI: TfrxMemoView
          Left = 574.001000630000000000
          Top = 527.002545080000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Deducible23BI"]')
          ParentFont = False
        end
        object Label96: TfrxMemoView
          Left = 540.000348750000000000
          Top = 527.002545080000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'BI')
          ParentFont = False
        end
        object Line58: TfrxLineView
          Left = 568.002886520000000000
          Top = 525.003173709999900000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label97: TfrxMemoView
          Left = 68.999099680000000000
          Top = 527.002545080000000000
          Width = 460.002816770000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'I.V.A. deducible por cuotas satisfechas en las importaciones Bie' +
              'nes Inversi'#243'n')
          ParentFont = False
        end
        object Shape56: TfrxShapeView
          Left = 536.001606010000000000
          Top = 570.002257890000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object DBText49: TfrxMemoView
          Left = 573.003204710000000000
          Top = 572.001629259999900000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Deducible24BI"]')
          ParentFont = False
        end
        object Label98: TfrxMemoView
          Left = 539.002552830000000000
          Top = 572.001629259999900000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'BI')
          ParentFont = False
        end
        object Line59: TfrxLineView
          Left = 567.001311070000000000
          Top = 570.002257890000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label99: TfrxMemoView
          Left = 68.001303760000000000
          Top = 572.001629259999900000
          Width = 461.000612690000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'I.V.A. deducible en adquisiciones intracomunitarias Bienes Inver' +
              'si'#243'n')
          ParentFont = False
        end
        object Shape57: TfrxShapeView
          Left = 272.001435510000000000
          Top = 246.999844560000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object Importe101: TfrxMemoView
          Left = 308.999254680000000000
          Top = 248.999215930000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Base19SI"]')
          ParentFont = False
        end
        object Label100: TfrxMemoView
          Left = 275.002382330000000000
          Top = 248.999215930000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'SI')
          ParentFont = False
        end
        object Line60: TfrxLineView
          Left = 303.001140570000000000
          Top = 246.999844560000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Shape58: TfrxShapeView
          Left = 536.001606010000000000
          Top = 246.999844560000000000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object DBText51: TfrxMemoView
          Left = 573.003204710000000000
          Top = 248.999215930000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Cuota20SI"]')
          ParentFont = False
        end
        object Label302: TfrxMemoView
          Left = 539.002552830000000000
          Top = 248.999215930000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'SI')
          ParentFont = False
        end
        object Line61: TfrxLineView
          Left = 567.001311070000000000
          Top = 246.999844560000000000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label36: TfrxMemoView
          Left = 63.443190580000000000
          Top = 248.999215930000000000
          Width = 191.198863640000000000
          Height = 14.400009300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Adq./ Servicios Intracomunitarias')
          ParentFont = False
        end
        object Shape59: TfrxShapeView
          Left = 536.001606010000000000
          Top = 589.999751119999900000
          Width = 161.000418940000000000
          Height = 18.999697310000000000
        end
        object DBText52: TfrxMemoView
          Left = 573.003204710000000000
          Top = 592.002902020000000000
          Width = 123.998820240000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."Deducible24SI"]')
          ParentFont = False
        end
        object Label103: TfrxMemoView
          Left = 539.002552830000000000
          Top = 592.002902020000000000
          Width = 25.001590950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'SI')
          ParentFont = False
        end
        object Line62: TfrxLineView
          Left = 567.001311070000000000
          Top = 589.999751119999900000
          Height = 18.999697310000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Label104: TfrxMemoView
          Left = 68.001303760000000000
          Top = 592.002902020000000000
          Width = 461.000612690000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'I.V.A. deducible en Servicios intracomunitarios')
          ParentFont = False
        end
      end
    end
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
    Left = 433
    Top = 298
  end
  object Enlace1: TfrxDBDataset
    UserName = 'ENLACE1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EJERCICIO=EJERCICIO'
      'FECHAINICIAL=FECHAINICIAL'
      'FECHAFINAL=FECHAFINAL'
      'PERIODO=PERIODO'
      'BASE00=BASE00'
      'BASE00NORMAL=BASE00NORMAL'
      'BASE00CEE=BASE00CEE'
      'BASE00INTERES=BASE00INTERES'
      'BASE00EXPORTACION=BASE00EXPORTACION'
      'TIPO00=TIPO00'
      'BASE01=BASE01'
      'TIPO02=TIPO02'
      'CUOTA03=CUOTA03'
      'BASE04=BASE04'
      'TIPO05=TIPO05'
      'CUOTA06=CUOTA06'
      'BASE07=BASE07'
      'TIPO08=TIPO08'
      'CUOTA09=CUOTA09'
      'BASE10=BASE10'
      'TIPO11=TIPO11'
      'CUOTA12=CUOTA12'
      'BASE13=BASE13'
      'TIPO14=TIPO14'
      'CUOTA15=CUOTA15'
      'BASE16=BASE16'
      'TIPO17=TIPO17'
      'CUOTA18=CUOTA18'
      'BASE19=BASE19'
      'BASE19SI=BASE19SI'
      'CUOTA20=CUOTA20'
      'CUOTA20SI=CUOTA20SI'
      'BASE36=BASE36'
      'BASE37=BASE37'
      'BASEADQINT=BASEADQINT'
      'CUOTAADQINT=CUOTAADQINT'
      'BASE216=BASE216'
      'CUOTA216=CUOTA216'
      'TOTALDEVENGADO=TOTALDEVENGADO'
      'DEDUCIBLE22=DEDUCIBLE22'
      'CUOTA22B=CUOTA22B'
      'CUOTA22TN=CUOTA22TN'
      'CUOTA22TR=CUOTA22TR'
      'CUOTA22TS=CUOTA22TS'
      'BASE22B=BASE22B'
      'BASE22TN=BASE22TN'
      'BASE22TR=BASE22TR'
      'BASE22TS=BASE22TS'
      'BASE22TE=BASE22TE'
      'DEDUCIBLE23=DEDUCIBLE23'
      'DEDUCIBLE23BI=DEDUCIBLE23BI'
      'DEDUCIBLE24=DEDUCIBLE24'
      'DEDUCIBLE24BI=DEDUCIBLE24BI'
      'DEDUCIBLE24SI=DEDUCIBLE24SI'
      'DEDUCIBLE25=DEDUCIBLE25'
      'DEDUCIBLE26=DEDUCIBLE26'
      'TOTALDEDUCIBLE=TOTALDEDUCIBLE'
      'DIFERENCIA=DIFERENCIA'
      'LIQUIDACION29=LIQUIDACION29'
      'LIQUIDACION30=LIQUIDACION30'
      'LIQUIDACION31=LIQUIDACION31'
      'LIQUIDACION32=LIQUIDACION32'
      'LIQUIDACION33=LIQUIDACION33'
      'RESULTADO=RESULTADO'
      'COMPENSACION=COMPENSACION'
      'DEVOLUCION=DEVOLUCION'
      'INGRESO=INGRESO'
      'FECHAIMPRESION=FECHAIMPRESION'
      'OBSERVACIONES=OBSERVACIONES'
      'CCC=CCC')
    BCDToCurrency = False
    Left = 544
    Top = 241
  end
end
