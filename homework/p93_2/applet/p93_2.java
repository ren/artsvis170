import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class p93_2 extends PApplet {

public void setup() {
  size(600,100);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(360);
}

public void draw() {
  noStroke();
  for (int x=1; x<24; x++) {
    fill(360, 100, x*4, 75);
    ellipse(x*25, 50, 50, 50);
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#ffffff", "p93_2" });
  }
}
