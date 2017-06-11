SELECT D.ASIENTO         ,                             
       D.NUMEROFACTURA   ,                             
       D.FECHA           ,                             
       D.IMPORTE         ,                             
       D.NIF             ,                             
       T.TIPOCUENTA      ,                             
       D.MONEDA          ,                             
       D.CONTRAPARTIDA   ,                             
       D.RECARGO         ,                             
       D.IVA             ,                             
       D.BASEIMPONIBLE   ,                             
       D.SERIE           ,                             
       D.EJERCICIO       ,                             
       D.COMENTARIO      ,                             
       D.ID_CONCEPTOS    ,                             
       S.TIPOIVA         ,                             
       D.CUOTARECARGO    ,                             
       D.CUOTAIVA        ,                             
       D.CUENTA_ANALITICA,                             
       D.SUBCUENTA                                     
FROM  DIARIO    D,                                     
      CONCEPTOS C,                                     
      CUENTAS   T,                                     
      SUBCTAS   S                                      
WHERE (D.ID_CONCEPTOS  = C.ID_CONCEPTOS             )  
AND   (C.TIPOCONCEPTO  = "I" OR C.TIPOCONCEPTO = "2")  
AND   (SUBSTR(D.SUBCUENTA, 1, 3) = T.CUENTA         )  
AND   (D.SUBCUENTA     = S.SUBCUENTA                )  
AND  T.TIPOCUENTA = "R"                          
ORDER BY D.CONTRAPARTIDA



-- LA SIGUIENTE SELECCIONA TODOS LOS APUNTES DE ESOS ASIENTOS

SELECT * FROM DIARIO WHERE ASIENTO IN 
(SELECT D.ASIENTO                                      
FROM  DIARIO    D,                                     
      CONCEPTOS C,                                     
      CUENTAS   T,                                     
      SUBCTAS   S                                      
WHERE (D.ID_CONCEPTOS  = C.ID_CONCEPTOS             )  
AND   (C.TIPOCONCEPTO  = "I" OR C.TIPOCONCEPTO = "2")  
AND   (SUBSTR(D.SUBCUENTA, 1, 3) = T.CUENTA         )  
AND   (D.SUBCUENTA     = S.SUBCUENTA                )  
AND  T.TIPOCUENTA = "R"                          
ORDER BY D.CONTRAPARTIDA)    
