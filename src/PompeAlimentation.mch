/* PompeAlimentation
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    PompeAlimentation

/*
SEES Reservoir
*/

VARIABLES 
    alimActive
    
INVARIANT
    alimActive : BOOL
    
INITIALISATION
    alimActive := FALSE

OPERATIONS
    activerAlim =
    PRE alimActive = FALSE
    THEN
        alimActive := TRUE
    END;
    
    desactiverAlim =
    PRE alimActive = TRUE
    THEN
        alimActive := FALSE
    END    
END
