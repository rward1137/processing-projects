// a cute jellyfish cube character
void setup() {
  size(300, 300);
  background(#3E87CE);
  frameRate(16);
}

float changeControlPoint = -200;
boolean increasing = true;
void draw() {
  strokeWeight(0);
  fill(#3E87CE);
  rect(0,0,400,400);
  // tentacles
  
  if (increasing) {
    changeControlPoint += 10;
  } else {
    changeControlPoint -= 10;
  }
  
  strokeWeight(15);
  stroke(#C449A1);
  fill(#3E87CE);
  curve(0  - (changeControlPoint * .6), 200, 115, 180, 120, 270, 250  + (changeControlPoint * .6), 200);
  curve(250  + (changeControlPoint * .7), 200, 80, 180, 80, 270, 0  - (changeControlPoint * .7), 200);
  curve(0  - (changeControlPoint * .9), 200, 40, 180, 40, 270, 250  + (changeControlPoint * .6), 200);
  curve(0  + (changeControlPoint * .6), 200, 145, 180, 150, 270, 250  - (changeControlPoint * .9), 200);
  curve(250 - (changeControlPoint * .8), 200, 180, 180, 180, 270, 0  + (changeControlPoint * .8), 200);
  curve(0  + (changeControlPoint * .6), 200, 230, 180, 240, 270, 300 - (changeControlPoint * .6), 200);
  stroke(#F55BCA);
  curve(150  - (changeControlPoint * .6), 200, 33, 180, 40, 270, -70  + (changeControlPoint * .6), 250);
  curve(50  - (changeControlPoint * .9), 180, 67, 180, 70, 270, 200  + (changeControlPoint * .6), 250);
  curve(220 + (changeControlPoint * .4), 200, 103, 180, 110, 270, 0 - (changeControlPoint), 250);
  curve(0  - (changeControlPoint * .9), 200, 85, 180, 90, 270, 220  + (changeControlPoint * .6), 250);
  curve(150 + (changeControlPoint * .6), 200, 123, 180, 130, 270, -70 + (changeControlPoint * .6), 250);
  curve(50 - (changeControlPoint * .7), 180, 168, 180, 163, 270, 200 + (changeControlPoint * .7), 250);
  curve(220 + (changeControlPoint * .5), 200, 203, 180, 205, 270, 0 - (changeControlPoint * .5), 250);
  curve(250 - (changeControlPoint * .8), 200, 225, 180, 230, 270, 0 + (changeControlPoint * .8), 250);
  curve(150 + changeControlPoint, 200, 260, 180, 270, 270, 350 - changeControlPoint, 250);
  
  
  if (changeControlPoint >= 300) {
    increasing = false;
  } else if (changeControlPoint <= -200) {
    increasing = true;
  }
  
  
  // jelly fish body
  stroke(#F55BCA);
  fill(#F55BCA);
  rect(25,25, 250, 150, 100);
  rect(18, 140, 266, 40, 10);
  
  // face
  if (changeControlPoint > 250) {
    stroke(0);
    strokeWeight(5);
    line(110, 113, 120, 113);
    strokeWeight(15);
    point(185, 110);
    strokeWeight(15);
    point(150, 130);
    
  } else {
    stroke(0);
    strokeWeight(15);
    point(115, 110);
    point(185, 110);
    strokeWeight(5);
    curve(135, 105, 125, 130, 175, 130, 165, 105);
  }

}
