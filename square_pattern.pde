

//fourth mode

//random square diamond pattern


int sqx, sqy; //Smol
int sq1, sq2; //bug
int sqq, sqw; //super big?

int cx, cy;  //cross, L smth detail

void squares() {
  
  frameRate(2);

  background(255);





  //super big diamonds

  sqq = 50;
  sqw = -80;

  while ( sqw <= 820) {
    sqq += 120;
    squidward(sqq, sqw, random(0, 2.5)); // INTERACTIVE:  dist(mouseX, mouseY, sqq, sqw)/90);

    if (sqq >= width) {
      sqw += 120;
      sqq = -80;
    }
  }



  //SMALL DIAMONDS
  //diagonal lines?
  sqy = 50;
  sqx = -80;


  while (sqy <= 820) {

    sqx += 160;

    spongeBob(sqx, sqy);

    if (sqx >= width) {
      sqy += 120;
      sqx = -80;
    }
  }


  //BIG DIAMONDS
  sq1 = -50;
  sq2 = -80;
  
  

  while ( sq2 <= 820) {
    sq1 += 150;
    patrick(sq1, sq2);

    if (sq1 >= width) {
      sq2 += 100;
      sq1 = -50;
    }
  }
  
  
  


  //cross
  cx = -23;
  cy = 8;

  while ( cy <= 820) {
    cx += 120;
    cross(cx, cy);

    if (cx >= width) {
      cy += 120;
      cx = -23;
    }
  }
}









void squaresClicks() {
  
 // MODE += 1;
}




// krabby patty lookin code


void squidward( float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  rotate(PI/4); //diamond shape


stroke(#56cfe1);
  fill(#72efdd, random(0, 150));
  square(0, 0, 50);


  popMatrix();
}




void spongeBob(float x, float y) {
  pushMatrix();
  translate(x, y);
  // size(s);
  rotate(PI/4); //diamond shape


  fill(255);
  square(0, 0, 8);


  popMatrix();
}


void patrick( float x, float y) {
  pushMatrix();
  translate(x, y);
  // size(s);
  rotate(PI/4); //diamond shape



  fill(0);
  square(0, 0, 20);


  popMatrix();
}



void cross( float x, float y) {
  pushMatrix();
  translate(x, y);

  fill(0);
  rect(0, 0, 10, 2); //horizontal

  rect(0, 0, 2, 10); //vertical


  popMatrix();
}
