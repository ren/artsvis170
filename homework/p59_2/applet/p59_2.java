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

public class p59_2 extends PApplet {

//Click and hold to draw

public void setup() {
  size(680,520);
}

public void draw() {
  smooth();
  println("mouse X,Y:" + mouseX + ", " + mouseY);
  frameRate(12);
  if (((mouseX % 2) == 0) && mousePressed) {
    ellipseMode(CENTER);
    ellipse(mouseX, mouseY, mouseX, mouseY);
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#ffffff", "p59_2" });
  }
}
