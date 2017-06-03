int squareSize = 10;
float brushSize = .5;
float centerX, centerY;

void setup() {
  size(800, 800);
  centerX = width * .5;
  centerY = height * .5;
}

void draw() {
  for (int x = 0; x < width; x = x + squareSize) {
    for (int y = 0; y < height; y = y + 2squareSize) {
      float c = dist(x, y, mouseX, mouseY);
      // noStroke();
      fill(c / brushSize, random(255), random(255));
      rect(x, y, squareSize, squareSize);
    }
  }
}
