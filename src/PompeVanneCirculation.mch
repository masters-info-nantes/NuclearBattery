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
    PRE getVanneCircuActive = TRUE
    THEN
        activerPompeCircu
    END;
    
    desactiverPompeCirculation = 
        desactiverPompeCircu
END
