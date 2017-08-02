//declare the circle
float posX;
float posY;
int radius;
float speed;
float r;

void setup(){
  size(500,300);
  background(255);

  posX = width/2;
  posY = height/2;
  radius = 50;
  r = random(10);
  speed = r;
  
}

void draw(){
  background(255);
  fill(120, 130, 250);
  ellipse(posX, posY, radius, radius);
 
  posX = posX + speed;
  posY += speed * 2;
  
  if(posX > width || posX < 0  || posY > height || posY < 0){
    speed *= -1;
  }
}