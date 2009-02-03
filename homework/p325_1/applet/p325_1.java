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

public class p325_1 extends PApplet {

public void setup() {
  size(600,400);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(360);
}

public void draw() {
  PImage img1 = loadImage("car.jpg");
  image(img1, 0, 0);

  PImage headlight = get(0, 100, 100, 120);
  image(headlight, 100, 100);
  image(headlight, 200, 100);
  image(headlight, 300, 100);
  image(headlight, 400, 100);
  image(headlight, 500, 100);
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#ffffff", "p325_1" });
  }
}
