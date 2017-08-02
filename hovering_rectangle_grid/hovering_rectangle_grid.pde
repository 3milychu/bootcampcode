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
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  if(mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height/2){
    fill(0);
    rect(0, 0, width/2, height/2);
}

  if(mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height/2){
    fill(0);
    rect(width/2, 0, width/2, height/2);
}
  if(mouseX < width/2 && mouseX > 0 && mouseY > height/2 && mouseY < height){
    fill(0);
    rect(0, height/2, width/2, height/2);
  }
  
  if(mouseX > width/2 && mouseX < width && mouseY > height/2 && mouseY < height){
    fill(0);
    rect(width/2, height/2, width, height);
  }

}