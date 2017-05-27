float circleX, circleW, circleY, xspeed = 1.7, yspeed = .9;

void setup() {
  size(150, 340);
  circleX = width / 2;
  circleY = height / 2;
  fill(255);
}

void draw() {
  float red, green, blue;
  background(150);

  circleW = 24;
  ellipse(circleX, circleY, circleW, circleW);

  circleX += xspeed;
  circleY += yspeed;
  if (circleX + circleW > width + circleW / 2  || circleX - circleW / 2 < 0)
  {
    red = random(255);
    green = random(255);
    blue = random(255);
    fill(red, green, blue);
    xspeed *= -1;
  }
  if (circleY + circleW > height + circleW / 2  || circleY - circleW / 2 < 0)
  {
    red = random(255);
    green = random(255);
    blue = random(255);
    fill(red, green, blue);
    yspeed *= -1;
  }
}
