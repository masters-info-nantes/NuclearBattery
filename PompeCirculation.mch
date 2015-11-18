/* PompeCirculation
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    PompeCirculation

SEES Reservoir, Fluide

VARIABLES 
    circuActive
    
INVARIANT
    circuActive : BOOL
    
INITIALISATION
    circuActive := FALSE
   
OPERATIONS   
    activerCircu =
    PRE circuActive = FALSE
    THEN
        circuActive := TRUE
    END;
    
    desactiverCircu =
    PRE circuActive = TRUE
    THEN
        circuActive := FALSE
    END 
    
END
