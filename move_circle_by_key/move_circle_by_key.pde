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
    if(key == CODED){
      if(keyCode == UP){
        posY = posY -1;
      }
      if(keyCode == DOWN){
        posY=posY+1;
      }
      
    }
  }
}