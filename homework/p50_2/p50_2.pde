//Does some ugly things to your processor...

void setup() {
  size(680,520);
}

void draw() {
  smooth();
  println("mouse X,Y:" + mouseX + ", " + mouseY);
  frameRate(12);
  for(int i=0; i < width; i++) {
    strokeWeight(1);
    // Color values can exceed 255, need a better handling system
    stroke((i%100) + 150, mouseX, mouseY);
    line(i, 0, i, height);
    //line(i*i, 0, i*0.2, height);
  }
}