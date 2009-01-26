//Best at the begining of each minute

void setup() {
  size(600,600);
}

void draw() {
  noStroke();

  frameRate(1);

  int s = second();
  println("second: " + s);
  for(int y = 1; y < 600; y += 60) {
    for(int x = 1; x < 600; x += 60){
      float bcolor = ((x+y) / (s+1));
      fill(bcolor);
      ellipseMode(TOP);
      ellipse(x, y, 60, 60);
    }
  }
}