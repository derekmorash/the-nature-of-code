Walker w;

void setup() {
  size(900, 600);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}

class Walker {
  int x;
  int y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x,y);
  }
  
  void step() {
    x += int(random(3)) - 1;
    y += int(random(3)) - 1;
  }
}