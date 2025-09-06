//emily xiao
//Sept 6

//colors
color french = #E0D9E0;
color grey = #8E90A7;
color lightB = #505E79;
color darkB = #20304A;
color cinder = #030512;
//color grass =

//animation variable

//sun
float sunX = -100;
float sunY = 100;


//moon
float moonX = -100;
float moonY = 100;


boolean day = true;






void setup() {
  size(800, 600);

  stroke(0);
  fill(68, 165, 63);
}


void draw() {

  background(225, 242, 250);

   
  //animation

  if (day) {
  //sun
  fill(252, 219, 97);
  stroke(90, 75, 21);
  circle(sunX, sunY, 100);

  sunX = sunX + 4;



    if (sunX > 200) {
      background(255, 229, 157);
    }
    if (sunX > 400) {
      background(240, 153, 119);
    }

    if (sunX > 600) {
      background(162, 92, 44);
    }

    if (sunX > 900 && day) {
      day = false;
      sunX = -100;
    }

    circle(sunX, sunY, 100);
  }



  if (!day) {

    //moon
    fill(161, 161, 162);
    stroke(71, 72, 72);
moonX = moonX + 4;

    if (moonX <= 300) {
        background(29, 23, 41);
     
    } else if (moonX <= 600){
      background(68, 67, 70);
    } 
    if (moonX >= 600 && moonX < 900){
     background(123, 121, 126);
    }
    if (moonX > 900 && moonX >= 600) {
      moonX = -100;
      day = true;
    }


    circle(moonX, moonY, 100);
  }
  
  
  







 // grass
  fill(79, 184, 211);
  rect(0, 550, width, height);


  strokeWeight(1);

  fill(255);



//clouds

  fill(255);
  stroke(7, 86, 121);
  circle(100, 100, 100);
  circle(50, 160, 80);
  circle(185, 120, 70);
  circle(120, 152, 80);

  stroke(255);
  circle(130, 100, 80);
  circle(120, 150, 80);
  fill(255);


  //clouds 2
  stroke(7, 86, 121);
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



  // house parts

  fill(191, 193, 240);
  strokeWeight(5);
  stroke(118, 122, 209);
  square(180, 300, 350); //big
  stroke(140, 143, 216);
  fill(140, 143, 216);
  square(180, 420, 350);

  strokeWeight(3);
  stroke(36, 19, 75);
  fill(73, 50, 124); // roof color
  triangle(120, 300, 350, 130, 580, 300); // roof


  //WINDOW
  square(300, 320, 100);
  fill(20, 0, 82);
  square(310, 330, 80);

  //DOOR
  strokeWeight(3);
  stroke(0);
  rect(400, 500, 80, 100);

  // Chimnney (idk spelling)
  rect(210, 170, 30, 60);




  //flower stems
  strokeWeight(1);
  stroke(14, 70, 60);

  fill(25, 29, 129);

  rect(600, 490, 8, 300);
  rect(670, 460, 8, 300);
  line(670, 460, 690, 380);
  line(678, 460, 698, 380);


  //flower
  triangle(630, 275, 715, 290, 665, 360);

  triangle(600, 350, 715, 290, 700, 360);

  fill(192, 179, 222);
  circle(710, 345, 100);
  fill(0);
  circle(710, 345, 10);
  fill(64, 43, 129);
  rect(709, 292, 8, 100);
  rect(658, 340, 108, 8);

  fill(0);
}


//not using 
void window(int x, int y) {
  pushMatrix();
  translate(x, y);
  // fill(255, 0, 0);
  square(x, y, 100);
  popMatrix();
}
