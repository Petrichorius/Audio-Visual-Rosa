int scene = 0;

void setup() {
  fullScreen();

  setupGridScene();
  setupColourScene();
  setupLineScene();
}


void draw() {
  background(255);
/*
  if (frameCount % 120 == 0) {
    scene = floor(random(3));
  }

  switch (scene) {
  case 0: 
    drawGridScene();
    break;
  case 1: 
    drawColourScene();
    break;
  case 2: 
    drawLineScene();
    break;
  }
*/  
  pushMatrix();
  drawLineScene();
  //drawColourScene();
  //drawGridScene();
  popMatrix();
  
  
}
