// let's use a for loop to draw two lines each time the loop runs--
// one horizontal line, and one vertical line.
// these lines will go from 100 to 700 in either direction.

void setup() {
  // verticle lines have the same x value at the start & end points
  // horizontal lines have the same y value at the start & end points
  // for these all of these points, we can use i, a for loop variable.
  // we declare and initialize variables for top and bottom to help us
  // understand the numbers we're using for each line() funtion call.
  int top = 100;
  int bottom = 700;
  int left = 100;
  int right = 700;
  
  // variables for random color values
  float r;
  float b;
  float g;
  
  size(800, 800); //canvas will be 800 x 800 with black background
  background(0);
  
  for ( int i = 100; i <= 700; i += 50) {
    
    // we change our color variables to make them random
    r = random(0, 255);
    b = random(0, 255);
    g = random(0, 255);
    
    //set the color and draw one vertical line
    stroke(r, g, b);
    
    line(i, top, i, bottom);
    
    line(left, i, right, i);
    
  } // this whole block of code gets repeated 13 times
    // because we set it up that way with our for loop
  
}
