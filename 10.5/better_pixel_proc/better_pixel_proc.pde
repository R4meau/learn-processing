/* This is an attempt to set pictures as black and white depending on */
/* borders, this will only work on images with solid colors */
/* It first copies the original image to a temporary image then displays that */
/* temporary image on the screen. */
/* I'm just learning Processing so this is probably not the best way to handle */
/* this :P */

PImage nick;
PImage tmpNick;

void setup() {
    size(400, 400);
    nick = loadImage("nick.png");
    tmpNick = createImage(nick.width, nick.height, RGB);
    nick.loadPixels();
    tmpNick.loadPixels();
    for (int x = 0; x < nick.width; ++x) {
        for (int y = 0; y < nick.height; ++y) {
         int pos = x + y * nick.width;
         if (isBorder(x, y, nick))
            tmpNick.pixels[pos] = color(0);
         else
            tmpNick.pixels[pos] = color(255);
        }
    }
    tmpNick.updatePixels();
}

void draw() {
   image(tmpNick, 0, 0);
}

boolean isBorder(int x, int y, PImage img) {
    int curr = x + y * img.width;
    int top = x + (y - 1) * img.width;
    int right = (x + 1) + y * img.width;
    int bottom = x + (y + 1) * img.width;
    int left = (x - 1) + y * img.width;

    if (top < 0 || top > img.pixels.length ||
        right < 0 || right > img.pixels.length ||
        bottom < 0 || bottom > img.pixels.length ||
        left < 0 || left > img.pixels.length)
        return false;
        
    if (img.pixels[curr] != img.pixels[top] ||
        img.pixels[curr] != img.pixels[right] ||
        img.pixels[curr] != img.pixels[bottom] ||
        img.pixels[curr] != img.pixels[left])
        return true;
    return false;
}
