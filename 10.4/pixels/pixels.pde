void setup() {
    size(600, 430);
}

void draw() {
    loadPixels();

    for (int x = 0; x < width; ++x) {
        for (int y = 0; y < height; ++y) {
            int pos = x + y * width;
            int d = int(dist(x, y, mouseX, mouseY));
            pixels[pos] = color(random(0, 200), d*4, random(0, 200));
        }
    }

    updatePixels();
}
