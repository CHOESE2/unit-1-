# unit-1-





  int x, y;
  
  int sunX, sunY;
  
void setup() {
  size(800, 600);
  background(201, 235, 255);
   
}


void draw() {


  fill(255);

  //background
  fill(255);
  stroke(0);
  circle(100, 100, 100);
  circle(50, 160, 80);
  circle(185, 120, 70);
  circle(120, 152, 80);

  stroke(255);
  circle(130, 100, 80);
  circle(120, 150, 80);
 
  
  
  fill(255);
  //clouds 2
  stroke(0);
  circle(520, 100, 80);
  circle(590, 78, 90);
  circle(670, 110, 100);
  circle(650, 90, 80);
  circle(585, 140, 90);
  circle(500, 140, 80);
  
  stroke(255);
  circle(520, 130, 80);
  circle(600, 120, 80);
  circle(600, 100, 80);
  circle(668, 100, 80);


  stroke(2);

  // houses
  triangle(120, 300, 350, 130, 580, 300); // roof
  square(180, 300, 350); //big
  square(530, 400, 200); //small
  
  fill(0);
  
 //animation
 fill(255, 231, 149);
 circle(100, 100, 80);
 
 sunX = 100;
 sunY = 100;
 
 if(sunX < 880){
   sunX = sunX + 1;
 }
 
 
 
 
 
  
  
  
  
  
  
  
  
  
 // window(100, 330);
  
 
  
  //x = 100;
  //y = 400;

  //if (x < 600) {
  //  x = x + 5;
  //  fill(0);
  //  square( x, 580, 30);
  //}
}



void window(int x, int y){
  pushMatrix();
  translate(x, y);
 // fill(255, 0, 0);
  square(x, y, 100);
  popMatrix();  
}
