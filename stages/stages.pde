//declare variables
float x;
float y;
PImage image1;
PImage image2;
PImage image3;
int stage;

void setup(){
  size(1300,800);
  x = 1300;
  y = 800;
  stage = 1;
  image1 = loadImage("pic1.png");
  image2 = loadImage("pic2.png");
  image3 = loadImage("pic3.png");
}

void draw(){
  if (stage == 1){
      image(image1, 0, 0, 1300,800);
  } else if (stage == 2){
    image(image2, 0, 0, 1300, 800);
  } else if (stage == 3){
  image(image3, 0, 0, 1300, 800);
}
}

void keyPressed(){
  if(keyPressed){
    if(key == '1'){
      stage = 1;
    } else if (key == '2'){
      stage = 2;
    } else if (key == '3'){
      stage = 3;
  }
}
}