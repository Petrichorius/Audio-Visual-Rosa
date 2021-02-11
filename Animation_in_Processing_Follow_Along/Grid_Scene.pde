
int counter = 5;
color gridForeground = color(255, 117, 117);
color gridBackground = color(0);

void setupGridScene() {
}


void drawGridScene() {
  if (frameCount % 30 == 0){
  counter++;
  if (counter > 6) {
    counter = 0;
    
    color tmp = gridForeground;
    gridForeground = gridBackground;
    gridBackground = tmp;
  }

} 
  
  colorMode(RGB, 255, 255, 255);

  background(gridBackground);

  int cellCountY = (int) pow(2, counter);
  float cellSize = (float) height / cellCountY;
  int cellCountX = (int) (width / cellSize);

  translate(width / 2, height / 2);

  for (int x = -cellCountX / 2; x <= cellCountX / 2; x++) {
    for (int y = -cellCountY / 2; y <= cellCountY / 2; y++) {
      if ((x + y) % 3 == 0) {
        //noStroke();
        stroke(gridForeground);
        fill(0);
        line(x * cellSize, y * cellSize, 64, 32);
      }
    }
  }
}
