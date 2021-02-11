color foregroundColour;
color backgroundColour;

void setupColourScene() {
  colorMode(HSB, 360, 100, 100);
  foregroundColour = color(random(360), 50, 80);
  backgroundColour = color(random(360), 50, 100, 50);
  //colorMode(RGB, 255, 255, 255);
}

void drawColourScene() {
  if (frameCount % 120 == 0) {
    colorMode(HSB, 360, 100, 100);
    foregroundColour = color(random(180,360), 50, 80);
    backgroundColour = color(random(180,360), 50, 100, 50);
    //colorMode(RGB, 255, 255, 255);
  }
  
  float time = (float) (frameCount % 120) / 60;
  color currentForegroundColour = lerpColor(foregroundColour, backgroundColour, time );
  color currentBackgroundColour = lerpColor(backgroundColour, foregroundColour, time );
  
  background(currentBackgroundColour);
  fill(currentForegroundColour);
  noStroke();

  translate(width / 2, height / 2);
  circle(0, 0, height / 1.61803);
}
