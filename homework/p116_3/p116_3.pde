void setup() {
  size(600,100);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(0, 86, 84);
}

void draw() {
  PFont garamond, helvetica;
  garamond = loadFont("AGaramondPro-Regular-48.vlw");
  helvetica = loadFont("Helvetica-Bold-48.vlw");
  textFont(garamond);
  textSize(20);
  fill(360);
  String word = "Whats the harm in";
  text(word, 120, 65);
  

  
  textFont(helvetica);
  textSize(48);
  word = "harmony?";
  text(word, 270, 65);
}