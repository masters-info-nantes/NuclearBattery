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
    BEGIN
        pompeAlimActive := TRUE
    END;
    
    rr <-- getTourneurLumineux =
    BEGIN
        rr := tourneurLumineux
    END;
    
    desactiverPompeAlim =
    BEGIN
        pompeAlimActive := FALSE
    END
END
