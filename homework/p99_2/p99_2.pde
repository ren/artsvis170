void setup() {
  size(700,400);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(360);
}

void draw() {
  PImage img1 = loadImage("bub1.jpg");
  PImage img2 = loadImage("bub2.jpg");
  tint(360,30,100);
  image(img1, -100, 0);

  tint(360,60,100);
  image(img1, 400, 0);

  tint(100,80,100);
  image(img2, 200, 0);
}