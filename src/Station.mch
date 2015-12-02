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
    DC380HT
    
INVARIANT
    DC380HT : BOOL
    
INITIALISATION
    DC380HT := FALSE
    
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
         desactiverPompeCircu


END
