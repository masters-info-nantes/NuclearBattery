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
    rr <-- getVanneCircuActive =
    BEGIN
        rr := vanneCircuActive
    END;
    
    verouillerVanneCircu = 
        vanneCircuActive := FALSE
        
END
