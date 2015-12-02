/* Reservoir
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    Reservoir

// SEES PompeAlimentation, PompeCirculation

VARIABLES
    niveau, 
    OO1SN, // bas
    OO2SN  // haut

INVARIANT
    niveau : INT 
    & OO1SN : BOOL
    & OO2SN : BOOL
    
INITIALISATION
    niveau := 80
    || OO1SN := FALSE //False = ok True = 001SN 0
    || OO2SN := FALSE //False = ok True = 002SN 0    
    
OPERATIONS
    ReservoirMin =
    IF niveau <= 20 
    THEN 
        OO1SN := TRUE
    END;
 
    ReservoirPlusMin =
    IF niveau > 20
    THEN 
        OO1SN := FALSE
    END;

    ReservoirMax =
    IF niveau >= 100
    THEN 
        OO2SN := TRUE
    END;
    
    ReservoirMoinsMax =
    IF niveau < 100
    THEN 
        OO2SN := FALSE
    END;
    
    rr <-- isReservoirMin =
    BEGIN
        rr := OO1SN
    END;

    rr <-- isReservoirMax =
    BEGIN
        rr := OO2SN
    END;

       
END
