// Set things up!
void setup() {
  size(900, 600);
  background(255);
}


void draw () { 
  if (mousePressed) {
    fill(100);
  } else {
    fill(255); }
  ellipse(mouseX, mouseY, 40, 40);
}

