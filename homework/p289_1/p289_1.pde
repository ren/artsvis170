float x = 50.0;
float y = 50.0;
float radius = 15.0;
float speedX = 1.0;
float speedY = 0.4;
int directionX = 1;
int directionY = -1;

void setup() {
  size(500,500);
  // colorMode(HSB, 0, 100, 100);
  smooth();
  noStroke();
  background(0,0,0);
  ellipseMode(RADIUS);
  frameRate(40);
}

void draw() {
  fill(0,20);
  rect(0, 0, width, height);
  fill(255);
  ellipse(x, y, radius, radius);
  x += speedX * directionX;

  if ((x > width-radius) || (x < radius)){
   directionX = -directionX; 
  }

  y += speedY * directionY;
  if ((y > width-radius) || (y < radius)){
   directionY = -directionY;
  }
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