Bubble[] bubbles;
int nbubbles = 100;

void setup() {
  size(640, 360);
  bubbles = new Bubble[nbubbles];
  for (int i = 0; i < nbubbles; i++) {
    bubbles[i] = new Bubble(random(5, 50), random(0, width - 50), random(0, height - 50), color(random(255), random(255), random(255)));
  }
}

void draw() {
  background(222);
  for (int i = 0; i < nbubbles; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
    bubbles[i].top();
  }
}
