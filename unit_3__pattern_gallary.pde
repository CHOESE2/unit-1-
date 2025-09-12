//pattern gallary
//Sept 8

//FISH variables
int count = 0;
float fishW;
int fishC;
int fishY;



//MODE FRAMEWORK
int MODE;
final int INTRO = 0;
final int FISH = 1;
final int MOUSE = 2;
final int SQUARES = 3;
final int UNKNOWN = 4;










void setup() {
  size(800, 620);
  MODE = INTRO;
}




void draw() {
  background(255);
  
  
  if ( MODE == INTRO){
    intro();
  } else if (MODE == MOUSE){
    mouse();
  } else if (MODE == FISH){
    fish();
  } else if (MODE == SQUARES){
    squares();
  } else if (MODE == UNKNOWN){
    unknown();
  }
  
  
  
  
}
  
  
  
