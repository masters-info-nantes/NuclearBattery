/* Reservoir
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    Reservoir

SEES PompeAlimentation, PompeCirculation

CONSTANTS
    // Seuils    
    OO1SN, // bas
    OO2SN  // haut
    
PROPERTIES 
      OO1SN : INT & OO1SN = 70
    & OO2SN : INT & OO2SN = 130
   
VARIABLES
    niveau
    
INVARIANT
    niveau : INT & niveau >= OO1SN & niveau <= OO2SN
    
INITIALISATION
    niveau := 80   
    
OPERATIONS
    augmenterNiveau = 
    PRE niveau < OO2SN & alimActive = TRUE
    THEN
        niveau := niveau + 1
    END;
    
    diminuerNiveau = 
    PRE niveau > OO1SN & alimActive = TRUE
    THEN
        niveau := niveau - 1
    END        
END
