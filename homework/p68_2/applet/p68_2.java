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

public class p68_2 extends PApplet {

//Best at the begining of each minute
//Circles change color based on value of seconds in time

public void setup() {
  size(600,600);
}

public void draw() {
  noStroke();

  frameRate(1);

  int s = second();
  println("second: " + s);
  for(int y = 1; y < 600; y += 60) {
    for(int x = 1; x < 600; x += 60){
      float bcolor = ((x+y) / (s+1));
      fill(bcolor);
      ellipseMode(TOP);
      ellipse(x, y, 60, 60);
    }
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#ffffff", "p68_2" });
  }
}
