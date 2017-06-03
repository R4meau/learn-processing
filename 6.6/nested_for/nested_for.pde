int squareSize = 10;
float circleSize = .8;

void setup() {
  size(960, 800);
  background(0);
}

void draw() {
  for (int x = 0; x < width; x += 20) {
   for (int y = 0; y < width; y += 20) {
       float c = dist(x, y, mouseX, mouseY);
       fill(random(c / circleSize), random(c / circleSize), random(c / circleSize));
       rect(x, y, 20, 20);
    }
  }
}
