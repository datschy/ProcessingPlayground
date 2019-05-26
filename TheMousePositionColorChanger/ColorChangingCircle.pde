class ColorChangingCircle {
  float radius;
  float valueVariation;
  
  ColorChangingCircle() {
    this.radius = 80;
    this.valueVariation = 50;
  }
  
  ColorChangingCircle(float radius) {
    this.radius = radius;
    this.valueVariation = 60;
  }
  
  ColorChangingCircle(float radius, float valueVariation) {
    this.radius = radius;
    this.valueVariation = valueVariation;
  }
  
  void display() {
    fill(selectColorByMousePosition());
    ellipse(mouseX, mouseY, radius, radius);
  }
  
  color selectColorByMousePosition() {
    float positionX = mouseX;
    float positionY = mouseY;
    
    float value = 255 - (positionX/sizeX) * valueVariation;
    float blueScale = positionY/sizeY;
    float redScale = 1 - blueScale;
    
    int selectedBlue = int(value * blueScale);
    int selectedRed = int(value * redScale);
    
    return color(selectedRed, 0, selectedBlue);
  }
  
  
}
