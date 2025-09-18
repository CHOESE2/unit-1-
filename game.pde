

float fruitx, fruity;
float fruitd;
float vx, vy; //velocity
float ax, ay; //acceleration
boolean fruitOn = false;

void game() {
  background(255);


  imageMode(CENTER);
  apple = loadImage("applexx.png");
  appleCUT = loadImage("applecut.png");



  fill(255, 0, 0);



  vx += ax;
  vy += ay;


  //movement
  applex += vx;
  appley += vy;




  //bouncing off the walls


  if (appley <= 0) {
    vy = vy * -0.95;
    appley = fruitd/2; //ball get sets back within walls
  }




  if (appley >= height + 100) { //bottom
    vy = vy * -0.95; //reverse the vy. Negative * negative = positive
    applex = random(-320, 200);
    appley = random(540, 820);

    fruitOn = false;
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











  //slicing (erm..)

  //if (mouseX <= fruitd/2 && mouseY <= fruitd/2){
  //  background(255, 0, 0);
}


void mouseDragged() {
  stroke(0);
  strokeWeight(3);


  if (mouseX > fruitd && mouseX < applex) {
    line(mouseX, mouseY, applex, appley);
    vy = 0;
    fruitOn = true;
  }








  //if (mouseX > applex && mouseX > fruitd) {
  //  line(mouseX, mouseY, applex - 150, appley);
  //  vy = 0;
  //}
  //image(appleCUT, applex, appley, applew, appleh);
}








void gameClicks() {
}
