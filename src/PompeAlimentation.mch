/* PompeAlimentation
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    PompeAlimentation

// SEES Reservoir

VARIABLES 
    pompeAlimActive
    
INVARIANT
    pompeAlimActive : BOOL
    
INITIALISATION
    pompeAlimActive := FALSE

OPERATIONS
    activerPompeAlim =
    PRE pompeAlimActive = FALSE
    THEN
        pompeAlimActive := TRUE
    END;
    
    desactiverPompeAlim =
    PRE pompeAlimActive = TRUE
    THEN
        pompeAlimActive := FALSE
    END    
END
