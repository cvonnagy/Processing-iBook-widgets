// initialize variables
int fillColor;

// Set things up and draw once
void setup() {

  size(900, 600);
  stroke(125);
  background(255);

  fillColor = 0;

  for (int x = 0; x < 890; x = x + 32) {
    fill(fillColor);    
    rect(x+2,20,30,450);
    fillColor = fillColor + 12;
  }

}

void draw() {}

// Control "pencil"
void keyReleased() {
  
  if (key == 's' || key == 'S') saveFrame("Default.png");

}
