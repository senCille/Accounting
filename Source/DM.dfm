object DMRef: TDMRef
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 489
  Width = 871
  object BDContab: TIBDatabase
    DatabaseName = '192.168.0.200:C:\IB_DATA\EMP_03.gdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBT1
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 42
    Top = 8
  end
  object IBT1: TIBTransaction
    DefaultDatabase = BDContab
    Left = 112
    Top = 8
  end
  object QAuxiliar: TIBSQL
    Database = BDContab
    Transaction = IBT1
    Left = 200
    Top = 64
  end
  object QProvinciasNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PROVINCIAS'
      'WHERE'
      
        '  PROVINCIA                      =:old_PROVINCIA                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO PROVINCIAS'
      
        '  (PROVINCIA                      ,NOMBRE                       ' +
        '  ,CODIGO                         )'
      'VALUES'
      
        '  (:PROVINCIA                      ,:NOMBRE                     ' +
        '    ,:CODIGO                         )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM PROVINCIAS'
      'WHERE'
      
        '  PROVINCIA                      =?PROVINCIA                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM PROVINCIAS')
    ModifySQL.Strings = (
      'UPDATE PROVINCIAS'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      
        '  ,CODIGO                         =:CODIGO                      ' +
        '    '
      'WHERE'
      
        '  PROVINCIA                      =:PROVINCIA                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 502
    Top = 16
    object QProvinciasNomPROVINCIA: TIBStringField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIAS.PROVINCIA'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QProvinciasNomNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'PROVINCIAS.NOMBRE'
      Size = 25
    end
    object QProvinciasNomCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'PROVINCIAS.CODIGO'
      FixedChar = True
      Size = 2
    end
  end
  object QPaisNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PAISES'
      'WHERE'
      
        '  PAIS                           =:old_PAIS                     ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO PAISES'
      
        '  (NOMBRE                         ,PAIS                         ' +
        '  )'
      'VALUES'
      
        '  (:NOMBRE                         ,:PAIS                       ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM PAISES'
      'WHERE'
      
        '  PAIS                           =?PAIS                         ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM PAISES')
    ModifySQL.Strings = (
      'UPDATE PAISES'
      'SET'
      
        '  NOMBRE                         =:NOMBRE                       ' +
        '   '
      'WHERE'
      
        '  PAIS                           =:PAIS                         ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 306
    Top = 8
    object QPaisNomPAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = 'PAISES.PAIS'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QPaisNomNOMBRE: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'PAISES.NOMBRE'
      Size = 30
    end
  end
  object QParametros: TIBDataSet
    Database = BDContab
    Transaction = IBT1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM PARAMETROS'
      'WHERE'
      
        '  ID_PARAMETROS                  =:old_ID_PARAMETROS            ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO PARAMETROS'
      
        '  (FECHABLOQUEO                   ,FECHAAMORTIZACION            ' +
        '  ,TANTORETARRE                   ,TANTORETPROF                 ' +
        '  ,FECHA_FIN_EJERCICIO            ,FECHA_INICIO_EJERCICIO       ' +
        '  ,FECHA_INICIO_APLICACION        ,SCTAEXPORTACIONES            ' +
        '  ,SCTAINTERESES                  ,SCTAIVAEXENTOCEE             ' +
        '  ,SCTAGENINTRACOM                ,SCTAIVACINTRAREPERCUTIDO     ' +
        '  ,SCTAIVACINTRADEDUCIBLE         ,SCTAIVAINTRADEDUCIBLE        ' +
        '  ,SCTADEUDASDESCUENTOS           ,SCTAEFECTDESCONTADOS         ' +
        '  ,NUMEROCALLE                    ,CONTACTO                     ' +
        '  ,CODPOSTAL                      ,VGENERICAC                   ' +
        '  ,SCTAIVACEXENTO                 ,SCTAHACIVA                   ' +
        '  ,SCTARETARRE                    ,SCTARETPROF                  ' +
        '  ,SCTADTOPPC                     ,SCTADTOPPV                   ' +
        '  ,SCTANOMCARGO                   ,SCTANOMSST                   ' +
        '  ,SCTANOMSSE                     ,SCTANOMPAGO                  ' +
        '  ,SCTANOMIRPF                    ,SCTANOMSUELDO                ' +
        '  ,SUBCAJA                        ,VGENERICA                    ' +
        '  ,SUBCUENTA_CIERRE               ,SCTARECSUPER                 ' +
        '  ,SCTARECREDUCIDO                ,SCTARECNORMAL                ' +
        '  ,SCTAIVACSUPER                  ,SCTAIVACREDUCIDO             ' +
        '  ,SCTAIVACNORMAL                 ,SCTAIVASUPER                 ' +
        '  ,SCTAIVAREDUCIDO                ,SCTACOMPRAS                  ' +
        '  ,SCTADESCUENTO                  ,SCTADEVOLUCION               ' +
        '  ,SCTAVENTAS                     ,SCTAIVAINTRA                 ' +
        '  ,SCTAIVAEXENTO                  ,SCTAIVANORMAL                ' +
        '  ,ASIENTO_FIN_INTERVALO_FILTRO   ,ASIENTO_INICIO_INTERVALO_FILT' +
        'RO,ASIENTOS_FIN_INTERVALO_BQDA    ,ASIENTOS_INICIO_INTERVALO_BQD' +
        'A ,PUERTA                         ,PISO                         ' +
        '  ,ESCALERA                       ,SIGLAVIA                     ' +
        '  ,DOC347                         ,DOCPROVEEDOR                 ' +
        '  ,DOCCLIENTE                     ,PROVINCIA                    ' +
        '  ,POBLACION                      ,DIRECCION1                   ' +
        '  ,DIRECCION                      ,NOMBREFISCAL                 ' +
        '  ,FAX                            ,TELEFONO                     ' +
        '  ,ID_PARAMETROS                  ,LONGITUD_SUBCUENTAS          ' +
        '  ,BUSQUEDA_SUBCTAS               ,ASIENTO_NOMINA_INDIVIDUAL    ' +
        '  ,CTOPROVINTRA                   ,MOSTRAR_FILTRO_MAYOR         ' +
        '  ,INCLUIR_ABREV                  ,FILTRO_ASIENTOS_INICIO       ' +
        '  ,GESTIONA_CARTERA_EFECTOS       ,CODADMON                     ' +
        '  ,CCC                            ,NIF                          ' +
        '  ,CTO_APERTURA_ESP               ,RECARGO                      ' +
        '  ,CTOPAGOF                       ,CTOIVACEXENTO                ' +
        '  ,CTOHACIVA                      ,CTORETARRE                   ' +
        '  ,CTORETPROF                     ,CTODTOPPC                    ' +
        '  ,CTODTOPPV                      ,CTONOMT                      ' +
        '  ,CTONOME                        ,CTOCOBROF                    ' +
        '  ,MONEDA                         ,CTO_REGULARIZACION           ' +
        '  ,DOCIMPRIMIR                    ,CTORECIBOVENTAS              ' +
        '  ,CTORECSUPER                    ,CTORECREDUCIDO               ' +
        '  ,CTORECNORMAL                   ,CTOIVACSUPER                 ' +
        '  ,CTOIVACREDUCIDO                ,CTOIVACNORMAL                ' +
        '  ,CTOPROVEEDORES                 ,CTOIVASUPER                  ' +
        '  ,CTO_APERTURA                   ,CTO_REGULARIZACION_ESP       ' +
        '  ,CTOIVAREDUCIDO                 ,CTOCOMPRAS                   ' +
        '  ,CTODESCUENTO                   ,CTOCLIENTES                  ' +
        '  ,CTODEVOLUCION                  ,CTOVENTAS                    ' +
        '  ,CTOIVAINTRA                    ,CTOIVAEXENTO                 ' +
        '  ,CTOIVANORMAL                   ,SCTAOTRASREMUN               ' +
        '  ,SCTABANCO                      ,CTOCOBRO                     ' +
        '  ,CTOPAGO                        ,SCTAEFECTOSCOMERCIALES       ' +
        '  ,CTOEFECTOSCOMERCIALES          ,CTODEUDASDESCUENTOS          ' +
        '  ,SCTAREMESAEFECTOS              ,CTOREMESAEFECTOS             ' +
        '  ,DESCPROV_CARTERAEFECTOS        ,DESCCLI_CARTERAEFECTOS       ' +
        '  ,TIPOEMPRESA                    ,FILTROSUBCTAS                ' +
        '  )'
      'VALUES'
      
        '  (:FECHABLOQUEO                   ,:FECHAAMORTIZACION          ' +
        '    ,:TANTORETARRE                   ,:TANTORETPROF             ' +
        '      ,:FECHA_FIN_EJERCICIO            ,:FECHA_INICIO_EJERCICIO ' +
        '        ,:FECHA_INICIO_APLICACION        ,:SCTAEXPORTACIONES    ' +
        '          ,:SCTAINTERESES                  ,:SCTAIVAEXENTOCEE   ' +
        '            ,:SCTAGENINTRACOM                ,:SCTAIVACINTRAREPE' +
        'RCUTIDO       ,:SCTAIVACINTRADEDUCIBLE         ,:SCTAIVAINTRADED' +
        'UCIBLE          ,:SCTADEUDASDESCUENTOS           ,:SCTAEFECTDESC' +
        'ONTADOS           ,:NUMEROCALLE                    ,:CONTACTO   ' +
        '                    ,:CODPOSTAL                      ,:VGENERICA' +
        'C                     ,:SCTAIVACEXENTO                 ,:SCTAHAC' +
        'IVA                     ,:SCTARETARRE                    ,:SCTAR' +
        'ETPROF                    ,:SCTADTOPPC                     ,:SCT' +
        'ADTOPPV                     ,:SCTANOMCARGO                   ,:S' +
        'CTANOMSST                     ,:SCTANOMSSE                     ,' +
        ':SCTANOMPAGO                    ,:SCTANOMIRPF                   ' +
        ' ,:SCTANOMSUELDO                  ,:SUBCAJA                     ' +
        '   ,:VGENERICA                      ,:SUBCUENTA_CIERRE          ' +
        '     ,:SCTARECSUPER                   ,:SCTARECREDUCIDO         ' +
        '       ,:SCTARECNORMAL                  ,:SCTAIVACSUPER         ' +
        '         ,:SCTAIVACREDUCIDO               ,:SCTAIVACNORMAL      ' +
        '           ,:SCTAIVASUPER                   ,:SCTAIVAREDUCIDO   ' +
        '             ,:SCTACOMPRAS                    ,:SCTADESCUENTO   ' +
        '               ,:SCTADEVOLUCION                 ,:SCTAVENTAS    ' +
        '                 ,:SCTAIVAINTRA                   ,:SCTAIVAEXENT' +
        'O                  ,:SCTAIVANORMAL                  ,:ASIENTO_FI' +
        'N_INTERVALO_FILTRO   ,:ASIENTO_INICIO_INTERVALO_FILTRO,:ASIENTOS' +
        '_FIN_INTERVALO_BQDA    ,:ASIENTOS_INICIO_INTERVALO_BQDA ,:PUERTA' +
        '                         ,:PISO                           ,:ESCA' +
        'LERA                       ,:SIGLAVIA                       ,:DO' +
        'C347                         ,:DOCPROVEEDOR                   ,:' +
        'DOCCLIENTE                     ,:PROVINCIA                      ' +
        ',:POBLACION                      ,:DIRECCION1                   ' +
        '  ,:DIRECCION                      ,:NOMBREFISCAL               ' +
        '    ,:FAX                            ,:TELEFONO                 ' +
        '      ,:ID_PARAMETROS                  ,:LONGITUD_SUBCUENTAS    ' +
        '        ,:BUSQUEDA_SUBCTAS               ,:ASIENTO_NOMINA_INDIVI' +
        'DUAL      ,:CTOPROVINTRA                   ,:MOSTRAR_FILTRO_MAYO' +
        'R           ,:INCLUIR_ABREV                  ,:FILTRO_ASIENTOS_I' +
        'NICIO         ,:GESTIONA_CARTERA_EFECTOS       ,:CODADMON       ' +
        '                ,:CCC                            ,:NIF          ' +
        '                  ,:CTO_APERTURA_ESP               ,:RECARGO    ' +
        '                    ,:CTOPAGOF                       ,:CTOIVACEX' +
        'ENTO                  ,:CTOHACIVA                      ,:CTORETA' +
        'RRE                     ,:CTORETPROF                     ,:CTODT' +
        'OPPC                      ,:CTODTOPPV                      ,:CTO' +
        'NOMT                        ,:CTONOME                        ,:C' +
        'TOCOBROF                      ,:MONEDA                         ,' +
        ':CTO_REGULARIZACION             ,:DOCIMPRIMIR                   ' +
        ' ,:CTORECIBOVENTAS                ,:CTORECSUPER                 ' +
        '   ,:CTORECREDUCIDO                 ,:CTORECNORMAL              ' +
        '     ,:CTOIVACSUPER                   ,:CTOIVACREDUCIDO         ' +
        '       ,:CTOIVACNORMAL                  ,:CTOPROVEEDORES        ' +
        '         ,:CTOIVASUPER                    ,:CTO_APERTURA        ' +
        '           ,:CTO_REGULARIZACION_ESP         ,:CTOIVAREDUCIDO    ' +
        '             ,:CTOCOMPRAS                     ,:CTODESCUENTO    ' +
        '               ,:CTOCLIENTES                    ,:CTODEVOLUCION ' +
        '                 ,:CTOVENTAS                      ,:CTOIVAINTRA ' +
        '                   ,:CTOIVAEXENTO                   ,:CTOIVANORM' +
        'AL                   ,:SCTAOTRASREMUN                 ,:SCTABANC' +
        'O                      ,:CTOCOBRO                       ,:CTOPAG' +
        'O                        ,:SCTAEFECTOSCOMERCIALES         ,:CTOE' +
        'FECTOSCOMERCIALES          ,:CTODEUDASDESCUENTOS            ,:SC' +
        'TAREMESAEFECTOS              ,:CTOREMESAEFECTOS               ,:' +
        'DESCPROV_CARTERAEFECTOS        ,:DESCCLI_CARTERAEFECTOS         ' +
        ',:TIPOEMPRESA                    ,:FILTROSUBCTAS                ' +
        '  )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM PARAMETROS'
      'WHERE'
      
        '  ID_PARAMETROS                  =?ID_PARAMETROS                ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM PARAMETROS')
    ModifySQL.Strings = (
      'UPDATE PARAMETROS'
      'SET'
      
        '  FECHABLOQUEO                   =:FECHABLOQUEO                 ' +
        '   '
      
        '  ,FECHAAMORTIZACION              =:FECHAAMORTIZACION           ' +
        '    '
      
        '  ,TANTORETARRE                   =:TANTORETARRE                ' +
        '    '
      
        '  ,TANTORETPROF                   =:TANTORETPROF                ' +
        '    '
      
        '  ,FECHA_FIN_EJERCICIO            =:FECHA_FIN_EJERCICIO         ' +
        '    '
      
        '  ,FECHA_INICIO_EJERCICIO         =:FECHA_INICIO_EJERCICIO      ' +
        '    '
      
        '  ,FECHA_INICIO_APLICACION        =:FECHA_INICIO_APLICACION     ' +
        '    '
      
        '  ,SCTAEXPORTACIONES              =:SCTAEXPORTACIONES           ' +
        '    '
      
        '  ,SCTAINTERESES                  =:SCTAINTERESES               ' +
        '    '
      
        '  ,SCTAIVAEXENTOCEE               =:SCTAIVAEXENTOCEE            ' +
        '    '
      
        '  ,SCTAGENINTRACOM                =:SCTAGENINTRACOM             ' +
        '    '
      
        '  ,SCTAIVACINTRAREPERCUTIDO       =:SCTAIVACINTRAREPERCUTIDO    ' +
        '    '
      
        '  ,SCTAIVACINTRADEDUCIBLE         =:SCTAIVACINTRADEDUCIBLE      ' +
        '    '
      
        '  ,SCTAIVAINTRADEDUCIBLE          =:SCTAIVAINTRADEDUCIBLE       ' +
        '    '
      
        '  ,SCTADEUDASDESCUENTOS           =:SCTADEUDASDESCUENTOS        ' +
        '    '
      
        '  ,SCTAEFECTDESCONTADOS           =:SCTAEFECTDESCONTADOS        ' +
        '    '
      
        '  ,NUMEROCALLE                    =:NUMEROCALLE                 ' +
        '    '
      
        '  ,CONTACTO                       =:CONTACTO                    ' +
        '    '
      
        '  ,CODPOSTAL                      =:CODPOSTAL                   ' +
        '    '
      
        '  ,VGENERICAC                     =:VGENERICAC                  ' +
        '    '
      
        '  ,SCTAIVACEXENTO                 =:SCTAIVACEXENTO              ' +
        '    '
      
        '  ,SCTAHACIVA                     =:SCTAHACIVA                  ' +
        '    '
      
        '  ,SCTARETARRE                    =:SCTARETARRE                 ' +
        '    '
      
        '  ,SCTARETPROF                    =:SCTARETPROF                 ' +
        '    '
      
        '  ,SCTADTOPPC                     =:SCTADTOPPC                  ' +
        '    '
      
        '  ,SCTADTOPPV                     =:SCTADTOPPV                  ' +
        '    '
      
        '  ,SCTANOMCARGO                   =:SCTANOMCARGO                ' +
        '    '
      
        '  ,SCTANOMSST                     =:SCTANOMSST                  ' +
        '    '
      
        '  ,SCTANOMSSE                     =:SCTANOMSSE                  ' +
        '    '
      
        '  ,SCTANOMPAGO                    =:SCTANOMPAGO                 ' +
        '    '
      
        '  ,SCTANOMIRPF                    =:SCTANOMIRPF                 ' +
        '    '
      
        '  ,SCTANOMSUELDO                  =:SCTANOMSUELDO               ' +
        '    '
      
        '  ,SUBCAJA                        =:SUBCAJA                     ' +
        '    '
      
        '  ,VGENERICA                      =:VGENERICA                   ' +
        '    '
      
        '  ,SUBCUENTA_CIERRE               =:SUBCUENTA_CIERRE            ' +
        '    '
      
        '  ,SCTARECSUPER                   =:SCTARECSUPER                ' +
        '    '
      
        '  ,SCTARECREDUCIDO                =:SCTARECREDUCIDO             ' +
        '    '
      
        '  ,SCTARECNORMAL                  =:SCTARECNORMAL               ' +
        '    '
      
        '  ,SCTAIVACSUPER                  =:SCTAIVACSUPER               ' +
        '    '
      
        '  ,SCTAIVACREDUCIDO               =:SCTAIVACREDUCIDO            ' +
        '    '
      
        '  ,SCTAIVACNORMAL                 =:SCTAIVACNORMAL              ' +
        '    '
      
        '  ,SCTAIVASUPER                   =:SCTAIVASUPER                ' +
        '    '
      
        '  ,SCTAIVAREDUCIDO                =:SCTAIVAREDUCIDO             ' +
        '    '
      
        '  ,SCTACOMPRAS                    =:SCTACOMPRAS                 ' +
        '    '
      
        '  ,SCTADESCUENTO                  =:SCTADESCUENTO               ' +
        '    '
      
        '  ,SCTADEVOLUCION                 =:SCTADEVOLUCION              ' +
        '    '
      
        '  ,SCTAVENTAS                     =:SCTAVENTAS                  ' +
        '    '
      
        '  ,SCTAIVAINTRA                   =:SCTAIVAINTRA                ' +
        '    '
      
        '  ,SCTAIVAEXENTO                  =:SCTAIVAEXENTO               ' +
        '    '
      
        '  ,SCTAIVANORMAL                  =:SCTAIVANORMAL               ' +
        '    '
      
        '  ,ASIENTO_FIN_INTERVALO_FILTRO   =:ASIENTO_FIN_INTERVALO_FILTRO' +
        '    '
      
        '  ,ASIENTO_INICIO_INTERVALO_FILTRO=:ASIENTO_INICIO_INTERVALO_FIL' +
        'TRO '
      
        '  ,ASIENTOS_FIN_INTERVALO_BQDA    =:ASIENTOS_FIN_INTERVALO_BQDA ' +
        '    '
      
        '  ,ASIENTOS_INICIO_INTERVALO_BQDA =:ASIENTOS_INICIO_INTERVALO_BQ' +
        'DA  '
      
        '  ,PUERTA                         =:PUERTA                      ' +
        '    '
      
        '  ,PISO                           =:PISO                        ' +
        '    '
      
        '  ,ESCALERA                       =:ESCALERA                    ' +
        '    '
      
        '  ,SIGLAVIA                       =:SIGLAVIA                    ' +
        '    '
      
        '  ,DOC347                         =:DOC347                      ' +
        '    '
      
        '  ,DOCPROVEEDOR                   =:DOCPROVEEDOR                ' +
        '    '
      
        '  ,DOCCLIENTE                     =:DOCCLIENTE                  ' +
        '    '
      
        '  ,PROVINCIA                      =:PROVINCIA                   ' +
        '    '
      
        '  ,POBLACION                      =:POBLACION                   ' +
        '    '
      
        '  ,DIRECCION1                     =:DIRECCION1                  ' +
        '    '
      
        '  ,DIRECCION                      =:DIRECCION                   ' +
        '    '
      
        '  ,NOMBREFISCAL                   =:NOMBREFISCAL                ' +
        '    '
      
        '  ,FAX                            =:FAX                         ' +
        '    '
      
        '  ,TELEFONO                       =:TELEFONO                    ' +
        '    '
      
        '  ,LONGITUD_SUBCUENTAS            =:LONGITUD_SUBCUENTAS         ' +
        '    '
      
        '  ,BUSQUEDA_SUBCTAS               =:BUSQUEDA_SUBCTAS            ' +
        '    '
      
        '  ,ASIENTO_NOMINA_INDIVIDUAL      =:ASIENTO_NOMINA_INDIVIDUAL   ' +
        '    '
      
        '  ,CTOPROVINTRA                   =:CTOPROVINTRA                ' +
        '    '
      
        '  ,MOSTRAR_FILTRO_MAYOR           =:MOSTRAR_FILTRO_MAYOR        ' +
        '    '
      
        '  ,INCLUIR_ABREV                  =:INCLUIR_ABREV               ' +
        '    '
      
        '  ,FILTRO_ASIENTOS_INICIO         =:FILTRO_ASIENTOS_INICIO      ' +
        '    '
      
        '  ,GESTIONA_CARTERA_EFECTOS       =:GESTIONA_CARTERA_EFECTOS    ' +
        '    '
      
        '  ,CODADMON                       =:CODADMON                    ' +
        '    '
      
        '  ,CCC                            =:CCC                         ' +
        '    '
      
        '  ,NIF                            =:NIF                         ' +
        '    '
      
        '  ,CTO_APERTURA_ESP               =:CTO_APERTURA_ESP            ' +
        '    '
      
        '  ,RECARGO                        =:RECARGO                     ' +
        '    '
      
        '  ,CTOPAGOF                       =:CTOPAGOF                    ' +
        '    '
      
        '  ,CTOIVACEXENTO                  =:CTOIVACEXENTO               ' +
        '    '
      
        '  ,CTOHACIVA                      =:CTOHACIVA                   ' +
        '    '
      
        '  ,CTORETARRE                     =:CTORETARRE                  ' +
        '    '
      
        '  ,CTORETPROF                     =:CTORETPROF                  ' +
        '    '
      
        '  ,CTODTOPPC                      =:CTODTOPPC                   ' +
        '    '
      
        '  ,CTODTOPPV                      =:CTODTOPPV                   ' +
        '    '
      
        '  ,CTONOMT                        =:CTONOMT                     ' +
        '    '
      
        '  ,CTONOME                        =:CTONOME                     ' +
        '    '
      
        '  ,CTOCOBROF                      =:CTOCOBROF                   ' +
        '    '
      
        '  ,MONEDA                         =:MONEDA                      ' +
        '    '
      
        '  ,CTO_REGULARIZACION             =:CTO_REGULARIZACION          ' +
        '    '
      
        '  ,DOCIMPRIMIR                    =:DOCIMPRIMIR                 ' +
        '    '
      
        '  ,CTORECIBOVENTAS                =:CTORECIBOVENTAS             ' +
        '    '
      
        '  ,CTORECSUPER                    =:CTORECSUPER                 ' +
        '    '
      
        '  ,CTORECREDUCIDO                 =:CTORECREDUCIDO              ' +
        '    '
      
        '  ,CTORECNORMAL                   =:CTORECNORMAL                ' +
        '    '
      
        '  ,CTOIVACSUPER                   =:CTOIVACSUPER                ' +
        '    '
      
        '  ,CTOIVACREDUCIDO                =:CTOIVACREDUCIDO             ' +
        '    '
      
        '  ,CTOIVACNORMAL                  =:CTOIVACNORMAL               ' +
        '    '
      
        '  ,CTOPROVEEDORES                 =:CTOPROVEEDORES              ' +
        '    '
      
        '  ,CTOIVASUPER                    =:CTOIVASUPER                 ' +
        '    '
      
        '  ,CTO_APERTURA                   =:CTO_APERTURA                ' +
        '    '
      
        '  ,CTO_REGULARIZACION_ESP         =:CTO_REGULARIZACION_ESP      ' +
        '    '
      
        '  ,CTOIVAREDUCIDO                 =:CTOIVAREDUCIDO              ' +
        '    '
      
        '  ,CTOCOMPRAS                     =:CTOCOMPRAS                  ' +
        '    '
      
        '  ,CTODESCUENTO                   =:CTODESCUENTO                ' +
        '    '
      
        '  ,CTOCLIENTES                    =:CTOCLIENTES                 ' +
        '    '
      
        '  ,CTODEVOLUCION                  =:CTODEVOLUCION               ' +
        '    '
      
        '  ,CTOVENTAS                      =:CTOVENTAS                   ' +
        '    '
      
        '  ,CTOIVAINTRA                    =:CTOIVAINTRA                 ' +
        '    '
      
        '  ,CTOIVAEXENTO                   =:CTOIVAEXENTO                ' +
        '    '
      
        '  ,CTOIVANORMAL                   =:CTOIVANORMAL                ' +
        '    '
      
        '  ,SCTAOTRASREMUN                 =:SCTAOTRASREMUN              ' +
        '    '
      
        '  ,SCTABANCO                      =:SCTABANCO                   ' +
        '    '
      
        '  ,CTOCOBRO                       =:CTOCOBRO                    ' +
        '    '
      
        '  ,CTOPAGO                        =:CTOPAGO                     ' +
        '    '
      
        '  ,SCTAEFECTOSCOMERCIALES         =:SCTAEFECTOSCOMERCIALES      ' +
        '    '
      
        '  ,CTOEFECTOSCOMERCIALES          =:CTOEFECTOSCOMERCIALES       ' +
        '    '
      
        '  ,CTODEUDASDESCUENTOS            =:CTODEUDASDESCUENTOS         ' +
        '    '
      
        '  ,SCTAREMESAEFECTOS              =:SCTAREMESAEFECTOS           ' +
        '    '
      
        '  ,CTOREMESAEFECTOS               =:CTOREMESAEFECTOS            ' +
        '    '
      
        '  ,DESCPROV_CARTERAEFECTOS        =:DESCPROV_CARTERAEFECTOS     ' +
        '    '
      
        '  ,DESCCLI_CARTERAEFECTOS         =:DESCCLI_CARTERAEFECTOS      ' +
        '    '
      
        '  ,TIPOEMPRESA                    =:TIPOEMPRESA                 ' +
        '    '
      
        '  ,FILTROSUBCTAS                  =:FILTROSUBCTAS               ' +
        '    '
      'WHERE'
      
        '  ID_PARAMETROS                  =:ID_PARAMETROS                ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 724
    Top = 8
    object QParametrosID_PARAMETROS: TSmallintField
      FieldName = 'ID_PARAMETROS'
      Origin = 'PARAMETROS.ID_PARAMETROS'
      Required = True
    end
    object QParametrosLONGITUD_SUBCUENTAS: TSmallintField
      FieldName = 'LONGITUD_SUBCUENTAS'
      Origin = 'PARAMETROS.LONGITUD_SUBCUENTAS'
    end
    object QParametrosFECHA_INICIO_APLICACION: TDateTimeField
      FieldName = 'FECHA_INICIO_APLICACION'
      Origin = 'PARAMETROS.FECHA_INICIO_APLICACION'
    end
    object QParametrosFECHA_INICIO_EJERCICIO: TDateTimeField
      FieldName = 'FECHA_INICIO_EJERCICIO'
      Origin = 'PARAMETROS.FECHA_INICIO_EJERCICIO'
    end
    object QParametrosFECHA_FIN_EJERCICIO: TDateTimeField
      FieldName = 'FECHA_FIN_EJERCICIO'
      Origin = 'PARAMETROS.FECHA_FIN_EJERCICIO'
    end
    object QParametrosCTO_REGULARIZACION: TIBStringField
      FieldName = 'CTO_REGULARIZACION'
      Origin = 'PARAMETROS.CTO_REGULARIZACION'
      FixedChar = True
      Size = 3
    end
    object QParametrosSUBCUENTA_CIERRE: TIBStringField
      FieldName = 'SUBCUENTA_CIERRE'
      Origin = 'PARAMETROS.SUBCUENTA_CIERRE'
      Size = 10
    end
    object QParametrosMONEDA: TIBStringField
      FieldName = 'MONEDA'
      Origin = 'PARAMETROS.MONEDA'
      Size = 1
    end
    object QParametrosNOMBREFISCAL: TIBStringField
      FieldName = 'NOMBREFISCAL'
      Origin = 'PARAMETROS.NOMBREFISCAL'
      Size = 80
    end
    object QParametrosDIRECCION: TIBStringField
      FieldName = 'DIRECCION'
      Origin = 'PARAMETROS.DIRECCION'
      Size = 40
    end
    object QParametrosDIRECCION1: TIBStringField
      FieldName = 'DIRECCION1'
      Origin = 'PARAMETROS.DIRECCION1'
      Size = 40
    end
    object QParametrosPOBLACION: TIBStringField
      FieldName = 'POBLACION'
      Origin = 'PARAMETROS.POBLACION'
      Size = 40
    end
    object QParametrosCODPOSTAL: TIBStringField
      FieldName = 'CODPOSTAL'
      Origin = 'PARAMETROS.CODPOSTAL'
      Size = 10
    end
    object QParametrosPROVINCIA: TIBStringField
      FieldName = 'PROVINCIA'
      Origin = 'PARAMETROS.PROVINCIA'
      FixedChar = True
      Size = 2
    end
    object QParametrosNIF: TIBStringField
      FieldName = 'NIF'
      Origin = 'PARAMETROS.NIF'
      Size = 15
    end
    object QParametrosCONTACTO: TIBStringField
      FieldName = 'CONTACTO'
      Origin = 'PARAMETROS.CONTACTO'
      Size = 50
    end
    object QParametrosDOCCLIENTE: TIBStringField
      FieldName = 'DOCCLIENTE'
      Origin = 'PARAMETROS.DOCCLIENTE'
      Size = 100
    end
    object QParametrosDOCPROVEEDOR: TIBStringField
      FieldName = 'DOCPROVEEDOR'
      Origin = 'PARAMETROS.DOCPROVEEDOR'
      Size = 100
    end
    object QParametrosDOC347: TIBStringField
      FieldName = 'DOC347'
      Origin = 'PARAMETROS.DOC347'
      Size = 100
    end
    object QParametrosFECHABLOQUEO: TDateTimeField
      FieldName = 'FECHABLOQUEO'
      Origin = 'PARAMETROS.FECHABLOQUEO'
    end
    object QParametrosCTO_APERTURA: TIBStringField
      FieldName = 'CTO_APERTURA'
      Origin = 'PARAMETROS.CTO_APERTURA'
      FixedChar = True
      Size = 3
    end
    object QParametrosCTO_REGULARIZACION_ESP: TIBStringField
      FieldName = 'CTO_REGULARIZACION_ESP'
      Origin = 'PARAMETROS.CTO_REGULARIZACION_ESP'
      FixedChar = True
      Size = 3
    end
    object QParametrosFECHAAMORTIZACION: TDateTimeField
      FieldName = 'FECHAAMORTIZACION'
      Origin = 'PARAMETROS.FECHAAMORTIZACION'
    end
    object QParametrosRECARGO: TIBStringField
      FieldName = 'RECARGO'
      Origin = 'PARAMETROS.RECARGO'
      FixedChar = True
      Size = 1
    end
    object QParametrosCTO_APERTURA_ESP: TIBStringField
      FieldName = 'CTO_APERTURA_ESP'
      Origin = 'PARAMETROS.CTO_APERTURA_ESP'
      FixedChar = True
      Size = 3
    end
    object QParametrosSCTAIVANORMAL: TIBStringField
      FieldName = 'SCTAIVANORMAL'
      Origin = 'PARAMETROS.SCTAIVANORMAL'
      Size = 10
    end
    object QParametrosSCTAIVAEXENTO: TIBStringField
      FieldName = 'SCTAIVAEXENTO'
      Origin = 'PARAMETROS.SCTAIVAEXENTO'
      Size = 10
    end
    object QParametrosSCTAIVAINTRA: TIBStringField
      FieldName = 'SCTAIVAINTRA'
      Origin = 'PARAMETROS.SCTAIVAINTRA'
      Size = 10
    end
    object QParametrosSCTAVENTAS: TIBStringField
      FieldName = 'SCTAVENTAS'
      Origin = 'PARAMETROS.SCTAVENTAS'
      Size = 10
    end
    object QParametrosSCTADEVOLUCION: TIBStringField
      FieldName = 'SCTADEVOLUCION'
      Origin = 'PARAMETROS.SCTADEVOLUCION'
      Size = 10
    end
    object QParametrosCTOIVANORMAL: TIBStringField
      FieldName = 'CTOIVANORMAL'
      Origin = 'PARAMETROS.CTOIVANORMAL'
      Size = 3
    end
    object QParametrosCTOIVAEXENTO: TIBStringField
      FieldName = 'CTOIVAEXENTO'
      Origin = 'PARAMETROS.CTOIVAEXENTO'
      Size = 3
    end
    object QParametrosCTOIVAINTRA: TIBStringField
      FieldName = 'CTOIVAINTRA'
      Origin = 'PARAMETROS.CTOIVAINTRA'
      Size = 3
    end
    object QParametrosCTOVENTAS: TIBStringField
      FieldName = 'CTOVENTAS'
      Origin = 'PARAMETROS.CTOVENTAS'
      Size = 3
    end
    object QParametrosCTODEVOLUCION: TIBStringField
      FieldName = 'CTODEVOLUCION'
      Origin = 'PARAMETROS.CTODEVOLUCION'
      Size = 3
    end
    object QParametrosCTOCLIENTES: TIBStringField
      FieldName = 'CTOCLIENTES'
      Origin = 'PARAMETROS.CTOCLIENTES'
      Size = 3
    end
    object QParametrosSCTADESCUENTO: TIBStringField
      FieldName = 'SCTADESCUENTO'
      Origin = 'PARAMETROS.SCTADESCUENTO'
      Size = 10
    end
    object QParametrosSCTACOMPRAS: TIBStringField
      FieldName = 'SCTACOMPRAS'
      Origin = 'PARAMETROS.SCTACOMPRAS'
      Size = 10
    end
    object QParametrosCTODESCUENTO: TIBStringField
      FieldName = 'CTODESCUENTO'
      Origin = 'PARAMETROS.CTODESCUENTO'
      Size = 3
    end
    object QParametrosCTOCOMPRAS: TIBStringField
      FieldName = 'CTOCOMPRAS'
      Origin = 'PARAMETROS.CTOCOMPRAS'
      Size = 3
    end
    object QParametrosSCTAIVAREDUCIDO: TIBStringField
      FieldName = 'SCTAIVAREDUCIDO'
      Origin = 'PARAMETROS.SCTAIVAREDUCIDO'
      Size = 10
    end
    object QParametrosCTOIVAREDUCIDO: TIBStringField
      FieldName = 'CTOIVAREDUCIDO'
      Origin = 'PARAMETROS.CTOIVAREDUCIDO'
      Size = 3
    end
    object QParametrosSCTAIVASUPER: TIBStringField
      FieldName = 'SCTAIVASUPER'
      Origin = 'PARAMETROS.SCTAIVASUPER'
      Size = 10
    end
    object QParametrosCTOIVASUPER: TIBStringField
      FieldName = 'CTOIVASUPER'
      Origin = 'PARAMETROS.CTOIVASUPER'
      Size = 3
    end
    object QParametrosCTOPROVEEDORES: TIBStringField
      FieldName = 'CTOPROVEEDORES'
      Origin = 'PARAMETROS.CTOPROVEEDORES'
      Size = 3
    end
    object QParametrosSCTAIVACNORMAL: TIBStringField
      FieldName = 'SCTAIVACNORMAL'
      Origin = 'PARAMETROS.SCTAIVACNORMAL'
      Size = 10
    end
    object QParametrosCTOIVACNORMAL: TIBStringField
      FieldName = 'CTOIVACNORMAL'
      Origin = 'PARAMETROS.CTOIVACNORMAL'
      Size = 3
    end
    object QParametrosSCTAIVACREDUCIDO: TIBStringField
      FieldName = 'SCTAIVACREDUCIDO'
      Origin = 'PARAMETROS.SCTAIVACREDUCIDO'
      Size = 10
    end
    object QParametrosCTOIVACREDUCIDO: TIBStringField
      FieldName = 'CTOIVACREDUCIDO'
      Origin = 'PARAMETROS.CTOIVACREDUCIDO'
      Size = 3
    end
    object QParametrosSCTAIVACSUPER: TIBStringField
      FieldName = 'SCTAIVACSUPER'
      Origin = 'PARAMETROS.SCTAIVACSUPER'
      Size = 10
    end
    object QParametrosCTOIVACSUPER: TIBStringField
      FieldName = 'CTOIVACSUPER'
      Origin = 'PARAMETROS.CTOIVACSUPER'
      Size = 3
    end
    object QParametrosSCTARECNORMAL: TIBStringField
      FieldName = 'SCTARECNORMAL'
      Origin = 'PARAMETROS.SCTARECNORMAL'
      Size = 10
    end
    object QParametrosCTORECNORMAL: TIBStringField
      FieldName = 'CTORECNORMAL'
      Origin = 'PARAMETROS.CTORECNORMAL'
      Size = 3
    end
    object QParametrosSCTARECREDUCIDO: TIBStringField
      FieldName = 'SCTARECREDUCIDO'
      Origin = 'PARAMETROS.SCTARECREDUCIDO'
      Size = 10
    end
    object QParametrosCTORECREDUCIDO: TIBStringField
      FieldName = 'CTORECREDUCIDO'
      Origin = 'PARAMETROS.CTORECREDUCIDO'
      Size = 3
    end
    object QParametrosSCTARECSUPER: TIBStringField
      FieldName = 'SCTARECSUPER'
      Origin = 'PARAMETROS.SCTARECSUPER'
      Size = 10
    end
    object QParametrosCTORECSUPER: TIBStringField
      FieldName = 'CTORECSUPER'
      Origin = 'PARAMETROS.CTORECSUPER'
      Size = 3
    end
    object QParametrosCTORECIBOVENTAS: TIBStringField
      FieldName = 'CTORECIBOVENTAS'
      Origin = 'PARAMETROS.CTORECIBOVENTAS'
      Size = 3
    end
    object QParametrosVGENERICA: TIBStringField
      FieldName = 'VGENERICA'
      Origin = 'PARAMETROS.VGENERICA'
      Size = 10
    end
    object QParametrosSUBCAJA: TIBStringField
      FieldName = 'SUBCAJA'
      Origin = 'PARAMETROS.SUBCAJA'
      Size = 10
    end
    object QParametrosCTOCOBROF: TIBStringField
      FieldName = 'CTOCOBROF'
      Origin = 'PARAMETROS.CTOCOBROF'
      Size = 3
    end
    object QParametrosCTONOME: TIBStringField
      FieldName = 'CTONOME'
      Origin = 'PARAMETROS.CTONOME'
      Size = 3
    end
    object QParametrosCTONOMT: TIBStringField
      FieldName = 'CTONOMT'
      Origin = 'PARAMETROS.CTONOMT'
      Size = 3
    end
    object QParametrosSCTANOMSUELDO: TIBStringField
      FieldName = 'SCTANOMSUELDO'
      Origin = 'PARAMETROS.SCTANOMSUELDO'
      Size = 10
    end
    object QParametrosSCTANOMIRPF: TIBStringField
      FieldName = 'SCTANOMIRPF'
      Origin = 'PARAMETROS.SCTANOMIRPF'
      Size = 10
    end
    object QParametrosSCTANOMPAGO: TIBStringField
      FieldName = 'SCTANOMPAGO'
      Origin = 'PARAMETROS.SCTANOMPAGO'
      Size = 10
    end
    object QParametrosSCTANOMSSE: TIBStringField
      FieldName = 'SCTANOMSSE'
      Origin = 'PARAMETROS.SCTANOMSSE'
      Size = 10
    end
    object QParametrosSCTANOMSST: TIBStringField
      FieldName = 'SCTANOMSST'
      Origin = 'PARAMETROS.SCTANOMSST'
      Size = 10
    end
    object QParametrosSCTANOMCARGO: TIBStringField
      FieldName = 'SCTANOMCARGO'
      Origin = 'PARAMETROS.SCTANOMCARGO'
      Size = 10
    end
    object QParametrosSCTADTOPPV: TIBStringField
      FieldName = 'SCTADTOPPV'
      Origin = 'PARAMETROS.SCTADTOPPV'
      Size = 10
    end
    object QParametrosSCTADTOPPC: TIBStringField
      FieldName = 'SCTADTOPPC'
      Origin = 'PARAMETROS.SCTADTOPPC'
      Size = 10
    end
    object QParametrosCTODTOPPV: TIBStringField
      FieldName = 'CTODTOPPV'
      Origin = 'PARAMETROS.CTODTOPPV'
      Size = 3
    end
    object QParametrosCTODTOPPC: TIBStringField
      FieldName = 'CTODTOPPC'
      Origin = 'PARAMETROS.CTODTOPPC'
      Size = 3
    end
    object QParametrosSCTARETPROF: TIBStringField
      FieldName = 'SCTARETPROF'
      Origin = 'PARAMETROS.SCTARETPROF'
      Size = 10
    end
    object QParametrosSCTARETARRE: TIBStringField
      FieldName = 'SCTARETARRE'
      Origin = 'PARAMETROS.SCTARETARRE'
      Size = 10
    end
    object QParametrosCTORETPROF: TIBStringField
      FieldName = 'CTORETPROF'
      Origin = 'PARAMETROS.CTORETPROF'
      Size = 3
    end
    object QParametrosCTORETARRE: TIBStringField
      FieldName = 'CTORETARRE'
      Origin = 'PARAMETROS.CTORETARRE'
      Size = 3
    end
    object QParametrosTANTORETPROF: TFloatField
      FieldName = 'TANTORETPROF'
      Origin = 'PARAMETROS.TANTORETPROF'
    end
    object QParametrosTANTORETARRE: TFloatField
      FieldName = 'TANTORETARRE'
      Origin = 'PARAMETROS.TANTORETARRE'
    end
    object QParametrosSCTAHACIVA: TIBStringField
      FieldName = 'SCTAHACIVA'
      Origin = 'PARAMETROS.SCTAHACIVA'
      Size = 10
    end
    object QParametrosCTOHACIVA: TIBStringField
      FieldName = 'CTOHACIVA'
      Origin = 'PARAMETROS.CTOHACIVA'
      Size = 3
    end
    object QParametrosSCTAIVACEXENTO: TIBStringField
      FieldName = 'SCTAIVACEXENTO'
      Origin = 'PARAMETROS.SCTAIVACEXENTO'
      Size = 10
    end
    object QParametrosCTOIVACEXENTO: TIBStringField
      FieldName = 'CTOIVACEXENTO'
      Origin = 'PARAMETROS.CTOIVACEXENTO'
      Size = 3
    end
    object QParametrosCTOPAGOF: TIBStringField
      FieldName = 'CTOPAGOF'
      Origin = 'PARAMETROS.CTOPAGOF'
      Size = 3
    end
    object QParametrosVGENERICAC: TIBStringField
      FieldName = 'VGENERICAC'
      Origin = 'PARAMETROS.VGENERICAC'
      Size = 10
    end
    object QParametrosTELEFONO: TIBStringField
      FieldName = 'TELEFONO'
      Origin = 'PARAMETROS.TELEFONO'
      Size = 16
    end
    object QParametrosFAX: TIBStringField
      FieldName = 'FAX'
      Origin = 'PARAMETROS.FAX'
      Size = 16
    end
    object QParametrosDOCIMPRIMIR: TIBStringField
      FieldName = 'DOCIMPRIMIR'
      Origin = 'PARAMETROS.DOCIMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object QParametrosSIGLAVIA: TIBStringField
      FieldName = 'SIGLAVIA'
      Origin = 'PARAMETROS.SIGLAVIA'
      FixedChar = True
      Size = 2
    end
    object QParametrosNUMEROCALLE: TIBStringField
      FieldName = 'NUMEROCALLE'
      Origin = 'PARAMETROS.NUMEROCALLE'
      FixedChar = True
      Size = 4
    end
    object QParametrosESCALERA: TIBStringField
      FieldName = 'ESCALERA'
      Origin = 'PARAMETROS.ESCALERA'
      FixedChar = True
      Size = 2
    end
    object QParametrosPISO: TIBStringField
      FieldName = 'PISO'
      Origin = 'PARAMETROS.PISO'
      FixedChar = True
      Size = 2
    end
    object QParametrosPUERTA: TIBStringField
      FieldName = 'PUERTA'
      Origin = 'PARAMETROS.PUERTA'
      FixedChar = True
      Size = 2
    end
    object QParametrosCCC: TIBStringField
      FieldName = 'CCC'
      Origin = 'PARAMETROS.CCC'
      Size = 23
    end
    object QParametrosCODADMON: TIBStringField
      FieldName = 'CODADMON'
      Origin = 'PARAMETROS.CODADMON'
      FixedChar = True
      Size = 5
    end
    object QParametrosGESTIONA_CARTERA_EFECTOS: TIBStringField
      FieldName = 'GESTIONA_CARTERA_EFECTOS'
      Origin = 'PARAMETROS.GESTIONA_CARTERA_EFECTOS'
      FixedChar = True
      Size = 1
    end
    object QParametrosFILTRO_ASIENTOS_INICIO: TIBStringField
      FieldName = 'FILTRO_ASIENTOS_INICIO'
      Origin = 'PARAMETROS.FILTRO_ASIENTOS_INICIO'
      FixedChar = True
      Size = 1
    end
    object QParametrosINCLUIR_ABREV: TIBStringField
      FieldName = 'INCLUIR_ABREV'
      Origin = 'PARAMETROS.INCLUIR_ABREV'
      FixedChar = True
      Size = 1
    end
    object QParametrosSCTAEFECTDESCONTADOS: TIBStringField
      FieldName = 'SCTAEFECTDESCONTADOS'
      Origin = 'PARAMETROS.SCTAEFECTDESCONTADOS'
      Size = 10
    end
    object QParametrosSCTADEUDASDESCUENTOS: TIBStringField
      FieldName = 'SCTADEUDASDESCUENTOS'
      Origin = 'PARAMETROS.SCTADEUDASDESCUENTOS'
      Size = 10
    end
    object QParametrosASIENTOS_INICIO_INTERVALO_BQDA: TSmallintField
      FieldName = 'ASIENTOS_INICIO_INTERVALO_BQDA'
      Origin = 'PARAMETROS.ASIENTOS_INICIO_INTERVALO_BQDA'
    end
    object QParametrosASIENTOS_FIN_INTERVALO_BQDA: TSmallintField
      FieldName = 'ASIENTOS_FIN_INTERVALO_BQDA'
      Origin = 'PARAMETROS.ASIENTOS_FIN_INTERVALO_BQDA'
    end
    object QParametrosMOSTRAR_FILTRO_MAYOR: TIBStringField
      FieldName = 'MOSTRAR_FILTRO_MAYOR'
      Origin = 'PARAMETROS.MOSTRAR_FILTRO_MAYOR'
      FixedChar = True
      Size = 1
    end
    object QParametrosCTOPROVINTRA: TIBStringField
      FieldName = 'CTOPROVINTRA'
      Origin = 'PARAMETROS.CTOPROVINTRA'
      FixedChar = True
      Size = 3
    end
    object QParametrosASIENTO_INICIO_INTERVALO_FILTRO: TSmallintField
      FieldName = 'ASIENTO_INICIO_INTERVALO_FILTRO'
      Origin = 'PARAMETROS.ASIENTO_INICIO_INTERVALO_FILTRO'
    end
    object QParametrosASIENTO_FIN_INTERVALO_FILTRO: TSmallintField
      FieldName = 'ASIENTO_FIN_INTERVALO_FILTRO'
      Origin = 'PARAMETROS.ASIENTO_FIN_INTERVALO_FILTRO'
    end
    object QParametrosSCTAIVAINTRADEDUCIBLE: TIBStringField
      FieldName = 'SCTAIVAINTRADEDUCIBLE'
      Origin = 'PARAMETROS.SCTAIVAINTRADEDUCIBLE'
      Size = 10
    end
    object QParametrosSCTAIVACINTRADEDUCIBLE: TIBStringField
      FieldName = 'SCTAIVACINTRADEDUCIBLE'
      Origin = 'PARAMETROS.SCTAIVACINTRADEDUCIBLE'
      Size = 10
    end
    object QParametrosSCTAIVACINTRAREPERCUTIDO: TIBStringField
      FieldName = 'SCTAIVACINTRAREPERCUTIDO'
      Origin = 'PARAMETROS.SCTAIVACINTRAREPERCUTIDO'
      Size = 10
    end
    object QParametrosSCTAGENINTRACOM: TIBStringField
      FieldName = 'SCTAGENINTRACOM'
      Origin = 'PARAMETROS.SCTAGENINTRACOM'
      Size = 10
    end
    object QParametrosASIENTO_NOMINA_INDIVIDUAL: TIBStringField
      FieldName = 'ASIENTO_NOMINA_INDIVIDUAL'
      Origin = 'PARAMETROS.ASIENTO_NOMINA_INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object QParametrosSCTAIVAEXENTOCEE: TIBStringField
      FieldName = 'SCTAIVAEXENTOCEE'
      Origin = 'PARAMETROS.SCTAIVAEXENTOCEE'
      Size = 10
    end
    object QParametrosSCTAINTERESES: TIBStringField
      FieldName = 'SCTAINTERESES'
      Origin = 'PARAMETROS.SCTAINTERESES'
      Size = 10
    end
    object QParametrosSCTAEXPORTACIONES: TIBStringField
      FieldName = 'SCTAEXPORTACIONES'
      Origin = 'PARAMETROS.SCTAEXPORTACIONES'
      Size = 10
    end
    object QParametrosBUSQUEDA_SUBCTAS: TIBStringField
      FieldName = 'BUSQUEDA_SUBCTAS'
      Origin = 'PARAMETROS.BUSQUEDA_SUBCTAS'
      FixedChar = True
      Size = 1
    end
    object QParametrosSCTAOTRASREMUN: TIBStringField
      FieldName = 'SCTAOTRASREMUN'
      Origin = 'PARAMETROS.SCTAOTRASREMUN'
      Size = 10
    end
    object QParametrosSCTABANCO: TIBStringField
      FieldName = 'SCTABANCO'
      Origin = 'PARAMETROS.SCTABANCO'
      Size = 10
    end
    object QParametrosCTOCOBRO: TIBStringField
      FieldName = 'CTOCOBRO'
      Origin = 'PARAMETROS.CTOCOBRO'
      Size = 3
    end
    object QParametrosCTOPAGO: TIBStringField
      FieldName = 'CTOPAGO'
      Origin = 'PARAMETROS.CTOPAGO'
      Size = 3
    end
    object QParametrosSCTAEFECTOSCOMERCIALES: TIBStringField
      FieldName = 'SCTAEFECTOSCOMERCIALES'
      Origin = 'PARAMETROS.SCTAEFECTOSCOMERCIALES'
      Size = 10
    end
    object QParametrosCTOEFECTOSCOMERCIALES: TIBStringField
      FieldName = 'CTOEFECTOSCOMERCIALES'
      Origin = 'PARAMETROS.CTOEFECTOSCOMERCIALES'
      Size = 3
    end
    object QParametrosCTODEUDASDESCUENTOS: TIBStringField
      FieldName = 'CTODEUDASDESCUENTOS'
      Origin = 'PARAMETROS.CTODEUDASDESCUENTOS'
      Size = 3
    end
    object QParametrosSCTAREMESAEFECTOS: TIBStringField
      FieldName = 'SCTAREMESAEFECTOS'
      Origin = 'PARAMETROS.SCTAREMESAEFECTOS'
      Size = 10
    end
    object QParametrosCTOREMESAEFECTOS: TIBStringField
      FieldName = 'CTOREMESAEFECTOS'
      Origin = 'PARAMETROS.CTOREMESAEFECTOS'
      Size = 3
    end
    object QParametrosDESCPROV_CARTERAEFECTOS: TIBStringField
      FieldName = 'DESCPROV_CARTERAEFECTOS'
      Origin = 'PARAMETROS.DESCPROV_CARTERAEFECTOS'
      FixedChar = True
      Size = 1
    end
    object QParametrosDESCCLI_CARTERAEFECTOS: TIBStringField
      FieldName = 'DESCCLI_CARTERAEFECTOS'
      Origin = 'PARAMETROS.DESCCLI_CARTERAEFECTOS'
      FixedChar = True
      Size = 1
    end
    object QParametrosTIPOEMPRESA: TIBStringField
      FieldName = 'TIPOEMPRESA'
      Origin = 'PARAMETROS.TIPOEMPRESA'
      FixedChar = True
      Size = 1
    end
    object QParametrosFILTROSUBCTAS: TIBStringField
      FieldName = 'FILTROSUBCTAS'
      Origin = 'PARAMETROS.FILTROSUBCTAS'
      FixedChar = True
      Size = 3
    end
    object QParametrosOFFICE2003: TIBStringField
      FieldName = 'OFFICE2003'
      Origin = 'PARAMETROS.OFFICE2003'
      FixedChar = True
      Size = 1
    end
    object QParametrosTRATASERIE: TIBStringField
      FieldName = 'TRATASERIE'
      Origin = 'PARAMETROS.TRATASERIE'
      FixedChar = True
      Size = 1
    end
    object QParametrosACTCOMENTARIO: TIBStringField
      FieldName = 'ACTCOMENTARIO'
      Origin = 'PARAMETROS.ACTCOMENTARIO'
      FixedChar = True
      Size = 1
    end
  end
  object QAnaliticas: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 39
    Top = 138
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
  object QAnaliticasNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 39
    Top = 194
    object IBStringField45: TIBStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'ANALITICAS.NOMBRE'
      Size = 50
    end
    object IBStringField46: TIBStringField
      DisplayWidth = 10
      FieldName = 'CUENTA'
      Origin = 'ANALITICAS.CUENTA'
      Required = True
      Size = 10
    end
    object IBStringField41: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'ANALITICAS.ID_PROYECTO'
      Visible = False
      Size = 10
    end
    object IBStringField42: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'ANALITICAS.ID_SECCION'
      Visible = False
      Size = 10
    end
    object IBStringField43: TIBStringField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ANALITICAS.ID_DEPARTAMENTO'
      Visible = False
      Size = 10
    end
    object IBStringField44: TIBStringField
      FieldName = 'ID_DELEGACION'
      Origin = 'ANALITICAS.ID_DELEGACION'
      Visible = False
      Size = 10
    end
  end
  object QDelegacionNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 207
    Top = 226
    object QDelegacionNomNOMBRE: TIBStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'DELEGACION.NOMBRE'
      Size = 50
    end
    object QDelegacionNomID_DELEGACION: TIBStringField
      DisplayLabel = 'DELEGACION'
      DisplayWidth = 10
      FieldName = 'ID_DELEGACION'
      Origin = 'DELEGACION.ID_DELEGACION'
      Required = True
      Visible = False
      Size = 10
    end
  end
  object QDepartamentoNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 367
    Top = 146
    object QDepartamentoNomNOMBRE: TIBStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'DEPARTAMENTO.NOMBRE'
      Size = 50
    end
    object QDepartamentoNomID_DEPARTAMENTO: TIBStringField
      DisplayLabel = 'DEPARTAMENTO'
      DisplayWidth = 10
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'DEPARTAMENTO.ID_DEPARTAMENTO'
      Required = True
      Visible = False
      Size = 10
    end
  end
  object QProyectoNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 535
    Top = 154
    object QProyectoNomNOMBRE: TIBStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'PROYECTO.NOMBRE'
      Size = 50
    end
    object QProyectoNomID_PROYECTO: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'PROYECTO.ID_PROYECTO'
      Required = True
      Visible = False
      Size = 10
    end
  end
  object QSeccionNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 695
    Top = 154
    object QSeccionNomNOMBRE: TIBStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'SECCION.NOMBRE'
      Size = 50
    end
    object QSeccionNomID_SECCION: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'SECCION.ID_SECCION'
      Required = True
      Visible = False
      Size = 10
    end
  end
  object QDelegacion: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 207
    Top = 170
    object IBStringField1: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'DELEGACION.NOMBRE'
      Size = 50
    end
    object IBStringField2: TIBStringField
      FieldName = 'ID_DELEGACION'
      Origin = 'DELEGACION.ID_DELEGACION'
      Required = True
      Size = 10
    end
  end
  object QDepartamento: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 367
    Top = 90
    object IBStringField3: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'DEPARTAMENTO.NOMBRE'
      Size = 50
    end
    object IBStringField4: TIBStringField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'DEPARTAMENTO.ID_DEPARTAMENTO'
      Required = True
      Size = 10
    end
  end
  object QProyecto: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 535
    Top = 106
    object IBStringField5: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'PROYECTO.NOMBRE'
      Size = 50
    end
    object IBStringField6: TIBStringField
      FieldName = 'ID_PROYECTO'
      Origin = 'PROYECTO.ID_PROYECTO'
      Required = True
      Size = 10
    end
  end
  object QSeccion: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
    Left = 695
    Top = 100
    object IBStringField7: TIBStringField
      FieldName = 'NOMBRE'
      Origin = 'SECCION.NOMBRE'
      Size = 50
    end
    object IBStringField8: TIBStringField
      FieldName = 'ID_SECCION'
      Origin = 'SECCION.ID_SECCION'
      Required = True
      Size = 10
    end
  end
  object QComercial: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
      'SELECT * FROM COMERCIALES')
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
    Left = 47
    Top = 266
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
  object QComercialNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
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
      'SELECT * FROM COMERCIALES')
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
    Left = 47
    Top = 322
    object IBStringField9: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Origin = 'COMERCIALES.NOMBRE'
      Size = 50
    end
    object IBStringField10: TIBStringField
      FieldName = 'COMERCIAL'
      Origin = 'COMERCIALES.COMERCIAL'
      Required = True
      Visible = False
      Size = 10
    end
  end
  object QFormaPago: TIBDataSet
    Database = BDContab
    Transaction = IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM FORMAS'
      'WHERE'
      
        '  FORMAPAGO                      =:old_FORMAPAGO                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO FORMAS'
      
        '  (DESCRIBE                       ,INTERVALO                    ' +
        '  ,NUMVENCI                       ,FORMAPAGO                    ' +
        '  ,CLASE                          ,OBSOLETO                     ' +
        '  )'
      'VALUES'
      
        '  (:DESCRIBE                       ,:INTERVALO                  ' +
        '    ,:NUMVENCI                       ,:FORMAPAGO                ' +
        '      ,:CLASE                          ,:OBSOLETO               ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM FORMAS'
      'WHERE'
      
        '  FORMAPAGO                      =?FORMAPAGO                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM FORMAS')
    ModifySQL.Strings = (
      'UPDATE FORMAS'
      'SET'
      
        '  DESCRIBE                       =:DESCRIBE                     ' +
        '   '
      
        '  ,INTERVALO                      =:INTERVALO                   ' +
        '    '
      
        '  ,NUMVENCI                       =:NUMVENCI                    ' +
        '    '
      
        '  ,CLASE                          =:CLASE                       ' +
        '    '
      
        '  ,OBSOLETO                       =:OBSOLETO                    ' +
        '    '
      'WHERE'
      
        '  FORMAPAGO                      =:FORMAPAGO                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 191
    Top = 354
    object QFormaPagoFORMAPAGO: TIBStringField
      FieldName = 'FORMAPAGO'
      Origin = 'FORMAS.FORMAPAGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object QFormaPagoCLASE: TIBStringField
      FieldName = 'CLASE'
      Origin = 'FORMAS.CLASE'
      FixedChar = True
      Size = 1
    end
    object QFormaPagoDESCRIBE: TIBStringField
      FieldName = 'DESCRIBE'
      Origin = 'FORMAS.DESCRIBE'
      Size = 40
    end
    object QFormaPagoINTERVALO: TSmallintField
      FieldName = 'INTERVALO'
      Origin = 'FORMAS.INTERVALO'
    end
    object QFormaPagoNUMVENCI: TSmallintField
      FieldName = 'NUMVENCI'
      Origin = 'FORMAS.NUMVENCI'
    end
    object QFormaPagoOBSOLETO: TIBStringField
      FieldName = 'OBSOLETO'
      Origin = 'FORMAS.OBSOLETO'
      FixedChar = True
      Size = 1
    end
  end
  object QFormaPagoNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM FORMAS'
      'WHERE'
      
        '  FORMAPAGO                      =:old_FORMAPAGO                ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO FORMAS'
      
        '  (DESCRIBE                       ,INTERVALO                    ' +
        '  ,NUMVENCI                       ,FORMAPAGO                    ' +
        '  ,CLASE                          ,OBSOLETO                     ' +
        '  )'
      'VALUES'
      
        '  (:DESCRIBE                       ,:INTERVALO                  ' +
        '    ,:NUMVENCI                       ,:FORMAPAGO                ' +
        '      ,:CLASE                          ,:OBSOLETO               ' +
        '        )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM FORMAS'
      'WHERE'
      
        '  FORMAPAGO                      =?FORMAPAGO                    ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM FORMAS')
    ModifySQL.Strings = (
      'UPDATE FORMAS'
      'SET'
      
        '  DESCRIBE                       =:DESCRIBE                     ' +
        '   '
      
        '  ,INTERVALO                      =:INTERVALO                   ' +
        '    '
      
        '  ,NUMVENCI                       =:NUMVENCI                    ' +
        '    '
      
        '  ,CLASE                          =:CLASE                       ' +
        '    '
      
        '  ,OBSOLETO                       =:OBSOLETO                    ' +
        '    '
      'WHERE'
      
        '  FORMAPAGO                      =:FORMAPAGO                    ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 191
    Top = 410
    object IBStringField11: TIBStringField
      FieldName = 'FORMAPAGO'
      Origin = 'FORMAS.FORMAPAGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object IBStringField12: TIBStringField
      FieldName = 'CLASE'
      Origin = 'FORMAS.CLASE'
      FixedChar = True
      Size = 1
    end
    object IBStringField13: TIBStringField
      FieldName = 'DESCRIBE'
      Origin = 'FORMAS.DESCRIBE'
      Size = 40
    end
    object SmallintField1: TSmallintField
      FieldName = 'INTERVALO'
      Origin = 'FORMAS.INTERVALO'
    end
    object SmallintField2: TSmallintField
      FieldName = 'NUMVENCI'
      Origin = 'FORMAS.NUMVENCI'
    end
    object IBStringField14: TIBStringField
      FieldName = 'OBSOLETO'
      Origin = 'FORMAS.OBSOLETO'
      FixedChar = True
      Size = 1
    end
  end
  object QTipoDiario: TIBDataSet
    Database = BDContab
    Transaction = IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM TIPODIARIO'
      'WHERE'
      
        '  TIPODIARIO                     =:old_TIPODIARIO               ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO TIPODIARIO'
      
        '  (DESCRIPCION                    ,TIPODIARIO                   ' +
        '  )'
      'VALUES'
      
        '  (:DESCRIPCION                    ,:TIPODIARIO                 ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM TIPODIARIO'
      'WHERE'
      
        '  TIPODIARIO                     =?TIPODIARIO                   ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM TIPODIARIO')
    ModifySQL.Strings = (
      'UPDATE TIPODIARIO'
      'SET'
      
        '  DESCRIPCION                    =:DESCRIPCION                  ' +
        '   '
      'WHERE'
      
        '  TIPODIARIO                     =:TIPODIARIO                   ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 399
    Top = 242
    object QTipoDiarioDESCRIPCION: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'TIPODIARIO.DESCRIPCION'
      Size = 30
    end
    object QTipoDiarioTIPODIARIO: TIBStringField
      FieldName = 'TIPODIARIO'
      Origin = 'TIPODIARIO.TIPODIARIO'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object QTipodiarioNom: TIBDataSet
    Database = BDContab
    Transaction = IBT1
    BufferChunks = 32
    CachedUpdates = False
    DeleteSQL.Strings = (
      'DELETE FROM TIPODIARIO'
      'WHERE'
      
        '  TIPODIARIO                     =:old_TIPODIARIO               ' +
        '       ')
    InsertSQL.Strings = (
      'INSERT INTO TIPODIARIO'
      
        '  (DESCRIPCION                    ,TIPODIARIO                   ' +
        '  )'
      'VALUES'
      
        '  (:DESCRIPCION                    ,:TIPODIARIO                 ' +
        '    )')
    RefreshSQL.Strings = (
      'SELECT'
      '  *'
      'FROM TIPODIARIO'
      'WHERE'
      
        '  TIPODIARIO                     =?TIPODIARIO                   ' +
        '   ')
    SelectSQL.Strings = (
      'SELECT * FROM TIPODIARIO')
    ModifySQL.Strings = (
      'UPDATE TIPODIARIO'
      'SET'
      
        '  DESCRIPCION                    =:DESCRIPCION                  ' +
        '   '
      'WHERE'
      
        '  TIPODIARIO                     =:TIPODIARIO                   ' +
        '   ')
    ParamCheck = True
    UniDirectional = False
    Left = 399
    Top = 298
    object IBStringField15: TIBStringField
      FieldName = 'DESCRIPCION'
      Origin = 'TIPODIARIO.DESCRIPCION'
      Size = 30
    end
    object IBStringField16: TIBStringField
      FieldName = 'TIPODIARIO'
      Origin = 'TIPODIARIO.TIPODIARIO'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object IBDConsolida: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTConsolida
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 656
    Top = 392
  end
  object IBTConsolida: TIBTransaction
    DefaultDatabase = IBDConsolida
    Left = 754
    Top = 392
  end
  object TransBdEjanterior: TIBTransaction
    DefaultDatabase = BDEjAnterior
    Left = 754
    Top = 344
  end
  object BDEjAnterior: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = TransBdEjanterior
    ServerType = 'IBServer'
    SQLDialect = 1
    Left = 656
    Top = 344
  end
  object SPaisNom: TDataSource
    AutoEdit = False
    DataSet = QPaisNom
    Left = 368
    Top = 8
  end
  object SProvinciasNom: TDataSource
    AutoEdit = False
    DataSet = QProvinciasNom
    Left = 584
    Top = 16
  end
  object SFormaPago: TDataSource
    AutoEdit = False
    DataSet = QFormaPago
    Left = 272
    Top = 352
  end
  object SFormaPagoNom: TDataSource
    AutoEdit = False
    DataSet = QFormaPagoNom
    Left = 272
    Top = 408
  end
  object SAnaliticas: TDataSource
    AutoEdit = False
    DataSet = QAnaliticas
    Left = 112
    Top = 136
  end
  object SDelegacion: TDataSource
    AutoEdit = False
    DataSet = QDelegacion
    Left = 264
    Top = 168
  end
  object SProyecto: TDataSource
    AutoEdit = False
    DataSet = QProyecto
    Left = 608
    Top = 104
  end
  object SSeccion: TDataSource
    AutoEdit = False
    DataSet = QSeccion
    Left = 768
    Top = 96
  end
  object SDepartamento: TDataSource
    AutoEdit = False
    DataSet = QDepartamento
    Left = 448
    Top = 88
  end
end
