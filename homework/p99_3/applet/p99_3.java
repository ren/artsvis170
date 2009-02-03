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

public class p99_3 extends PApplet {

public void setup() {
  size(600,100);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noLoop();
  background(360);
}

public void draw() {
  PImage img1 = loadImage("avatar.png");
  for(int i=0; i<20; i++){
    tint(5*i, 5*i);
    image(img1, i*20, 0);
  }
  noTint();
  image(img1, 400, 0);
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#ffffff", "p99_3" });
  }
}
