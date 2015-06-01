// === This sequence restarts the game completely ====

void tamaFullRestart() {  
  Reset.trigger();
  tamaAnimState = 0;                                   // Set Tama's animation state (0 means idle animation)
  tamaNoThxState = 0;                                  // 'No thx' animation related image counter
  tamaYesPlzState = 0;                                 // 'Yes plz' animation related image counter
  tamaIllAnimState = 0;                                // 'Ilness' animation related image counter
  tamaOuchAnimState = 0;                               // 'OUCH!' animation related image counter
  tamaDeathAnimState = 0;                              // 'OUCH!' animation related image counter
  tamaHunger = tamaHungerFull;                         // Hunger value
  tamaThirst = tamaThirstFull;                         // Thirst value
  tamaTired = tamaTiredFull;                           // Energy value
  tamaIsIll = false;                                   // Init tama's ilness state
  tamaTantrum = false;                                 // Init tama's tantrum state
  tamaIsEgg = true;                                    // Make tama an egg
  tamaIsAlive = true;                                  // Breathe life into the egg
  tamaAnimState = 6;                                   // Jump over to the correct animation.
  println("Tamagotchi fully restarted!");
}  
