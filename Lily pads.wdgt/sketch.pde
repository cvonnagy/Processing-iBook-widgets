// Declare variables!

int pivotX;
int pivotY;

// Set things up!
void setup() {

  size(900, 600);
  stroke(0);
  background(255);
  pivotX = 450;
  pivotY = 300;

}

// Start drawing!
void draw() {

  line(pivotX, pivotY, mouseX, mouseY);

}

// Move pivot to mouse position
void mouseClicked() {
  
  pivotX = mouseX;
  pivotY = mouseY;

}

// Control "pencil"
void keyReleased() {
  
  if (key == 's' || key == 'S') saveFrame("Default.png");
  if (key == 'u' || key == 'U') noStroke();
  if (key == 'd' || key == 'D') stroke(0);
  if (key == 'e' || key == 'E') background(255);
  if (key == 'b' || key == 'B') background(0);

  
  if (key == '0') stroke(0);
  if (key == '1') stroke(25);
  if (key == '2') stroke(50);
  if (key == '3') stroke(100);
  if (key == '4') stroke(125);
  if (key == '5') stroke(150);
  if (key == '6') stroke(175);
  if (key == '7') stroke(200);
  if (key == '8') stroke(225);
  if (key == '9') stroke(250);
  
}
