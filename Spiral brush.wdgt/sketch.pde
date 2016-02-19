// Initialize variables
PShape myBrush;

// Set things up

void setup() {

  size(900, 600);
  background(255);
  stroke(0);
  myBrush = loadShape("spiral.svg");
  
}

void draw() {
  
  shape(myBrush,mouseX,mouseY,25,25);
  
}