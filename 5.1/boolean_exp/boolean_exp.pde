float circleX, circleW, circleY;

void setup() {
  size(630, 340);
  circleX = width / 2;
  circleY = height / 2;
}

void draw() {
  background(150);

  circleW = 24;
  fill(255);
  ellipse(circleX, circleY, circleW, circleW);

  circleX++;
  if (circleX + circleW > width + circleW / 2) {
    circleX = circleW / 2;
  }
}
