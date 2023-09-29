// How would you draw this by hand? 

// I would you go from left to right, using random colors, drawing one line at a time.
// we need to use coordinates in order to use the line() function.

void setup() {
  // verticle lines have the same x value at the start & end points
  // so we don't need 2 variables for x, one is perfect.
  float x = 0;
  float y1 = 0;
  float y2 = 0;
  // variables for random color values
  float r = 0;
  float b = 0;
  float g = 0;
  
  size(800, 800); //canvas will be 800 x 800 with black background
  background(0);
  
  // we want x to start at 0 and increase. 
  // that way when x gets to 800, we can make the while loop stop. 
  // this is great IF we remember to increment x inside our brackets.
  // if we forget to do that, the loop will never stop! infinite loops are bad :(
  // we say "while x is less that 800, do..." whatever is inside the brackets
  
  while ( x < 800 ) {
    
    //so the first thing we might want to add inside is the increasing or incrementing of x
    x++; 
    
    //then change our color and y variables to make them random
    r = random(0, 255);
    b = random(0, 255);
    g = random(0, 255);
    y1 = random(0,800);
    y2 = random(0,800);
    
    //set the color and draw a line using your variables
    stroke(r, g, b);
    line(x, y1, x, y2);
    
  } // this whole block of code gets repeated until x is greater than or equal to 800
  
}
