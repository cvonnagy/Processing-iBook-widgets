// initialize variables
int s;
int m;
int h;

// Set things up
void setup() {

  size(900, 600);
  colorMode(HSB, 60);
  noStroke();
  frameRate(1);

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
  color hourColor = color(hC, 100, 100);
  color minuteColor = color(mC, 100, 100);
  color secondColor = color(sC, 100, 100);
  
  if (hour() >= 20 || hour() <= 6) {daypartColor = color(0,20,20);} 
    else {daypartColor = color(10,30,60);}
 
  pushMatrix();
    translate(300,300);
    fill(daypartColor);
    ellipse(0,0,200,200);
  popMatrix();
  
  pushMatrix();
    translate(300,300);
      rotate(radians(h * 15));
        fill(hourColor);
        ellipse(0,-175,50,50);
  popMatrix();
  
  pushMatrix();
    translate(300, 300);
    rotate(radians(h * 15));
    translate(0,-175);
    rotate(radians(m * 6) - radians(h * 15));
    fill(minuteColor);
    ellipse(0,-50,20,20);
  popMatrix();
  
  pushMatrix();
    translate(300, 300);
    rotate(radians(s * 6));
    fill(secondColor);
    ellipse(0,-250,10,10);
  popMatrix();  
 
} 