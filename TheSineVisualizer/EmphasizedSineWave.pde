class EmphasizedSineWave {
  FloatList xData, yData, strokeWidth;
  int currentLastIdx = 1;
  
  EmphasizedSineWave(int minStrokeWidth, int maxStrokeWidth, int step) {
    xData =  createXData(step);
    yData = createYData(xData);
    strokeWidth = createStrokeWidth(xData, minStrokeWidth, maxStrokeWidth);
  }
  
  void display() {
     stroke(255, 140, 0);
     strokeWeight(strokeWidth.get(currentLastIdx));
     
     for (int i=0; i<currentLastIdx; i++) {
       line( xData.get(i), yData.get(i), xData.get(i+1), yData.get(i+1) );  
     }
     
     currentLastIdx = currentLastIdx == xData.size() -1 ? 1 : currentLastIdx + 1;
  }
  
  FloatList createXData(int step) {
     FloatList data = new FloatList();
     
     int counter = 0;
     while (counter < width) {
        data.append(counter);
        counter += step;
     }
     data.append(width);
     
     return data;
  }
  
  FloatList createYData(FloatList x) {
    FloatList data = new FloatList();
    
    for (float element : x) {
      float sine = sin(1200*element) * (height/2) + height/2;
      data.append(sine);
    }
    
    return data;
  }
  
  FloatList createStrokeWidth(FloatList x, int minStrokeWidth, int maxStrokeWidth) {
    FloatList data = new FloatList();
    
    for (float element : x) {
      float currentStrokeWidth = (maxStrokeWidth - minStrokeWidth) * abs(sin(1200*element)) + minStrokeWidth;
      data.append(currentStrokeWidth);
    }
    
    return data;
  }
  
}
