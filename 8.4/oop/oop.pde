Bubble b1;
Bubble b2;

void setup() {
  size(640, 360);
  b1 = new Bubble(50, width * .5, height - 50/2, color(208, 29, 190));
  b2 = new Bubble(50, width * .5, height * .5, color(230, 130, 93));
}

void draw() {
  background(222);
  b1.ascend();
  b1.display();
  b1.top();

  b2.ascend();
  b2.display();
  b2.top();
}
