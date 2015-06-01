// ==== The stuff that happens when tama given a drink ====

void tamaDrink() {
  if (tamaThirst < 99990 && tamaTantrum == false && tamaIsIll == false) {      // If tama's thirst is below this value, tama is thirsty so he will accept a drink
    tamaThirst = tamaThirst + 50000;                                           // Add this value to his thirst
    if (tamaThirst > tamaThirstFull) tamaThirst = tamaThirstFull;              // correct tama's thirst value to the maximum
    tamaAnimState = 1;                                                         // Make tama look happy about drinking. Alcoholism starts at a young age.
  }
  else { 
    tamaAnimState = 2;                                                         // If tama's not thirsty, shake no.
  }
  return;
};
