PVector location;
PVector velocity;

void setup() {
  size(640, 360, P3D);
  location = new PVector(100,100,100);
  velocity = new PVector(2.5,5,3);
}

void draw() {
  background(255);
  location.add(velocity);
  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
  
  if ((location.z > -100) || (location.z < -500)) {
    velocity.z = velocity.z * -1;
  }
  
  noStroke();
  lights();
  translate(location.x, location.y, location.z);
  sphere(32);
}