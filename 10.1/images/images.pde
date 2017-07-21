PImage nick;

void setup() {
    size(600, 340);
    nick = loadImage("nick.png");
}

void draw() {
    background(0);
    image(nick, 0, 0, mouseX, mouseY);
    tint(255, mouseX, mouseY);
}
