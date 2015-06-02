// ==== Any background calculations are managed from this file ====

void funcTamaStats() {                      
  if (tamaIsAlive == true && tamaIsEgg == false) {  // The function that makes Tama hungry and sleepy
    tamaHunger -= tamaHungerSpeed;
    tamaTired -= tamaTiredSpeed;
  }
}

void funcTamaIllnessHandler() {
  float numIllness = random(1);
  if ( tamaIsIll == false ) {                // If tama isn't ill already
     if (numIllness < tamaIllnessChance) {   // If condition for illness is met
       tamaIsIll = true;                     // Tama becomes ill
       tamaHungerSpeed = tamaHungerSpeed * 2;
       tamaTiredSpeed = tamaTiredSpeed * 2;
       tamaAnimState = 3;                    // activate illness animation
     }
   }  
}

void funcTamaTantrumHandler() {
  float numTantrum = random(1);
  if ( tamaTantrum == false ) {              // If tama isn't ill already
     if (numTantrum < tamaTantrumChance) {   // If condition for illness is met
       tamaTantrum = true;                   // Tama becomes ill
     }
   }  
}

void funcHeartMonitor() {                    // If any of Tama's stats get under the death treshold, it's time to say bye bye :'(
   if ( tamaHunger < ( tamaDeathTreshold * 0.8 )  ) {      
     if(tamaIsAlive == true) {
       tamaAnimState = 5;
       Discipline.trigger();
       tamaIsAlive = false;
     }
   return;
   }
   if (tamaTired < 99000) {
   }
}
