object DataModuleCargaRapidaFacturas: TDataModuleCargaRapidaFacturas
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
      'SELECT S.SUBCUENTA, '
      '             S.ABREVIATURA,'
      '             S.DESCRIPCION'
      'FROM SUBCTAS S, '
      '          CUENTAS C'
      
        'WHERE (S.OBSOLETO <> "S" AND SUBSTR(S.SUBCUENTA, 1, 3) = C.CUENT' +
        'A AND C.TIPOCUENTA = '#39'P'#39')'
      'AND CHAR_LENGTH(SUBCUENTA) = :prmLENGTH')
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
    Left = 315
    Top = 127
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
    Left = 391
    Top = 127
  end
  object QSubCTAIVADeducible: TIBDataSet
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
      'FROM SUBCTAS_IVA_DEDUCIBLE '
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
    Left = 355
    Top = 232
    object IBStringField18: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object IBStringField19: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 80
    end
  end
  object QSubCTAIVARepercutido: TIBDataSet
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
      'FROM     SUBCTAS_IVA_REPERCUTIDO '
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
    Left = 354
    Top = 280
    object IBStringField24: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object IBStringField25: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 80
    end
  end
  object SSubCTAIVADeducible: TDataSource
    AutoEdit = False
    DataSet = QSubCTAIVADeducible
    Left = 480
    Top = 232
  end
  object SSubCTAIVARepercutido: TDataSource
    AutoEdit = False
    DataSet = QSubCTAIVARepercutido
    Left = 480
    Top = 280
  end
  object QSubCTAAmortGastos: TIBDataSet
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
      '               DESCRIPCION  '
      'FROM SUBCTAS_AMORTIZACION_GASTOS '
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
    Left = 351
    Top = 336
    object IBStringField32: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object IBStringField33: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 80
    end
  end
  object SSubCTAAmortGastos: TDataSource
    AutoEdit = False
    DataSet = QSubCTAAmortGastos
    Left = 482
    Top = 335
  end
  object QSubCTAVentas: TIBDataSet
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
      'SELECT SUBCUENTA, DESCRIPCION'
      'FROM    SUBCTAS_VENTAS '
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
    Left = 349
    Top = 386
    object IBStringField28: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUBCUENTA'
      Size = 10
    end
    object IBStringField29: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 80
    end
  end
  object SSubCTAVentas: TDataSource
    AutoEdit = False
    DataSet = QSubCTAVentas
    Left = 480
    Top = 384
  end
end
