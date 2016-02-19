int lim = 5;
float accel_x = 0.2;
float accel_y = 0.5;

Mover mover;
 
void setup() {
  size(900,600);
  mover = new Mover();
}
 
void draw() {
  background(255);
 
  mover.max_velocity(lim);
  mover.set_acceleration(accel_x, accel_y);
  mover.update();
  mover.checkEdges();
  mover.display();
  
}

class Mover {
 
  PVector location;
  PVector velocity;
  PVector acceleration;
 
  Mover() {
    velocity = new PVector(0,0);
    location = new PVector(width/2,height/2);
    acceleration = new PVector(0.0,0.0);
    velocity.limit(5);
  }
  
  void set_acceleration(float nx, float ny) {
    acceleration.x = nx;
    acceleration.y = ny;
    // acceleration.x = 0.5;
    // acceleration.y = -1;
  }
 
 void max_velocity(int l){
   velocity.limit(l);
 }
 
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
  }
 
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,10,10);
  }
 
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
 
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}
