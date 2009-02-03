void setup() {
  size(600,400);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(360);
}

void draw() {
  PImage img1 = loadImage("car.jpg");
  image(img1, 0, 0);

  PImage headlight = get(0, 100, 100, 120);
  image(headlight, 100, 100);
  image(headlight, 200, 100);
  image(headlight, 300, 100);
  image(headlight, 400, 100);
  image(headlight, 500, 100);
}