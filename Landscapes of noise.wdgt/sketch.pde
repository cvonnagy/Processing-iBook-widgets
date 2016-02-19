boolean record = false;
float noiseScale = .05;

// Setup canvas, etc
void setup() {
  size(900,600,P3D);
}

// Draw scene
void draw() {
  background(255);
  noStroke();
  translate(width/2,height/2,-50);
  rotateX(PI/6.0);
  rotateZ(frameCount*PI/360.0);
  translate(-100,-100,0);
  scale(4);
  drawNoise(this.g);
  exportOBJ();
}

// Draw 
void drawNoise(PGraphics pg) {
  pg.beginShape(TRIANGLES);
  for(int i=0;i<50;i++) {
    for(int j=0;j<50;j++) {
      float z = noise(i*noiseScale,j*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i,j,z*50);
      z = noise((i+1)*noiseScale,j*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i+1,j,z*50);
      z = noise((i+1)*noiseScale,(j+1)*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i+1,j+1,z*50);

      z = noise((i+1)*noiseScale,(j+1)*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i+1,j+1,z*50);
      z = noise(i*noiseScale,(j+1)*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i,j+1,z*50);
      z = noise(i*noiseScale,j*noiseScale);
      pg.fill( lerpColor( color(255,0,0),color(0,0,255),z ));
      pg.vertex(i,j,z*50);
    }
  }
  pg.endShape();  
}
