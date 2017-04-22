object DataModuleCargaAsiento: TDataModuleCargaAsiento
  OldCreateOrder = False
  Height = 540
  Width = 713
  object QSubCuentas: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    OnCalcFields = QSubCuentasCalcFields
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
      
        'SELECT S.SUBCUENTA     ,                                        ' +
        '   '
      
        '              S.DESCRIPCION   ,                                 ' +
        '          '
      
        '              S.CONTRAPARTIDA ,                                 ' +
        '          '
      
        '              S.ABREVIATURA   ,                                 ' +
        '          '
      
        '              S.SUMADB        ,                                 ' +
        '          '
      
        '              S.SUMAHB        ,                                 ' +
        '          '
      
        '              C.DESCRIPCION DESCCONTRAPARTIDA,                  ' +
        '          '
      
        '              S.IVA           ,                                 ' +
        '          '
      
        '              S.RECARGO                                         ' +
        '          '
      
        'FROM SUBCTAS S LEFT JOIN SUBCTAS C ON S.CONTRAPARTIDA = C.SUBCUE' +
        'NTA'
      'WHERE CHAR_LENGTH(SUBCUENTA) = :prmLENGTH'
      ''
      ''
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
    Left = 51
    Top = 32
    object QSubCuentasSUBCUENTA: TIBStringField
      FieldName = 'SUBCUENTA'
      Origin = 'SUBCTAS.SUBCUENTA'
      Required = True
      Size = 10
    end
    object QSubCuentasDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'SUBCTAS.DESCRIPCION'
      Size = 80
    end
    object QSubCuentasCONTRAPARTIDA: TIBStringField
      FieldName = 'CONTRAPARTIDA'
      Origin = 'SUBCTAS.CONTRAPARTIDA'
      Size = 10
    end
    object QSubCuentasABREVIATURA: TIBStringField
      FieldName = 'ABREVIATURA'
      Origin = 'SUBCTAS.ABREVIATURA'
      Size = 10
    end
    object QSubCuentasSUMADB: TFloatField
      FieldName = 'SUMADB'
      Origin = 'SUBCTAS.SUMADB'
    end
    object QSubCuentasSUMAHB: TFloatField
      FieldName = 'SUMAHB'
      Origin = 'SUBCTAS.SUMAHB'
    end
    object QSubCuentasDESCCONTRAPARTIDA: TIBStringField
      FieldName = 'DESCCONTRAPARTIDA'
      Origin = 'SUBCTAS.DESCRIPCION'
      Size = 80
    end
    object QSubCuentasIVA: TFloatField
      FieldName = 'IVA'
      Origin = 'SUBCTAS.IVA'
    end
    object QSubCuentasRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'SUBCTAS.RECARGO'
    end
    object QSubCuentasCalcSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcSaldo'
      Calculated = True
    end
    object QSubCuentasTipoDeSaldo: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoDeSaldo'
      Size = 25
      Calculated = True
    end
  end
  object SSubcuentas: TDataSource
    AutoEdit = False
    DataSet = QSubCuentas
    Left = 127
    Top = 31
  end
  object QConceptos: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM CONCEPTOS'
      'WHERE'
      
        '  ID_CONCEPTOS                   =:old_ID_CONCEPTOS             ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO CONCEPTOS'
      
        '  (DESCRIPCION                    ,ID_CONCEPTOS                 ' +
        '  ,TIPOCONCEPTO                   )'
      'VALUES'
      
        '  (:DESCRIPCION                    ,:ID_CONCEPTOS               ' +
        '    ,:TIPOCONCEPTO                   )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM CONCEPTOS'
      'WHERE'
      
        '  ID_CONCEPTOS                   =?ID_CONCEPTOS                 ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT ID_CONCEPTOS,'
      '              DESCRIPCION    , '
      '              TIPOCONCEPTO'
      'FROM CONCEPTOS')
    ModifySQL.Strings = (
      'UPDATE CONCEPTOS'
      'SET'
      
        '  DESCRIPCION                    =:DESCRIPCION                  ' +
        '   '
      
        '  ,TIPOCONCEPTO                   =:TIPOCONCEPTO                ' +
        '    '
      'WHERE'
      
        '  ID_CONCEPTOS                   =:ID_CONCEPTOS                 ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 53
    Top = 79
    object IBStringField42: TIBStringField
      DisplayLabel = 'CONCEPTO'
      DisplayWidth = 3
      FieldName = 'ID_CONCEPTOS'
      Origin = 'CONCEPTOS.ID_CONCEPTOS'
      Required = True
      FixedChar = True
      Size = 3
    end
    object IBStringField41: TIBStringField
      DisplayWidth = 35
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object IBStringField43: TIBStringField
      FieldName = 'TIPOCONCEPTO'
      Visible = False
      Size = 1
    end
  end
  object SConceptos: TDataSource
    AutoEdit = False
    DataSet = QConceptos
    Left = 127
    Top = 79
  end
  object QAnaliticas: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM ANALITICAS'
      'WHERE'
      
        '  CUENTA                         =:old_CUENTA                   ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO ANALITICAS'
      
        '  (ID_PROYECTO                    ,ID_SECCION                   ' +
        '  ,ID_DEPARTAMENTO                ,ID_DELEGACION                ' +
        '  ,NOMBRE                         ,CUENTA                       ' +
        '  )'
      'VALUES'
      
        '  (:ID_PROYECTO                    ,:ID_SECCION                 ' +
        '    ,:ID_DEPARTAMENTO                ,:ID_DELEGACION            ' +
        '      ,:NOMBRE                         ,:CUENTA                 ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM ANALITICAS'
      'WHERE'
      
        '  CUENTA                         =?CUENTA                       ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM ANALITICAS')
    ModifySQL.Strings = (
      'UPDATE ANALITICAS'
      'SET'
      
        '  ID_PROYECTO                    =:ID_PROYECTO                  ' +
        '   '
      
        '  ,ID_SECCION                     =:ID_SECCION                  ' +
        '    '
      
        '  ,ID_DEPARTAMENTO                =:ID_DEPARTAMENTO             ' +
        '    '
      
        '  ,ID_DELEGACION                  =:ID_DELEGACION               ' +
        '    '
      
        '  ,NOMBRE                         =:NOMBRE                      ' +
        '    '
      'WHERE'
      
        '  CUENTA                         =:CUENTA                       ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 151
    Top = 154
    object QAnaliticasCUENTA: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUENTA'
      Origin = 'ANALITICAS.CUENTA'
      Required = True
      Size = 10
    end
    object QAnaliticasNOMBRE: TIBStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'ANALITICAS.NOMBRE'
      Size = 50
    end
    object QAnaliticasID_PROYECTO: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'ANALITICAS.ID_PROYECTO'
      Visible = False
      Size = 10
    end
    object QAnaliticasID_SECCION: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'ANALITICAS.ID_SECCION'
      Visible = False
      Size = 10
    end
    object QAnaliticasID_DEPARTAMENTO: TIBStringField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ANALITICAS.ID_DEPARTAMENTO'
      Visible = False
      Size = 10
    end
    object QAnaliticasID_DELEGACION: TIBStringField
      FieldName = 'ID_DELEGACION'
      Origin = 'ANALITICAS.ID_DELEGACION'
      Visible = False
      Size = 10
    end
  end
  object SAnaliticas: TDataSource
    AutoEdit = False
    DataSet = QAnaliticas
    Left = 223
    Top = 151
  end
  object QDelegacion: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM DELEGACION'
      'WHERE'
      
        '  ID_DELEGACION                  =:old_ID_DELEGACION            ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO DELEGACION'
      
        '  (NOMBRE                         ,ID_DELEGACION                ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:ID_DELEGACION              ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM DELEGACION'
      'WHERE'
      
        '  ID_DELEGACION                  =?ID_DELEGACION                ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM DELEGACION')
    ModifySQL.Strings = (
      'UPDATE DELEGACION'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  ID_DELEGACION                  =:ID_DELEGACION                ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 151
    Top = 202
    object IBStringField4: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'DELEGACION.NOMBRE'
      Size = 50
    end
    object IBStringField5: TIBStringField
      FieldName = 'ID_DELEGACION'
      Origin = 'DELEGACION.ID_DELEGACION'
      Required = True
      Size = 10
    end
  end
  object SDelegacion: TDataSource
    AutoEdit = False
    DataSet = QDelegacion
    Left = 223
    Top = 199
  end
  object QDepartamento: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM DEPARTAMENTO'
      'WHERE'
      
        '  ID_DEPARTAMENTO                =:old_ID_DEPARTAMENTO          ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO DEPARTAMENTO'
      
        '  (NOMBRE                         ,ID_DEPARTAMENTO              ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:ID_DEPARTAMENTO            ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM DEPARTAMENTO'
      'WHERE'
      
        '  ID_DEPARTAMENTO                =?ID_DEPARTAMENTO              ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM DEPARTAMENTO')
    ModifySQL.Strings = (
      'UPDATE DEPARTAMENTO'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  ID_DEPARTAMENTO                =:ID_DEPARTAMENTO              ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 151
    Top = 250
    object IBStringField6: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'DEPARTAMENTO.NOMBRE'
      Size = 50
    end
    object IBStringField7: TIBStringField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'DEPARTAMENTO.ID_DEPARTAMENTO'
      Required = True
      Size = 10
    end
  end
  object SDepartamento: TDataSource
    AutoEdit = False
    DataSet = QDepartamento
    Left = 223
    Top = 249
  end
  object QProyecto: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
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
    Left = 151
    Top = 298
    object IBStringField8: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'PROYECTO.NOMBRE'
      Size = 50
    end
    object IBStringField9: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'PROYECTO.ID_PROYECTO'
      Required = True
      Size = 10
    end
  end
  object SProyecto: TDataSource
    AutoEdit = False
    DataSet = QProyecto
    Left = 223
    Top = 295
  end
  object QSeccion: TIBDataSet
    Database = DMRef.BDContab
    Transaction = DMRef.IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM SECCION'
      'WHERE'
      
        '  ID_SECCION                     =:old_ID_SECCION               ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO SECCION'
      
        '  (NOMBRE                         ,ID_SECCION                   ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:ID_SECCION                 ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM SECCION'
      'WHERE'
      
        '  ID_SECCION                     =?ID_SECCION                   ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM SECCION')
    ModifySQL.Strings = (
      'UPDATE SECCION'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  ID_SECCION                     =:ID_SECCION                   ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 151
    Top = 348
    object IBStringField10: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'SECCION.NOMBRE'
      Size = 50
    end
    object IBStringField11: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'SECCION.ID_SECCION'
      Required = True
      Size = 10
    end
  end
  object SSeccion: TDataSource
    AutoEdit = False
    DataSet = QSeccion
    Left = 223
    Top = 343
  end
end
