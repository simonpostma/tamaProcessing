// === This handles most of the menu related stuff ====

void tamaAlert() {                                                                 // Function that shows if Tama needs something
  if (tamaHunger < 99900 || tamaThirst < 99950 || tamaTired < 99890 ||
      tamaIsIll == true || tamaTantrum == true ) {                                 // IF any of these conditions apply
    if (tamaIsAlive == true) {
      imageMode(CENTER);                                                           // Image fiddly stuff
      image(TamIcon8, 97, 112);                                                    // Draw the 'I need something' symbol
    }
  } else { return; }                                                               // Otherwise just chill
}

void tamaMenuSelection() {
  if (tamaMenuSelectionState == 0) { }
  else if (tamaMenuSelectionState == 1) {                                          // If in Food state
    imageMode(CENTER);                                                             // Image fiddly stuff
    image(TamIcon1, 43, 60);                                                       // Draw the actual menu icon image
  }
  else if (tamaMenuSelectionState == 2) {                                          // Light
    imageMode(CENTER);    
    image(TamIcon2, 60, 60);
  }
  else if (tamaMenuSelectionState == 3) {                                          // Game
    imageMode(CENTER);    
    image(TamIcon3, 78, 60);
  }
  else if (tamaMenuSelectionState == 4) {                                          // Medicine
    imageMode(CENTER);    
    image(TamIcon4, 97, 60);
  }
  else if (tamaMenuSelectionState == 5) {                                          // Bathe
    imageMode(CENTER);    
    image(TamIcon5, 43, 112);
  }
  else if (tamaMenuSelectionState == 6) {                                          // Stats
    imageMode(CENTER);    
    image(TamIcon6, 60, 112);
  }
  else if (tamaMenuSelectionState == 7) {                                          // Discipline
    imageMode(CENTER);    
    image(TamIcon7, 78, 112);
  }
}

void tamaMenuFixer() {                                                             // Function that smoothens out some Menu details
  if (tamaMenuSelectionState < 1) tamaMenuSelectionState = 8;                      // If the menu state goes below 1 set the menu state to 1 to simulate going around
  else if (tamaMenuSelectionState > 8) tamaMenuSelectionState = 1;                 // If the menu state goes below 8 set back to 1 to simulate going around
  
  if (tamaMenuTimer > 0) tamaMenuTimer = tamaMenuTimer - 1;                        // If the timer isnt down at 0 yet, count one down.
  else {tamaMenuSelectionState = 8;}                                               // If it is at 0, 'exit the menu'
}
