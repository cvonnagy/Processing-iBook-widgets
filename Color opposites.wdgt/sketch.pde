int hueValue;
int satValue;
int brightValue;
int hueRot;

void setup() {

  size(900, 600);
  colorMode(HSB, 100);
  noStroke();
  brightValue = 100;  
  
}

void draw() {

  background(0,0,50);
  satValue = 10;
  hueValue = mouseX / 9;
  hueRot = mouseY / 6;
  
  for (int x = 5; x < 850; x = x + 55) {
    for (int y = 15; y < 550; y = y + 55) {
      colorOppositeSquare(x,y,hueValue,satValue,brightValue,hueRot);
    }
    satValue = satValue + 10;
  }


}

void colorOppositeSquare(int x, int y, int h, int s, int b, int r) {
 
  int oppHue;
  if (h - r >= 0) {oppHue = h - r;} else {oppHue = 100 + (h - r);}
  
  pushMatrix();
    translate(x, y);
    fill(h,s,b);
    rect(10,10,50,50);
    fill(oppHue,s,b);
    rect(20,20,30,30);
  popMatrix();
 
} 


void keyReleased() {
  
  if (key == '1') brightValue = 10;
  if (key == '2') brightValue = 20;
  if (key == '3') brightValue = 30;
  if (key == '4') brightValue = 40;
  if (key == '5') brightValue = 50;
  if (key == '6') brightValue = 60;
  if (key == '7') brightValue = 70;
  if (key == '8') brightValue = 80;
  if (key == '9') brightValue = 90;
  if (key == '0') brightValue = 100;

}