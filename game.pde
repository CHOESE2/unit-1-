


// add sounds make game appealing



float fruitx, fruity;
float fruitd;

//red apple
float vx, vy; //velocity
float ax, ay; //acceleration

//green apple
float vxg, vyg; //velocity
float axg, ayg; //acceleration

//pom
float vxp, vyp; //velocity
float axp, ayp; //acceleration



boolean greenOn = false;
boolean fruitOn = false;
boolean pomOn = false;
boolean switchOn = false;

boolean bombOn = false;
int f = 0;
int bCount = 0;

void game() {
  background(255);


  //bomb

  if (bombOn && pomOn) { //&& pomy <= height || pomx <= width ) { //if pom is cut
    image(bomb[f], pomx, pomy - 20, 500, 500); //maybe make in the center of the screen
    Bomb.play();
    println(frameCount);
    if (frameCount % 2 == 0) f += 1;
    if (f == bombCount) f = 0;
    bombOn = false;
    
    // bCount += 1;
  } else if (bombOn && pomy >= height || pomx >= width) {
    bCount +=1;
    bombOn = false;

  }


  if (bCount >= 100) {
    MODE += 1;
    bCount = 0;
    //pomx = -320;
    //pomy = height/2;
  }



  //red apple
  imageMode(CENTER);
  apple = loadImage("applexx.png");
  appleCUT = loadImage("applecut.png");


  //pom
  pom = loadImage("pom.png");
  pomCUT = loadImage("pomCUT.png");


  //green apple
  green = loadImage("green.png");
  greenCUT = loadImage("greenCUT.png");

  // knife
  knife = loadImage("knifeLEFTT.png");
  image(knife, mouseX, mouseY, 150, 150);
  fill(255, 0, 0);


  // v + a = gravity
  //red apple
  vx += ax;
  vy += ay;

  //movement
  applex += vx;
  appley += vy;




  // v + a = gravity
  //pom
  vxp += axp;
  vyp += ayp;


  //movement
  pomx += vxp;
  pomy += vyp;





  //green apple
  vxg += axg;
  vyg += ayg;

  //movement
  greenx += vxg;
  greeny += vyg;




  //bouncing off the walls


  if (appley <= -100) {
    vy = vy * -0.95;
    appley = fruitd/2; //ball get sets back within walls
  }


  if (appley >= height + 100 && !fruitOn) { //bottom
    vy = vy * -0.95; //reverse the vy. Negative * negative = positive
    applex = random(-320, 200);
    appley = random(540, 680);

    //fruitOn = false;
  } else if (appley>= height + 100 && fruitOn) {
    vy = vy * -0.95;
    applex = random(-320, 200);
    appley = random(540, 680);
    redpoint +=1;
    fruitOn = false;
  }


  if (greeny <= -100) {
    vyg = vyg * -0.95;
    greeny = greed/2; //ball get sets back within walls
  }


  if (greeny >= height + 100 && !greenOn) { //bottom
    vyg = vyg * -0.95; //reverse the vy. Negative * negative = positive
    greenx = random(1120, 600);
    greeny = random(540, 680);
    // greenOn = false;
  } else if (greeny>= height + 100 && greenOn) {
    vyg = vyg * -0.95; //reverse the vy. Negative * negative = positive
    greenx = random(1120, 600);
    greeny = random(540, 680);
    greenOn = false;
    greenpoint +=1;
  }





  if (pomy <= -100) {
    vyp = vyp * -0.95;
    pomy = pomd/2; //ball get sets back within walls
  }


  if (pomy >= height + 100 ) { //bottom
    vyp = vyp * -0.95; //reverse the vy. Negative * negative = positive
    pomx = random(-320, 200);
    pomy = random(540, 680);
    pomOn = false;
  }

  //textSize(30);
  //text("RED APPLES:" + redpoint, 450, 200);
  //text("GREEN APPLES:" + greenpoint, 450, 400);



  if (!fruitOn) {
    circle(applex, appley, fruitd); //moves the image around
    image(apple, applex, appley, applew, appleh);
  } else if (fruitOn && appley < height || applex < width) {
    circle(applex, appley, fruitd); //moves the image around
    image(appleCUT, applex, appley, applew, appleh);
  }


  if (!pomOn) {
    circle(pomx, pomy, pomd); //moves the image around
    image(pom, pomx, pomy, pomw, pomh);
  } else if ( pomOn && pomy < height || pomx < width) {
    circle(pomx, pomy, pomd); //moves the image around
    image(pomCUT, pomx, pomy, pomw, pomh);
  }










  if (!greenOn) {
    circle(greenx, greeny, greed); //moves the image around
    image(green, greenx, greeny, greenw, greenh);
  } else if (greenOn && greeny < height || greenx < width) {
    circle(greenx, greeny, greed); //moves the image around
    image(greenCUT, greenx, greeny, greenw, greenh);
  }


  //text point


  textSize(20);
  text("red point:" + redpoint, 100, 100);

  fill(0, 255, 0);
  text("green point:" + greenpoint, 500, 500);



  //slicing (erm..)

  //if (mouseX <= fruitd/2 && mouseY <= fruitd/2){
  //  background(255, 0, 0);
}


void mouseDragged() {
  stroke(0);
  strokeWeight(3);


  if (mouseX >= fruitd && mouseX < applex && eKey) { //fruitd
    //stroke(225, 0, 0);
    line(mouseX, mouseY, applex , appley);
    vy = 0;
    fruitOn = true;
    // redpoint +=1;
  } if (mouseX >= greed && mouseX < greenx && eKey) { //greed
    //stroke(225, 0, 0);
     line(mouseX, mouseY, applex , appley);
    vyg = 0;
    // greenpoint+= 1;
    greenOn = true;
  } 
    if (mouseX >= pomd  && mouseX < greenx && eKey) { //fruitd
    //stroke(225, 0, 0);
    line(mouseX, mouseY, applex , appley);
    vyp = 0;
    pomOn = true;
    bombOn = true;
  }








  //more accurate





  //if (mouseX > applex && mouseX > fruitd) {
  //  line(mouseX, mouseY, applex - 150, appley);
  //  vy = 0;
  //}
  //image(appleCUT, applex, appley, applew, appleh);
}


void gameClicks() {
}
