

void reset() {

 
  if (Bomb.isPlaying()) {
    Bomb.stop();
  }
  
  
  
  background(0);
  textFont(dog);

  textSize(60);
  fill(255);
  text("GAME OVER", 168, 255);
  textSize(20);
  text("PLAY AGAIN ?", 200, 340);


textSize(20);


  tactile(200, 400, 100, 50);
  fill(0, 0, 255);
  rect(200, 400, 100, 50);
fill(0);
text("no..", 215, 433);

  tactile(500, 400, 100, 50);
  fill(0, 0, 255);
  rect(500, 400, 100, 50);
  fill(0);
  
  text("YESS", 514, 433);
}




void tactile (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    strokeWeight(3);
    stroke(0, 0, 255);
  } else stroke(255);
}



void resetClicks() {
//  if (mouseX > 200 && mouseX < 300 && mouseY > 400 && mouseY < 450){
   
//}


if(mouseX > 500 && mouseX < 600 && mouseY > 400 && mouseY < 450){
  MODE -= 2;
}
}
