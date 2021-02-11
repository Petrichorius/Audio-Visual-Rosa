int lineCount = 5;
ArrayList<Float> startLocations = new ArrayList<Float>();
ArrayList<Float> endLocations = new ArrayList<Float>();

void setupLineScene() {
  for (int i=0; i<lineCount; i++) {
    startLocations.add(random(50, width - 50));
    endLocations.add(random(50, width - 50));
  }
}


void drawLineScene() {
  colorMode(RGB, 255, 255, 255);

  if (frameCount % 60 == 0) {
    startLocations.clear();
    startLocations.addAll(endLocations);
    endLocations.clear();

    for (int i=0; i<lineCount; i++) {
      endLocations.add(random(50, width - 50));
    }
  }

  background(0);
  stroke(255, 255, 0);
  strokeWeight(5);
  noFill();
  translate(0, height / 2);

  float time = (float) (frameCount % 60) / 60;

  time = 0.5 - (cos(PI * time) / 2);

  for (int i=0; i<lineCount; i++) {
    float start = startLocations.get(i);
    float end = endLocations.get(i);

    float location = lerp(start, end, time);
    pushMatrix();
    fill(0,0);
    stroke(0,0);
    rect(0,0,width,height);
    popMatrix();
    rect(location , 64, 64, -64);
  }
}
