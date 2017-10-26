void setup() {
  size(640, 360);
  
  float xoff = 0.0;
  
  loadPixels();
  for (int x = 0; x < width; x++) {
    float yoff = 0.0;
    for (int y = 0; y < height; y++) {
      pixels[x+y*width] = color(map(noise(xoff,yoff), 0, 1, 0, 255));
      
      yoff += 0.01;
    }
    
    xoff += 0.01;
  }
  updatePixels();
  noLoop();
}

void draw() {
}