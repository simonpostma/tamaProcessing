// ===== This stuff deals with buttons being pressed and their effects ====

void keyPressed() {       
  if (keyCode == RIGHT && disableMenuInput == false) {                          // If Right-Arrow is pressed
    if (tamaIsAlive == true) {
      buttonPressExtras();
      tamaMenuSelectionState = tamaMenuSelectionState + 1;                      // Add to the menu selection state                                               
    }
  }
  if (keyCode == LEFT && disableMenuInput == false) {
    if (tamaIsAlive == true) {
      buttonPressExtras();
      tamaMenuSelectionState = tamaMenuSelectionState - 1;
    }
  }
  if (keyCode == DOWN && disableMenuInput == false) {         // If Down is pressed
     if (tamaIsAlive == true) {
       buttonPressExtras();
       if (tamaMenuSelectionState == 1) {tamaFeed();}                           // What happens when using the food menu
       if (tamaMenuSelectionState == 2) {tamaSleep();}                          // The lightbulb menu
       if (tamaMenuSelectionState == 3) {}                                      // The play/game menu
       if (tamaMenuSelectionState == 4) {tamaMedicate();}                       // The medication menu
       if (tamaMenuSelectionState == 5) {tamaDrink();}                          // The bath menu
       if (tamaMenuSelectionState == 6) {}                                      // The stats menu
       else if (tamaMenuSelectionState == 7) {tamaDiscipline();}                // The discipline menu
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
   tamaMenuTimer = 10;                                                        // Set the menu count down timer to 10
   return;
}
