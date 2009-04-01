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
  float x = random(width/2);
  float y = random(height/2);
  translate(random(0,width), random(0,height));
  ellipse(x, y, 14, 14);
}