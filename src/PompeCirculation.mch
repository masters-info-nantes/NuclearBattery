/* PompeCirculation
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    PompeCirculation

// SEES Reservoir, Fluide

VARIABLES 
    pompeCircuActive
    
INVARIANT
    pompeCircuActive : BOOL
    
INITIALISATION
    pompeCircuActive := FALSE
   
OPERATIONS   
    activerPompeCircu =
    PRE pompeCircuActive = FALSE
    THEN
        pompeCircuActive := TRUE
    END;
    
    desactiverPompeCircu =
    PRE pompeCircuActive = TRUE
    THEN
        pompeCircuActive := FALSE
    END 
    
END
