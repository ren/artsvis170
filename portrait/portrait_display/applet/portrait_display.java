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

public class portrait_display extends PApplet {

public void setup() {
  size(1000,600);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(360);
}

public void draw() {
  PImage img1 = loadImage("portrait-2180.png");
  image(img1, 0, 0);
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#ffffff", "portrait_display" });
  }
}
