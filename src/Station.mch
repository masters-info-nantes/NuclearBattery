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
    
    
PROMOTES
    activerPompeAlimentation,
    desactiverPompeAlimentation,
    
    activerPompeCircu,
    desactiverPompeCircu,
    getVanneCircuActive,
    verouillerVanneCircu
     
OPERATIONS
    
     // pompe Alimentation
     ordreEnclenchementPompeAlimentation = 
         activerPompeAlimentation;
     
     ordreDeclenchementPompeAlimentation = 
         desactiverPompeAlimentation;


     // Pompe Circulation
     verouillageEnclenchementPompeCirculation = 
     PRE getVanneCircuActive = FALSE // TODO : or RESERVOIR.MIN = FALSE
     THEN
          verouillerVanneCircu
     END;
     
     ordreEnclenchementPompeCirculation = 
     PRE getVanneCircuActive = FALSE // TODO : or RESERVOIR.MIN = FALSE
     THEN
          activerPompeCircu
     END;
     
     ordreDeclenchementPompeCirculation = 
         desactiverPompeCircu


END
