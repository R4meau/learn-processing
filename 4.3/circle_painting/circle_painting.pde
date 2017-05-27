float circleX;
float circleY;
float circleW;

void  setup() {
 size(630, 340);
 background(150);
}

void  draw() {
  float red, green, blue;

  red = random(255);
  green = random(255);
  blue = random(255);

  fill(red, green, blue);

  circleW = random(5, 30);
  circleX = random(circleW / 2, width - circleW);
  circleY = random(circleW / 2, height - circleW);

  ellipse(circleX, circleY, circleW, circleW);
}

void  mouseClicked() {
  if (mouseButton == LEFT)
    background(random(150));
}
