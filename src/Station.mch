/* Station
 * Author: 
 * Creation date: 11/11/2015
 */
MACHINE
    Station
 
INCLUDES
    Reservoir, 
    Fluide, 
    
    VanneAlimentation,
    PompeAlimentation,
    PompeCirculation
    
    
PROMOTES
    getVanneAlimActive,
    getTourneurLumineux,
    activerPompeAlim
    
     
OPERATIONS
     ordreEnclenchementPompeAlimentation =
     
     BEGIN
         activerPompeAlim
     END
     
         
     

    
END
