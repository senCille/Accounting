object DataModuleFiltro347: TDataModuleFiltro347
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
  object QInformesConta: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforeInsert = QInformesContaBeforeInsert
    Left = 373
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
    Left = 457
    Top = 103
  end
  object FastReportOperaTer347: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.639623298600000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42846.893427164350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 377
    Top = 194
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
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Shape4: TfrxShapeView
          Left = 591.000077060000000000
          Top = 15.998750490000000000
          Width = 187.457128940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText102: TfrxMemoView
          Left = 652.000108060000000000
          Top = 20.001272760000000000
          Width = 64.781144200000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = DataModuleFiltroBalances.Enlace1
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
        object Shape2: TfrxShapeView
          Left = 32.995296900000000000
          Top = 90.001947890000000000
          Width = 734.997640040000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 596.001023880000000000
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
          Left = 596.001023880000000000
          Top = 34.998447800000000000
          Width = 51.560348260000010000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 652.000108060000000000
          Top = 34.998447800000000000
          Width = 11.780795010000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 34.998447800000000000
          Top = 101.000380190000000000
          Width = 73.001621950000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Subcuenta')
          ParentFont = False
        end
        object Label7: TfrxMemoView
          Left = 112.002592020000000000
          Top = 101.000380190000000000
          Width = 293.000504190000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 408.000263500000000000
          Top = 101.000380190000000000
          Width = 106.004477910000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N.I.F.')
          ParentFont = False
        end
        object LineaDescripcion: TfrxMemoView
          Left = 32.999076430000000000
          Top = 66.999728310000000000
          Width = 735.001419570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DESCRIPTION]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 241.205825070000000000
          Top = 39.998765990000000000
          Width = 281.794197740000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'OPERACIONES CON TERCEROS (347)')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 569.000682440000000000
          Top = 101.000380190000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Ventas')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 671.002638080000000000
          Top = 101.000380190000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Compras')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 720.000465000000000000
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
        object Label4: TfrxMemoView
          Left = 515.002537330000000000
          Top = 101.000380190000000000
          Width = 51.004757350000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Provincia')
          ParentFont = False
        end
        object LineaTipoConta: TfrxMemoView
          Left = 735.001419570000000000
          Top = 37.001598700000000000
          Width = 18.780484570000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LineaTipoConta')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 34.015770000000010000
          Top = 19.778280490000000000
          Width = 814.001155630000000000
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
        object Memo1: TfrxMemoView
          Left = 614.740554500000000000
          Top = 56.692949999999990000
          Width = 160.142465630000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario: [USER_NAME]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.004734100000000000
        Top = 166.299320000000000000
        Width = 793.701300000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText10: TfrxMemoView
          Left = 408.000263500000000000
          Width = 106.004477910000000000
          Height = 13.999379120000000000
          DataField = 'NIF'
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."NIF"]')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 34.998447800000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          DataField = 'Subcuenta'
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Subcuenta"]')
          ParentFont = False
        end
        object DBText11: TfrxMemoView
          Left = 112.002592020000000000
          Width = 293.000504190000000000
          Height = 13.999379120000000000
          DataField = 'DescSubcuenta'
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescSubcuenta"]')
          ParentFont = False
        end
        object Importe2: TfrxMemoView
          Left = 569.000682440000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 671.002638080000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object DBText103: TfrxMemoView
          Left = 515.002537330000000000
          Width = 51.004757350000000000
          Height = 13.999379120000000000
          DataField = 'Provincia'
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."Provincia"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 30.999705060000000000
        Top = 204.094620000000000000
        Width = 793.701300000000000000
        object Line2: TfrxLineView
          Left = 32.999076430000000000
          Top = 3.000946819999996000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe5: TfrxMemoView
          Left = 569.000682440000000000
          Top = 6.999689560000008000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe4: TfrxMemoView
          Left = 671.002638080000000000
          Top = 6.999689560000008000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 499.000007310000000000
          Top = 6.999689560000008000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 49.999402370000000000
        Top = 294.803340000000000000
        Width = 793.701300000000000000
        object Line1: TfrxLineView
          Left = 32.999076430000000000
          Top = 6.999689559999980000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe1: TfrxMemoView
          Left = 569.000682440000000000
          Top = 10.998432299999990000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 671.002638080000000000
          Top = 10.998432299999990000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 499.000007310000000000
          Top = 10.998432299999990000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total :')
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
    Left = 377
    Top = 322
  end
  object Enlace1: TfrxDBDataset
    UserName = 'ENLACE1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FechaInicial=FECHAINICIAL'
      'Fecha=Fecha'
      'FechaFinal=FECHAFINAL'
      'Asiento=Asiento'
      'Apunte=Apunte'
      'Subcuenta=Subcuenta'
      'DescSubcuenta=DescSubcuenta'
      'DescApunte=DescApunte'
      'Contrapartida=Contrapartida'
      'Debe=Debe'
      'Haber=Haber'
      'Saldo=Saldo'
      'FechaImpresion=FECHAIMPRESION'
      'DebeHaber=DebeHaber'
      'Importe=Importe'
      'Descripcion=DESCRIPCION'
      'FechaPrevista=FechaPrevista'
      'Observaciones=Observaciones'
      'NombreCliente=NombreCliente'
      'ID_Cliente=ID_Cliente'
      'NumLinea=NumLinea'
      'Factura=Factura'
      'NIF=NIF'
      'BaseImponible=BaseImponible'
      'CuotaIVA=CuotaIVA'
      'TotalFactura=TotalFactura'
      'IVA=IVA'
      'Titulo=Titulo'
      'ClienteProveedor=ClienteProveedor'
      'Provincia=Provincia'
      'ImporteVentas=ImporteVentas'
      'ImporteCompras=ImporteCompras'
      'TotalSumaDebe=TotalSumaDebe'
      'TotalSumaHaber=TotalSumaHaber'
      'TotalSumaSaldo=TotalSumaSaldo'
      'Gasto=Gasto'
      'BaseSinIVA=BaseSinIVA'
      'BaseConIVA=BaseConIVA'
      'DescConcepto=DescConcepto'
      'Ejercicio=Ejercicio'
      'DescPeriodo=DescPeriodo'
      'Ingresos=Ingresos'
      'Gastos=Gastos'
      'Retenciones=Retenciones'
      'Mes=Mes'
      'Trimestre=Trimestre'
      'TotalBruto=TotalBruto'
      'TotalBruto16=TotalBruto16'
      'TotalBruto0=TotalBruto0'
      'BaseSinIVA16=BaseSinIVA16'
      'BaseSinIVA0=BaseSinIVA0'
      'BaseConIVA16=BaseConIVA16'
      'BaseConIVA0=BaseConIVA0'
      'CuotaIVA16=CuotaIVA16'
      'CuotaIVA0=CuotaIVA0'
      'Retenciones16=Retenciones16'
      'Retenciones0=Retenciones0'
      'TotalFactura16=TotalFactura16'
      'TotalFactura0=TotalFactura0'
      'DescInforme=DescInforme'
      'Recargo=Recargo'
      'CuotaRecargo=CuotaRecargo'
      'Id_Conceptos=Id_Conceptos'
      'Cuenta_Analitica=Cuenta_Analitica'
      'PUNTEO=PUNTEO'
      'FSubcuenta=FSubcuenta'
      'FDescSubcuenta=FDescSubcuenta')
    DataSet = QInformesConta
    BCDToCurrency = False
    Left = 488
    Top = 193
  end
  object FastReportOperaTer349: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.639664537000000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42846.893738206020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 377
    Top = 258
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
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Shape4: TfrxShapeView
          Left = 589.000077060000000000
          Top = 15.998750490000000000
          Width = 187.457128940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object DBText102: TfrxMemoView
          Left = 651.000108060000000000
          Top = 20.001272760000000000
          Width = 64.781144200000000000
          Height = 13.999379120000000000
          DataField = 'FechaImpresion'
          DataSet = DataModuleFiltroBalances.Enlace1
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
        object Shape2: TfrxShapeView
          Left = 32.995296900000000000
          Top = 90.001947890000000000
          Width = 734.997640040000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label15: TfrxMemoView
          Left = 595.001023880000000000
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
          Left = 595.001023880000000000
          Top = 34.998447800000000000
          Width = 51.560348260000010000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina :')
          ParentFont = False
        end
        object SystemVariable2: TfrxMemoView
          Left = 651.000108060000000000
          Top = 34.998447800000000000
          Width = 11.780795010000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 37.999394620000000000
          Top = 101.000380190000000000
          Width = 82.998478800000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Subcuenta')
          ParentFont = False
        end
        object Label7: TfrxMemoView
          Left = 125.000395690000000000
          Top = 101.000380190000000000
          Width = 310.000830130000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 440.001544010000000000
          Top = 101.000380190000000000
          Width = 121.999448870000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N.I.F.')
          ParentFont = False
        end
        object LineaDescripcion: TfrxMemoView
          Left = 32.999076430000000000
          Top = 66.999728310000000000
          Width = 735.001419570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DESCRIPTION]')
          ParentFont = False
        end
        object InformeLabel1: TfrxMemoView
          Left = 230.264085720000000000
          Top = 39.998765990000000000
          Width = 292.335306910000000000
          Height = 15.840010230000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'OPERACIONES CON TERCEROS (349)')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 569.000682440000000000
          Top = 101.000380190000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Ventas')
          ParentFont = False
        end
        object Label2: TfrxMemoView
          Left = 671.002638080000000000
          Top = 101.000380190000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Compras')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 720.000465000000000000
          Top = 20.001272760000000000
          Width = 49.560976890000000000
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
        object LineaTipoConta: TfrxMemoView
          Left = 735.001419570000000000
          Top = 37.001598700000000000
          Width = 22.560014570000000000
          Height = 10.998432300000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LineaTipoConta')
          ParentFont = False
        end
        object LineaCabecera1: TfrxMemoView
          Left = 34.015770000000010000
          Top = 15.998750490000000000
          Width = 814.001155630000000000
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
        object Memo1: TfrxMemoView
          Left = 614.740554500000000000
          Top = 56.692949999999990000
          Width = 160.142465630000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Usuario: [USER_NAME]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.004734100000000000
        Top = 166.299320000000000000
        Width = 793.701300000000000000
        DataSetName = 'Enlace'
        RowCount = 0
        object DBText10: TfrxMemoView
          Left = 440.001544010000000000
          Width = 121.999448870000000000
          Height = 13.999379120000000000
          DataField = 'NIF'
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."NIF"]')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 37.999394620000000000
          Width = 82.000682880000000000
          Height = 13.999379120000000000
          DataField = 'Subcuenta'
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."Subcuenta"]')
          ParentFont = False
        end
        object DBText11: TfrxMemoView
          Left = 125.000395690000000000
          Width = 310.000830130000000000
          Height = 13.999379120000000000
          DataField = 'DescSubcuenta'
          DataSet = DataModuleFiltroBalances.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescSubcuenta"]')
          ParentFont = False
        end
        object Importe2: TfrxMemoView
          Left = 569.000682440000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe3: TfrxMemoView
          Left = 671.002638080000000000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 30.999705060000000000
        Top = 204.094620000000000000
        Width = 793.701300000000000000
        object Line2: TfrxLineView
          Left = 32.999076430000000000
          Top = 3.000946819999996000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe5: TfrxMemoView
          Left = 569.000682440000000000
          Top = 6.999689560000008000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe4: TfrxMemoView
          Left = 671.002638080000000000
          Top = 6.999689560000008000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 499.000007310000000000
          Top = 6.999689560000008000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 49.999402370000000000
        Top = 294.803340000000000000
        Width = 793.701300000000000000
        object Line1: TfrxLineView
          Left = 32.999076430000000000
          Top = 6.999689559999980000
          Width = 735.001419570000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Importe1: TfrxMemoView
          Left = 569.000682440000000000
          Top = 10.998432299999990000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteVentas"]')
          ParentFont = False
        end
        object Importe: TfrxMemoView
          Left = 671.002638080000000000
          Top = 10.998432299999990000
          Width = 92.999115180000000000
          Height = 13.999379120000000000
          DataSet = DataModuleFiltroBalances.Enlace1
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
            '[ENLACE1."ImporteCompras"]')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 499.000007310000000000
          Top = 10.998432299999990000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
      end
    end
  end
end
