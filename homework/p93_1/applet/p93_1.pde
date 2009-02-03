void setup() {
  size(600,100);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(360);
}

void draw() {
  noStroke();
  for (int x=1; x<24; x++) {
    // First Row
    fill(x*14, x*4, 100, 75);
    ellipse(x*25, 25, 50, 50);
    
    // Second Row
    fill(360, x*4, 100, 75);
    ellipse(x*25, 50, 50, 50);
    
    // Third Row
    fill(x*7, x*4, 100, 75);
    ellipse(x*25, 75, 50, 50);
  }
}
