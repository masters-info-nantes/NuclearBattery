/* PompeAlimentation
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    PompeAlimentation

// SEES Reservoir

VARIABLES 
    pompeAlimActive, tourneurLumineux
    
INVARIANT
    pompeAlimActive : BOOL
    & tourneurLumineux : BOOL
    
INITIALISATION
    pompeAlimActive := FALSE
    || tourneurLumineux := FALSE

OPERATIONS
    activerPompeAlim =
    PRE tourneurLumineux = TRUE
    THEN
        pompeAlimActive := TRUE
    END;
    
    rr <-- getTourneurLumineux =
    BEGIN
        rr := tourneurLumineux
    END;
    
    /*
    desactiverPompeAlim =
    PRE pompeAlimActive = TRUE
    THEN
        pompeAlimActive := FALSE
    END
    */
END
