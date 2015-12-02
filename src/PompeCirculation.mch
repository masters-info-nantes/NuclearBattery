/* PompeCirculation
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    PompeCirculation

// SEES Reservoir, Fluide

VARIABLES 
    pompeCircuActive,
    activerPP,
    activerPR
    
INVARIANT
    pompeCircuActive : BOOL
    & activerPP: BOOL
    & activerPR: BOOL
    
INITIALISATION
    pompeCircuActive := FALSE
    || activerPP := FALSE
    || activerPR := FALSE
   
OPERATIONS

    rr <-- isActiverPP =
    BEGIN
        rr := activerPP
    END;
    rr <-- isActiverPR =
    BEGIN
        rr := activerPR
    END;
    
    rr <-- getPompeCircuActive =
    BEGIN
        rr := pompeCircuActive
    END;
    
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
