import controlP5.*;
ControlP5 cp5;
float resolution = 250;
float r = 100;
float size = 100;
float theta = 0;
float x;
float y;
float n = 20;
float d = 3;
float c = 50;
float k = 5;

void setup() {
  size(600, 600);
  cp5 = new ControlP5(this);
  cp5.addSlider("resolution").setPosition(20, 20).setRange(0, 400);  
  cp5.addSlider("size").setPosition(20, 30).setRange(0, 400);
  cp5.addSlider("d").setPosition(20, 40).setRange(0, 400);
  cp5.addSlider("n").setPosition(20, 50).setRange(0, 400);
}

void draw() {
  background(0);


  k=n/d;

  pushMatrix();
  translate(width/2, height/2);

  noFill();
  beginShape();

  for (int i=0; i<resolution*d; i= i+1) {

    theta = map(i, 0, resolution, 0, TWO_PI);

    r = size * cos(k*theta) ;
    x = cos(theta)*r;
    y = sin(theta)*r;


    stroke(255);

    vertex(x, y);
  }

  endShape(CLOSE);
  popMatrix();
}
void keyPressed() {
  if (key=='s')
  {
    saveFrame("art-######.png");
  }
}