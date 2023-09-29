float x;
float y;
float wide;
float tall;
float radius;

void setup(){
  size(800,800);
  rectMode(CENTER);
  x = 10;
  y = 10;
}

void draw(){
  wide = random(20);
  tall = random(20);
  radius = random(20);
  if (x <= 790) {
    circle(x, y, radius);
    rect(x, y, wide, tall);
    x += 20;
  } else {
     y += 20;
     x = 10;
  }
}
