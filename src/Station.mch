/* Station
 * Author: 
 * Creation date: 11/11/2015
 */
MACHINE
    Station

INCLUDES
    PompeVanneAlimentation,
    PompeVanneCirculation
    
VARIABLES
    DC380HT,
    alarmeChaleur,
    alarmeInondation
    
INVARIANT
    DC380HT : BOOL
    & alarmeChaleur  : BOOL
    & alarmeInondation : BOOL
    
INITIALISATION
    DC380HT := FALSE
    || alarmeChaleur := FALSE 
    || alarmeInondation := FALSE 

OPERATIONS
    
     // 1
     // ALARM Chaud + indisponible
     alarmeTropChaud =  
     CHOICE 
         alarmeChaleur := TRUE
     OR 
         skip
     END;
    
     // 3
     excesEau =
     CHOICE
         alarmeInondation := TRUE
     OR
         skip
     END;   
    
     // Pompe Alimentation
     // 4
     ordreEnclenchementPompeAlimentation = 
     CHOICE
         activerPompeAlimentation
     OR
         skip
     END;
     
     
     // 5
     ordreDeclenchementPompeAlimentation = 
         desactiverPompeAlimentation;


     // Pompe Circulation
     // 6
     verouillageEauEnclenchementPompeCirculation = 
     CHOICE
         verouillerVanneCircu
     OR
         skip
     END;
     
     // 7
     ordreEnclenchementPompeCirculation = 
     CHOICE 
         activerPompeCircu
     OR
         skip
     END;
     
     // 8
     ordreDeclenchementPompeCirculation = 
     BEGIN
         desactiverPompeCircu
     END;

     // 9
     verouillageElecEnclenchementPompeCirculation =
     CHOICE 
         setVerrouillageElec
     OR
         skip
     END
END
