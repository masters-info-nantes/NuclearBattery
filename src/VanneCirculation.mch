/* VanneCirculation
 * Author: 
 * Creation date: 25/11/2015
 */
MACHINE
    VanneCirculation
    
VARIABLES 
    vanneCircuActive
    
INVARIANT
    vanneCircuActive : BOOL
    
INITIALISATION
    vanneCircuActive := FALSE

OPERATIONS
    activerVanneCircu =
    PRE vanneCircuActive = FALSE
    THEN
        vanneCircuActive := TRUE
    END;
    
    desactiverVanneCircu =
    PRE vanneCircuActive = TRUE
    THEN
        vanneCircuActive := FALSE
    END
END
