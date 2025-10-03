
boolean eKey;

void keyPressed(){
   if (key == 'e' || key == 'E') eKey = true;

     
  
  
  
}


void keyReleased(){
   if (key == 'e' || key == 'E') eKey = false;
  
  
  
  
}

void mousePressed() {

  if (MODE == INTRO) {
    introClicks();
  } else if (MODE == GAME){
    gameClicks();
  } else if (MODE == RESET){
    resetClicks();
  }
  
  
  

}






void mouseClicks(){
  
  
}
