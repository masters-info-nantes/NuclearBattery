/* Station
 * Author: 
 * Creation date: 11/11/2015
 */
MACHINE
    Station
    
CONSTANTS 
    /* 
        Temperature thresholds 
        for the liquid to be cooled
    */
    OO4MT1, // Bottom
    OO4MT2, // Top
    
    /*
        Tank thresholds
    */
    OO1SN, // Bottom
    OO2SN  // Top
    
PROPERTIES 
      OO4MT1 : INT & OO4MT1 = 50
    & OO4MT2 : INT & OO4MT2 = 35
    
    & OO1SN : INT & OO1SN = 70
    & OO2SN : INT & OO2SN = 130
    
VARIABLES
    liquidTemp, tankLevel,
    circulationPump, alimentationPump
    
INVARIANT
      liquidTemp : INT & liquidTemp >= OO4MT1 & liquidTemp <= OO4MT2
    & tankLevel : INT & tankLevel >= OO1SN & tankLevel <= OO2SN
    
    & circulationPump : BOOL
    & alimentationPump : BOOL
    
INITIALISATION
       liquidTemp := 40
    || tankLevel := 80
    
    || circulationPump := FALSE
    || alimentationPump := FALSE
    
OPERATIONS

    increaseLiquidTemp =
    BEGIN
        liquidTemp := liquidTemp - 8        
    END    
END
