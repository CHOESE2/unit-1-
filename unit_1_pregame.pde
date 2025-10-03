
import processing.sound.*;


//MODE FRAMEWORK
int MODE;
final int INTRO = 0;
//final int MOUSE = 1;
final int GAME = 1;
final int RESET = 2;


PFont dog;

//SOUND
SoundFile BgMusic;
SoundFile Bomb;
//SoundFile intro;
SoundFile defeat;
//SoundFile Cutting;





//red apple
PImage apple;
float applex, appley, applew, appleh, appled;
PImage appleCUT;

int redpoint = 0;
int greenpoint = 0;

int redpointh;
int greenpointh;

//green apple
PImage green;
float greenx, greeny, greenw, greenh, greed;
PImage greenCUT;

//pomogranite
PImage pom;
float pomx, pomy, pomw, pomh, pomd;
PImage pomCUT;
float pomcx, pomcy, pomcw, pomch, pomcd;


//knife
PImage knife;


//bomb
PImage[] bomb;
int bombCount;



void setup() {
  size(800, 600);
  MODE = INTRO;

  bombCount = 17;
  bomb = new PImage[bombCount];


  int i = 0;
  while (i < bombCount) {
    bomb[i] = loadImage("frame_" + i + "_delay-0.1s.gif");
    i += 1;
  }


  dog = createFont("dogicapixel copy.otf", 200);




BgMusic = new SoundFile(this, "bit-shift-kevin-macleod-main-version-24901-03-12.mp3");
Bomb = new SoundFile(this, "choese-made-with-Voicemod.mp3");
//intro = new soundFile(this, "");
defeat = new SoundFile(this, "8-bit-video-game-lose-sound-version-1-145828.mp3");
//cutting = new soundFile(this, "");

  //Sound.amps(0.7);





  //velocity [ the speed at which the ball is moving is a certain direction ]
  vx = 6;
  vy = 10; //makes the ball go up

  vxg = -6;
  vyg = 10;

  vxp = 6;
  vyp = 10;


  //acceleration [ the change in the velocity of the ball ]
  ax = 0;
  ay = 0.2; //goes up? //0.2 is pretty good

  axg = 0;
  ayg = 0.2;

  axp = 0;
  ayp = 0.2;


  //red apple
  applex = -320;
  appley = height/2;
  applew = 80;
  appleh = 80;



  //pomgranite
  pomx = -320;
  pomy = height/2;
  pomw = 80;
  pomh = 80;
  pomd = 20;

  //pomcut
  pomcx = -320;
  pomcy = height/2;
  pomcw = 80;
  pomch = 80;
  pomcd = 20;




  fruitd = 20;
  greed = 20;


  //green apple
  greenx = 1120;
  greeny = height/2;
  greenw = 80;
  greenh = 80;
}



void draw() {



  if ( MODE == INTRO) {
    intro();
  } else if (MODE == GAME) {
    game();
  } else if (MODE == RESET) {
    reset();
  }
}
