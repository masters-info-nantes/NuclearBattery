/* PompeCirculation
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    PompeCirculation

VARIABLES 
    pompeCircuActive,
    pompeCircuIndisponible,
    verrouillageElec,
    verrouillageFluide,    
    activerPP,
    activerPR
    
INVARIANT
    pompeCircuActive : BOOL
    & activerPP: BOOL
    & activerPR: BOOL
    & pompeCircuIndisponible : BOOL
    & verrouillageElec : BOOL
    & verrouillageFluide : BOOL    
    
INITIALISATION
    pompeCircuActive := FALSE
    || activerPP := FALSE
    || activerPR := FALSE
    || pompeCircuIndisponible := FALSE
    || verrouillageElec := FALSE
    || verrouillageFluide := FALSE        
   
OPERATIONS

    rr <-- isActiverPP =
    BEGIN
        rr := activerPP
    END;
    rr <-- isActiverPR =
    BEGIN
        rr := activerPR
    END;
    
    rr <-- getPompeCircuIndisponible =
    BEGIN
        rr := pompeCircuIndisponible
    END;
    
    rr <-- getPompeCircuActive =
    BEGIN
        rr := pompeCircuActive
    END;
    
    setVerrouillageElec =
        verrouillageElec := TRUE;
        
    setVerrouillageFluide =
        verrouillageFluide := TRUE;    
    
    activerPompeCircu =
    BEGIN
        pompeCircuActive := TRUE
    END;
    
    desactiverPompeCircu =
    BEGIN
        pompeCircuActive := FALSE
    END
    
END
