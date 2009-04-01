void setup() {
  size(600,100);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(0);
}

void draw() {
  PFont font;
  font = loadFont("AGaramondPro-Regular-48.vlw");
  textFont(font);
  fill(360);
  String word = "harmony";
  text(word, 350, 65);
}