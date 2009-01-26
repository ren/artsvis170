void setup() {
  size(460, 300);
  noLoop();
}

void draw() {
  stroke(100,100,100);
  strokeWeight(1);
  noFill();

  ellipseMode(TOP);

  for(int i = 1; i< 21; i++){
    ellipse(cos(width / i) + 10, cos(height / i) + 10, (width / i) + 10, (height / i)+10);
  }
}