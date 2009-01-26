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
    ellipse(cos(windowWidth / i) + 10, cos(windowHeight / i) + 10, (windowWidth / i) + 10, (windowHeight / i)+10);
  }
}