// initialize variables
int hueValue;
int saturationValue;
int brightnessValue;


// Set things up and draw once
void setup() {

  size(900, 600);
  colorMode(HSB, 100);
  stroke(0,0,50);
  background(100,0,100);
  
  hueValue = 0;
  saturationValue = 0;
  brightnessValue = 0;

}

void draw() {

  hueValue = mouseX / 9;
  brightnessValue = mouseY / 4;
  for (int x = 0; x < 900; x = x + 45) {
    fill(hueValue,x / 9,brightnessValue);    
    rect(x,0,45,600);
    saturationValue = saturationValue + 5;
  }


}