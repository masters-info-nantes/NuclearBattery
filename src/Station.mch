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
    alarmeChaleur,
    alarmeInondation
    
INVARIANT
    DC380HT : BOOL
    & alarmeChaleur  : BOOL
    & alarmeInondation : BOOL
    
INITIALISATION
    DC380HT := FALSE
    || alarmeChaleur := FALSE 
    || alarmeInondation := FALSE 

PROMOTES
    activerPompeAlimentation,
    desactiverPompeAlimentation,
    
    activerPompeCircu,
    desactiverPompeCircu,
    getVanneCircuActive,
    verouillerVanneCircu,
    
    isReservoirMin
     
OPERATIONS
    
     // 1
     // ALARM Chaud + indisponible
     alarmeTropChaud =
     IF (getpompeCircuIndisponible = TRUE or isReservoirMin = TRUE) & isFluideChaud = TRUE
     THEN
        alarmeChaleur := TRUE
     END;    
    
     // 3
     excesEau =
     IF getPompeCircuActive = TRUE & isFluideChaud = FALSE
     THEN
        alarmeInondation := TRUE
     END;    
    
     // pompe Alimentation
     // 4
     ordreEnclenchementPompeAlimentation = 
         activerPompeAlimentation;
     
     // 5
     ordreDeclenchementPompeAlimentation = 
         desactiverPompeAlimentation;


     // Pompe Circulation
     // 6
     verouillageEauEnclenchementPompeCirculation = 
     IF getVanneCircuActive = FALSE or isReservoirMin = TRUE
     THEN
          verouillerVanneCircu
     END;
     
     // 7
     ordreEnclenchementPompeCirculation = 
     IF not DC380HT & not isReservoirMin
     THEN
          activerPompeCircu
     END;
     
     // 8
     ordreDeclenchementPompeCirculation = 
         desactiverPompeCircu;

     // 9
     verouillageElecEnclenchementPompeCirculation =
     IF getPompeCircuActive = FALSE & DC380HT = FALSE
     THEN
         setVerrouillageElec
     END;
END
