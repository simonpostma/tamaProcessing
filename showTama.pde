void showTama() {                                   // Reset Tama's position
  if (tamaMoveState == 0){                          
    tamaPosX = 80;                                  
    tamaPosY = 85;
    tamaMoveState = 1;
    image(tamaAvatar_02, tamaPosX, tamaPosY);
    return;
  } 
  else if (tamaMoveState == 1) {                    // If the movement state is apropriate
    tamaPosX -= 10;                                 // Move Tama this much on the X axis
 //   tamaPosY -= 7;                                  // And this much on the Y axis
    tamaMoveState = 2;                              // Change state for the next movement
    image(tamaAvatar_01, tamaPosX, tamaPosY);          // Display picture
    return;                                         // Return Tama's position to the big Tama world
  } 
  else if (tamaMoveState == 2) {
    tamaPosX += 10;
 //   tamaPosY += 7;
    tamaMoveState = 3;
    image(tamaAvatar_02, tamaPosX, tamaPosY);
    return;
  }
  else if (tamaMoveState == 3) {
    tamaPosX += 10;
 //   tamaPosY -= 7;
    tamaMoveState = 0;
    image(tamaAvatar_01, tamaPosX, tamaPosY);
    return;
 }
}
