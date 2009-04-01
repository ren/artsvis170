##Data Types
- int
- boolean
- char
- float

##Variable Naming
- Reserved Words (Appendix B. 663)
- cannot start with a number and some symbols
- camelCase, use x / y for screen positioning

##Operators
- +
- -
- *
- /
- % modulus, returns remainder
- >
- <
- >=
- <=
- ==
- !=
- &&
- ||
- !

##Assignments
- x += 5
- x -= 5
- x *= 5
- x %= 5
- x++
- x--

#Geometry Primatives
##Arrays
int[] myarray = {...};

char[] myarray = {'a', 'b', 'c'};
ex. println(myArray[1]); //prints b

P.28 - Processing Book

[Processing Reference](http://processing.org/reference)

##Line
line(x1, y1, x2, y2);

##Triangle
triangle(x1, y1, x2, y2, x3, y3);

##Quad
quad(x1, y1, x2, y2, x3, y3, x4, y4);

##Rectangle
rectangle(x, y, width, height);

##Ellipse
ellipse(x, y, width, height);

##Bezier
bezier(x1, y1, cx1, cy1, cx2, cy2, x2, y2);

##Vertex
beginShape(); -or- beginShape(POINTS); //use points, not lines
                   beginShape(LINES);  //will treat params as x1, y1, x2, y2, etc..
                   beginShape(TRIANGLES); //will create triangles from sets of coordinates
                   beginShape(TRIANGLES_STRIP); //connects each subsequent vertex to the previous two
                   beginShape(TRIANGLES_FAN); //draws a line from each subsequent vertex back to the first
                   beginShape(QUAD);
                   beginShape(QUAD_STRIP);
vertex(x, y);
vertex(x, y);
...
endShape(); -or- endShape(CLOSE); //draws a line back to initial point

###Bezier shapes using vertices
beginShape();
vertex();
bezierVertex();
...
endShape();

##Fill
fill(255);
fill(255, 255, 255);
fill(255, 255, 255, 255); //(Alpha channel) 4th parameter dictates transparency (0-255)
noFill();

##Stroke
stroke(255);
stroke(255, 255, 255);
stroke(255, 255, 255, 255); //(Alpha channel) 4th parameter dictates transparency (0-255)
noStroke();

#Anti-Aliasing
smooth();
noSmooth();

##ColorMode
colorMode(HSB); //aka HSV
colorMode(RGB);
colorMode(RGB,100); //changes the range from 0-255 to 0-100

HSV vs RGB
Smooth gradient - use HSV

##Images


##Random
random(10); // 0, 9.999..
random(5, 10); // 5, 9.999..

##Random Seed
Reproducible randomness 
randomSeed(18);

##Noise
Random, but continuous

##Fonts
Pull in at closest size
similar to images Pfont(?) load_font(?)
fill controls color
text(...) 

##Translate
Only affects drawing layer, not existing pieces
translate(100,100) // shifts drawing origin from (0,0) to (0+100,0+100)
Additive, does not reposition to "new coordinates"

##Mouse Interaction
mouseX, mouseY - Mouse X,Y
pmouseX, pmouseY - Past / Previous Mouse (good for speed)
* When doing manipulations remember to use absolute value abs(mouseX - mouseX) - width can't be negative

mousePressed - returns bool for is mouse pressed?
mousePressed() - simulate mouse press

##Time
year(), month(), day(), hour(), minute(), second() #=> from system clock
millis() - from when the program started

##Good to know...
Single quotes (') are for characters
Double quotes (") are for strings

Drawing order is based on order in the code

size(screen.width, screen.height, OPENGL); // import processing.opengl.*