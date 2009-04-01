float inc = 0.0;

void setup() {
  size(200,200);
  stroke(255,204);
  smooth();
}

void draw() {
  background(0);
  inc += 0.1;
  float angle = cos(inc)/60.0 + cos(inc*1.2)/20.0;
  tail(18, 9, angle/1.3);
}

void tail(int x, int units, float angle) {
  pushMatrix();
  translate(x,100);
  for (int i = units; i > 0; i--) {
    strokeWeight(i);
    line(0,0,0,-8);
    translate(0, -8);
    rotate(angle);
  }
  popMatrix();
}


// int directionX = 0;
// 
// void setup() {
//   size(500,500);
//   colorMode(HSB, 0, 100, 100);
//   smooth();
//   background(0,0,100);
//   frameRate(30);
// }
// 
// void draw() {
//   line(directionX, directionX%10, directionX%30, directionX+40);
//   directionX++;
// }