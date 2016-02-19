Cat cat;
 
void setup() {
  size(900,600);
  cat = new Cat();
}
 
void draw() {
  background(255);
 
  cat.update();
  cat.checkEdges();
  cat.display();
  
}
 
 
 class Cat {
 
  PVector location;
  PVector velocity;
  PVector acceleration;
  float acceleration_toward_mouse = 0.05;
  float topspeed = 2;

 
  Cat() {
    velocity = new PVector(0,0);
    location = new PVector(width/2,height/2);
    acceleration = new PVector(0.0,0.0);    
    velocity.limit(5);
    

  }
  
  
  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector direction = PVector.sub(mouse,location);
    direction.normalize();
    direction.mult(acceleration_toward_mouse);
    acceleration = direction;
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
 
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,10,10);
  }
 
  void checkEdges() {
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
  }
}
