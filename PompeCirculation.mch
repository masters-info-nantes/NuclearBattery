/* PompeCirculation
 * Author: 
 * Creation date: 18/11/2015
 */
MACHINE
    PompeCirculation

VARIABLES 
    active
    
INVARIANT
    active : BOOL
    
INITIALISATION
    active := FALSE
    
END
