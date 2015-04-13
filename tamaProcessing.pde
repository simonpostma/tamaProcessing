import ddf.minim.*;

// Initialization
  Minim minim;                                // Audio library inladen
  AudioSample Beep;                           // Voorbereiden audio sample
  
  PImage achtergrond;                         // Voorbereiden achtergrond afbeelding
  PImage tamaAvatar_01,tamaAvatar_02;                          // Voorbereiden character afbeelding
  
  PImage TamIcon1, TamIcon2, TamIcon3, TamIcon4, TamIcon5, TamIcon6, TamIcon7, TamIcon8;                           

// Defining variables
  int tamaHungerFull = 100000;
  int tamaHunger = tamaHungerFull;            // Hunger value
  int tamaHungerSpeed = 1;                    // How fast does tama get hungry?
  int tamaThirstFull = 100000;
  int tamaThirst = tamaThirstFull;            // Thirst value
  int tamaThirstSpeed = 1;                    // How fast does tama get thirsty?
  int tamaTiredFull =  100000;                // 
  int tamaTired = tamaTiredFull;              // Energy value
  int tamaTiredSpeed = 1;                     // How fast does tama get tired?
  int tamaMoveState;                          // Initialize movement animation state
  int tamaMenuSelectionState = 8;             // Initialize menu state
  boolean tamaLights = true;                  // True = lights on, False = lights off
  
  int tamaMenuTimer = 0;                      // Reset the menu display timer
  int tamaPosX;                          // Set the initial position of Tama
  int tamaPosY;
  int width = 140;                            // Set the window size
  int height = 170;

void setup() {                                 // dit wordt als allereerste één keer uitgevoerd
  tamaMoveState = 0;
  size(width, height);                         // Window size
  frameRate(2);                                // Set framerate
  achtergrond = loadImage("achtergrond.png");  // Achtergrond inladen
  tamaAvatar_01 = loadImage("chars/tamaB_01.gif"); // Character afbeelding inladen
  tamaAvatar_02 = loadImage("chars/tamaB_02.gif"); // Character afbeelding inladen
  TamIcon1 = loadImage("menu/TamIcon1.gif");   // 'Light' afbeelding inladen
  TamIcon2 = loadImage("menu/TamIcon2.gif");   // 'Game' afbeelding inladen
  TamIcon3 = loadImage("menu/TamIcon3.gif");   // 'Medicine' afbeelding inladen
  TamIcon4 = loadImage("menu/TamIcon4.gif");   // 'Bathe' afbeelding inladen
  TamIcon5 = loadImage("menu/TamIcon5.gif");   // 'Stats' afbeelding inladen
  TamIcon6 = loadImage("menu/TamIcon6.gif");   // 'Discipline' afbeelding inladen
  TamIcon7 = loadImage("menu/TamIcon7.gif");   // 'Alert' afbeelding inladen
  TamIcon8 = loadImage("menu/TamIcon8.gif");   // 'Food' afbeelding inladen
  minim = new Minim(this);                     // Geluiden laden
  Beep = minim.loadSample("beep.wav");         // Geluiden laden
}

void draw() {
  background(achtergrond);                     // Display background
  funcTamaHunger();                            // Make Tama hungry
  funcTamaThirst();                            // Make Tama Thirsty
  funcTamaTired();                             // Make Tama Tired
  showTama();                                  // Make Tama look alive
  tamaAlert();                                 // Let the player know when Tama wants something
  tamaMenuSelection();                         // Let the player browse the menu
  tamaMenuFixer();                             // Fix up the menu a little
  
  // Debug stuff
  println("hunger: " + tamaHunger);
  println("thirst: " + tamaThirst);
  println("tired: " + tamaTired);
  println("MenuSelectionState: " + tamaMenuSelectionState);
}
