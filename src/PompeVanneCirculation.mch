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
    getVanneCircuActive

OPERATIONS
    activerPompeCirculation = 
    PRE ( isActiverPP = TRUE or isActiverPR = TRUE )  & not ( isDesactiverPP = TRUE or isDesactiverPR = TRUE or getVanneCircuActive = TRUE )
    THEN
        activerPompeCircu
    END;
    
    desactiverPompeCirculation = 
        desactiverPompeCircu
END
