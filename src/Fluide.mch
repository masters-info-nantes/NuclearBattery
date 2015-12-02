/* Fluide
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    Fluide
 
// SEES PompeCirculation    
    
VARIABLES
    temperature,// Seuils
    OO4MT // bas


INVARIANT
    temperature : INT 
    & OO4MT : BOOL
    
    
INITIALISATION
    temperature := 20
    || OO4MT := FALSE //False = froid OO4MT1 True = chuad OO4MT2
    
OPERATIONS
    FluideFroid =
    IF temperature <= 40 
    THEN 
        OO4MT := FALSE
    END;
 
    FluideChaud =
    IF temperature >= 100 
    THEN 
        OO4MT := TRUE
    END;
    
    rr <-- isFluideChaud =
    BEGIN
        rr := OO4MT
    END;

END
