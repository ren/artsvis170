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
    fill(360, 100, x*4, 75);
    ellipse(x*25, 50, 50, 50);
  }
}
