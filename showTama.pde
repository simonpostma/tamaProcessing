// ==== the function that handles all the animations based on states ====

// Stuff for the animation frame counters
  int tamaMoveState = 0;                              // Initialize movement animation state
  int tamaAnimState = 6;                              // Set Tama's animation state (set to 0 to start as tama, 6 to start as egg) 
  int tamaNoThxState = 0;                             // 'No thx' animation related image counter
  int tamaYesPlzState = 0;                            // 'Yes plz' animation related image counter  
  int tamaIllAnimState = 0;                           // 'Ilness' animation related image counter  
  int tamaOuchAnimState = 0;                          // 'OUCH!' animation related image counter 
  int tamaDeathAnimState = 0;                         // 'DEATH' animation related image counter  
  int tamaEggAnimState = 0;                           // 'EGG' animation related image counter
  int tamaLightsAnimState = 0;                        // 'LIGHTS OUT' animations related image counter
  int tamaSleepAnimState = 0;                         // 'SLEEPING' animations related image counter

void showTama() {    // the function that handles all the animations based on states
// Hide tama, for menu's and stuff
  if (tamaAnimState == -1 || tamaAnimState == -2) {
    
  }

// IDLE animation  
  if (tamaAnimState == 0) {  
    if (tamaMoveState == 0){                                  // If this state is active (which it is when the program just starts) 
      if (disableMenuInput == true) disableMenuInput = false; // Reset menu input protection during idle animation
      if (tamaIsIll == true) tamaAnimState = 3;               // If tama is Ill, skip to that animation instead
      tamaPosX = 70;                                          // Set this X coordinate for the tama pic
      tamaPosY = 90;                                          // and this Y coordinate
      tamaMoveState += 1;                                     // Flick over the movement state for the next one.
      imageMode(CENTER);                                      // Set the image mode for accurate drawing
      image(tamaAvatar_02, tamaPosX, tamaPosY);               // Show a picture on a specific position
    } 
    else if (tamaMoveState == 1) {                            // If this state is active
      if (tamaIsIll == true) tamaAnimState = 3;               // If tama is Ill, skip to that animation instead
      tamaPosX = 60;                                         // Move Tama this much on the X axis
      tamaPosY = 87;                                          // And this much on the Y axis
      tamaMoveState += 1;                                     // Change state for the next movement
      imageMode(CENTER);
      image(tamaAvatar_01, tamaPosX, tamaPosY);               // Display picture
    } 
    else if (tamaMoveState == 2) {
      if (tamaIsIll == true) tamaAnimState = 3;               // If tama is Ill, skip to that animation instead
      tamaPosX = 70;
      tamaPosY = 90;
      tamaMoveState += 1;
      imageMode(CENTER);
      image(tamaAvatar_02, tamaPosX, tamaPosY);
    }
    else if (tamaMoveState == 3) {
      if (tamaIsIll == true) tamaAnimState = 3;               // If tama is Ill, skip to that animation instead
      tamaPosX = 80;
      tamaPosY = 87;
      tamaMoveState = 0;
      imageMode(CENTER);
      image(tamaAvatar_01, tamaPosX, tamaPosY);
    }
  }
// YES PLZ animation
  else if (tamaAnimState == 1) {
    disableMenuInput = true;
    if (tamaYesPlzState == 0){                         // If this state is active (which it is when the program just starts) 
      tamaPosX = 80;                                   // Set this X coordinate for the tama pic
      tamaPosY = 90;                                   // and this Y coordinate
      tamaYesPlzState += 1;                            // Flick over the movement state for the next one.
      imageMode(CENTER);                               // Set the image mode for accurate drawing
      image(tamaYesPlz_01, tamaPosX, tamaPosY);        // Show a picture on a specific position
    } 
    else if (tamaYesPlzState == 1) {                   // If this state is active
      tamaYesPlzState += 1;                            // Change state for the next movement
      imageMode(CENTER);
      image(tamaYesPlz_02, tamaPosX, tamaPosY);        // Display picture
    } 
    else if (tamaYesPlzState == 2) {
      tamaYesPlzState += 1;
      imageMode(CENTER);
      image(tamaYesPlz_01, tamaPosX, tamaPosY);
    }
    else if (tamaYesPlzState == 3) {
      tamaYesPlzState += 1;
      imageMode(CENTER);
      image(tamaYesPlz_02, tamaPosX, tamaPosY);
    }
    else if (tamaYesPlzState == 4) {
      tamaYesPlzState += 1;
      imageMode(CENTER);
      image(tamaYesPlz_01, tamaPosX, tamaPosY);
      tamaAnimState = 0;
      tamaYesPlzState = 0;
    }
  }
// NO THX animation
  else if (tamaAnimState == 2) {
    disableMenuInput = true;
    if (tamaNoThxState == 0){                         // If this state is active (which it is when the program just starts) 
      tamaPosX = 70;                                  // Set this X coordinate for the tama pic
      tamaPosY = 90;                                  // and this Y coordinate
      tamaNoThxState += 1;                             // Flick over the movement state for the next one.
      imageMode(CENTER);                              // Set the image mode for accurate drawing
      image(tamaNoThx_01, tamaPosX, tamaPosY);        // Show a picture on a specific position
    } 
    else if (tamaNoThxState == 1) {                   // If this state is active
      tamaNoThxState += 1;                             // Change state for the next movement
      imageMode(CENTER);
      image(tamaNoThx_02, tamaPosX, tamaPosY);        // Display picture
    } 
    else if (tamaNoThxState == 2) {
      tamaNoThxState += 1;
      imageMode(CENTER);
      image(tamaNoThx_01, tamaPosX, tamaPosY);
    }
    else if (tamaNoThxState == 3) {
      tamaNoThxState += 1;
      imageMode(CENTER);
      image(tamaNoThx_02, tamaPosX, tamaPosY);
      tamaAnimState = 0;
      tamaNoThxState = 0;
    }
  }
// ILLNESS animation
  else if (tamaAnimState == 3) {
    if (tamaIllAnimState == 0){                         // If this state is active (which it is when the program just starts) 
      if (disableMenuInput == true) disableMenuInput = false; // Reset menu input protection during idle animation
      tamaPosX = 70;                                    // Set this X coordinate for the tama pic
      tamaPosY = 88;                                    // and this Y coordinate
      tamaIllAnimState += 1;                             // Flick over the movement state for the next one.
      imageMode(CENTER);                                // Set the image mode for accurate drawing
      image(tamaIllAnim_01, tamaPosX, tamaPosY);        // Show a picture on a specific position
    } 
    else if (tamaIllAnimState == 1) {                   // If this state is active
      tamaIllAnimState += 1;                             // Change state for the next movement
      imageMode(CENTER);
      image(tamaIllAnim_02, tamaPosX, tamaPosY);        // Display picture
    } 
    else if (tamaIllAnimState == 2) {
      tamaIllAnimState += 1;
      imageMode(CENTER);
      image(tamaIllAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaIllAnimState == 3) {
      tamaIllAnimState += 1;
      imageMode(CENTER);
      image(tamaIllAnim_02, tamaPosX, tamaPosY);
      tamaIllAnimState = 0;
    }
  }
// OUCH animation
  else if (tamaAnimState == 4) {
    disableMenuInput = true;
    if (tamaOuchAnimState == 0){                         // If this state is active (which it is when the program just starts) 
      tamaPosX = 80;                                     // Set this X coordinate for the tama pic
      tamaPosY = 90;                                     // and this Y coordinate
      tamaOuchAnimState += 1;                             // Flick over the movement state for the next one.
      imageMode(CENTER);                                 // Set the image mode for accurate drawing
      image(tamaOuchAnim_01, tamaPosX, tamaPosY);        // Show a picture on a specific position
    } 
    else if (tamaOuchAnimState == 1) {                   // If this state is active
      tamaOuchAnimState += 1;                             // Change state for the next movement
      imageMode(CENTER);
      image(tamaOuchAnim_02, tamaPosX, tamaPosY);        // Display picture
    } 
    else if (tamaOuchAnimState == 2) {
      tamaOuchAnimState += 1;
      imageMode(CENTER);
      image(tamaOuchAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaOuchAnimState == 3) {
      tamaOuchAnimState += 1;
      imageMode(CENTER);
      image(tamaOuchAnim_02, tamaPosX, tamaPosY);  
      tamaAnimState = 0;                                 // jump back to idle animation
      tamaOuchAnimState = 0;                             // Reset the animation counter
    }
  }
// DEATH animation
  else if (tamaAnimState == 5) {
    if (tamaDeathAnimState == 0){                        // If this state is active (which it is when the program just starts) 
      tamaPosX = 71;                                     // Set this X coordinate for the tama pic
      tamaPosY = 86;                                     // and this Y coordinate
      tamaDeathAnimState += 1;                            // Flick over the movement state for the next one.
      imageMode(CENTER);                                 // Set the image mode for accurate drawing
      image(tamaDeathAnim_01, tamaPosX, tamaPosY);       // Show a picture on a specific position
    } 
    else if (tamaDeathAnimState == 1) {                  // If this state is active
      tamaDeathAnimState += 1;                            // Change state for the next movement
      imageMode(CENTER);
      image(tamaDeathAnim_02, tamaPosX, tamaPosY);       // Display picture
      tamaDeathAnimState = 0;                            // Restart the animation loop
    }
  }
// EGG animation
  else if (tamaAnimState == 6) {
    disableMenuInput = true;
    if (tamaEggAnimState == 0){                          // If this state is active (which it is when the program just starts) 
      tamaPosX = 71;                                     // Set this X coordinate for the tama pic
      tamaPosY = 86;                                     // and this Y coordinate
      tamaEggAnimState += 1;                              // Flick over the movement state for the next one.
      imageMode(CENTER);                                 // Set the image mode for accurate drawing
      image(tamaEggAnim_01, tamaPosX, tamaPosY);         // Show a picture on a specific position
    } 
    else if (tamaEggAnimState == 1) {                    // If this state is active
      tamaEggAnimState += 1;                              // Change state for the next movement
      imageMode(CENTER);
      image(tamaEggAnim_02, tamaPosX, tamaPosY);         // Display picture
    } 
    else if (tamaEggAnimState == 2) {
      tamaEggAnimState += 1;
      imageMode(CENTER);
      image(tamaEggAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 3) {
      tamaEggAnimState += 1;
      imageMode(CENTER);
      image(tamaEggAnim_02, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 4) {
      tamaEggAnimState += 1;
      imageMode(CENTER);
      image(tamaEggAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 5) {
      tamaEggAnimState += 1;
      imageMode(CENTER);
      image(tamaEggAnim_02, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 6) {
      tamaEggAnimState += 1;
      imageMode(CENTER);
      image(tamaEggAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 7) {
      tamaEggAnimState += 1;
      imageMode(CENTER);
      image(tamaEggAnim_02, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 8) {
      Hatch.trigger();                                  // Trigger the hatching sound
      tamaEggAnimState += 1;
      imageMode(CENTER);
      image(tamaEggAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 9) {
      tamaEggAnimState += 1;      
      tamaPosX = 72;                                     // Set this X coordinate for the tama pic
      tamaPosY = 84;                                     // and this Y coordinate
      imageMode(CENTER);
      image(tamaEggAnim_03, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 10) {
      tamaEggAnimState += 1;
      imageMode(CENTER);
      image(tamaEggAnim_03, tamaPosX, tamaPosY);
      tamaAnimState = 0;                                // Reset to idle animation
      tamaIsEgg = false;                                // Tama is no longer an egg after hatchin
      tamaIsAlive = true;                               // Tama is now considered alive
      tamaEggAnimState = 0;                             // Reset the egg animation counter
    }
  }
// LIGHTS OUT animation
  else if (tamaAnimState == 7) {
    if (tamaIsAwake == true) {
      if (tamaLightsAnimState == 0){                        // If this state is active (which it is when the program just starts) 
      tamaPosX = 71;                                       // Set this X coordinate for the tama pic
      tamaPosY = 86;                                       // and this Y coordinate
      tamaLightsAnimState += 1;                             // Flick over the movement state for the next one.
      imageMode(CENTER);                                   // Set the image mode for accurate drawing
      image(tamaLightsAnim_01, tamaPosX, tamaPosY);         // Show a picture on a specific position
      } 
      else if (tamaLightsAnimState == 1) {                  // If this state is active
      tamaLightsAnimState += 1;                             // Change state for the next movement
      imageMode(CENTER);
      image(tamaLightsAnim_02, tamaPosX, tamaPosY);          // Display picture
      tamaLightsAnimState = 0;                              // Restart the animation loop
      }
    }
    if (tamaIsAwake == false) {
      if (tamaLightsAnimState == 0){                        // If this state is active (which it is when the program just starts) 
      tamaPosX = 71;                                       // Set this X coordinate for the tama pic
      tamaPosY = 86;                                       // and this Y coordinate
      tamaLightsAnimState += 1;                             // Flick over the movement state for the next one.
      imageMode(CENTER);                                   // Set the image mode for accurate drawing
      image(tamaLightsAnim_03, tamaPosX, tamaPosY);         // Show a picture on a specific position
      } 
      else if (tamaLightsAnimState == 1) {                  // If this state is active
      tamaLightsAnimState += 1;                             // Change state for the next movement
      imageMode(CENTER);
      image(tamaLightsAnim_03, tamaPosX, tamaPosY);         // Display picture
      tamaLightsAnimState = 0;                              // Restart the animation loop
      }
    }
  }
 
// SLEEPING animation
     else if (tamaAnimState == 8) {
    if (tamaSleepAnimState == 0){                         // If this state is active (which it is when the program just starts) 
      tamaPosX = 71;                                      // Set this X coordinate for the tama pic
      tamaPosY = 86;                                      // and this Y coordinate
      tamaSleepAnimState += 1;                            // Flick over the movement state for the next one.
      imageMode(CENTER);                                  // Set the image mode for accurate drawing
      image(tamaSleepAnim_01, tamaPosX, tamaPosY);        // Show a picture on a specific position
    } 
    else if (tamaSleepAnimState == 1) {                   // If this state is active
      tamaSleepAnimState += 1;                            // Change state for the next movement
      imageMode(CENTER);
      image(tamaSleepAnim_02, tamaPosX, tamaPosY);        // Display picture
      tamaSleepAnimState = 0;                             // Restart the animation loop
    }
  }
}
