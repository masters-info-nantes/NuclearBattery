/* Fluide
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    Fluide
 
// SEES PompeCirculation    
    
CONSTANTS 
    // Seuils
    OO4MT1, // bas
    OO4MT2  // haut   

PROPERTIES 
      OO4MT1 : INT & OO4MT1 = 50
    & OO4MT2 : INT & OO4MT2 = 35
    
VARIABLES
    temperature
    
INVARIANT
    temperature : INT & temperature >= OO4MT1 & temperature <= OO4MT2
    
INITIALISATION
    temperature := 40

OPERATIONS
    diminuerTemp = 
    PRE circuActive = TRUE
    THEN
        temperature := temperature + 1
    END;
    
    augmenterTemp = 
    PRE circuActive = FALSE
    THEN
        temperature := temperature - 1        
    END
END
