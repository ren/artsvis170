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

public class p84_2 extends PApplet {

public void setup() {
  size(200,600);
  smooth();
  noLoop();
  background(255);
}

public void draw() {
  fill(230, 167, 32, 50);
  stroke(255);
  for (int x=0; x<100; x++) {
    float n = norm(x, 0.0f, 100.0f);
    float y = pow(n, 8);
    y *= 400;
    ellipse(x, y, x*2, y*1.2f);
    //ellipse(x, y, x*0.2, y*0.2);
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#ffffff", "p84_2" });
  }
}
