//create canvas
//give position of circle
//give radius of circle
//color or stroke
//draw on the screen

float posX;
float posY;
int radius;
float speed;

void setup(){
 size(500, 580); 
 posX = width / 2;
 posY = height /2;
 radius = 100;
 background(243, 237, 177);
 println("position x: " + posX);
 speed = random(8);
}

void draw(){
  //movement
  
  background(243, 237, 177);
  posX = posX + speed;
  //posY += speed//
  
  if (posX > width || posX < 0 || posY < 0 || posY > height){
    speed *= - 1;
  }
  
//draw circles
  fill(2, 9, 17);
  stroke(141, 181, 142);
  shininess(7.0);
  specular(255,255,255);
  emissive(0, 26, 51);
  strokeWeight(5);
  ellipse(posX/4, posY, radius, radius);
 
   fill(255, 255, 255, 255);
   stroke(255,255,255);
   strokeWeight(2);
   shininess(8.0);
   ellipse(posX/8, posY, radius/4, radius/4);
   
   fill(247,181,49);
   ellipse(posX/2, posY/2, radius/2, radius/2);


//draw rectangles
  fill(243, 161, 124, 150);
   stroke(2, 9, 17);
   strokeWeight(3);
   rect(posX+200, posY, 30, 30);

//draw triangles
   pushMatrix();
   translate(posX/2-100, posY/2-50);
   rotate(radians(-12));
   fill(91,81,152);
   strokeWeight(1);
    beginShape(TRIANGLES);
      translate(posX/2, posY/2);
        vertex(30, 75);
        vertex(40, -5);
        vertex(50, 60);
        vertex(50, 60);
        vertex(70, 205);
        vertex(100, 60);
      endShape();
  popMatrix();

  beginShape(TRIANGLES);
        fill(255,255,255,120);
        vertex(320, 300);
        vertex(380, 120);
        vertex(410, 300);
      endShape();
 //draw lines
 
 strokeWeight(3);
   line(280, 300, 410, 300);
   line(320,300, 280,330);
   
 pushMatrix();
 rotate(45);
 
 strokeWeight(7);
 line(200, 50, 220, 50);
 strokeWeight(2);
  line(200, 40, 220, 40);
 strokeWeight(7);
 translate(150, 40);
 line(200, 50, 220, 50);
 strokeWeight(2);
  line(200, 40, 220, 40);
  
 popMatrix();
 
  translate(posX/2-100, posY/2-50);
  stroke(2,9, 17);
  strokeWeight(2);
  line(posX, posY, posX/2, posY/2);
  
  stroke(99, 157, 180);
  line(posX, posY-100, posX-100, posY+100);
  
//draw semi-circles
 fill(255,255,255,255);
 pushMatrix();
 stroke(2, 9, 17);
 strokeWeight(12);
translate(posX-250,posY-250);
  arc(150, 150, 80, 80, 0, PI+QUARTER_PI, CHORD);
  strokeWeight(3);
  stroke(99, 157, 180);
  arc(150, 150, 80, 80, 0, PI+QUARTER_PI, CHORD);
  popMatrix();
 
  
//re-draw overlapping ellipses
   fill(81, 163, 155, 10);
   stroke(2, 9, 17);
   strokeWeight(0.5);
   ellipse(posX+30, posY-150, radius, radius);
 
}