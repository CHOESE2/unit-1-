
//MODE FRAMEWORK
int MODE;
final int INTRO = 0;
final int MOUSE = 1;
final int GAME = 2;
final int RESET = 3;






PImage apple;
float applex, appley, applew, appleh, appled;

PImage appleCUT;




void setup() {
  size(800, 600);
  MODE = INTRO;



  //velocity [ the speed at which the ball is moving is a certain direction ]
  vx = 6;
  vy = 10; //makes the ball go up



  //acceleration [ the change in the velocity of the ball ]
  ax = 0;
  ay = 0.2; //goes up? //0.2 is pretty good



  applex = -320;
  appley = height/2;
  applew = 80;
  appleh = 80;

  fruitd = 20;
}



void draw() {



  if ( MODE == INTRO) {
    intro();
  } else if (MODE == MOUSE) {
    mouse();
  } else if (MODE == GAME) {
    game();
  } else if (MODE == RESET) {
    reset();
  }
}
