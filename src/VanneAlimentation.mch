/* VanneAlimentation
 * Author: 
 * Creation date: 25/11/2015
 */
MACHINE
    VanneAlimentation

VARIABLES 
    vanneAlimActive
    
INVARIANT
    vanneAlimActive : BOOL
    
INITIALISATION
    vanneAlimActive := FALSE

OPERATIONS
    rr <-- getVanneAlimActive = 
    BEGIN
        rr := vanneAlimActive
    END;
        
    /*
    activerVanneAlim =
    PRE vanneAlimActive = FALSE
    THEN
        vanneAlimActive := TRUE
    END;
    
    desactiverVanneAlim =
    PRE vanneAlimActive = TRUE
    THEN
        vanneAlimActive := FALSE
    END
    */
END
