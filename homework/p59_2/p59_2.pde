void setup() {
  size(680,520);
}

void draw() {
  smooth();
  println("mouse X,Y:" + mouseX + ", " + mouseY);
  frameRate(12);
  if (((mouseX % 2) == 0) && mousePressed) {
    ellipseMode(CENTER);
    ellipse(mouseX, mouseY, mouseX, mouseY);
  }
}