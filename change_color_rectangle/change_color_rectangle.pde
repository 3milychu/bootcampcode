int widthCanvas;
int heightCanvas;
int w;
int h;

void setup(){
  widthCanvas = 600;
  heightCanvas = 600;
  size(600,600);
  w = width/2;
  h = height/2;
}

void draw() {
  background(255);
  fill(120,233,145);
  rect(width/2 - w/2, height/2 - h/2, w, h);
  
  if(mouseX > (width/2 - w/2) && mouseX < (width/2 + w/2) 
&& mouseY > (height/2 - h/2) && mouseY < (height/2 + h/2) && mousePressed){
  println("yeah");
  background(0);
  fill(185);
  rect(width/2 - w/2, height/2 - h/2, w, h);
  
}
}