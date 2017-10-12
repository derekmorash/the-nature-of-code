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
    float num = random(1);
    
    if (num > 0.5) {
      x += mouseX > x ? 1 : -1;
      y += mouseY > y ? 1 : -1;
    } else {
       x += int(random(3)) -1;
       y += int(random(3)) -1;
    }
  }
}