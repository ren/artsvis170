void setup() {
  size(500,200);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(233, 8, 96);
}

void draw() {
  noStroke();
  fill(233, 73, 94, 20);
  float angle = 0.0;
  for (int x = 0; x <= width; x += 5) {
    float y = 100 + (sin(angle) * 35.0);
    ellipse(x, y, 14, 14);
    angle += PI/40.0;
  }
}