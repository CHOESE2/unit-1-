

void reset() {


  if (Bomb.isPlaying()) {
    Bomb.stop();
  }
  if (BgMusic.isPlaying()) {
    BgMusic.stop();
  }

  if (!defeat.isPlaying()) {
    defeat.play();
  }



  background(#52b69a);
  textFont(dog);

  textSize(60);
  fill(255);
  text("GAME OVER", 168, 255);
  textSize(20);
  text("PLAY AGAIN ?", 200, 340);


  textSize(20);


  tactile(200, 400, 100, 50);
  fill(255);
  rect(200, 400, 100, 50);
  fill(0);
  text("no..", 215, 433);

  tactile(500, 400, 100, 50);
  fill(255);
  rect(500, 400, 100, 50);
  fill(0);

  text("YESS", 514, 433);

  textSize(15);
  fill(255);
  text("HIGHEST RED APPLES CAUGHT:" + redpointh, 300, 80);
  text("HIGHEST GREEN APPLES CAUGHT:" + greenpointh, 300, 120);
}






void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    strokeWeight(3);
    stroke(255);
  } else stroke(#34a0a4);
}



void resetClicks() {
  //  if (mouseX > 200 && mouseX < 300 && mouseY > 400 && mouseY < 450){

  //}


  if (mouseX > 500 && mouseX < 600 && mouseY > 400 && mouseY < 450) {
    MODE -= 2;
  }
}
