void setup() {
  int canvasHeight = 800;
  int canvasWidth = 1800;
  size(1800, 800); 
  background(#99E6FC); // sky 
  stroke(#55CE64); 
  fill(#55CE64); 
  rect(0, canvasHeight - 100, canvasWidth, 100); // grass 
  
  // call drawFlower() in a loop that executes 20 times 
  for (int i = 0; i < 21; i++) {
    float stemBottomY = 800; 
    float stemBottomX = random(0, canvasWidth);
    float stemTopY = random(canvasHeight - 350, canvasHeight - 175);
    
    drawFlower(stemBottomX, stemBottomY, stemTopY);
  } 
} 

// Custom Function: Draw a flower with a random color and randomly sized petals.
// Parameters tell the location of the bottom of the stem and how tall the flower should be
void drawFlower(float bottomOfStemX, float bottomOfStemY, float topOfStemY) {
  
//----------------stem-------------------------------------------------------------------------------
  
  stroke(#249B32);
  strokeWeight(7);
  
  //make stems slanted
  float topOfStemX = bottomOfStemX + random(-20,20);
  
  line(bottomOfStemX, bottomOfStemY, topOfStemX , topOfStemY); //draw stem
  
//---------------center of flower---------------------------------------------------------------------

  stroke(#EDCE32); 
  strokeWeight(8);
  fill(#F9FA4C); 

  int diameter = 28;
  
  //shift your drawing area so that (0, 0) is moved to (topOfStemX, topOfStemY)
  translate(topOfStemX, topOfStemY); 
  
  circle(0, 0, diameter); //draw center of flower
  
//-----------------petals--------------------------------------------------------------------------------
  
  float r, b, g;
  r = random(100, 255);
  b = random(100, 255);
  g = random(100, 255);
  fill(r, g, b); // random petal color
  stroke(60);
  strokeWeight(1); 
  
  int degrees = 24; // rotation amount
  
  
  //call triangle() in a loop that executes 15 times to make the petals
  for (int i = 0; i <= 14; i++) {
    
    // petal gets drawn close to (0,0)
    float petalHeight = random(42, 50);
    float petalHalfWidth = random(10, 12); 
    
    triangle(0, diameter/2, -petalHalfWidth, petalHeight, petalHalfWidth, petalHeight);
    
    //rotate the drawing area for the next petal 
    rotate((radians(degrees))); 
    
  }

//-------------done with flower------------------------------------------------------------------
  
  resetMatrix(); 
  
}
