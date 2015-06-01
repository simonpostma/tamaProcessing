// ==== The stuff that happens during the placeholder action for sleeping (see tamaDrink for comment reference) ====

void tamaSleep() {
  if (tamaTired < 99990) {  
    tamaTired = tamaTired + 50000;
    if (tamaTired > 100000) tamaTired = 100000; 
    tamaAnimState = 1;
  }
  else { 
    tamaAnimState = 2;
  }
  return;
};
