Bot usera;
Bot userb;
Bot userc;
Bot userd;
Bot usere;

void setup() {
  size(500, 500);
  background(255);
  usera = new Bot(100, 100, 255, 0, 0);
  userb =new Bot(100, height-100, 0, 255, 0);
  userc = new Bot(width-100, height-100, 0, 0, 255);
  userd =new Bot(width-100, 100, 200, 10, 150);
  usere=new Bot(width/2, height/2, int (random(0, 255)), int (random(0, 255)), int (random(0, 255)));
}

void draw() {

  usera.display();
  usera.step();
  userb.display();
  userb.step();
  userc.display();
  userc.step();
  userd.display();
  userd.step();
  usere.display();
  usere.step();
}

void keyPressed() {
  if (key==' ')
  {
    saveFrame();
  }
}