ArrayList<Bubble> bubbles = new ArrayList<Bubble>();

void setup() {
  size(630, 340);
}

void draw() {
  background(255);
  for (Bubble b: bubbles) {
    b.display();
    b.ascend();
    b.top();
  }
}

void mousePressed() {
  float d = random(50);
  float x = mouseX;
  float y = mouseY;
  color c = color(random(255), random(255), random(255));
  bubbles.add(new Bubble(d, x, y, c));
}
