// Initialize variables
float nSeed;
float linePosition;
float lineHeight;
float lineHue;

// Set things up
void setup() {
  
  size(900,600);
  frameRate(20);
  background(0);
  colorMode(HSB);  
  nSeed = 0.0;
  
}

// Draw the line
void draw() {
  
  
  nSeed = nSeed + .01;
  noiseDetail(4,0.75);
  linePosition = noise(nSeed) * width;
  lineHue = noise(nSeed) * 255;
  stroke(lineHue, 255, 255);
  fill(lineHue,255,255);
  pulseLine(linePosition, 550);
  ellipse(30,30,50,50);
  
}


void pulseLine (float x, int y) {
  line(x, y, x, y - 300);
}