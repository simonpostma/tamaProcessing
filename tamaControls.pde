void keyPressed() {                                                          // This stuff deals with buttons being pressed
  if (keyCode == RIGHT) {                                                    // If Right-Arrow is pressed
    Beep.trigger();                                                          // Play the beep sound
    tamaMenuSelectionState = tamaMenuSelectionState + 1;                     // Add to the menu selection state
    tamaMenuTimer = 10;                                                      // Set the menu count down timer to 10
  }
  if (keyCode == LEFT) {
    Beep.trigger();
    tamaMenuSelectionState = tamaMenuSelectionState - 1;
    tamaMenuTimer = 10;
  }
  if (keyCode == DOWN) {                                                      // If Down is pressed
     if (tamaMenuSelectionState == 1) {Beep.trigger(); tamaHunger = 100000;}  // Play beep and trigger desired effect.
     if (tamaMenuSelectionState == 2) {Beep.trigger(); tamaTired = 100000;}
     if (tamaMenuSelectionState == 3) {}
     if (tamaMenuSelectionState == 4) {}
     if (tamaMenuSelectionState == 5) {Beep.trigger(); tamaThirst = 100000;}
     if (tamaMenuSelectionState == 6) {}
     else if (tamaMenuSelectionState == 7) {}
  }
}
