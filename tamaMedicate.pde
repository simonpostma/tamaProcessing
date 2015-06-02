// ==== The stuff that happens during the placeholder action for sleeping (see tamaDrink for comment reference) ====

void tamaMedicate() {
  if (tamaIsIll == true) {  
    tamaIsIll = false;
    tamaHungerSpeed = tamaOriginalHungerSpeed;
    tamaTiredSpeed = tamaOriginalTiredSpeed;
    tamaAnimState = 4;
  }
  else { 
    tamaAnimState = 2;
  }
  return;
};
