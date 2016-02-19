float x;
float y;
float xSeed;
float ySeed;

PShape cniforia01;

void setup() {

  size(900, 600);
  frameRate(5);
  background(255);
  cniforia01 = loadShape("jelly.svg");
  x = width/2;
  y = height/2;
  xSeed = 0.0;
  ySeed = 5000;
  noiseDetail(2,0.1);
  
}

void draw() {
  
  background(255);
  x = map(noise(xSeed), 0, 1, 0, width);
  y = map(noise(ySeed), 0, 1, 0, height);
  translate(x,y);
  shape(cniforia01,0,0,200,200);
  xSeed = xSeed + .01;
  ySeed = ySeed + .01;
  
}
