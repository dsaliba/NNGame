//Dimitri Saliba
//and ansa
//I love ansa

Environment e;

void setup() {
  size(1034, 576);
  background(255);
  frameRate(60);
  e = new Environment();
}

void draw() {
  clear();
  background(255);
  e.show();
}

void keyPressed() {
  switch(key) {
  case 'w':
    e.a.jump();
    break;
  case 's':
    e.a.duck(true);
    break;
  }
}
