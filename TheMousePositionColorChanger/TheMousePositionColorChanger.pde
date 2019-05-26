int sizeX = 640;
int sizeY = 480;
color backgroundColor = color(10, 40, 80); 
ColorChangingCircle theCircle;

void setup() {
  surface.setSize(sizeX, sizeY);
  
  float radius = 80;
  float valueVariation = 80;
  theCircle = new ColorChangingCircle(radius, valueVariation);
}

void draw() {
  background(backgroundColor);
  theCircle.display();
}
