// ===== This stuff deals with buttons being pressed and their effects ====

void keyPressed() {         
  if (keyCode == RIGHT && disableMenuInput == false) {                          // If Right-Arrow is pressed
    if (tamaIsAlive == true && inActionMenu == false) {
      buttonPressExtras();
      tamaMenuSelectionState += 1;                                              // Add to the menu selection state
    }
    if (inActionMenu == true) {
      buttonPressExtras();
      actionMenuSelection += 1;
    };
  }
  if (keyCode == LEFT && disableMenuInput == false ) {
    if (tamaIsAlive == true && inActionMenu == false) {
      buttonPressExtras();
      tamaMenuSelectionState -= 1;
    }
    if (inActionMenu == true) {
      buttonPressExtras();
      actionMenuSelection -= 1;
    };
  }
  if (keyCode == DOWN && disableMenuInput == false) {                           // If Down is pressed
     if (tamaIsAlive == true && inActionMenu == false) {
       buttonPressExtras();
       if (tamaMenuSelectionState == 1) {tamaFoodMenu();}                       // What happens when using the food menu
       if (tamaMenuSelectionState == 2) {tamaSleep();}                          // The lightbulb menu
       if (tamaMenuSelectionState == 3) {}                                      // The play/game menu
       if (tamaMenuSelectionState == 4) {tamaMedicate();}                       // The medication menu
       if (tamaMenuSelectionState == 5) {}                                      // The bath menu
       if (tamaMenuSelectionState == 6) {}                                      // The stats menu
       else if (tamaMenuSelectionState == 7) {tamaDiscipline();}                // The discipline menu
       return;
     }
     if (inActionMenu == true) {
       if (tamaAnimState == -1 && actionMenuSelection == 0) {             
        activeActionMenu = 0;
        tamaAnimState = -1;
        tamaFeed();
       }
       if (tamaAnimState == -1 && actionMenuSelection == 1) {             
        activeActionMenu = 0;
        tamaAnimState = -1;
        tamaFeed();
       }
     }
  }
  if (keyCode == UP && disableMenuInput == false) {
    if (tamaIsAlive == true && tamaIsEgg == false) {
      buttonPressExtras();
      tamaHunger = 40000;
      tamaIsEgg = false;      
    }
    if (tamaIsAlive == false && tamaIsEgg == false)  {
      tamaFullRestart();
    }
  }
};

void buttonPressExtras() { 
   Beep.trigger();
   tamaMenuTimer = 10;                                                            // Set the menu count down timer to 10
   tamaActionMenuTimer = 10;
   return;
}
