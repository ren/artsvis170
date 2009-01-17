void setup() {
  size(640, 480);
  noLoop();
}

void draw() {
  background(0, 0, 50);
  stroke(203,104,0);
  strokeWeight(4);
  fill(155, 170, 255);
  line(10,10,400,400);
  ellipseMode(CORNER);
  ellipse(33,33,60,60);
}