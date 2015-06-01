import ddf.minim.*;

// First of all, do you want to enable debug messages?
// Set to false if you do not want to see debug output
boolean enableDebugOutput = true;  

// ==== Image Init =====
  PImage TamIcon1, TamIcon2, TamIcon3, TamIcon4,           // The menu icons
         TamIcon5, TamIcon6, TamIcon7, TamIcon8;  
  PImage achtergrond;                                      // Prepare background image
  PImage tamaLeftArrow, tamaRightArrow;                    // Prepare menu arrows.
  PImage tamaTextFood ;                                    // Prepare action menus
  PImage tamaAvatar_01,tamaAvatar_02;                      // Prepare basic tamagotchi avatar
  PImage tamaNoThx_01, tamaNoThx_02;                       // prepare the 'shake no' animation images
  PImage tamaYesPlz_01, tamaYesPlz_02;                     // prepare the 'exhalt yes' animation images
  PImage tamaIllAnim_01, tamaIllAnim_02;                   // prepare the 'ilness' animation related image counter
  PImage tamaOuchAnim_01, tamaOuchAnim_02;                 // prepare the 'OUCH!' animation related image counter
  PImage tamaDeathAnim_01, tamaDeathAnim_02;               // prepare the 'DEATH' animation related image counter
  PImage tamaEggAnim_01, tamaEggAnim_02, tamaEggAnim_03;   // prepare the 'EGG' animation related image counter
  
// ==== Program Initialization =====                   

// Technical
  int width = 140;                                         // Set the window size
  int height = 170;

// Audio
  Minim minim;                                             // Load audio library
  AudioSample Beep;                                        // Prepare 'beep' sound
  AudioSample Hatch;                                       // Prepare 'hatch' sound
  AudioSample Discipline;                                  // Prepare 'discipline' sound
  AudioSample Reset;                                       // Prepare 'discipline' sound

// UI related stuff  
  boolean inActionMenu = false;                            // Is the user in the action menu
  int activeActionMenu = 0;                                // Which action menu is currently being used?
  int actionMenuSelection = 0;                             // Which choise is being made within the action menu
  boolean disableMenuInput = false;                        // Protect menu from being used during certain sequences
  int tamaMenuTimer = 0;                                   // Reset the menu display timer                         
  int tamaMenuSelectionState = 8;                          // Initialize menu state
  int tamaActionMenuTimer = 0;
 
// Defining Tama's livelihood
  boolean tamaIsEgg = true;                                // Variable that keeps track of tama's egg period
  boolean tamaIsAlive = false;                             // Variable that keeps track of tama's life
  int tamaDeathTreshold = 99000;                           // Below which stat value does Tama die ?
 
// Hunger related
  int tamaHungerFull = 99999;                              // Tama's maximum hunger value
  int tamaHunger = tamaHungerFull;                         // Hunger value
  int tamaOriginalHungerSpeed = 1;                         // How fast does tama get hungry?
  int tamaHungerSpeed = tamaOriginalHungerSpeed;           
  
// Thirst Related
  int tamaThirstFull = 99999;                              // Tama's maximum Thirst value
  int tamaThirst = tamaThirstFull;                         // Thirst value
  int tamaOriginalThirstSpeed = 1;                         // How fast does tama get thirsty?
  int tamaThirstSpeed = tamaOriginalThirstSpeed;           
  
// Sleepiness related
  int tamaTiredFull =  99999;                              // Tama's maximum sleepiness value
  int tamaTired = tamaTiredFull;                           // Energy value
  int tamaOriginalTiredSpeed = 1;                          // How fast does tama get tired?
  int tamaTiredSpeed = tamaOriginalTiredSpeed;             
 
// Illness related
  boolean tamaIsIll = false;                               // Init tama's ilness state
  float  tamaIllnessChance = 0.003;                        // How big is the chance tama gets ill?
  
// Tantrum related
  boolean tamaTantrum = false;                             // Init tama's tantrum state
  float  tamaTantrumChance = 0.005;                        // How big is the chance tama throws a tantrum?
  
// Environment & Game state related stuff  
  boolean tamaLights = true;                               // True = lights on, False = lights off
  int tamaPosX;                                            // Set the initial position of Tama
  int tamaPosY; 

void setup() {                                             // Ran once at startup
// Technical
  frameRate(2);                                            // Set framerate
  size(width, height);                                     // Window size
  
// Audio
  minim = new Minim(this);                                 // Prepare 'beep' sound
  Beep = minim.loadSample("sound/beep.wav");               // Load beep sound file
  Hatch = minim.loadSample("sound/hatch.wav");             // Load hatch sound file
  Discipline = minim.loadSample("sound/discipline.wav");   // Load discipline sound file
  Reset = minim.loadSample("sound/reset.wav");             // Load reset sound file

// UI related stuff
  achtergrond =     loadImage("achtergrond.png");          // Load background image file
  tamaLeftArrow =   loadImage("actionmenu/larrow.gif");
  tamaRightArrow =  loadImage("actionmenu/rarrow.gif");    // Prepare menu arrows.
  tamaTextFood =    loadImage("actionmenu/foodmenu.gif");  // Prepare action menus
  
  TamIcon1 = loadImage("menu/TamIcon1.gif");               // 'Light' afbeelding inladen
  TamIcon2 = loadImage("menu/TamIcon2.gif");               // 'Game' afbeelding inladen
  TamIcon3 = loadImage("menu/TamIcon3.gif");               // 'Medicine' afbeelding inladen
  TamIcon4 = loadImage("menu/TamIcon4.gif");               // 'Bathe' afbeelding inladen
  TamIcon5 = loadImage("menu/TamIcon5.gif");               // 'Stats' afbeelding inladen
  TamIcon6 = loadImage("menu/TamIcon6.gif");               // 'Discipline' afbeelding inladen
  TamIcon7 = loadImage("menu/TamIcon7.gif");               // 'Alert' afbeelding inladen
  TamIcon8 = loadImage("menu/TamIcon8.gif");               // 'Food' afbeelding inladen
  
// Loading up animation pictures
  tamaAvatar_01 = loadImage("chars/01/tama_idle_01.gif");     // Load character image 1
  tamaAvatar_02 = loadImage("chars/01/tama_idle_02.gif");     // Load character image 2

  tamaNoThx_01 = loadImage("chars/01/tama_nothx_01.gif");     // Load 'shake no' image 1
  tamaNoThx_02 = loadImage("chars/01/tama_nothx_02.gif");     // Load 'shake no' image 2
  
  tamaYesPlz_01 = loadImage("chars/01/tama_yesplz_01.gif");   // Load 'shake no' image 1
  tamaYesPlz_02 = loadImage("chars/01/tama_yesplz_02.gif");   // Load 'shake no' image 2   
  
  tamaIllAnim_01 = loadImage("chars/01/tama_ill_01.gif");     // Load 'shake no' image 1
  tamaIllAnim_02 = loadImage("chars/01/tama_ill_02.gif");     // Load 'shake no' image 2  

  tamaOuchAnim_01 = loadImage("chars/01/tama_ouch_01.gif");   // Load 'shake no' image 1
  tamaOuchAnim_02 = loadImage("chars/01/tama_ouch_02.gif");   // Load 'shake no' image 2 
    
  tamaDeathAnim_01 = loadImage("chars/dead1.gif");            // Load 'death' image 1
  tamaDeathAnim_02 = loadImage("chars/dead2.gif");            // Load 'death' image 2 
  
  tamaEggAnim_01 = loadImage("chars/00/egg1.gif");            // Load 'egg' image 1
  tamaEggAnim_02 = loadImage("chars/00/egg2.gif");            // Load 'egg' image 2 
  tamaEggAnim_03 = loadImage("chars/00/egg3.gif");            // Load 'egg' image 3
}

void draw() {
  background(achtergrond);                                   // Display background
  if (tamaIsAlive == true) {
    funcTamaStats();                                         // Make tama hungry, thirsty and sleepy
    funcTamaIllnessHandler();                                // Calculate if tama is ill or not
    funcTamaTantrumHandler();                                // Calculate if tama is throwing a tantrum or not
    tamaAlert();                                             // Let the player know when Tama wants something by showing the menu icon
    drawActionMenu();                                        // The function that deals with drawing the action menus on screen  
  }
  funcHeartMonitor();                                        // Keep track of wether or not Tama is alive
  showTama();                                                // Handle the displaying of Tama's different animations through states
  tamaMenuSelection();                                       // Let the player browse the menu
  tamaMenuFixer();                                           // Fix up the menu a little
  tamaActionMenuFixer();                                     // Fix up the action menus a little
  
// ==== Debug stuff ====

  if (enableDebugOutput == true) {
    println("#============================#   " + "#=====================================#"  );
    println("# Debug Output               #   " + "# Controls                            #"  );
    println("#============================#   " + "#=====================================#"  );    
    println("  Alive                " + tamaIsAlive + "        LEFTARROW    Navigate menu left." );
    println("  Hunger               " + tamaHunger + "       RIGHTARROW   Navigate menu right." );
    println("  Thirst               " + tamaThirst + "       DOWNARROW    Select menu option."  );
    println("  Tired                " + tamaTired + "       UPARROW      Kill / Respawn Tama." );    
    println("  Illness              " + tamaIsIll);
    println("  Tantrum              " + tamaTantrum);
    println("  MenuSelectionState   " + tamaMenuSelectionState + "           To make tama sleep, use light.");    
    println("  Current animation    " + tamaAnimState + "           To give tama drink, use bathroom.");
  }
  if (enableDebugOutput == false) {
    println("#=====================================#");
    println("# Controls                            #");
    println("#=====================================#");    
    println("  LEFTARROW:   Navigate menu left.");
    println("  RIGHTARROW:  Navigate menu right.");
    println("  DOWNARROW:   Select menu option.");
    println("  UPARROW:     Kill / Respawn Tama.");   
    println(""); 
    println(""); 
    println("  To give tama drink, use bathroom.");    
    println("  To make tama sleep, use light.");
  }
}
