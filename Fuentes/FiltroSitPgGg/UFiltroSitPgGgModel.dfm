object DataModuleFiltroSitPgGg: TDataModuleFiltroSitPgGg
  OldCreateOrder = False
  Height = 585
  Width = 714
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
  object QInformesConta: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforeInsert = QInformesContaBeforeInsert
    Left = 325
    Top = 103
    object QInformesContaFechaInicial: TDateTimeField
      FieldName = 'FechaInicial'
    end
    object QInformesContaFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QInformesContaFechaFinal: TDateTimeField
      FieldName = 'FechaFinal'
    end
    object QInformesContaAsiento: TIntegerField
      FieldName = 'Asiento'
    end
    object QInformesContaApunte: TIntegerField
      FieldName = 'Apunte'
    end
    object QInformesContaSubcuenta: TStringField
      FieldName = 'Subcuenta'
      Size = 10
    end
    object QInformesContaDescSubcuenta: TStringField
      FieldName = 'DescSubcuenta'
      Size = 80
    end
    object QInformesContaDescApunte: TStringField
      DisplayWidth = 100
      FieldName = 'DescApunte'
      Size = 100
    end
    object QInformesContaContrapartida: TStringField
      FieldName = 'Contrapartida'
      Size = 10
    end
    object QInformesContaDebe: TFloatField
      FieldName = 'Debe'
    end
    object QInformesContaHaber: TFloatField
      FieldName = 'Haber'
    end
    object QInformesContaSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object QInformesContaFechaImpresion: TDateField
      FieldName = 'FechaImpresion'
    end
    object QInformesContaDebeHaber: TStringField
      FieldName = 'DebeHaber'
      Size = 1
    end
    object QInformesContaImporte: TFloatField
      FieldName = 'Importe'
    end
    object QInformesContaDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 50
    end
    object QInformesContaFechaPrevista: TDateField
      FieldName = 'FechaPrevista'
    end
    object QInformesContaObservaciones: TStringField
      FieldName = 'Observaciones'
      Size = 255
    end
    object QInformesContaNombreCliente: TStringField
      FieldName = 'NombreCliente'
      Size = 85
    end
    object QInformesContaID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object QInformesContaNumLinea: TIntegerField
      FieldName = 'NumLinea'
    end
    object QInformesContaFactura: TStringField
      FieldName = 'Factura'
      Size = 10
    end
    object QInformesContaNIF: TStringField
      FieldName = 'NIF'
      Size = 15
    end
    object QInformesContaBaseImponible: TFloatField
      FieldName = 'BaseImponible'
    end
    object QInformesContaCuotaIVA: TFloatField
      FieldName = 'CuotaIVA'
    end
    object QInformesContaTotalFactura: TFloatField
      FieldName = 'TotalFactura'
    end
    object QInformesContaIVA: TFloatField
      FieldName = 'IVA'
    end
    object QInformesContaTitulo: TStringField
      FieldName = 'Titulo'
      Size = 100
    end
    object QInformesContaClienteProveedor: TStringField
      FieldName = 'ClienteProveedor'
      Size = 10
    end
    object QInformesContaProvincia: TStringField
      FieldName = 'Provincia'
      Size = 25
    end
    object QInformesContaImporteVentas: TFloatField
      FieldName = 'ImporteVentas'
    end
    object QInformesContaImporteCompras: TFloatField
      FieldName = 'ImporteCompras'
    end
    object QInformesContaTotalSumaDebe: TFloatField
      FieldName = 'TotalSumaDebe'
    end
    object QInformesContaTotalSumaHaber: TFloatField
      FieldName = 'TotalSumaHaber'
    end
    object QInformesContaTotalSumaSaldo: TFloatField
      FieldName = 'TotalSumaSaldo'
    end
    object QInformesContaGasto: TIntegerField
      FieldName = 'Gasto'
    end
    object QInformesContaBaseSinIVA: TFloatField
      FieldName = 'BaseSinIVA'
    end
    object QInformesContaBaseConIVA: TFloatField
      FieldName = 'BaseConIVA'
    end
    object QInformesContaDescConcepto: TStringField
      FieldName = 'DescConcepto'
      Size = 30
    end
    object QInformesContaEjercicio: TIntegerField
      FieldName = 'Ejercicio'
    end
    object QInformesContaDescPeriodo: TStringField
      FieldName = 'DescPeriodo'
    end
    object QInformesContaIngresos: TFloatField
      FieldName = 'Ingresos'
    end
    object QInformesContaGastos: TFloatField
      FieldName = 'Gastos'
    end
    object QInformesContaRetenciones: TFloatField
      FieldName = 'Retenciones'
    end
    object QInformesContaMes: TIntegerField
      FieldName = 'Mes'
    end
    object QInformesContaTrimestre: TIntegerField
      FieldName = 'Trimestre'
    end
    object QInformesContaTotalBruto: TFloatField
      FieldName = 'TotalBruto'
    end
    object QInformesContaTotalBruto16: TFloatField
      FieldName = 'TotalBruto16'
    end
    object QInformesContaTotalBruto0: TFloatField
      FieldName = 'TotalBruto0'
    end
    object QInformesContaBaseSinIVA16: TFloatField
      FieldName = 'BaseSinIVA16'
    end
    object QInformesContaBaseSinIVA0: TFloatField
      FieldName = 'BaseSinIVA0'
    end
    object QInformesContaBaseConIVA16: TFloatField
      FieldName = 'BaseConIVA16'
    end
    object QInformesContaBaseConIVA0: TFloatField
      FieldName = 'BaseConIVA0'
    end
    object QInformesContaCuotaIVA16: TFloatField
      FieldName = 'CuotaIVA16'
    end
    object QInformesContaCuotaIVA0: TFloatField
      FieldName = 'CuotaIVA0'
    end
    object QInformesContaRetenciones16: TFloatField
      FieldName = 'Retenciones16'
    end
    object QInformesContaRetenciones0: TFloatField
      FieldName = 'Retenciones0'
    end
    object QInformesContaTotalFactura16: TFloatField
      FieldName = 'TotalFactura16'
    end
    object QInformesContaTotalFactura0: TFloatField
      FieldName = 'TotalFactura0'
    end
    object QInformesContaDescInforme: TStringField
      FieldName = 'DescInforme'
      Size = 255
    end
    object QInformesContaRecargo: TFloatField
      FieldName = 'Recargo'
    end
    object QInformesContaCuotaRecargo: TFloatField
      FieldName = 'CuotaRecargo'
    end
    object QInformesContaId_Conceptos: TStringField
      FieldName = 'Id_Conceptos'
      Size = 3
    end
    object QInformesContaCuenta_Analitica: TStringField
      FieldName = 'Cuenta_Analitica'
      Size = 10
    end
    object QInformesContaPUNTEO: TStringField
      FieldName = 'PUNTEO'
      Size = 1
    end
    object QInformesContaFSubcuenta: TStringField
      FieldName = 'FSubcuenta'
      Size = 10
    end
    object QInformesContaFDescSubcuenta: TStringField
      FieldName = 'FDescSubcuenta'
      Size = 80
    end
  end
  object SInformesConta: TDataSource
    DataSet = QInformesConta
    Left = 409
    Top = 103
  end
  object HInfBalTitulos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 420
    Top = 208
    object HInfBalTitulosTitulo: TStringField
      FieldName = 'Titulo'
      Size = 2
    end
    object HInfBalTitulosTituloReves: TStringField
      FieldName = 'TituloReves'
      Size = 2
    end
    object HInfBalTitulosDescripcionTitulo: TStringField
      FieldName = 'DescripcionTitulo'
      Size = 50
    end
    object HInfBalTitulosTipoPagina: TStringField
      FieldName = 'TipoPagina'
      Size = 10
    end
    object HInfBalTitulosFormula: TStringField
      FieldName = 'Formula'
      Size = 50
    end
    object HInfBalTitulosSaldoActualTitulo: TFloatField
      FieldName = 'SaldoActualTitulo'
    end
    object HInfBalTitulosSaldoAnteriorTitulo: TFloatField
      FieldName = 'SaldoAnteriorTitulo'
    end
    object HInfBalTitulosSuma1: TStringField
      FieldName = 'Suma1'
      Size = 3
    end
    object HInfBalTitulosSuma2: TStringField
      FieldName = 'Suma2'
      Size = 3
    end
    object HInfBalTitulosSuma3: TStringField
      FieldName = 'Suma3'
      Size = 3
    end
    object HInfBalTitulosSuma4: TStringField
      FieldName = 'Suma4'
      Size = 3
    end
    object HInfBalTitulosSuma5: TStringField
      FieldName = 'Suma5'
      Size = 3
    end
    object HInfBalTitulosSuma6: TStringField
      FieldName = 'Suma6'
      Size = 3
    end
    object HInfBalTitulosSuma7: TStringField
      FieldName = 'Suma7'
      Size = 3
    end
    object HInfBalTitulosSuma8: TStringField
      FieldName = 'Suma8'
      Size = 3
    end
    object HInfBalTitulosResta1: TStringField
      FieldName = 'Resta1'
      Size = 3
    end
    object HInfBalTitulosResta2: TStringField
      FieldName = 'Resta2'
      Size = 3
    end
    object HInfBalTitulosResta3: TStringField
      FieldName = 'Resta3'
      Size = 3
    end
    object HInfBalTitulosResta4: TStringField
      FieldName = 'Resta4'
      Size = 3
    end
    object HInfBalTitulosResta5: TStringField
      FieldName = 'Resta5'
      Size = 3
    end
    object HInfBalTitulosResta6: TStringField
      FieldName = 'Resta6'
      Size = 3
    end
    object HInfBalTitulosResta7: TStringField
      FieldName = 'Resta7'
      Size = 3
    end
    object HInfBalTitulosResta8: TStringField
      FieldName = 'Resta8'
      Size = 3
    end
  end
  object SInfBalTitulos: TDataSource
    DataSet = HInfBalTitulos
    Left = 512
    Top = 208
  end
  object HInfBalGrupos: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 420
    Top = 166
    object HInfBalGruposGrupo: TStringField
      FieldName = 'Grupo'
      Size = 3
    end
    object HInfBalGruposDescripcionGrupo: TStringField
      FieldName = 'DescripcionGrupo'
      Size = 50
    end
    object HInfBalGruposSaldoActualGrupo: TFloatField
      FieldName = 'SaldoActualGrupo'
    end
    object HInfBalGruposSaldoAnteriorGrupo: TFloatField
      FieldName = 'SaldoAnteriorGrupo'
    end
    object HInfBalGruposTitulo: TStringField
      FieldName = 'Titulo'
      Size = 2
    end
  end
  object SInfBalGrupos: TDataSource
    DataSet = HInfBalGrupos
    Left = 512
    Top = 166
  end
  object HInfBalCuentas: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 420
    Top = 250
    object HInfBalCuentasFechaInicial: TDateTimeField
      FieldName = 'FechaInicial'
    end
    object HInfBalCuentasFechaFinal: TDateTimeField
      FieldName = 'FechaFinal'
    end
    object HInfBalCuentasFechaImpresion: TDateTimeField
      FieldName = 'FechaImpresion'
    end
    object HInfBalCuentasTitulo: TStringField
      FieldName = 'Titulo'
      Size = 2
    end
    object HInfBalCuentasTituloReves: TStringField
      FieldName = 'TituloReves'
      Size = 2
    end
    object HInfBalCuentasDescripcionTitulo: TStringField
      FieldName = 'DescripcionTitulo'
      Size = 50
    end
    object HInfBalCuentasTipoPagina: TStringField
      FieldName = 'TipoPagina'
      Size = 10
    end
    object HInfBalCuentasFormula: TStringField
      FieldName = 'Formula'
      Size = 50
    end
    object HInfBalCuentasSaldoActualTitulo: TFloatField
      FieldName = 'SaldoActualTitulo'
    end
    object HInfBalCuentasSaldoAnteriorTitulo: TFloatField
      FieldName = 'SaldoAnteriorTitulo'
    end
    object HInfBalCuentasSuma1: TStringField
      FieldName = 'Suma1'
      Size = 3
    end
    object HInfBalCuentasSuma2: TStringField
      FieldName = 'Suma2'
      Size = 3
    end
    object HInfBalCuentasSuma3: TStringField
      FieldName = 'Suma3'
      Size = 3
    end
    object HInfBalCuentasSuma4: TStringField
      FieldName = 'Suma4'
      Size = 3
    end
    object HInfBalCuentasSuma5: TStringField
      FieldName = 'Suma5'
      Size = 3
    end
    object HInfBalCuentasSuma6: TStringField
      FieldName = 'Suma6'
      Size = 6
    end
    object HInfBalCuentasSuma7: TStringField
      FieldName = 'Suma7'
      Size = 3
    end
    object HInfBalCuentasSuma8: TStringField
      FieldName = 'Suma8'
      Size = 3
    end
    object HInfBalCuentasResta1: TStringField
      FieldName = 'Resta1'
      Size = 3
    end
    object HInfBalCuentasResta2: TStringField
      FieldName = 'Resta2'
      Size = 3
    end
    object HInfBalCuentasResta3: TStringField
      FieldName = 'Resta3'
      Size = 3
    end
    object HInfBalCuentasResta4: TStringField
      FieldName = 'Resta4'
      Size = 3
    end
    object HInfBalCuentasResta5: TStringField
      FieldName = 'Resta5'
      Size = 3
    end
    object HInfBalCuentasResta6: TStringField
      FieldName = 'Resta6'
      Size = 3
    end
    object HInfBalCuentasResta7: TStringField
      FieldName = 'Resta7'
      Size = 3
    end
    object HInfBalCuentasResta8: TStringField
      FieldName = 'Resta8'
      Size = 3
    end
    object HInfBalCuentasGrupo: TStringField
      FieldName = 'Grupo'
      Size = 3
    end
    object HInfBalCuentasDescripcionGrupo: TStringField
      FieldName = 'DescripcionGrupo'
      Size = 50
    end
    object HInfBalCuentasSaldoActualGrupo: TFloatField
      FieldName = 'SaldoActualGrupo'
    end
    object HInfBalCuentasSaldoAnteriorGrupo: TFloatField
      FieldName = 'SaldoAnteriorGrupo'
    end
    object HInfBalCuentasCuenta: TStringField
      FieldName = 'Cuenta'
      Size = 3
    end
    object HInfBalCuentasDescripcionCuenta: TStringField
      FieldName = 'DescripcionCuenta'
      Size = 50
    end
    object HInfBalCuentasSaldoAnteriorCuenta: TFloatField
      FieldName = 'SaldoAnteriorCuenta'
    end
    object HInfBalCuentasSaldoActualCuenta: TFloatField
      FieldName = 'SaldoActualCuenta'
    end
    object HInfBalCuentasTituloImpreso: TStringField
      FieldName = 'TituloImpreso'
      Size = 2
    end
  end
  object SInfBalCuentas: TDataSource
    DataSet = HInfBalCuentas
    Left = 512
    Top = 250
  end
  object FRBalanceSituacionAnterior: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637236585700000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42829.684312893520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 387
    Top = 314
    Datasets = <
      item
        DataSet = DBXENLACE1
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
        Height = 96.982739800000000000
        Top = 18.897650000000000000
        Width = 793.701299999999900000
        ReprintOnNewPage = True
        object Shape4: TfrxShapeView
          Left = 561.003196960000000000
          Top = 15.998750490000000000
          Width = 187.457128940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText10: TfrxMemoView
          Left = 621.003227960000000000
          Top = 20.001272760000000000
          Width = 74.339575569999970000
          Height = 17.778909120000000000
          DataField = 'FechaImpresion'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FechaImpresion"]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 243.088031010000000000
          Top = 39.998765990000000000
          Width = 258.489615760000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'BALANCE DE SITUACI'#211'N')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 697.003584900000000000
          Top = 20.001272760000000000
          Width = 42.001916890000000000
          Height = 13.999379120000000000
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
          Left = 621.003227960000000000
          Top = 34.998447800000000000
          Width = 6.001893640000000000
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
          Left = 565.000364250000000000
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
          Left = 565.000364250000000000
          Top = 34.998447800000000000
          Width = 49.560976890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object LineaTipoConta: TfrxMemoView
          Left = 710.001388570000000000
          Top = 37.999394620000000000
          Width = 18.001901390000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 15.118120000000000000
          Width = 443.002490830000000000
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
        object LineaDescripcion: TfrxMemoView
          Left = 11.338590000000000000
          Top = 66.119097820000010000
          Width = 734.997640040000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Desde la Fecha [ENLACE1."FECHAINICIAL"] hasta [ENLACE1."FECHAFIN' +
              'AL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 572.505253570000000000
          Top = 55.812319509999990000
          Width = 174.655860830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario : [USER_NAME]')
          ParentFont = False
        end
      end
      object Group3: TfrxMasterData
        FillType = ftBrush
        Height = 15.004734100000000000
        Top = 283.464750000000000000
        Width = 793.701299999999900000
        DataSet = DBXENLACE1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object Importe4: TfrxMemoView
          Left = 516.000333250000000000
          Top = 1.001575450000018000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualCuenta"]')
          ParentFont = False
        end
        object Importe5: TfrxMemoView
          Left = 609.003227960000000000
          Top = 1.001575450000018000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."SaldoAnteriorCuenta"]')
          ParentFont = False
        end
        object DBText13: TfrxMemoView
          Left = 113.000387940000000000
          Top = 1.001575450000018000
          Width = 25.999386870000000000
          Height = 13.999379120000000000
          DataField = 'Cuenta'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Cuenta"]')
          ParentFont = False
        end
        object DBText14: TfrxMemoView
          Left = 145.999464370000000000
          Top = 1.001575450000018000
          Width = 356.999285680000000000
          Height = 13.999379120000000000
          DataField = 'DescripcionCuenta'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescripcionCuenta"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 139.842610000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."TipoPagina"'
        KeepTogether = True
        StartNewPage = True
        object Shape2: TfrxShapeView
          Left = 32.995296900000000000
          Top = 2.290395179999990000
          Width = 689.004539470000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText2: TfrxMemoView
          Left = 46.998455550000000000
          Top = 12.291031559999990000
          Width = 56.999091930000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."TipoPagina"]')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 516.000333250000100000
          Top = 12.291031559999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Eje. Actual')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 609.003227960000000000
          Top = 12.291031559999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Eje. Anterior')
          ParentFont = False
        end
      end
      object Group2: TfrxGroupFooter
        FillType = ftBrush
        Height = 49.995622840000000000
        Top = 366.614410000000000000
        Width = 793.701299999999900000
        object Label1: TfrxMemoView
          Left = 360.000232500000000000
          Top = 15.000954569999980000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL   ')
          ParentFont = False
        end
        object DBText15: TfrxMemoView
          Left = 449.000604940000000000
          Top = 15.000954569999980000
          Width = 56.999091930000000000
          Height = 13.999379120000000000
          DataField = 'TipoPagina'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."TipoPagina"]')
          ParentFont = False
        end
        object Importe6: TfrxMemoView
          Left = 516.000333250000100000
          Top = 15.000954569999980000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."SaldoActualCuenta">,Group3)]')
          ParentFont = False
        end
        object Importe7: TfrxMemoView
          Left = 609.003227960000000000
          Top = 15.000954569999980000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."SaldoAnteriorCuenta">,Group3)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 32.999076430000000000
          Top = 8.999060930000041000
          Width = 689.000759940000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 19.200012400000000000
        Top = 200.315090000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."TITULO"'
        object Importe: TfrxMemoView
          Left = 516.000333250000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualTitulo"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 609.003227960000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."SaldoAnteriorTitulo"]')
          ParentFont = False
        end
        object DBText9: TfrxMemoView
          Left = 46.998455550000000000
          Top = 3.000946819999996000
          Width = 25.999386870000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."Titulo"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 80.001311510000000000
          Top = 3.000946819999967000
          Width = 423.001218070000000000
          Height = 13.999379120000000000
          DataField = 'DescripcionTitulo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."DescripcionTitulo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 321.260050000000000000
        Width = 793.701299999999900000
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 19.200012400000000000
        Top = 241.889920000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."Grupo"'
        object Importe2: TfrxMemoView
          Left = 516.000333250000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualGrupo"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 609.003227960000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."SaldoAnteriorGrupo"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 80.001311510000000000
          Top = 3.000946819999996000
          Width = 25.999386870000000000
          Height = 13.001583200000000000
          DataField = 'Grupo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."Grupo"]')
          ParentFont = False
        end
        object DBText8: TfrxMemoView
          Left = 113.000387940000000000
          Top = 3.000946819999996000
          Width = 390.002141640000000000
          Height = 13.001583200000000000
          DataField = 'DescripcionGrupo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."DescripcionGrupo"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 343.937230000000000000
        Width = 793.701299999999900000
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
    Left = 601
    Top = 314
  end
  object DBXENLACE1: TfrxDBDataset
    UserName = 'ENLACE1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FechaInicial=FechaInicial'
      'FechaFinal=FechaFinal'
      'FechaImpresion=FechaImpresion'
      'Titulo=Titulo'
      'TituloReves=TituloReves'
      'DescripcionTitulo=DescripcionTitulo'
      'TipoPagina=TipoPagina'
      'Formula=Formula'
      'SaldoActualTitulo=SaldoActualTitulo'
      'SaldoAnteriorTitulo=SaldoAnteriorTitulo'
      'Suma1=Suma1'
      'Suma2=Suma2'
      'Suma3=Suma3'
      'Suma4=Suma4'
      'Suma5=Suma5'
      'Suma6=Suma6'
      'Suma7=Suma7'
      'Suma8=Suma8'
      'Resta1=Resta1'
      'Resta2=Resta2'
      'Resta3=Resta3'
      'Resta4=Resta4'
      'Resta5=Resta5'
      'Resta6=Resta6'
      'Resta7=Resta7'
      'Resta8=Resta8'
      'Grupo=Grupo'
      'DescripcionGrupo=DescripcionGrupo'
      'SaldoActualGrupo=SaldoActualGrupo'
      'SaldoAnteriorGrupo=SaldoAnteriorGrupo'
      'Cuenta=Cuenta'
      'DescripcionCuenta=DescripcionCuenta'
      'SaldoAnteriorCuenta=SaldoAnteriorCuenta'
      'SaldoActualCuenta=SaldoActualCuenta'
      'TituloImpreso=TituloImpreso')
    DataSet = HInfBalCuentas
    BCDToCurrency = False
    Left = 515
    Top = 313
  end
  object DBXENLACE2: TfrxDBDataset
    UserName = 'ENLACE2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TITULO=TITULO'
      'DESCRIPCION=DESCRIPCION'
      'Formula=Formula'
      'SUMA1=SUMA1'
      'SUMA2=SUMA2'
      'SUMA3=SUMA3'
      'SUMA4=SUMA4'
      'SUMA5=SUMA5'
      'SUMA6=SUMA6'
      'RESTA1=RESTA1'
      'RESTA2=RESTA2'
      'RESTA3=RESTA3'
      'RESTA4=RESTA4'
      'RESTA5=RESTA5'
      'RESTA6=RESTA6'
      'SUMA7=SUMA7'
      'RESTA8=RESTA8'
      'RESTA7=RESTA7'
      'SUMA8=SUMA8')
    BCDToCurrency = False
    Left = 512
    Top = 361
  end
  object FRBalanceSituacion: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637194270800000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42829.684964270840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 387
    Top = 362
    Datasets = <
      item
        DataSet = DBXENLACE1
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
        Height = 93.203209800000000000
        Top = 18.897650000000000000
        Width = 793.701299999999900000
        ReprintOnNewPage = True
        object Shape4: TfrxShapeView
          Left = 565.000992880000000000
          Top = 15.998750490000000000
          Width = 183.677598940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText10: TfrxMemoView
          Left = 636.001023880000000000
          Top = 20.001272760000000000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FechaImpresion"]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 273.324271010000000000
          Top = 39.998765990000000000
          Width = 232.032905760000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'BALANCE DE SITUACI'#211'N')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 701.001380820000000000
          Top = 20.001272760000000000
          Width = 42.001916890000000000
          Height = 13.999379120000000000
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
          Left = 636.001023880000000000
          Top = 34.998447800000000000
          Width = 6.001893640000000000
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
          Left = 568.001939700000000000
          Top = 20.001272760000000000
          Width = 53.117514620000000000
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
          Left = 568.001939700000000000
          Top = 34.998447800000000000
          Width = 57.120036890000000000
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
        object LineaTipoConta: TfrxMemoView
          Left = 713.001388570000000000
          Top = 34.998447800000000000
          Width = 13.001583200000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 15.118120000000000000
          Width = 443.002490830000000000
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
        object LineaDescripcion: TfrxMemoView
          Left = 11.338590000000000000
          Top = 66.119097820000010000
          Width = 734.997640040000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Desde la Fecha [ENLACE1."FECHAINICIAL"] hasta [ENLACE1."FECHAFIN' +
              'AL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 572.505253570000000000
          Top = 55.812319509999990000
          Width = 174.655860830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario : [USER_NAME]')
          ParentFont = False
        end
      end
      object Group3: TfrxMasterData
        FillType = ftBrush
        Height = 15.004734100000000000
        Top = 283.464750000000000000
        Width = 793.701299999999900000
        DataSet = DBXENLACE1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object Importe2: TfrxMemoView
          Left = 562.000992880000000000
          Top = 1.001575450000018000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualCuenta"]')
          ParentFont = False
        end
        object DBText13: TfrxMemoView
          Left = 113.000387940000000000
          Top = 1.001575450000018000
          Width = 25.999386870000000000
          Height = 13.999379120000000000
          DataField = 'Cuenta'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Cuenta"]')
          ParentFont = False
        end
        object DBText14: TfrxMemoView
          Left = 145.999464370000000000
          Top = 1.001575450000018000
          Width = 406.000892130000000000
          Height = 13.999379120000000000
          DataField = 'DescripcionCuenta'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescripcionCuenta"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 136.063080000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."TipoPagina"'
        KeepTogether = True
        StartNewPage = True
        object Shape2: TfrxShapeView
          Left = 32.999076430000000000
          Top = 2.290395179999990000
          Width = 690.002335390000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText2: TfrxMemoView
          Left = 46.998455550000000000
          Top = 12.291031559999990000
          Width = 56.999091930000000000
          Height = 13.999379120000000000
          DataField = 'TipoPagina'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."TipoPagina"]')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 562.000992880000000000
          Top = 12.291031559999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Eje. Actual')
          ParentFont = False
        end
      end
      object Group2: TfrxGroupFooter
        FillType = ftBrush
        Height = 49.995622840000000000
        Top = 366.614410000000000000
        Width = 793.701299999999900000
        object Label1: TfrxMemoView
          Left = 406.000892130000000000
          Top = 15.000954569999980000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL   ')
          ParentFont = False
        end
        object DBText15: TfrxMemoView
          Left = 495.001264570000000000
          Top = 15.000954569999980000
          Width = 56.999091930000000000
          Height = 13.999379120000000000
          DataField = 'TipoPagina'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."TipoPagina"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 562.000992880000000000
          Top = 15.000954569999980000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."SaldoActualCuenta">,Group3)]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 32.999076430000000000
          Top = 8.999060930000041000
          Width = 690.002335390000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 19.200012400000000000
        Top = 200.315090000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."Titulo"'
        object Importe: TfrxMemoView
          Left = 562.000992880000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualTitulo"]')
          ParentFont = False
        end
        object DBText9: TfrxMemoView
          Left = 46.998455550000000000
          Top = 3.000946819999967000
          Width = 25.999386870000000000
          Height = 13.999379120000000000
          DataField = 'Titulo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."Titulo"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 80.001311510000000000
          Top = 3.000946819999967000
          Width = 472.002824520000000000
          Height = 13.999379120000000000
          DataField = 'DescripcionTitulo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."DescripcionTitulo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 321.260050000000000000
        Width = 793.701299999999900000
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 19.200012400000000000
        Top = 241.889920000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."Grupo"'
        object Importe1: TfrxMemoView
          Left = 562.000992880000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualGrupo"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 80.001311510000000000
          Top = 3.000946819999996000
          Width = 25.999386870000000000
          Height = 13.001583200000000000
          DataField = 'Grupo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."Grupo"]')
          ParentFont = False
        end
        object DBText8: TfrxMemoView
          Left = 113.000387940000000000
          Top = 3.000946819999996000
          Width = 438.999968560000000000
          Height = 13.001583200000000000
          DataField = 'DescripcionGrupo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."DescripcionGrupo"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 343.937230000000000000
        Width = 793.701299999999900000
      end
    end
  end
  object FRCuentaPPGGAnterior: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637453229200000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42829.699575671300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 387
    Top = 410
    Datasets = <
      item
        DataSet = DBXENLACE1
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
        Height = 85.644149799999990000
        Top = 18.897650000000000000
        Width = 793.701299999999900000
        ReprintOnNewPage = True
        object Shape4: TfrxShapeView
          Left = 567.000992880000000000
          Top = 15.998750490000000000
          Width = 176.118538940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText10: TfrxMemoView
          Left = 624.001023880000000000
          Top = 20.001272760000000000
          Width = 66.780515570000010000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FechaImpresion"]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 203.085485490000000000
          Top = 39.998765990000000000
          Width = 334.707617740000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'CUENTA DE P'#201'RDIDAS Y GANANCIAS')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 689.001380820000000000
          Top = 20.001272760000000000
          Width = 45.781446890000000000
          Height = 13.999379120000000000
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
          Left = 624.001023880000000000
          Top = 34.998447800000000000
          Width = 9.781423640000000000
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
          Left = 570.001939700000000000
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
          Left = 570.001939700000000000
          Top = 34.998447800000000000
          Width = 49.560976890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object LineaTipoConta: TfrxMemoView
          Left = 701.001388570000000000
          Top = 34.998447800000000000
          Width = 17.778909120000000000
          Height = 15.000954570000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 15.118120000000000000
          Width = 443.002490830000000000
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
        object LineaDescripcion: TfrxMemoView
          Left = 7.559060000000000000
          Top = 66.119097820000010000
          Width = 734.997640040000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Desde la Fecha [ENLACE1."FECHAINICIAL"] hasta [ENLACE1."FECHAFIN' +
              'AL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 568.725723570000000000
          Top = 55.812319509999990000
          Width = 174.655860830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario : [USER_NAME]')
          ParentFont = False
        end
      end
      object Group2: TfrxMasterData
        FillType = ftBrush
        Height = 15.004734100000000000
        Top = 287.244280000000000000
        Width = 793.701299999999900000
        DataSet = DBXENLACE1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object Importe4: TfrxMemoView
          Left = 507.001272320000000000
          Top = 1.001575450000018000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualCuenta"]')
          ParentFont = False
        end
        object Importe5: TfrxMemoView
          Left = 600.000387500000000000
          Top = 1.001575450000018000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."SaldoAnteriorCuenta"]')
          ParentFont = False
        end
        object DBText13: TfrxMemoView
          Left = 113.000387940000000000
          Top = 1.001575450000018000
          Width = 25.999386870000000000
          Height = 13.999379120000000000
          DataField = 'Cuenta'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Cuenta"]')
          ParentFont = False
        end
        object DBText14: TfrxMemoView
          Left = 145.999464370000000000
          Top = 1.001575450000018000
          Width = 353.000542940000000000
          Height = 13.999379120000000000
          DataField = 'DescripcionCuenta'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescripcionCuenta"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 128.504020000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."TipoPagina"'
        KeepTogether = True
        StartNewPage = True
        object Shape2: TfrxShapeView
          Left = 29.215766900000000000
          Top = 2.290395179999990000
          Width = 690.002335390000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText2: TfrxMemoView
          Left = 43.218925550000000000
          Top = 12.291031559999990000
          Width = 56.999091930000000000
          Height = 13.999379120000000000
          DataField = 'TipoPagina'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."TipoPagina"]')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 503.221742320000000000
          Top = 12.291031559999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Eje. Actual')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 596.220857500000000000
          Top = 12.291031559999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Eje. Anterior')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 325.039580000000000000
        Visible = False
        Width = 793.701299999999900000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.000651880000000000
        Top = 188.976500000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."titulo"'
        object Importe: TfrxMemoView
          Left = 507.001272320000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualTitulo"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 600.000387500000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."SaldoAnteriorTitulo"]')
          ParentFont = False
        end
        object DBText9: TfrxMemoView
          Left = 46.998455550000000000
          Top = 3.000946820000024000
          Width = 25.999386870000000000
          Height = 13.999379120000000000
          DataField = 'TituloImpreso'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."TituloImpreso"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 80.001311510000000000
          Top = 3.000946820000024000
          Width = 419.002475330000000000
          Height = 13.999379120000000000
          DataField = 'DescripcionTitulo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."DescripcionTitulo"]')
          ParentFont = False
        end
        object DBText15: TfrxMemoView
          Left = 80.001311510000000000
          Top = 20.001272760000060000
          Width = 419.002475330000000000
          Height = 13.999379120000000000
          DataField = 'Formula'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Formula"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 347.716760000000000000
        Visible = False
        Width = 793.701299999999900000
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 19.200012400000000000
        Top = 245.669450000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."grupo"'
        object Importe2: TfrxMemoView
          Left = 507.001272320000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualGrupo"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 600.000387500000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."SaldoAnteriorGrupo"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 80.001311510000000000
          Top = 3.000946819999996000
          Width = 25.999386870000000000
          Height = 13.001583200000000000
          DataField = 'Grupo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."Grupo"]')
          ParentFont = False
        end
        object DBText8: TfrxMemoView
          Left = 113.000387940000000000
          Top = 3.000946819999996000
          Width = 385.999619370000000000
          Height = 13.001583200000000000
          DataField = 'DescripcionGrupo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."DescripcionGrupo"]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Top = 370.393940000000000000
        Visible = False
        Width = 793.701299999999900000
      end
    end
  end
  object FRCuentaPPGG: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.637388483800000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42829.699693576390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 387
    Top = 458
    Datasets = <
      item
        DataSet = DBXENLACE1
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
        Height = 85.644149799999990000
        Top = 18.897650000000000000
        Width = 793.701299999999900000
        ReprintOnNewPage = True
        object Shape4: TfrxShapeView
          Left = 571.003196960000000000
          Top = 15.998750490000000000
          Width = 176.118538940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText10: TfrxMemoView
          Left = 637.003227960000000000
          Top = 20.001272760000000000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."FechaImpresion"]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 189.747524120000000000
          Top = 39.998765990000000000
          Width = 340.490298640000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'CUENTA DE P'#201'RDIDAS Y GANANCIAS')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 702.003584900000000000
          Top = 20.001272760000000000
          Width = 42.001916890000000000
          Height = 13.999379120000000000
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
          Left = 638.003227960000000000
          Top = 34.998447800000000000
          Width = 6.001893640000000000
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
          Left = 574.000364250000000000
          Top = 20.001272760000000000
          Width = 49.337984620000000000
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
          Left = 574.000364250000000000
          Top = 34.998447800000000000
          Width = 53.340506890000000000
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
        object LineaTipoConta: TfrxMemoView
          Left = 718.002335390000000000
          Top = 37.001598700000000000
          Width = 17.000325940000000000
          Height = 10.998432300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 15.118120000000000000
          Width = 443.002490830000000000
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
        object LineaDescripcion: TfrxMemoView
          Left = 11.338590000000000000
          Top = 66.119097820000010000
          Width = 734.997640040000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Desde la Fecha [ENLACE1."FECHAINICIAL"] hasta [ENLACE1."FECHAFIN' +
              'AL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 572.505253570000000000
          Top = 55.812319509999990000
          Width = 174.655860830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario : [USER_NAME]')
          ParentFont = False
        end
      end
      object Group2: TfrxMasterData
        FillType = ftBrush
        Height = 15.004734100000000000
        Top = 287.244280000000000000
        Width = 793.701299999999900000
        DataSet = DBXENLACE1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object Importe2: TfrxMemoView
          Left = 562.000992880000000000
          Top = 0.997795919999987300
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualCuenta"]')
          ParentFont = False
        end
        object DBText13: TfrxMemoView
          Left = 113.000387940000000000
          Top = 0.997795919999987300
          Width = 25.999386870000000000
          Height = 13.999379120000000000
          DataField = 'Cuenta'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Cuenta"]')
          ParentFont = False
        end
        object DBText14: TfrxMemoView
          Left = 145.999464370000000000
          Top = 0.997795919999987300
          Width = 406.000892130000000000
          Height = 13.999379120000000000
          DataField = 'DescripcionCuenta'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescripcionCuenta"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 128.504020000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."TipoPagina"'
        KeepTogether = True
        StartNewPage = True
        object Shape2: TfrxShapeView
          Left = 32.995296900000000000
          Top = 2.290395179999990000
          Width = 689.004539470000100000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText2: TfrxMemoView
          Left = 46.998455550000000000
          Top = 12.291031559999990000
          Width = 56.999091930000000000
          Height = 13.999379120000000000
          DataField = 'TipoPagina'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."TipoPagina"]')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 562.000992880000000000
          Top = 12.291031559999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Eje. Actual')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 325.039580000000000000
        Visible = False
        Width = 793.701299999999900000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.000651880000000000
        Top = 188.976500000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."titulo"'
        object Importe: TfrxMemoView
          Left = 562.000992880000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualTitulo"]')
          ParentFont = False
        end
        object DBText9: TfrxMemoView
          Left = 46.998455550000000000
          Top = 3.000946819999996000
          Width = 25.999386870000000000
          Height = 13.001583200000000000
          DataField = 'TituloImpreso'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."TituloImpreso"]')
          ParentFont = False
        end
        object DBText1: TfrxMemoView
          Left = 80.001311510000000000
          Top = 3.000946819999996000
          Width = 471.001249070000000000
          Height = 13.001583200000000000
          DataField = 'DescripcionTitulo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."DescripcionTitulo"]')
          ParentFont = False
        end
        object DBText15: TfrxMemoView
          Left = 80.001311510000000000
          Top = 20.001272760000060000
          Width = 471.001249070000000000
          Height = 13.001583200000000000
          DataField = 'Formula'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Formula"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 347.716760000000000000
        Visible = False
        Width = 793.701299999999900000
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 19.200012400000000000
        Top = 245.669450000000000000
        Width = 793.701299999999900000
        Condition = 'ENLACE1."grupo"'
        object Importe1: TfrxMemoView
          Left = 562.000992880000000000
          Top = 3.000946819999996000
          Width = 90.001947890000000000
          Height = 13.001583200000000000
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[ENLACE1."SaldoActualGrupo"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 80.001311510000000000
          Top = 3.000946819999996000
          Width = 25.999386870000000000
          Height = 13.001583200000000000
          DataField = 'Grupo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."Grupo"]')
          ParentFont = False
        end
        object DBText8: TfrxMemoView
          Left = 113.000387940000000000
          Top = 3.000946819999996000
          Width = 438.999968560000000000
          Height = 13.001583200000000000
          DataField = 'DescripcionGrupo'
          DataSet = DBXENLACE1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[ENLACE1."DescripcionGrupo"]')
          ParentFont = False
        end
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Top = 370.393940000000000000
        Visible = False
        Width = 793.701299999999900000
      end
    end
  end
end
