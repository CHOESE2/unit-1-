

void fish(){
  strokeWeight(1);
stroke(#5390d9);
  
  
  
  fishC = -3;
  fishY = 0;

  fishScale(fishC, fishY, random(0, 2.5));






  while (fishY <= height) {
    fishScale(fishC, fishY,  dist(mouseX, mouseY, fishC, fishY)/200);
//random(0, 2.5));
    fishC += 100;

    // fishY += 100;

    if  (fishC >= width) {
      fishY += 100;
      fishC = -3;
    }
  }
}

void fishClicks(){
  
 
  
 MODE += 2; // go back to intro skips mouse 
 //fill(0);
 
}





void fishScale(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  circle(0, 0, 100);

  //SCALES

  fishW = 100;



  while (fishW > 0) {
    fishW -= 22;
  
    frameRate(5);

    
 fill(#a3c4f3, random(0, 255));
    circle(0, 0, fishW);
  }


  popMatrix();
}




  
  
  
