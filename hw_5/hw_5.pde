PImage earth;
PShape earthS;
PImage sun;
PShape sunS;
PImage mercury;
PShape mercuryS;
PImage venus;
PShape venusS;
PImage mars;
PShape marsS;
PImage jupiter;
PShape jupiterS;
PImage saturn;
PShape saturnS;
PImage uranus;
PShape uranusS;
PImage neptune;
PShape neptuneS;


void setup() {
  size(1200, 700, P3D);
  camera(200, -200, 300, width/2, height/2, 0, 0, 1, 0 );
  earth=loadImage("earthmap1k.jpg");
  sun=loadImage("sunmap.jpg");
  mercury=loadImage("mercurymap.jpg");
  venus=loadImage("venusmap.jpg");
  mars=loadImage("mars_1k_color.jpg");
  jupiter=loadImage("jupitermap.jpg");
  saturn=loadImage("saturnmap.jpg");
  uranus=loadImage("uranusmap.jpg");
  neptune=loadImage("neptunemap.jpg");
  noStroke();
  earthS = createShape(SPHERE, 20);
  earthS.setTexture(earth);
  sunS = createShape( SPHERE, 55);
  sunS.setTexture(sun);
  mercuryS = createShape(SPHERE, 10);
  mercuryS.setTexture(mercury);
  venusS = createShape(SPHERE, 20);
  venusS.setTexture(venus);
  marsS = createShape(SPHERE,20);
  marsS.setTexture(mars);
  jupiterS = createShape(SPHERE,37);
  jupiterS.setTexture(jupiter);
  saturnS = createShape(SPHERE,28);
  saturnS.setTexture(saturn);
  uranusS = createShape(SPHERE,17);
  uranusS.setTexture(uranus);
  neptuneS = createShape(SPHERE,30);
  neptuneS.setTexture(neptune);
}




int m = 0;

void draw() {
  background(2);
  lights();


 
  translate(width*0.5, height*0.5);
  //earth
  pushMatrix();
  noStroke();
  rotateY(frameCount*PI/10*0.01);
  translate(210, 0, 0);
  fill(0, 148, 237);
  shape(earthS);
  rotateY(m*PI/6*0.05);
  popMatrix();
  m++;
  
  //sun
  pushMatrix();
  noStroke();
  rotateY(frameCount*PI/6*0.01);
  translate(0, 0, 0);
  fill(0, 148, 237);
  shape(sunS);
  rotateY(m*PI/6*0.05);
  popMatrix();

  
  //mercury
   pushMatrix();
  noStroke();
  rotateY(frameCount*PI/6*0.01);
  translate(80, 0, 0);
  fill(0, 148, 237);
  shape(mercuryS);
  rotateY(m*PI/6*0.05);
  popMatrix();
  
  //venus
   pushMatrix();
  noStroke();
  rotateY(frameCount*PI/8*0.01);
  translate(130, 0, 0);
  fill(0, 148, 237);
  shape(venusS);
  rotateY(m*PI/6*0.05);
  popMatrix();
  
  //mars
     pushMatrix();
  noStroke();
  rotateY(frameCount*PI/12*0.01);
  translate(270, 0, 0);
  fill(0, 148, 237);
  shape(marsS);
  rotateY(m*PI/6*0.05);
  popMatrix();

//jupiter
    pushMatrix();
  noStroke();
  rotateY(frameCount*PI/14*0.01);
  translate(350, 0, 0);
  fill(0, 148, 237);
  shape(jupiterS);
  rotateY(m*PI/6*0.05);
  popMatrix();
  
  //saturn
  pushMatrix();
  noStroke();
  rotateY(frameCount*PI/16*0.01);
  translate(440, 0, 0);
  fill(0, 148, 237);
  shape(saturnS);
  rotateY(m*PI/6*0.05);
  popMatrix();
  
  //uranus
  pushMatrix();
  noStroke();
  rotateY(frameCount*PI/18*0.01);
  translate(490, 0, 0);
  fill(0, 148, 237);
  shape(uranusS);
  rotateY(m*PI/6*0.05);
  popMatrix();
  
  //neptune
  pushMatrix();
  noStroke();
  rotateY(frameCount*PI/20*0.01);
  translate(550, 0, 0);
  fill(0, 148, 237);
  shape(neptuneS);
  rotateY(m*PI/6*0.05);
  popMatrix();
  

}