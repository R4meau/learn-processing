PImage nick;

void setup() {
  size(400, 400);
  nick = loadImage("nick.png");
}

void draw() {
    loadPixels();
    nick.loadPixels();
    for (int x = 0; x < width; ++x) {
        for (int y = 0; y < height; ++y) {
            int pos = x + y * width;
            float r = red(nick.pixels[pos]);
            float g = green(nick.pixels[pos]);
            float b = blue(nick.pixels[pos]);
            float d = dist(mouseX, mouseY, x, y);
            float factor = map(d, 0, width/4, 2, 0);
            pixels[pos] = color(r*factor, g*factor, b*factor);
        }
    }
    updatePixels();
}
