DELETE FROM DIARIO
WHERE ASIENTO IN (
   SELECT D.ASIENTO                                    
   FROM  DIARIO    D,                                   
         CONCEPTOS C                                     
   WHERE (D.ID_CONCEPTOS  = C.ID_CONCEPTOS             )
   AND   (C.TIPOCONCEPTO  = 'I' OR C.TIPOCONCEPTO = '"2')
)