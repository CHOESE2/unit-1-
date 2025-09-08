
//charging port....
//Sept 7




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
 
 
 //yellowish pink sunset tones - Y for yellow
 color Ylemon = #fbf8cc;
 color Ypeach = #fde4cf;
 color Yorange = #ffcfd2;
 color YDpink = #f1c0e8; //darker pink than Ppink
 
 
 
 
 
 void setup(){
   size(800, 600);
   
   
   
 }
 
 
 void draw(){
   
   strokeWeight(1);
   stroke(255);
   background(255);
   chargingPort(400, 300);
   
   
 }
 
 
 
 void chargingPort(int x, int y){
   pushMatrix();
   translate(x, y);
   
   body();
   //Beye(); //big eye 
   //Seye(); //small eye
   //mouth();
   //USBAport();
   //USBCport();
   //screws();
   
  
   popMatrix();
   
   
 }
 
 
 
 void body(){
   
   //actual body
   strokeWeight(5);
   stroke(Spurple);
   fill(Snavy);
   rect(-120, -185, 240, 380);
   
   ////little body
   strokeWeight(1);
   stroke(Snavy);
   fill(Ssky);
   rect(-60, -110, 120, 240);
   
   //sides LIGHT
   
     strokeWeight(1);
   stroke(Snavy);
   fill(Slime);
   
   
   rect(-106, -170, 10, 375); // left side light
   rect(96, -170, 10, 375); //right side light
   
   rect(-88, -170, 230, 3); //top 
   //rect(-88, 178, 230, 3); //bottom
   rect(-140, 178, 230, 3); //bottom
   
   
   
   //sides SHADOW
   
   
   
   
   
   
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
