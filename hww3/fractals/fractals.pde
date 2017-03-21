float angle = 25;
float angle2 = 30;

float  animFacAngle;
float opacityFac;

float thickness = 12 ;

void setup () {
  size (400,400);
  

}
void draw() {
  background (#27AE60);
  pushMatrix();
  translate ( width*0.5, height);
  branch (100+animFacAngle);
  popMatrix();
  
  animFacAngle = sin (millis() * 0.001) * 5;
  //println(animFacAngle);
}

void branch(float len) {
  stroke(255,255,255);
  
  if (len > 90) {
      thickness = 10;
  }
  
  else if (len > 80) {
      thickness = 8;
  }
  
  else if (len > 45) {
      thickness = 6;
  }
  
  else if (len > 35) {
      thickness = 3;
  }
  
   else if (len > 15) {
      thickness = 1;
  }
  
  strokeWeight(thickness);
  line (0,0,0,-len);

translate(0,-len);

if(len > 6) {
  pushMatrix();
  rotate(radians(angle + animFacAngle));
  branch(len*0.67);
  popMatrix();

  pushMatrix();
  rotate(radians(angle + animFacAngle));
  branch(len*0.67);
  noStroke();
  fill(0,0,0,opacityFac);
  ellipse(-2,0,3+animFacAngle, 3+animFacAngle);
  popMatrix();
  
  pushMatrix ();
  rotate(radians(-angle2));
  branch(len*0.67);
  noStroke();
  
  opacityFac = map(animFacAngle,-3,5,0,225);
  
  fill(0,0,0,opacityFac);
  ellipse(-2,0,3+animFacAngle, 3+animFacAngle);
  popMatrix();
  
  
   }
}