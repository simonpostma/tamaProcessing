// ==== The stuff that happens during the placeholder action for sleeping (see tamaDrink for comment reference) ====

void tamaMedicate() {
  if (tamaIsIll == true) {  
    Discipline.trigger();
    tamaIsIll = false;
    tamaHungerSpeed = tamaOriginalHungerSpeed;
    tamaThirstSpeed = tamaOriginalThirstSpeed;
    tamaTiredSpeed = tamaOriginalTiredSpeed;
    tamaAnimState = 4;
  }
  else { 
    tamaAnimState = 2;
  }
  return;
};