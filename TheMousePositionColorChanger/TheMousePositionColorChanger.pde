color backgroundColor = color(10, 40, 80); 
ColorChangingCircle theCircle;

void setup() {
  int sizeX = 640;
  int sizeY = 480;
  float radius = 80;
  float valueVariation = 80;
  
  surface.setSize(sizeX, sizeY);
  theCircle = new ColorChangingCircle(radius, valueVariation);
}

void draw() {
  background(backgroundColor);
  theCircle.display();
}
