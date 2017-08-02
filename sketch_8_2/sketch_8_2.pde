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
  if(keyPressed){
  fill(0);
  ellipse(posX, posY, radius, radius);
  } else {
    fill (255, 0, 0);
    ellipse(posX+100, posY+100, radius, radius);
  }
}