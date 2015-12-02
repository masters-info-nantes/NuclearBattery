/* Station
 * Author: 
 * Creation date: 11/11/2015
 */
MACHINE
    Station
 
INCLUDES
    Reservoir, 
    Fluide, 
    
    PompeVanneAlimentation,
    PompeCirculation,
    VanneCirculation
    
VARIABLES
    DC380HT,
    alarme
    
INVARIANT
    DC380HT : BOOL
    & alarme : BOOL
    
INITIALISATION
    DC380HT := FALSE
    || alarme := FALSE 
    
PROMOTES
    activerPompeAlimentation,
    desactiverPompeAlimentation,
    
    activerPompeCircu,
    desactiverPompeCircu,
    getVanneCircuActive,
    verouillerVanneCircu,
    
    isReservoirMin
     
OPERATIONS
    
     // pompe Alimentation
     // 4
     ordreEnclenchementPompeAlimentation = 
         activerPompeAlimentation;
     
     // 5
     ordreDeclenchementPompeAlimentation = 
         desactiverPompeAlimentation;


     // Pompe Circulation
     // 6
     verouillageEnclenchementPompeCirculation = 
     PRE getVanneCircuActive = FALSE or isReservoirMin = TRUE
     THEN
          verouillerVanneCircu
     END;
     
     // 7
     ordreEnclenchementPompeCirculation = 
     PRE not DC380HT & not isReservoirMin
     THEN
          activerPompeCircu
     END;
     
     // 8
     ordreDeclenchementPompeCirculation = 
         desactiverPompeCircu;

     // ALARM Chaud + indisponible
     L1 =
     PRE (getpompeCircuIndisponible = TRUE or isReservoirMin = TRUE) & isFluideChuad = TRUE
     THEN
        alarme := TRUE
     END;
     
     L3 =
     PRE getPompeCircuActive = TRUE & isFluideChuad = FALSE
     THEN
        alarme := TRUE
     END;

     L9 =
     PRE getPompeCircuActive = FALSE & DC380HT = FALSE
     THEN
         setVerrouillageElec
     END;
END
