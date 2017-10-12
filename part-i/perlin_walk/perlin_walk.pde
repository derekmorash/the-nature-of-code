Walker me;

void setup() {
  size(640, 360);
  me = new Walker();
}

void draw() {
  me.step();
  me.draw();
}

class Walker {
  float x,y;
  float tx,ty;
  
  Walker() {
    tx = 0;
    ty = 10000;
  }
  
  void step() {
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    
    tx += 0.01;
    ty += 0.01;
  }
  
  void draw() {
    ellipse(x, y, 25, 25);
  }
}