int sizeX = 640;
int sizeY = 480;
color backgroundColor = color(10, 40, 80); 
float radius = 80;
float valueVariation = 60;
ColorChangingCircle theCircle = new ColorChangingCircle(radius, valueVariation);

void setup() {
  surface.setSize(sizeX, sizeY);
}

void draw() {
  background(backgroundColor);
  theCircle.display();
}
