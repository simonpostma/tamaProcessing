// ==== The stuff that happens when tama is fed (see tamaDrink for comment reference) ====

void tamaFeed() {
  if (tamaHunger < 99990 && tamaTantrum == false && tamaIsIll == false) {      // If tama's hunger is below this value, tama is hungry so he will accept a drink
    tamaHunger = tamaHunger + 50000;                                           // Add this value to his hunger
    if (tamaHunger > 100000) tamaHunger = 100000;                              // correct tama's hunger value to the maximum
    tamaAnimState = 1;                                                         
  }
  else { 
    tamaAnimState = 2;
  }
  return;
};
