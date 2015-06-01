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

void showTama() {                                     // the function that handles all the animations based on states
// IDLE animation  
  if (tamaAnimState == 0) {  
    if (tamaMoveState == 0){                                  // If this state is active (which it is when the program just starts) 
      if (disableMenuInput == true) disableMenuInput = false; // Reset menu input protection during idle animation
      tamaPosX = 70;                                          // Set this X coordinate for the tama pic
      tamaPosY = 90;                                          // and this Y coordinate
      tamaMoveState = 1;                                      // Flick over the movement state for the next one.
      imageMode(CENTER);                                      // Set the image mode for accurate drawing
      image(tamaAvatar_02, tamaPosX, tamaPosY);               // Show a picture on a specific position
    } 
    else if (tamaMoveState == 1) {                    // If this state is active
      tamaPosX -= 10;                                 // Move Tama this much on the X axis
      tamaPosY -= 3;                                  // And this much on the Y axis
      tamaMoveState = 2;                              // Change state for the next movement
      imageMode(CENTER);
      image(tamaAvatar_01, tamaPosX, tamaPosY);       // Display picture
    } 
    else if (tamaMoveState == 2) {
      tamaPosX += 10;
      tamaPosY += 3;
      tamaMoveState = 3;
      imageMode(CENTER);
      image(tamaAvatar_02, tamaPosX, tamaPosY);
    }
    else if (tamaMoveState == 3) {
      tamaPosX += 10;
      tamaPosY -= 3;
      tamaMoveState = 0;
      imageMode(CENTER);
      image(tamaAvatar_01, tamaPosX, tamaPosY);
    }
  }
// YES PLZ animation
  else if (tamaAnimState == 1) {
    disableMenuInput = true;
    if (tamaYesPlzState == 0){                         // If this state is active (which it is when the program just starts) 
      tamaPosX = 70;                                   // Set this X coordinate for the tama pic
      tamaPosY = 90;                                   // and this Y coordinate
      tamaYesPlzState = 1;                             // Flick over the movement state for the next one.
      imageMode(CENTER);                               // Set the image mode for accurate drawing
      image(tamaYesPlz_01, tamaPosX, tamaPosY);        // Show a picture on a specific position
    } 
    else if (tamaYesPlzState == 1) {                   // If this state is active
      tamaYesPlzState = 2;                             // Change state for the next movement
      imageMode(CENTER);
      image(tamaYesPlz_02, tamaPosX, tamaPosY);        // Display picture
    } 
    else if (tamaYesPlzState == 2) {
      tamaYesPlzState = 3;
      imageMode(CENTER);
      image(tamaYesPlz_01, tamaPosX, tamaPosY);
    }
    else if (tamaYesPlzState == 3) {
      tamaYesPlzState = 4;
      imageMode(CENTER);
      image(tamaYesPlz_02, tamaPosX, tamaPosY);
    }
    else if (tamaYesPlzState == 4) {
      tamaYesPlzState = 5;
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
      tamaNoThxState = 1;                             // Flick over the movement state for the next one.
      imageMode(CENTER);                              // Set the image mode for accurate drawing
      image(tamaNoThx_01, tamaPosX, tamaPosY);        // Show a picture on a specific position
    } 
    else if (tamaNoThxState == 1) {                   // If this state is active
      tamaNoThxState = 2;                             // Change state for the next movement
      imageMode(CENTER);
      image(tamaNoThx_02, tamaPosX, tamaPosY);        // Display picture
    } 
    else if (tamaNoThxState == 2) {
      tamaNoThxState = 3;
      imageMode(CENTER);
      image(tamaNoThx_01, tamaPosX, tamaPosY);
    }
    else if (tamaNoThxState == 3) {
      tamaNoThxState = 4;
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
      tamaIllAnimState = 1;                             // Flick over the movement state for the next one.
      imageMode(CENTER);                                // Set the image mode for accurate drawing
      image(tamaIllAnim_01, tamaPosX, tamaPosY);        // Show a picture on a specific position
    } 
    else if (tamaIllAnimState == 1) {                   // If this state is active
      tamaIllAnimState = 2;                             // Change state for the next movement
      imageMode(CENTER);
      image(tamaIllAnim_02, tamaPosX, tamaPosY);        // Display picture
    } 
    else if (tamaIllAnimState == 2) {
      tamaIllAnimState = 3;
      imageMode(CENTER);
      image(tamaIllAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaIllAnimState == 3) {
      tamaIllAnimState = 4;
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
      tamaOuchAnimState = 1;                             // Flick over the movement state for the next one.
      imageMode(CENTER);                                 // Set the image mode for accurate drawing
      image(tamaOuchAnim_01, tamaPosX, tamaPosY);        // Show a picture on a specific position
    } 
    else if (tamaOuchAnimState == 1) {                   // If this state is active
      tamaOuchAnimState = 2;                             // Change state for the next movement
      imageMode(CENTER);
      image(tamaOuchAnim_02, tamaPosX, tamaPosY);        // Display picture
    } 
    else if (tamaOuchAnimState == 2) {
      tamaOuchAnimState = 3;
      imageMode(CENTER);
      image(tamaOuchAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaOuchAnimState == 3) {
      tamaOuchAnimState = 4;
      imageMode(CENTER);
      image(tamaOuchAnim_02, tamaPosX, tamaPosY);
      tamaAnimState = 0;
      tamaOuchAnimState = 0;
    }
  }
// DEATH animation
  else if (tamaAnimState == 5) {
    if (tamaDeathAnimState == 0){                        // If this state is active (which it is when the program just starts) 
      tamaPosX = 71;                                     // Set this X coordinate for the tama pic
      tamaPosY = 86;                                     // and this Y coordinate
      tamaDeathAnimState = 1;                            // Flick over the movement state for the next one.
      imageMode(CENTER);                                 // Set the image mode for accurate drawing
      image(tamaDeathAnim_01, tamaPosX, tamaPosY);       // Show a picture on a specific position
    } 
    else if (tamaDeathAnimState == 1) {                  // If this state is active
      tamaDeathAnimState = 2;                            // Change state for the next movement
      imageMode(CENTER);
      image(tamaDeathAnim_02, tamaPosX, tamaPosY);       // Display picture
    } 
    else if (tamaDeathAnimState == 2) {
      tamaDeathAnimState = 3;
      imageMode(CENTER);
      image(tamaDeathAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaDeathAnimState == 3) {
      tamaDeathAnimState = 4;
      imageMode(CENTER);
      image(tamaDeathAnim_02, tamaPosX, tamaPosY);
      tamaDeathAnimState = 0;
    }
  }
// EGG animation
  else if (tamaAnimState == 6) {
    disableMenuInput = true;
    if (tamaEggAnimState == 0){                        // If this state is active (which it is when the program just starts) 
      tamaPosX = 71;                                     // Set this X coordinate for the tama pic
      tamaPosY = 86;                                     // and this Y coordinate
      tamaEggAnimState = 1;                            // Flick over the movement state for the next one.
      imageMode(CENTER);                                 // Set the image mode for accurate drawing
      image(tamaEggAnim_01, tamaPosX, tamaPosY);       // Show a picture on a specific position
    } 
    else if (tamaEggAnimState == 1) {                  // If this state is active
      tamaEggAnimState = 2;                            // Change state for the next movement
      imageMode(CENTER);
      image(tamaEggAnim_02, tamaPosX, tamaPosY);       // Display picture
    } 
    else if (tamaEggAnimState == 2) {
      tamaEggAnimState = 3;
      imageMode(CENTER);
      image(tamaEggAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 3) {
      tamaEggAnimState = 4;
      imageMode(CENTER);
      image(tamaEggAnim_02, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 4) {
      tamaEggAnimState = 5;
      imageMode(CENTER);
      image(tamaEggAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 5) {
      tamaEggAnimState = 6;
      imageMode(CENTER);
      image(tamaEggAnim_02, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 6) {
      tamaEggAnimState = 7;
      imageMode(CENTER);
      image(tamaEggAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 7) {
      tamaEggAnimState = 8;
      imageMode(CENTER);
      image(tamaEggAnim_02, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 8) {
      Hatch.trigger();
      tamaEggAnimState = 9;
      imageMode(CENTER);
      image(tamaEggAnim_01, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 9) {
      tamaEggAnimState = 10;
      imageMode(CENTER);
      image(tamaEggAnim_03, tamaPosX, tamaPosY);
    }
    else if (tamaEggAnimState == 10) {
      tamaEggAnimState = 11;
      imageMode(CENTER);
      image(tamaEggAnim_03, tamaPosX, tamaPosY);
      tamaAnimState = 0;      
      tamaIsEgg = false;
      tamaIsAlive = true;
      tamaEggAnimState = 0;
    }
  }
};
