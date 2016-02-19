// initialize variables
int s;
int m;
int h;
PShape moon;

// Set things up
void setup() {

  size(900, 600, P2D);
  colorMode(HSB, 60);
  noStroke();
  frameRate(1);
  moon = loadShape("moon.svg");
  moon.scale(0.5);
  

}

// Draw clock at frame rate 
void draw() {

  background(0,0,0);

  s = second();
  m = minute();
  if (hour() <= 11) {h = hour();} else {h = hour() - 12;} 
  
  clock(h, m, s);
  
}


// Code to draw the clock
void clock(int hC, int mC, int sC) {
  
  color daypartColor;
  color hourColor = color(hC, 60, 60);
  color minuteColor = color(mC, 60, 60);
  color secondColor = color(sC, 60, 60);
  
  if (hour() >= 20 || hour() <= 6) {daypartColor = color(0,20,20);} 
    else {daypartColor = color(10,30,60);}
    
 
  pushMatrix();
    translate(300,300);
    fill(daypartColor);
    ellipse(0,0,200,200);
  popMatrix();
  
  pushMatrix();
    translate(300,300);
      rotate(radians(h * 30));
        fill(hourColor);
        ellipse(0,-175,50,50);
  popMatrix();
  
  pushMatrix();
    translate(300, 300);
    rotate(radians(hC * 30));
    translate(0,-175);
    rotate(radians(mC * 6) - radians(hC * 15));
    fill(minuteColor);
    ellipse(0,-50,20,20);
  popMatrix();
  
  pushMatrix();
    translate(300, 300);
    rotate(radians(sC * 6));
    translate(0,-275);
    moon.setStroke(secondColor);
    moon.setFill(secondColor);
    shape(moon);
  popMatrix();  
 
} 