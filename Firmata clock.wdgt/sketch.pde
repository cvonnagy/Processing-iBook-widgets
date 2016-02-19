import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int second_ref, second_prev;
int minute_ref, minute_prev;
int hour_ref, hour_prev;
int[] pins = {13,12,11};

void setup() {
  size(400, 100,P2D);
  background(255);
  textSize(64);
  fill(0, 102, 153, 204);
  arduino = new Arduino(this, "/dev/tty.usbmodemfa141", 57600);
  for (int i = 0; i <= 2; i++){arduino.pinMode(pins[i], Arduino.OUTPUT);}
  for (int i = 0; i <= 2; i++){arduino.digitalWrite(pins[i], Arduino.LOW);}
  second_ref = second();
  second_prev = second_ref;
  minute_ref = minute();
  minute_prev = minute_ref;
  hour_ref = hour();
  hour_prev = hour_ref;
  
}

void draw() {
  
  second_ref = second();
  minute_ref = minute();
  hour_ref = hour();
  background(255);
  text(hour_ref + ":" + minute_ref + ":" + second_ref,40,75);

  if (second_ref != second_prev){
    arduino.digitalWrite(pins[0], Arduino.HIGH);
    delay(500);
    arduino.digitalWrite(pins[0], Arduino.LOW);
    second_prev = second_ref;
  }
  
}
