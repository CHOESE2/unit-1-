


void intro() {
  background(0);
  textFont(dog);

  stroke(255);
  fill(255);
  textSize(50);
  text("fruit game ! ", 190, 250);


  //button

  fill(255);
  stroke(0);



  tact(300, 350, 200, 80);
  rect(300, 350, 200, 80);
  fill(0, 0, 255);
  textSize(30);
  text("START", 335, 400);
}






void tact (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    strokeWeight(3);
    stroke(0, 0, 255);
  } else stroke(255);
}


void introClicks() {


  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 430) {
    MODE += 1;
   //MODE +=2;
  }
}
