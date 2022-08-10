PImage img;

void setup() {
  size(600, 600);
  //frameRate(10);

  img = loadImage("img/Scissor-Seven-Extras-streaming.jpeg");
  img.resize(width, height);
}

void draw() {
  fill(0);
  noStroke();

  int tamañoCelda = 5;
  translate (tamañoCelda/2, tamañoCelda/2);
  
  for (int x = 0; x < 100; x++) {
    for (int y = 0; y < 100; y++) {

      int locx = int(random (width));
      int locy = int(random (height));

      color c = img.get(locx*tamañoCelda, locy*tamañoCelda);

      float size = map(brightness(c), 0, 255, tamañoCelda, 0);

      ellipse(locx*tamañoCelda, locy*tamañoCelda, size, size);
    }
  }
  
  saveFrame("render//render-###.png");
}
