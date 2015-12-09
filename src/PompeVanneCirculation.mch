/* PompeVanneCirculation
 * Author: 
 * Creation date: 12/2/15
 */
MACHINE
    PompeVanneCirculation

INCLUDES
    VanneCirculation,
    PompeCirculation

PROMOTES
    activerPompeCircu,
    desactiverPompeCircu,
    getVanneCircuActive,
    getPompeCircuActive,
    getPompeCircuIndisponible,
    verouillerVanneCircu,
    setVerrouillageElec

OPERATIONS
    activerPompeCirculation = 
    /*PRE ( isActiverPP = TRUE or isActiverPR = TRUE )  & not ( isActiverPP = FALSE or isActiverPR = FALSE or getVanneCircuActive = TRUE )
    THEN*/
    BEGIN
        activerPompeCircu
    END;
    
    desactiverPompeCirculation = 
    BEGIN
        desactiverPompeCircu
    END
END
