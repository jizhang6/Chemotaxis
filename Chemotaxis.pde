Bacteria [] dots;
void setup() {
  size(600, 600);
  background(255);
  frameRate(30);
  dots = new Bacteria[50];
  for (int i = 0; i < dots.length; i++)
  {
    dots[i] = new Bacteria();
  }
}


void draw() {
  for (int i = 0; i < dots.length; i++)
  {
    dots[i].move();
    dots[i].show();
  }
}

class Bacteria {
  int x, y, r, g, b;
  Bacteria() {
    x = (int)(Math.random()*600);
    y = (int)(Math.random()*600);
    r = (int)(Math.random()*225);
    g = (int)(Math.random()*225);
    b = (int)(Math.random()*225);
  }
  void move() {
    if (mouseX - x > 0) { //mouse to right of dot, positive
      x = x + (int)(Math.random()*7-3);
    }
    if (mouseX - x < 0) { //mouse to left of dot, negative
      x = x + (int)(Math.random()*7-4);
    }
    if (mouseX - x == 0) {
      x = x + (int)(Math.random()*9-5);
    }

    if (mouseY - y > 0) { 
      y = y + (int)(Math.random()*7-3);
    }
    if (mouseY - y < 0) {
      y = y + (int)(Math.random()*7-4);
    }
    if (mouseY - y == 0) {
      y = y + (int)(Math.random()*9-5);
    }
  }
  void show() {
    noStroke();
    fill(r, g, b);
    ellipse(x, y, 20, 20);
  }
}
