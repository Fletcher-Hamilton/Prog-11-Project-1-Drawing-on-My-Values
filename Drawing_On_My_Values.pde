// Fletcher Hamilton
// 2-4
// 2026/2/4

ArrayList<Bee> hive;

void setup() {
  hive = new ArrayList();

  size(1000, 1000);
  background(0, 255, 255);
  textFont(createFont("GREEN NATURE.ttf", 350));

  // Grass
  fill(0, 255, 0);
  for (int i = 0; i < 50; i++) {
    int d = i * 20;
    triangle(d, 1000, d + 15, 1000, d + 5, random(700, 950));
  }


  // Stem
  stroke(0, 255, 0);
  strokeWeight(10);
  noFill();

  // Main Stem
  line(500, 1000, 500, 250);

  // Minor Stem 1
  arc(250, 850, 500, 550, radians(270), radians(360));

  //Minor Stem 2
  arc(750, 800, 500, 550, radians(180), radians(270));

  // Fower Pistil Setup
  noStroke();
  fill(255, 255, 0);

  // Major Pistil
  ellipse(500, 250, 200, 200);

  // Minor Pistil 1
  circle(250, 575, 75);

  //Minor Pistil 2
  circle(750, 525, 75);

  // Bee
  //ellipse(100, 100, 25, 50);
  //fill(0);
  //ellipse(110, 100, 25, 50);
  //fill(255, 255, 0);
  //ellipse(120, 100, 25, 50);

  //Bee.drawBee(100, 100);
  // Sun
  translate(850, 175);

  for (int i = 0; i < 16; i++) {
    rotate(radians(22.5));
    triangle(0, -50, 0, 50, -175, 0);
  }
  // Major Flower Pedal Setup
  fill(255, 0, 255);
  stroke(200, 0, 200);
  strokeWeight(5);
  translate(-350, 75);

  // Major Pedals
  for (int i = 0; i < 16; i++) {
    rotate(radians(22.5));
    ellipse(-150, 0, 150, 75);
  }
  //Minor Pedals 1 Setup
  translate(-250, 325);

  //Minor Pedals 2
  for (int i = 0; i < 16; i++) {
    rotate(radians(22.5));
    ellipse(-75, 0, 75, 37.5);
  }
  //Minor Pedals 2 Setup
  translate(500, -50);

  //Minor Pedals 2
  for (int i = 0; i < 16; i++) {
    rotate(radians(22.5));
    ellipse(-75, 0, 75, 37.5);
  }
  
  //Title
  fill(0, 55, 0);
  text("Growth", -700, 0);
  fill(0, 155, 0);
  text("Growth", -705, 5);
  fill(0, 240, 0);
  text("Growth", -710, 10);

  hive.add(new Bee(100, 100));

  hive.get(0).drawBee();
}

// void draw() {

// }



class Bee {

  //instance variables
  int x, y;

  //constructor
  public Bee(int x, int y) {
    this.x = x;
    this.y = y;
  }

  //behaviour functions
  public void drawBee() {
    for (int i = 0; i < 3; i++) {
      noStroke();
      int d = i * 10;
      fill(255, 255, 0);
      circle(x + d, y, 25);
      fill(0);
      circle(x + d + 5, y, 25);
    fill(255, 255, 0);
    circle(x + 30, y, 25);
    //stroke(4);
    arc(x + 40, y, 20, 20, radians(270), radians(180));

      //    public static void main()
    }
  }
}
