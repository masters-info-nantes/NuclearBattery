/* PompeVanneAlimentation
 * Author: 
 * Creation date: 12/2/15
 */
MACHINE
    PompeVanneAlimentation

INCLUDES
    VanneAlimentation,
    PompeAlimentation

PROMOTES
    getVanneAlimActive,
    getTourneurLumineux,
    activerPompeAlim,
    desactiverPompeAlim

OPERATIONS
    activerPompeAlimentation = 
    /*PRE getVanneAlimActive = TRUE or getTourneurLumineux = TRUE
    THEN*/
    BEGIN
        activerPompeAlim
    END;
    
    desactiverPompeAlimentation = 
    /*PRE getVanneAlimActive = FALSE or getTourneurLumineux = FALSE
    THEN*/
    BEGIN
        desactiverPompeAlim
    END
END
