void setup() {
  size(800, 800);
  for (int i = 0; i < 80; i++) {
    ArtGen( random(50,800), random(0, 255), random(0, 255), random(0, 255), random(0, 255));
  }
  
}

void ArtGen(float a, float b, float c, float d, float e) {
  stroke(e, b, c);
  fill(b, c, d);
  circle(a, random(4) * a, random(10,25));
  stroke(b, e, c);
  fill(c, b, d);
  circle(random(2) * a, random(3) * a, random(20, 40));
  stroke(b, c, e);
  fill(d, b, c);
  rect(random(3) * a, a, random(20,30), random(20,30));
  stroke(c, e, b);
  fill(c, d, b);
  float sideLength = random(12,24);
  rect(random(3) * a, a, sideLength, sideLength);
  fill(e, c, b);
  stroke(d, b, e);
  
  float triangleX = a;
  float triangleY = random(800);
  float triangleLength = random(12,24);
  triangle(triangleX + random(-5, 5), triangleY - triangleLength, 
           triangleX + triangleLength + random(-3, 3), triangleY + triangleLength + random(-3, 3),
           triangleX - triangleLength + random(-3, 3), triangleY + triangleLength + random(-3, 3));
  fill(b, e, b);
  stroke(d, e, b);
  //triangle(e, a, e + random(30), a - random(30), e - random(30), a + random(30));
  
}
