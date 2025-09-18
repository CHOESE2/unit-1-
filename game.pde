

float fruitx, fruity;
float fruitd;

//red apple
float vx, vy; //velocity
float ax, ay; //acceleration

//green apple
float vxg, vyg; //velocity
float axg, ayg; //acceleration

boolean greenOn = false;

boolean fruitOn = false;

void game() {
  background(255);


//red apple
  imageMode(CENTER);
  apple = loadImage("applexx.png");
  appleCUT = loadImage("applecut.png");
  
  
  //green apple
  green = loadImage("green.png");
  greenCUT = loadImage("greenCUT.png");



  fill(255, 0, 0);


// v + a = gravity 
//red apple
  vx += ax;
  vy += ay;

  //movement
  applex += vx;
  appley += vy;
  
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


  if (appley >= height + 100) { //bottom
    vy = vy * -0.95; //reverse the vy. Negative * negative = positive
    applex = random(-320, 200);
    appley = random(540, 680);

    fruitOn = false;
  }
  
  
  if (greeny <= -100) {
    vyg = vyg * -0.95;
    greeny = greed/2; //ball get sets back within walls
  }


  if (greeny >= height + 100) { //bottom
    vyg = vyg * -0.95; //reverse the vy. Negative * negative = positive
    greenx = random(1120, 600);
    greeny = random(540, 680);

    greenOn = false;
  }
  
  
  
  
  
  
  

  //if (applex <= 0) {//left
  //  vx = vx * -0.95;
  //  applex = fruitd/2;
  //}

  //if (applex >= width) { //right
  //  vx = vx * -0.95; //reverse the vx
  //  applex = width - fruitd/2;
  //  fruitOn = false;
  //}




  //if ( fruitOn && applex > height + 20) {
  //  fruitOn = false;
  //}
  //if (fruitOn && applex < height + 20) {

  //  square(applex, appley, fruitd); //moves the image around
  //  image(appleCUT, applex, appley, applew, appleh);
  //}





  if (!fruitOn) {
    circle(applex, appley, fruitd); //moves the image around
    image(apple, applex, appley, applew, appleh);
  } else if (fruitOn && appley < height || applex < width) {
    circle(applex, appley, fruitd); //moves the image around
    image(appleCUT, applex, appley, applew, appleh);
  }



 if (!greenOn) {
    circle(greenx, greeny, greed); //moves the image around
    image(green, greenx, greeny, greenw, greenh);
  } else if (greenOn && greeny < height || greenx < width) {
    circle(greenx, greeny, greed); //moves the image around
    image(greenCUT, greenx, greeny, greenw, greenh);
  }
  






  //slicing (erm..)

  //if (mouseX <= fruitd/2 && mouseY <= fruitd/2){
  //  background(255, 0, 0);
}


void mouseDragged() {
  stroke(0);
  strokeWeight(3);


  if (mouseX > fruitd && mouseX < applex) {
    //stroke(225, 0, 0);
    //line(mouseX, mouseY, applex , appley);
    vy = 0;
    fruitOn = true;
  } else if (mouseX > greed && mouseX < greenx) {
    //stroke(225, 0, 0);
    //line(mouseX, mouseY, applex , appley);
    vyg = 0;
    greenOn = true;
  }








  //if (mouseX > applex && mouseX > fruitd) {
  //  line(mouseX, mouseY, applex - 150, appley);
  //  vy = 0;
  //}
  //image(appleCUT, applex, appley, applew, appleh);
}








void gameClicks() {
}
