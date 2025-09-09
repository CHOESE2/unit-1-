
//charging port....
//Sept 8



//note:
//for functions that do not need to move individually like eyes you can just use pushMatrix, translate, popMatrix
// for functions like body that do not need to move u don't need pushMatrix etc becuase the charging port already has pushMatrix etc.



//to do list :
//add more contrast and colors



//variables

//color variables:

//PASTELS

// purplish tones - P for pastel purple
color Ppink = #ffd6ff;
color Ppurple = #e7c6ff;
color Pviolet = #c8b6ff; //purple / blue
color Ppblue = #b8c0ff; //blueish purple tone
color Pblue = #bbd0ff;

//blueish green tones - S for sea..
color Spurple = #a3c4f3;
color Snavy = #90dbf4;
color Ssky = #8eecf5;
color Sgrass = #98f5e1;
color Slime = #b9fbc0;
color Sdark = #5e60ce;
color Sndark = #5390d9;
color Snndark = #4ea8de;
color Sverydark = #1d3557;


//yellowish pink sunset tones - Y for yellow
color Ylemon = #fbf8cc;
color Ypeach = #fde4cf;
color Yorange = #ffcfd2;
color YDpink = #f1c0e8; //darker pink than Ppink

//INT variables
int Dx;
int Dy;




void setup() {
  size(800, 600);
}


void draw() {

  strokeWeight(1);
  stroke(255);
  background(255);
  chargingPort(400, 300); //in the middle
}



void chargingPort(int x, int y) {
  pushMatrix();
  translate(x, y);

  body();
  Beye(-25, -95); //big eye
  Beye(-25, 55); //BE bottom
  Seye(15, -93); //small eye
  Seye(15, 57); //SE bottom
  mouth(0, -34); //top
  mouth(0, 115); //bottom

  USBAport();
  USBCport();

  popMatrix();
}




void body() {

  //actual body
  strokeWeight(5);
  stroke(Spurple);
  fill(Snavy);
  rect(-120, -185, 240, 380);


  //shadows
  fill(Sndark);
  stroke(Sndark);
  rect(0, 0, 100, 190);
  rect(-100, 80, 120, 100);



  //little body
  strokeWeight(3);
  stroke(Sndark);
  fill(Snavy);
  rect(-60, -110, 120, 240);

  //sides LIGHT

  strokeWeight(1);
  stroke(Sgrass);
  fill(Slime);


  rect(-106, -170, 10, 375); // left side light
  rect(96, -170, 10, 375); //right side light

  rect(-88, -170, 230, 3); //top
  //rect(-88, 178, 230, 3); //bottom
  rect(-140, 178, 230, 3); //bottom

  fill(Ylemon);
  rect(-104, -170, 4, 375); // left side light
  rect(100, -170, 4, 375); //right side light


  //sides SHADOW

  strokeWeight(1);
  stroke(Snavy);
  fill(#4ea8de); //Sdark

  rect(-115, -185, 8, 375); // left side light
  rect(107, -185, 8, 375); //right side light

  fill(Sndark);
  rect(-88, -180, 230, 5); //top
  //rect(-88, 178, 230, 3); //bottom
  rect(-140, 185, 230, 5); //bottom


  //screws

  strokeWeight(2);
  stroke(Sndark);
  fill(Ssky); //Sdark

  circle(0, -150, 25); //top
  circle(0, 160, 25);

  stroke(Snavy);
  fill(0);
  rect(-1, -160, 1, 20);
  rect(-1, 145, 1, 25);
}



void Beye(int x, int y) {
  pushMatrix();
  translate(x, y);

  fill(Sverydark);
  rect(0, 0, 10, 32); //top

  popMatrix();
}


void Seye(int x, int y) {
  pushMatrix();
  translate(x, y);

  fill(Sverydark);
  rect(0, 0, 10, 28);

  popMatrix();
}




void mouth(int x, int y) {
  pushMatrix();
  translate(x, y);

  fill(Sverydark);
  ellipse(0, 0, 20, 25);

  fill(Snavy);
  rect(-10, 3, 20, 8);

  popMatrix();
}


void USBAport() {

  //body
  //stroke();
  fill(0);
  rect(-45, -10, 20, 42);


  //white detailing
  fill(255);
  
  stroke(224, 224, 224);
  rect(-41, -5, 15, 34); //white base
  fill(224, 224, 224);
  rect(-36, -5, 8, 34); // inside idk



  Dx = -34;
  Dy = -10;
  int count = 0;
  while (count < 4) {
    fill(0);
    stroke(0);
    Dy = Dy + 9;
    rect(Dx, Dy, 4, 1); //somewhat not working..
    count = count + 1;
  }
}

void USBCport() {

  //body

  //stroke();
  fill(Sverydark);
  stroke(Sverydark);
  rect(32, 0, 8, 25);

  circle(36, 3, 8); //top circle
  circle(36, 21, 8);//bottom circle


  //white detailing
  fill(255);
  stroke(255);
  rect(36, 1, 0, 22);
}
