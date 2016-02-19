import java.util.Calendar;
import wordcram.*;


void setup() {
// Set up the Processing sketch
size(1000, 600);
colorMode(HSB);
background(230);

// Make a wordcram from a random wikipedia page.
new WordCram(this)
  .fromWebPage("http://www.gutenberg.org/cache/epub/944/pg944.txt")
  .withColors(color(30), color(110),
              color(random(255), 240, 200))
  .sizedByWeight(5, 120)
  .withFont("Futura-CondensedExtraBold")
  .drawAll();
  
}

void draw() {}

void keyReleased() {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

  

