// ==== The stuff that happens while disciplining Tama ====

void tamaDiscipline() {
  if (tamaTantrum == true) {  
    Discipline.trigger();
    tamaTantrum = false;
    tamaAnimState = 4;
  }
  else { 
    tamaAnimState = 2;
  }
  return;
};
