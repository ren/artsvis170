void setup() {
  size(200,600);
  smooth();
  noLoop();
  background(255);
}

void draw() {
  fill(230, 167, 32, 50);
  stroke(255);
  for (int x=0; x<100; x++) {
    float n = norm(x, 0.0, 100.0);
    float y = pow(n, 8);
    y *= 400;
    ellipse(x, y, x*2, y*1.2);
    //ellipse(x, y, x*0.2, y*0.2);
  }
}
