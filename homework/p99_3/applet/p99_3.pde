void setup() {
  size(600,100);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(360);
}

void draw() {
  PImage img1 = loadImage("avatar.png");
  for(int i=0; i<20; i++){
    tint(5*i, 5*i);
    image(img1, i*20, 0);
  }
  noTint();
  image(img1, 400, 0);
}
