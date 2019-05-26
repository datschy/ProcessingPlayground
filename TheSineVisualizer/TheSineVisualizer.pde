EmphasizedSineWave mySine; 
color backgroundColor = color(10, 40, 80);

void setup() {
  int sizeX = 900;
  int sizeY = 300;
  int minStrokeWidth = 2;
  int maxStrokeWidth = 12;
  int step = 1;
  
  surface.setSize(sizeX, sizeY);
  mySine = new EmphasizedSineWave(minStrokeWidth, maxStrokeWidth, step);
}

void draw() {
  background(backgroundColor);
  displayBaseline();
  mySine.display();  
  delay(33);
}

void displayBaseline() {
  stroke(200);
  strokeWeight(3);
  line(0, height/2, width, height/2);
}
