// ==== The stuff that happens when tama is fed (see tamaDrink for comment reference) ====

void tamaFeed() {
  if (tamaHunger < 99990 && tamaTantrum == false && tamaIsIll == false) {  
    tamaHunger = tamaHunger + 50000;
    if (tamaHunger > 100000) tamaHunger = 100000; 
    tamaAnimState = 1;
  }
  else { 
    tamaAnimState = 2;
  }
  return;
};
