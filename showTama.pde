void funcShowTama(int tamaPosX, int tamaPosY) {     // The function that draws Tama
  imageMode(CENTER);                                // Image display properties
  image(tamaAvatar, tamaPosX, tamaPosY);            // Display the actual Tama image
}

void moveTama() {                                   // Reset Tama's position
  if (tamaMoveState == 0){                          
    tamaPosX = 70;                                  
    tamaPosY = 95;
    tamaMoveState = 1;
    return;
  } 
  else if (tamaMoveState == 1) {                    // If the movement state is apropriate
    tamaPosX -= 10;                                 // Move Tama this much on the X axis
    tamaPosY -= 7;                                  // And this much on the Y axis
    tamaMoveState = 2;                              // Change state for the next movement
    return;                                         // Return Tama's position to the big Tama world
  } 
  else if (tamaMoveState == 2) {
    tamaPosX += 10;
    tamaPosY += 7;
    tamaMoveState = 3;
    return;
  }
  else if (tamaMoveState == 3) {
    tamaPosX += 10;
    tamaPosY -= 7;
    tamaMoveState = 0;
    return;
 }
}
