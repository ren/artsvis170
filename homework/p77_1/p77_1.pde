void setup() {
  size(600,600);
  noLoop();
  background(255);
}

void draw() {
  smooth();
  // midpoints are double indented
  beginShape(TRIANGLE_FAN);
  stroke(255);
  vertex(300,300);  // Center Point
  fill(100);
  vertex(300,200);
    vertex(375,225);
  fill(200);
  vertex(400,300);
    vertex(375,375);
  fill(100);
  vertex(300,400);
    vertex(225,375);
  fill(200);
  vertex(200,300);
    vertex(225,225);
  fill(100);
  vertex(300,200); // Close to top, not center
  endShape();
}