int posX, posY;
int radius;

void setup(){
  size(500,500);
  posX = width/2;
  posY = height/2;
  radius = width/8;
}

void draw(){
  background(255);
    if(mousePressed && mouseButton == LEFT) {
      fill (255, 0, 0);
      ellipse(posX, posY, radius, radius);
    } else if (mousePressed && (mouseButton == RIGHT)){
     fill (0, 255, 0); 
     ellipse(posX, posY, radius, radius);
    } else {
  
  fill (0, 0, 255);
  ellipse(posX, posY, radius, radius);
  }
 }