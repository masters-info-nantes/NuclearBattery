/* Fluide
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    Fluide
    
CONSTANTS 
    // Seuils
    OO4MT1, // bas
    OO4MT2  // haut   

PROPERTIES 
      OO4MT1 : INT & OO4MT1 = 50
    & OO4MT2 : INT & OO4MT2 = 35
    
INVARIANT
    liquidTemp : INT & liquidTemp >= OO4MT1 & liquidTemp <= OO4MT2
    
INITIALISATION
    liquidTemp := 40

OPERATIONS
    decreaseLiquidTemp = 
    PRE
    THEN
    END
    
    increaseLiquidTemp = 
    PRE
    THEN
    END
END
