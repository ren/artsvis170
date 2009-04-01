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

public class p143_1 extends PApplet {

public void setup() {
  size(500,500);
  colorMode(HSB, 0, 100, 100);
  smooth();
  // noLoop();
  background(360);
  frameRate(30);
}

public void draw() {
  fill(360,100,100,random(60,80));
  rotate(random(0,360));
  float x = width/2;
  float y = height/2;
  ellipse(x, y, 14, 14);
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#ffffff", "p143_1" });
  }
}
