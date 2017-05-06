object DataModuleCarteraEfectos: TDataModuleCarteraEfectos
  OldCreateOrder = False
  Height = 607
  Width = 872
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
    Left = 275
    Top = 15
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
    Left = 356
    Top = 15
  end
  object SSubCtaCarteraEfectos: TDataSource
    AutoEdit = False
    DataSet = QSubCtaCarteraEfectos
    Left = 607
    Top = 71
  end
  object QConceptos: TIBDataSet
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
      'SELECT ID_CONCEPTOS,'
      '               DESCRIPCION'
      'FROM CONCEPTOS')
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
    Left = 483
    Top = 23
    object QConceptosID_CONCEPTOS: TIBStringField
      FieldName = 'ID_CONCEPTOS'
      Origin = 'CONCEPTOS.ID_CONCEPTOS'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QConceptosDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'CONCEPTOS.DESCRIPCION'
      Size = 30
    end
  end
  object SConceptos: TDataSource
    AutoEdit = False
    DataSet = QConceptos
    Left = 607
    Top = 23
  end
  object QSubCtaCarteraEfectos: TIBDataSet
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
      '               DESCRIPCION '
      'FROM SUBCTAS_CLIENTES'
      'UNION '
      'SELECT SUBCUENTA, '
      '               DESCRIPCION '
      'FROM SUBCTAS_PROVEEDOR'
      'UNION '
      'SELECT SUBCUENTA, '
      '               DESCRIPCION '
      'FROM SUBCTAS_BANCO '
      'ORDER BY 1')
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
    Left = 486
    Top = 71
    object QSubCtaCarteraEfectosDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'SUBCTAS.DESCRIPCION'
      Size = 80
    end
    object QSubCtaCarteraEfectosSUBCUENTA: TIBStringField
      FieldName = 'SUBCUENTA'
      Origin = 'SUBCTAS.SUBCUENTA'
      Required = True
      Size = 10
    end
  end
  object QComercial: TIBDataSet
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM COMERCIALES'
      'WHERE'
      
        '  COMERCIAL                      =:old_COMERCIAL                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO COMERCIALES'
      
        '  (NOMBRE                         ,COMERCIAL                    ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:COMERCIAL                  ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM COMERCIALES'
      'WHERE'
      
        '  COMERCIAL                      =?COMERCIAL                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM COMERCIALES'
      'ORDER BY NOMBRE')
    ModifySQL.Strings = (
      'UPDATE COMERCIALES'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  COMERCIAL                      =:COMERCIAL                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 271
    Top = 74
    object QComercialNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'COMERCIALES.NOMBRE'
      Size = 50
    end
    object QComercialCOMERCIAL: TIBStringField
      FieldName = 'COMERCIAL'
      Origin = 'COMERCIALES.COMERCIAL'
      Required = True
      Size = 10
    end
  end
  object SComercial: TDataSource
    AutoEdit = False
    DataSet = QComercial
    Left = 356
    Top = 71
  end
  object QSubCTABanco: TIBDataSet
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
      '               DESCRIPCION'
      'FROM SUBCTAS_BANCO'
      'ORDER BY SUBCUENTA')
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
    Left = 269
    Top = 131
    object IBStringField6: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object IBStringField9: TIBStringField
      DisplayWidth = 40
      FieldName = 'DESCRIPCION'
      Size = 80
    end
  end
  object SSubCTABanco: TDataSource
    AutoEdit = False
    DataSet = QSubCTABanco
    Left = 356
    Top = 132
  end
  object QSubCTAClientesProv: TIBDataSet
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
      '               DESCRIPCION'
      'FROM SUBCTAS_CLIENTES_PROVEEDORES'
      'ORDER BY SUBCUENTA'
      ''
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
    Left = 482
    Top = 173
    object IBStringField12: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object IBStringField13: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 80
    end
  end
  object QSubCtaClientes: TIBDataSet
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
      'SELECT SUBCUENTA, '
      '               DESCRIPCION'
      'FROM SUBCTAS_CLIENTES '
      'ORDER BY SUBCUENTA')
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
    Left = 480
    Top = 122
    object IBStringField37: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object IBStringField38: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 80
    end
  end
  object SSubCTAClientesProv: TDataSource
    AutoEdit = False
    DataSet = QSubCTAClientesProv
    Left = 609
    Top = 170
  end
  object SSubCtaClientes: TDataSource
    AutoEdit = False
    DataSet = QSubCtaClientes
    Left = 608
    Top = 120
  end
  object FastReportCarteraBanco: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.163548171300000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42842.660820810180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 65
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Shape4: TfrxShapeView
          Left = 887.001838510000000000
          Top = 15.998750490000000000
          Width = 195.016188940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object SystemVariable3: TfrxMemoView
          Left = 944.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 43.001916890000000000
          Top = 36.000023250000000000
          Width = 841.145740089999000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE PAGOS / COBROS POR BANCO')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 892.002785330000000000
          Top = 37.001598700000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 474.002195890000000000
          Top = 101.000380190000000000
          Width = 257.000480940000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 892.002785330000000000
          Top = 20.999068680000000000
          Width = 44.560658700000000000
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
        object SystemVariable2: TfrxMemoView
          Left = 944.001869510000000000
          Top = 37.001598700000000000
          Width = 17.340483640000000000
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
        object Label2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 101.000380190000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1009.002226450000000000
          Top = 20.999068680000000000
          Width = 53.340506890000000000
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
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 912.000589000000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 736.002995020000000000
          Top = 101.000380190000000000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 823.003996090000000000
          Top = 101.000380190000000000
          Width = 85.999425620000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situaci'#243'n')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 402.002149390000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Vencim.')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 46.998455550000000000
          Top = 101.000380190000000000
          Width = 99.998804740000000000
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
        object Label13: TfrxMemoView
          Left = 150.001986640000000000
          Top = 101.000380190000000000
          Width = 251.002366830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 474.002195890000000000
          Top = 1.001575449999990000
          Width = 257.000480940000000000
          Height = 13.999379120000000000
          DataField = 'CONCEPTO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."CONCEPTO"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 1.001575449999990000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace."CalcImporte"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 912.000589000000000000
          Top = 1.001575449999990000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataField = 'FEMISION'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace."FEMISION"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 736.002995020000000000
          Top = 1.001575449999990000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          DataField = 'NumeroFactura'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."NumeroFactura"]')
          ParentFont = False
        end
        object Situacion: TfrxMemoView
          Left = 823.003996090000000000
          Top = 1.001575449999990000
          Width = 85.999425620000000000
          Height = 13.999379120000000000
          DataField = 'DescSituacion'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."DescSituacion"]')
          ParentFont = False
        end
        object ppFEmision1: TfrxMemoView
          Left = 402.002149390000000000
          Top = 1.001575449999990000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataField = 'FVENCIMIENTO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace."FVENCIMIENTO"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 150.001986640000000000
          Top = 1.001575449999990000
          Width = 246.002048640000000000
          Height = 13.999379120000000000
          DataField = 'DescSubcuenta'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."DescSubcuenta"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 46.998455550000000000
          Top = 1.001575449999990000
          Width = 99.998804740000000000
          Height = 13.999379120000000000
          DataField = 'SUBCUENTA'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."SUBCUENTA"]')
          ParentFont = False
        end
      end
      object Group1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 819.001473820000000000
          Top = 6.999689559999980000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 912.000589000000000000
          Top = 10.998432299999990000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 10.998432299999990000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."SUBCTABANCO"'
        object Label10: TfrxMemoView
          Left = 46.998455550000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'BANCO')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 140.001350260000000000
          Width = 99.998804740000000000
          Height = 13.001583200000000000
          DataField = 'SUBCTABANCO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace."SUBCTABANCO"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 243.998897740000000000
          Width = 377.000558440000000000
          Height = 13.001583200000000000
          DataField = 'DescSubcuentaBanco'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace."DescSubcuentaBanco"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.999386870000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 819.001473820000000000
          Top = 1.999371369999949000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 912.000589000000000000
          Top = 6.999689559999980000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 6.999689560000008000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
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
    Left = 65
    Top = 506
  end
  object Enlace1: TfrxDBDataset
    UserName = 'ENLACE1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_CARTERAEFECTOS=ID_CARTERAEFECTOS'
      'FVENCIMIENTO=FVENCIMIENTO'
      'FEMISION=FEMISION'
      'SUBCUENTA=SUBCUENTA'
      'CONCEPTO=CONCEPTO'
      'CalcImporte=CalcImporte'
      'DescSituacion=DescSituacion'
      'ASIENTORIESGO=ASIENTORIESGO'
      'SUBCTABANCO=SUBCTABANCO'
      'COMERCIAL=COMERCIAL'
      'CalcComision=CalcComision'
      'FACTCLIENT=FACTCLIENT'
      'FACTPROVEEDOR=FACTPROVEEDOR'
      'EJERCICIO=EJERCICIO'
      'SERIE=SERIE'
      'IMPCOMISION=IMPCOMISION'
      'IMPORTE=IMPORTE'
      'SITUACION=SITUACION'
      'FASIENTO=FASIENTO'
      'NumeroFactura=NumeroFactura'
      'DescSubcuenta=DescSubcuenta'
      'DescSubcuentaBanco=DescSubcuentaBanco'
      'NomComercial=NomComercial')
    DataSet = QFichero
    BCDToCurrency = False
    Left = 192
    Top = 241
  end
  object QFichero: TIBDataSet
    Transaction = Transaccion
    BeforeOpen = QFicheroBeforeOpen
    OnCalcFields = QFicheroCalcFields
    OnNewRecord = QFicheroNewRecord
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CARTERAEFECTOS'
      'WHERE'
      
        '  ID_CARTERAEFECTOS              =:old_ID_CARTERAEFECTOS        ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO CARTERAEFECTOS'
      
        '  (IMPCOMISION                    ,FVENCIMIENTO                 ' +
        '  ,IMPORTE                        ,FASIENTO                     ' +
        '  ,FEMISION                       ,ASIENTORIESGO                ' +
        '  ,COMERCIAL                      ,FACTCLIENT                   ' +
        '  ,CONCEPTO                       ,SUBCTABANCO                  ' +
        '  ,SUBCUENTA                      ,ID_CARTERAEFECTOS            ' +
        '  ,FACTPROVEEDOR                  ,SITUACION                    ' +
        '  ,EJERCICIO                      ,SERIE                        ' +
        '  )'
      'VALUES'
      
        '  (:IMPCOMISION                    ,:FVENCIMIENTO               ' +
        '    ,:IMPORTE                        ,:FASIENTO                 ' +
        '      ,:FEMISION                       ,:ASIENTORIESGO          ' +
        '        ,:COMERCIAL                      ,:FACTCLIENT           ' +
        '          ,:CONCEPTO                       ,:SUBCTABANCO        ' +
        '            ,:SUBCUENTA                      ,:ID_CARTERAEFECTOS' +
        '              ,:FACTPROVEEDOR                  ,:SITUACION      ' +
        '                ,:EJERCICIO                      ,:SERIE        ' +
        '                  )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM CARTERAEFECTOS'
      'WHERE'
      
        '  ID_CARTERAEFECTOS              =?ID_CARTERAEFECTOS            ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT ID_CARTERAEFECTOS,'
      '               FVENCIMIENTO,'
      '               FEMISION,'
      '               SUBCUENTA,'
      '               CONCEPTO,'
      '               ASIENTORIESGO,'
      '               SUBCTABANCO,'
      '               COMERCIAL,'
      '               FACTCLIENT,'
      '               FACTPROVEEDOR,'
      '               EJERCICIO,'
      '               SERIE,'
      '               IMPCOMISION,'
      '               IMPORTE,'
      '               SITUACION,'
      '               FASIENTO'
      'FROM CARTERAEFECTOS')
    ModifySQL.Strings = (
      'UPDATE CARTERAEFECTOS'
      'SET'
      
        '  IMPCOMISION                    =:IMPCOMISION                  ' +
        '   '
      
        '  ,FVENCIMIENTO                   =:FVENCIMIENTO                ' +
        '    '
      
        '  ,IMPORTE                        =:IMPORTE                     ' +
        '    '
      
        '  ,FASIENTO                       =:FASIENTO                    ' +
        '    '
      
        '  ,FEMISION                       =:FEMISION                    ' +
        '    '
      
        '  ,ASIENTORIESGO                  =:ASIENTORIESGO               ' +
        '    '
      
        '  ,COMERCIAL                      =:COMERCIAL                   ' +
        '    '
      
        '  ,FACTCLIENT                     =:FACTCLIENT                  ' +
        '    '
      
        '  ,CONCEPTO                       =:CONCEPTO                    ' +
        '    '
      
        '  ,SUBCTABANCO                    =:SUBCTABANCO                 ' +
        '    '
      
        '  ,SUBCUENTA                      =:SUBCUENTA                   ' +
        '    '
      
        '  ,FACTPROVEEDOR                  =:FACTPROVEEDOR               ' +
        '    '
      
        '  ,SITUACION                      =:SITUACION                   ' +
        '    '
      
        '  ,EJERCICIO                      =:EJERCICIO                   ' +
        '    '
      
        '  ,SERIE                          =:SERIE                       ' +
        '    '
      'WHERE'
      
        '  ID_CARTERAEFECTOS              =:ID_CARTERAEFECTOS            ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 35
    Top = 29
    object QFicheroID_CARTERAEFECTOS: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'NUMERO'
      DisplayWidth = 7
      FieldName = 'ID_CARTERAEFECTOS'
      Origin = 'CARTERAEFECTOS.ID_CARTERAEFECTOS'
    end
    object QFicheroFVENCIMIENTO: TDateTimeField
      DisplayLabel = 'F.VENCI.'
      DisplayWidth = 9
      FieldName = 'FVENCIMIENTO'
      Origin = 'CARTERAEFECTOS.FVENCIMIENTO'
    end
    object QFicheroFEMISION: TDateTimeField
      DisplayLabel = 'F.EMISION'
      DisplayWidth = 10
      FieldName = 'FEMISION'
      Origin = 'CARTERAEFECTOS.FEMISION'
    end
    object QFicheroSUBCUENTA: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Origin = 'CARTERAEFECTOS.SUBCUENTA'
      Size = 10
    end
    object QFicheroCONCEPTO: TIBStringField
      DisplayWidth = 39
      FieldName = 'CONCEPTO'
      Origin = 'CARTERAEFECTOS.CONCEPTO'
      Size = 50
    end
    object QFicheroCalcImporte: TFloatField
      DisplayLabel = 'IMPORTE'
      DisplayWidth = 11
      FieldKind = fkCalculated
      FieldName = 'CalcImporte'
      Calculated = True
    end
    object QFicheroDescSituacion: TStringField
      Alignment = taCenter
      DisplayLabel = 'SITUACION'
      DisplayWidth = 13
      FieldKind = fkCalculated
      FieldName = 'DescSituacion'
      Size = 15
      Calculated = True
    end
    object QFicheroASIENTORIESGO: TIntegerField
      DisplayLabel = 'ASIENTO RIESGO'
      DisplayWidth = 15
      FieldName = 'ASIENTORIESGO'
      Origin = 'CARTERAEFECTOS.ASIENTORIESGO'
    end
    object QFicheroSUBCTABANCO: TIBStringField
      DisplayLabel = 'BANCO'
      DisplayWidth = 19
      FieldName = 'SUBCTABANCO'
      Origin = 'CARTERAEFECTOS.SUBCTABANCO'
      Size = 10
    end
    object QFicheroCOMERCIAL: TIBStringField
      DisplayWidth = 18
      FieldName = 'COMERCIAL'
      Origin = 'CARTERAEFECTOS.COMERCIAL'
      Size = 10
    end
    object QFicheroCalcComision: TFloatField
      DisplayLabel = 'IMP. COMIS.'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'CalcComision'
      Calculated = True
    end
    object QFicheroFACTCLIENT: TIBStringField
      DisplayLabel = 'FACT. CLIENTE'
      DisplayWidth = 16
      FieldName = 'FACTCLIENT'
      Origin = 'CARTERAEFECTOS.FACTCLIENT'
      Size = 10
    end
    object QFicheroFACTPROVEEDOR: TIBStringField
      DisplayLabel = 'FACT. PROVEEDOR'
      DisplayWidth = 17
      FieldName = 'FACTPROVEEDOR'
      Origin = 'CARTERAEFECTOS.FACTPROVEEDOR'
      Size = 15
    end
    object QFicheroEJERCICIO: TIntegerField
      DisplayWidth = 10
      FieldName = 'EJERCICIO'
      Origin = 'CARTERAEFECTOS.EJERCICIO'
      Visible = False
    end
    object QFicheroSERIE: TIBStringField
      DisplayWidth = 5
      FieldName = 'SERIE'
      Origin = 'CARTERAEFECTOS.SERIE'
      Visible = False
      Size = 5
    end
    object QFicheroIMPCOMISION: TFloatField
      DisplayLabel = 'IMP.COMIS.'
      DisplayWidth = 10
      FieldName = 'IMPCOMISION'
      Origin = 'CARTERAEFECTOS.IMPCOMISION'
      Visible = False
      DisplayFormat = '###,###,##0.#0'
    end
    object QFicheroIMPORTE: TFloatField
      DisplayWidth = 11
      FieldName = 'IMPORTE'
      Origin = 'CARTERAEFECTOS.IMPORTE'
      Visible = False
      DisplayFormat = '###,###,##0.#0'
    end
    object QFicheroSITUACION: TIBStringField
      FieldName = 'SITUACION'
      Origin = 'CARTERAEFECTOS.SITUACION'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object QFicheroFASIENTO: TDateTimeField
      FieldName = 'FASIENTO'
      Origin = 'CARTERAEFECTOS.FASIENTO'
      Visible = False
    end
    object QFicheroNumeroFactura: TStringField
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'NumeroFactura'
      Visible = False
      Size = 15
      Calculated = True
    end
    object QFicheroDescSubcuenta: TStringField
      FieldKind = fkLookup
      FieldName = 'DescSubcuenta'
      LookupDataSet = DMContaRef.QSubCtaClientesProv
      LookupKeyFields = 'SUBCUENTA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'SUBCUENTA'
      Visible = False
      Size = 80
      Lookup = True
    end
    object QFicheroDescSubcuentaBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'DescSubcuentaBanco'
      LookupDataSet = DMContaRef.QSubCTABanco
      LookupKeyFields = 'SUBCUENTA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'SUBCTABANCO'
      Visible = False
      Size = 80
      Lookup = True
    end
    object QFicheroNomComercial: TStringField
      FieldKind = fkLookup
      FieldName = 'NomComercial'
      LookupDataSet = DMRef.QComercial
      LookupKeyFields = 'COMERCIAL'
      LookupResultField = 'NOMBRE'
      KeyFields = 'COMERCIAL'
      Visible = False
      Size = 50
      Lookup = True
    end
  end
  object DSFichero: TDataSource
    AutoEdit = False
    DataSet = QFichero
    Left = 89
    Top = 29
  end
  object Transaccion: TIBTransaction
    Left = 155
    Top = 13
  end
  object CDSFiltro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 39
    Top = 83
    object CDSFiltroBFACTCLIENTE: TStringField
      FieldName = 'BFACTCLIENTE'
      Size = 10
    end
    object CDSFiltroBFACTPROVEEDOR: TStringField
      FieldName = 'BFACTPROVEEDOR'
      Size = 15
    end
    object CDSFiltroBNUMERO: TIntegerField
      FieldName = 'BNUMERO'
    end
    object CDSFiltroBIMPORTE: TFloatField
      FieldName = 'BIMPORTE'
    end
    object CDSFiltroFECHAEMISIONDESDE: TDateTimeField
      FieldName = 'FECHAEMISIONDESDE'
    end
    object CDSFiltroFECHAEMISIONHASTA: TDateTimeField
      FieldName = 'FECHAEMISIONHASTA'
    end
    object CDSFiltroFECHAVENCIMDESDE: TDateTimeField
      FieldName = 'FECHAVENCIMDESDE'
    end
    object CDSFiltroFECHAVENCIMHASTA: TDateTimeField
      FieldName = 'FECHAVENCIMHASTA'
    end
    object CDSFiltroFECHAASIENTODESDE: TDateTimeField
      FieldName = 'FECHAASIENTODESDE'
    end
    object CDSFiltroFECHAASIENTOHASTA: TDateTimeField
      FieldName = 'FECHAASIENTOHASTA'
    end
    object CDSFiltroIMPORTEDESDE: TFloatField
      FieldName = 'IMPORTEDESDE'
    end
    object CDSFiltroIMPORTEHASTA: TFloatField
      FieldName = 'IMPORTEHASTA'
    end
    object CDSFiltroFACTCLIENTEDESDE: TStringField
      FieldName = 'FACTCLIENTEDESDE'
      Size = 10
    end
    object CDSFiltroFACTCLIENTEHASTA: TStringField
      FieldName = 'FACTCLIENTEHASTA'
      Size = 10
    end
    object CDSFiltroFACTPROVEEDORDESDE: TStringField
      FieldName = 'FACTPROVEEDORDESDE'
      Size = 15
    end
    object CDSFiltroFACTPROVEEDORHASTA: TStringField
      FieldName = 'FACTPROVEEDORHASTA'
      Size = 15
    end
    object CDSFiltroSUBCUENTADESDE: TStringField
      FieldName = 'SUBCUENTADESDE'
      Size = 10
    end
    object CDSFiltroSUBCUENTAHASTA: TStringField
      FieldName = 'SUBCUENTAHASTA'
      Size = 10
    end
    object CDSFiltroSUBCUENTABANCO: TStringField
      FieldName = 'SUBCUENTABANCO'
      Size = 10
    end
    object CDSFiltroCOMERCIAL: TStringField
      FieldName = 'COMERCIAL'
      Size = 10
    end
    object CDSFiltroSITUACION: TStringField
      FieldName = 'SITUACION'
      Size = 1
    end
    object CDSFiltroMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 1
    end
  end
  object DSFiltro: TDataSource
    DataSet = CDSFiltro
    Left = 91
    Top = 82
  end
  object FastReportCarteraSubcta: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636695694390000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42842.659845532400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 65
    Top = 290
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Shape4: TfrxShapeView
          Left = 883.001838510000000000
          Top = 15.998750490000000000
          Width = 179.898068940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object SystemVariable3: TfrxMemoView
          Left = 947.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 833.586680090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE PAGOS / COBROS POR SUBCUENTA')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 892.002785330000000000
          Top = 37.001598700000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 118.998502050000000000
          Top = 101.000380190000000000
          Width = 257.000480940000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 892.002785330000000000
          Top = 20.999068680000000000
          Width = 48.340188700000010000
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
        object SystemVariable2: TfrxMemoView
          Left = 947.001869510000000000
          Top = 37.001598700000000000
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
        object Label2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 101.000380190000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1012.002226450000000000
          Top = 20.999068680000000000
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
        object Label3: TfrxMemoView
          Left = 629.000721190000000000
          Top = 101.000380190000000000
          Width = 99.998804740000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 732.000472750000000000
          Top = 101.000380190000000000
          Width = 251.002366830000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 557.000674690000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 380.999301180000000000
          Top = 101.000380190000000000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 468.000302250000000000
          Top = 101.000380190000000000
          Width = 85.999425620000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situaci'#243'n')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 46.998455550000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Vencim.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 118.998502050000000000
          Top = 1.001575449999990000
          Width = 257.000480940000000000
          Height = 13.999379120000000000
          DataField = 'CONCEPTO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."CONCEPTO"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 1.001575449999990000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace."CalcImporte"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 732.000472750000000000
          Top = 1.001575449999990000
          Width = 246.002048640000000000
          Height = 13.999379120000000000
          DataField = 'DescSubcuentaBanco'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."DescSubcuentaBanco"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 629.000721190000000000
          Top = 1.001575449999990000
          Width = 99.998804740000000000
          Height = 13.999379120000000000
          DataField = 'SUBCTABANCO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."SUBCTABANCO"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 557.000674690000000000
          Top = 1.001575449999990000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataField = 'FEMISION'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace."FEMISION"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 380.999301180000000000
          Top = 1.001575449999990000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          DataField = 'NumeroFactura'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."NumeroFactura"]')
          ParentFont = False
        end
        object Situacion: TfrxMemoView
          Left = 468.000302250000000000
          Top = 1.001575449999990000
          Width = 85.999425620000000000
          Height = 13.999379120000000000
          DataField = 'DescSituacion'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."DescSituacion"]')
          ParentFont = False
        end
        object ppFEmision1: TfrxMemoView
          Left = 46.998455550000000000
          Top = 1.001575449999990000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataField = 'FVENCIMIENTO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace."FVENCIMIENTO"]')
          ParentFont = False
        end
      end
      object Group1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 819.001473820000000000
          Top = 6.999689559999980000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 912.000589000000000000
          Top = 10.998432299999990000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 10.998432299999990000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."FVENCIMIENTO"'
        object Label10: TfrxMemoView
          Left = 46.998455550000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'SUBCUENTA')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 140.001350260000000000
          Width = 99.998804740000000000
          Height = 13.001583200000000000
          DataField = 'SUBCUENTA'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace."SUBCUENTA"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 243.998897740000000000
          Width = 377.000558440000000000
          Height = 13.001583200000000000
          DataField = 'DescSubcuenta'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace."DescSubcuenta"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.999386870000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 819.001473820000000000
          Top = 1.999371369999949000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 912.000589000000000000
          Top = 6.999689559999980000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 6.999689560000008000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object FastReportCarteraFVenc: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636590810200000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42842.668060509260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 65
    Top = 338
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Label5: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 829.807150090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE PAGOS / COBROS POR FECHA DE VENCIMIENTO')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Shape4: TfrxShapeView
          Left = 882.001838510000000000
          Top = 15.998750490000000000
          Width = 179.898068940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 890.002785330000000000
          Top = 37.001598700000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 433.999650370000000000
          Top = 101.000380190000000000
          Width = 291.998928740000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 890.002785330000000000
          Top = 20.999068680000000000
          Width = 44.560658700000010000
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
        object SystemVariable2: TfrxMemoView
          Left = 944.001869510000000000
          Top = 37.001598700000000000
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
        object Label2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 101.000380190000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1009.002226450000000000
          Top = 20.999068680000000000
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
        object Label3: TfrxMemoView
          Left = 46.998455550000000000
          Top = 101.000380190000000000
          Width = 104.999122930000000000
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
        object Label12: TfrxMemoView
          Left = 821.000845190000000000
          Top = 101.000380190000000000
          Width = 89.000372440000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 912.000589000000000000
          Top = 101.000380190000000000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label13: TfrxMemoView
          Left = 157.001676200000000000
          Top = 101.000380190000000000
          Width = 272.001435510000000000
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
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 729.003305460000000000
          Top = 101.000380190000000000
          Width = 89.000372440000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situaci'#243'n')
          ParentFont = False
        end
        object SystemVariable3: TfrxMemoView
          Left = 944.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 433.999650370000000000
          Top = 1.001575449999990000
          Width = 291.998928740000000000
          Height = 13.999379120000000000
          DataField = 'CONCEPTO'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."CONCEPTO"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 821.000845190000000000
          Top = 1.001575449999990000
          Width = 89.000372440000000000
          Height = 13.001583200000000000
          DataField = 'NumeroFactura'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."NumeroFactura"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 1.001575449999990000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSet = DataModuleAmortizaciones.Enlace1
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
            '[ENLACE1."CalcImporte"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 157.001676200000000000
          Top = 1.001575449999990000
          Width = 267.001117320000000000
          Height = 13.999379120000000000
          DataField = 'DescSubcuenta'
          DataSet = DataModuleAmortizaciones.Enlace1
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
        object DBText7: TfrxMemoView
          Left = 46.998455550000000000
          Top = 1.001575449999990000
          Width = 104.999122930000000000
          Height = 13.999379120000000000
          DataField = 'SUBCUENTA'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."SUBCUENTA"]')
          ParentFont = False
        end
        object Situacion: TfrxMemoView
          Left = 729.003305460000000000
          Top = 1.001575449999990000
          Width = 89.000372440000000000
          Height = 13.999379120000000000
          DataField = 'DescSituacion'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[ENLACE1."DescSituacion"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 912.000589000000000000
          Top = 1.001575449999990000
          Width = 70.998471050000000000
          Height = 13.999379120000000000
          DataField = 'FEMISION'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."FEMISION"]')
          ParentFont = False
        end
      end
      object Group1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 819.001473820000000000
          Top = 6.999689559999980000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 912.000589000000000000
          Top = 10.998432299999990000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 10.998432299999990000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSet = DataModuleAmortizaciones.Enlace1
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
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."FVENCIMIENTO"'
        object Label10: TfrxMemoView
          Left = 46.998455550000000000
          Width = 147.998835740000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'FECHA DE VENCIMIENTO')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 209.000449940000000000
          Width = 70.000675130000000000
          Height = 13.001583200000000000
          DataField = 'FVENCIMIENTO'
          DataSet = DataModuleAmortizaciones.Enlace1
          DataSetName = 'ENLACE1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[ENLACE1."FVENCIMIENTO"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.999386870000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 819.001473820000000000
          Top = 1.999371369999949000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 912.000589000000000000
          Top = 6.999689559999980000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 6.999689560000008000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSet = DataModuleAmortizaciones.Enlace1
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
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object FastReportCarteraSituacion: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636644513900000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42842.668389826390000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 65
    Top = 386
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Shape4: TfrxShapeView
          Left = 882.001838510000000000
          Top = 15.998750490000000000
          Width = 176.118538940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object SystemVariable3: TfrxMemoView
          Left = 944.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 829.807150090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE PAGOS / COBROS POR SITUACI'#211'N')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 890.002785330000000000
          Top = 37.001598700000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 534.002234640000000000
          Top = 101.000380190000000000
          Width = 279.998920990000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 890.002785330000000000
          Top = 20.999068680000000000
          Width = 44.560658700000010000
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
        object SystemVariable2: TfrxMemoView
          Left = 944.001869510000000000
          Top = 37.001598700000000000
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
        object Label2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 101.000380190000000000
          Width = 66.001932390000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1009.002226450000000000
          Top = 20.999068680000000000
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
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 912.000589000000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 819.001473820000000000
          Top = 101.000380190000000000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 462.002188140000000000
          Top = 101.000380190000000000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Vencim.')
          ParentFont = False
        end
        object Label3: TfrxMemoView
          Left = 46.998455550000000000
          Top = 101.000380190000000000
          Width = 99.998804740000000000
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
        object Label13: TfrxMemoView
          Left = 150.001986640000000000
          Top = 101.000380190000000000
          Width = 306.999883310000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 534.002234640000000000
          Top = 1.001575449999990000
          Width = 279.998920990000000000
          Height = 13.999379120000000000
          DataField = 'CONCEPTO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."CONCEPTO"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 1.001575449999990000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace."CalcImporte"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 912.000589000000000000
          Top = 1.001575449999990000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataField = 'FEMISION'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace."FEMISION"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 819.001473820000000000
          Top = 1.001575449999990000
          Width = 84.000054250000000000
          Height = 13.001583200000000000
          DataField = 'NumeroFactura'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."NumeroFactura"]')
          ParentFont = False
        end
        object ppFEmision1: TfrxMemoView
          Left = 462.002188140000000000
          Top = 1.001575449999990000
          Width = 68.001303760000000000
          Height = 13.999379120000000000
          DataField = 'FVENCIMIENTO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace."FVENCIMIENTO"]')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 150.001986640000000000
          Top = 1.001575449999990000
          Width = 301.999565120000000000
          Height = 13.999379120000000000
          DataField = 'DescSubcuenta'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."DescSubcuenta"]')
          ParentFont = False
        end
        object DBText7: TfrxMemoView
          Left = 46.998455550000000000
          Top = 1.001575449999990000
          Width = 99.998804740000000000
          Height = 13.999379120000000000
          DataField = 'SUBCUENTA'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."SUBCUENTA"]')
          ParentFont = False
        end
      end
      object Group1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 819.001473820000000000
          Top = 6.999689559999980000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 912.000589000000000000
          Top = 10.998432299999990000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 985.002210950000000000
          Top = 10.998432299999990000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."SITUACION"'
        object Label10: TfrxMemoView
          Left = 46.998455550000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'SITUACI'#211'N')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 140.001350260000000000
          Width = 159.001047570000000000
          Height = 13.001583200000000000
          DataField = 'DescSituacion'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace."DescSituacion"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.999386870000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 819.001473820000000000
          Top = 1.999371369999949000
          Width = 238.000783630000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 912.000589000000000000
          Top = 6.999689559999980000
          Width = 63.000985570000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 985.002210950000000000
          Top = 6.999689560000008000
          Width = 66.001932389999990000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object FastReportCarteraComercial: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42776.636505266200000000
    ReportOptions.Name = 'Report1'
    ReportOptions.LastChange = 42842.668896354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 65
    Top = 434
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      TopMargin = 6.350000000000000000
      BottomMargin = 15.240000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 125.000395690000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Shape4: TfrxShapeView
          Left = 883.001838510000000000
          Top = 15.998750490000000000
          Width = 179.898068940000000000
          Height = 37.001598700000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object SystemVariable3: TfrxMemoView
          Left = 944.001869510000000000
          Top = 20.999068680000000000
          Width = 60.559409190000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TfrxMemoView
          Left = 42.001916890000000000
          Top = 36.000023250000000000
          Width = 829.807150090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'INFORME DE COMISIONES POR COMERCIAL')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 42.001916890000000000
          Top = 90.001947890000000000
          Width = 1015.004120090000000000
          Height = 30.999705060000000000
          Curve = 2
          Shape = skRoundRectangle
        end
        object Label16: TfrxMemoView
          Left = 890.002785330000000000
          Top = 37.001598700000000000
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
        object LineaCabecera1: TfrxMemoView
          Left = 42.001916890000000000
          Top = 15.998750490000000000
          Width = 831.001481570000000000
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
        object InformeLabel4: TfrxMemoView
          Left = 207.998874490000000000
          Top = 101.000380190000000000
          Width = 288.000186000000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Concepto')
          ParentFont = False
        end
        object Label15: TfrxMemoView
          Left = 890.002785330000000000
          Top = 20.999068680000000000
          Width = 44.560658700000010000
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
        object SystemVariable2: TfrxMemoView
          Left = 944.001869510000000000
          Top = 37.001598700000000000
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
        object Label2: TfrxMemoView
          Left = 785.000821940000000000
          Top = 101.000380190000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
        object SystemVariable1: TfrxMemoView
          Left = 1009.002226450000000000
          Top = 20.999068680000000000
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
        object Label8: TfrxMemoView
          Left = 42.001916890000000000
          Top = 58.998463300000000000
          Width = 1015.004120090000000000
          Height = 15.998750490000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
        object Label6: TfrxMemoView
          Left = 703.000139060000000000
          Top = 101.000380190000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Emisi'#243'n')
          ParentFont = False
        end
        object Label12: TfrxMemoView
          Left = 501.003158210000000000
          Top = 101.000380190000000000
          Width = 92.001319260000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Factura')
          ParentFont = False
        end
        object Label1: TfrxMemoView
          Left = 599.002591580000000000
          Top = 101.000380190000000000
          Width = 94.000690630000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situaci'#243'n')
          ParentFont = False
        end
        object Label4: TfrxMemoView
          Left = 130.998509800000000000
          Top = 101.000380190000000000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'F. Vencim.')
          ParentFont = False
        end
        object Label11: TfrxMemoView
          Left = 887.002777580000000000
          Top = 101.000380190000000000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Comisi'#243'n')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 241.889920000000000000
        Width = 1122.520410000000000000
        DataSet = Enlace1
        DataSetName = 'ENLACE1'
        RowCount = 0
        object DBText1: TfrxMemoView
          Left = 207.998874490000000000
          Top = 1.001575449999990000
          Width = 288.000186000000000000
          Height = 13.999379120000000000
          DataField = 'CONCEPTO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."CONCEPTO"]')
          ParentFont = False
        end
        object Importe1: TfrxMemoView
          Left = 785.000821940000000000
          Top = 1.001575449999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataField = 'CalcImporte'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace."CalcImporte"]')
          ParentFont = False
        end
        object ppFEmision: TfrxMemoView
          Left = 703.000139060000000000
          Top = 1.001575449999990000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          DataField = 'FEMISION'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace."FEMISION"]')
          ParentFont = False
        end
        object Factura: TfrxMemoView
          Left = 501.003158210000000000
          Top = 1.001575449999990000
          Width = 92.001319260000000000
          Height = 13.001583200000000000
          DataField = 'NumeroFactura'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."NumeroFactura"]')
          ParentFont = False
        end
        object Situacion: TfrxMemoView
          Left = 599.002591580000000000
          Top = 1.001575449999990000
          Width = 94.000690630000000000
          Height = 13.999379120000000000
          DataField = 'DescSituacion'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Enlace."DescSituacion"]')
          ParentFont = False
        end
        object ppFEmision1: TfrxMemoView
          Left = 130.998509800000000000
          Top = 1.001575449999990000
          Width = 72.000046500000000000
          Height = 13.999379120000000000
          DataField = 'FVENCIMIENTO'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Enlace."FVENCIMIENTO"]')
          ParentFont = False
        end
        object Importe2: TfrxMemoView
          Left = 887.002777580000000000
          Top = 1.001575449999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Enlace."CalcComision"]')
          ParentFont = False
        end
      end
      object Group2: TfrxReportSummary
        FillType = ftBrush
        Height = 75.998789240000000000
        Top = 415.748300000000000000
        Width = 1122.520410000000000000
        object Line1: TfrxLineView
          Left = 623.002607080000000000
          Top = 6.999689559999980000
          Width = 433.999650370000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label9: TfrxMemoView
          Left = 624.000403000000000000
          Top = 10.998432299999990000
          Width = 150.999782560000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total :')
          ParentFont = False
        end
        object Suma2: TfrxMemoView
          Left = 785.000821940000000000
          Top = 10.998432299999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
        object DBCalc4: TfrxMemoView
          Left = 887.002777580000000000
          Top = 10.998432299999990000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcComision">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 166.299320000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."COMERCIAL"'
        object Label101: TfrxMemoView
          Left = 46.998455550000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'COMERCIAL')
          ParentFont = False
        end
        object DBText3: TfrxMemoView
          Left = 140.001350260000000000
          Width = 73.001621950000000000
          Height = 13.001583200000000000
          DataField = 'COMERCIAL'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace."COMERCIAL"]')
          ParentFont = False
        end
        object DBText5: TfrxMemoView
          Left = 216.000139500000000000
          Width = 486.999999560000000000
          Height = 13.001583200000000000
          DataField = 'NomComercial'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace."NomComercial"]')
          ParentFont = False
        end
      end
      object Group1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.995607340000000000
        Top = 279.685220000000000000
        Width = 1122.520410000000000000
        object Line2: TfrxLineView
          Left = 623.002607080000000000
          Top = 3.000946819999967000
          Width = 433.999650370000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label3: TfrxMemoView
          Left = 624.000403000000000000
          Top = 8.001265009999997000
          Width = 150.999782560000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Comercial :')
          ParentFont = False
        end
        object Suma4: TfrxMemoView
          Left = 785.000821940000000000
          Top = 8.001265009999997000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
        object Suma5: TfrxMemoView
          Left = 887.002777580000000000
          Top = 8.001265009999997000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcComision">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 15.000954570000000000
        Top = 204.094620000000000000
        Width = 1122.520410000000000000
        Condition = 'ENLACE1."SUBCUENTA"'
        object Label10: TfrxMemoView
          Left = 80.001311510000000000
          Width = 87.998796990000000000
          Height = 13.001583200000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'SUBCUENTA')
          ParentFont = False
        end
        object DBText101: TfrxMemoView
          Left = 173.000426690000000000
          Width = 99.998804740000000000
          Height = 13.001583200000000000
          DataField = 'SUBCUENTA'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace."SUBCUENTA"]')
          ParentFont = False
        end
        object DBText6: TfrxMemoView
          Left = 277.001753700000000000
          Width = 377.000558440000000000
          Height = 13.001583200000000000
          DataField = 'DescSubcuenta'
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            '[Enlace."DescSubcuenta"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.995607340000000000
        Top = 328.819110000000000000
        Width = 1122.520410000000000000
        object Line3: TfrxLineView
          Left = 623.002607080000000000
          Top = 1.999371370000063000
          Width = 433.999650370000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Label7: TfrxMemoView
          Left = 624.000403000000000000
          Top = 6.999689559999980000
          Width = 150.999782560000000000
          Height = 13.999379120000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal Subcuenta :')
          ParentFont = False
        end
        object Suma1: TfrxMemoView
          Left = 785.000821940000000000
          Top = 6.999689559999980000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcImporte">,MasterData1)]')
          ParentFont = False
        end
        object Suma3: TfrxMemoView
          Left = 887.002777580000000000
          Top = 6.999689559999980000
          Width = 90.001947890000000000
          Height = 13.999379120000000000
          DataSetName = 'Enlace'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<ENLACE1."CalcComision">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
