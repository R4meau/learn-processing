class Bubble {
  float d = 50;
  float x = width * .5;
  float y = height - d/2;
  color c = color(255, 255, 255);

  Bubble (float tmpd, float tmpx, float tmpy, color tmpC) {
    d = tmpd;
    x = tmpx;
    y = tmpy;
    c = tmpC;
  }

  void ascend() {
    y--;
    x += random(-2, 2);
  }

  void display() {
    fill(c);
    ellipse(x,y,d, d);
  }

  void top() {
    if (y <= - (d / 2)) {
      y = height + d / 2;
    }
  }
}
