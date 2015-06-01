// ==== The stuff that happens when the feeding menu is opened ====

// ID = 1 - The food menu
void tamaFoodMenu() {       
    tamaAnimState = -1;
    inActionMenu = true;  
    activeActionMenu = 1;
    tamaMenuSelectionState = 8;
  }
  
void drawActionMenu() {
  if (inActionMenu == true && activeActionMenu == 1) {
    // Draw the Meal & Snack options
    imageMode(CENTER);
    image(tamaTextFood, 63, 86);
    // Draw the arrow
    if (actionMenuSelection > 1) {    
    imageMode(CENTER);
    image(tamaLeftArrow, 96, 77);
    }
    if (actionMenuSelection > 0) {    
    imageMode(CENTER);
    image(tamaLeftArrow, 96, 94);
    }
  }
}

void tamaActionMenuFixer() {                                                 // Function that smoothens out some Menu details
  if (actionMenuSelection < 0) actionMenuSelection = 2;                      // If the menu state goes below 0 set the menu state to 1 to simulate going around
  else if (actionMenuSelection > 1) actionMenuSelection = 0;           // If the menu state goes above 1 set back to 0 to simulate going around
  
  if (tamaAnimState == -1 && tamaActionMenuTimer > 0) tamaActionMenuTimer = tamaActionMenuTimer - 1;                  // If the timer isnt down at 0 yet, count one down.
  else {activeActionMenu = 0; inActionMenu = false;}                            // If it is at 0, 'exit the menu'

  if (activeActionMenu == 0 &&  tamaAnimState == -1) tamaAnimState = 0;
}
