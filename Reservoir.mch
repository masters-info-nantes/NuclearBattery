/* Reservoir
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    Reservoir

CONSTANTS
    // Seuils    
    OO1SN, // bas
    OO2SN  // haut
    
PROPERTIES 
      OO1SN : INT & OO1SN = 70
    & OO2SN : INT & OO2SN = 130
   
VARIABLES
    tankLevel
    
INVARIANT
    tankLevel : INT & tankLevel >= OO1SN & tankLevel <= OO2SN
    
INITIALISATION
    tankLevel := 80   
    
OPERATIONS
    decreasetTankLevel = 
    PRE
    THEN
    END
    
    increaseTankLevel = 
    PRE
    THEN
    END        
END
