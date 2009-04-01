void setup() {
  size(500,500);
  colorMode(HSB, 0, 100, 100);
  smooth();
  // noLoop();
  background(360);
  frameRate(30);
}

void draw() {
  fill(360,100,100,random(60,80));
  scale(random(-10,10));
  float x = width/2;
  float y = height/2;
  ellipse(x, y, 14, 14);
}