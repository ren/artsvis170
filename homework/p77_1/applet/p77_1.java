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

public class p77_1 extends PApplet {

public void setup() {
  size(600,600);
  noLoop();
  background(255);
}

public void draw() {
  smooth();
  // midpoints are double indented
  beginShape(TRIANGLE_FAN);
  stroke(255);
  vertex(300,300);  // Center Point
  fill(100);
  vertex(300,200);
    vertex(375,225);
  fill(200);
  vertex(400,300);
    vertex(375,375);
  fill(100);
  vertex(300,400);
    vertex(225,375);
  fill(200);
  vertex(200,300);
    vertex(225,225);
  fill(100);
  vertex(300,200); // Close to top, not center
  endShape();
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#ffffff", "p77_1" });
  }
}
