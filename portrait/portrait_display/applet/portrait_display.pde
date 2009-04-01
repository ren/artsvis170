void setup() {
  size(1000,600);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(360);
}

void draw() {
  PImage img1 = loadImage("portrait-2180.png");
  image(img1, 0, 0);
}
