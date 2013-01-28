int FRAME_WIDTH = 720;
int FRAME_HEIGHT = 1280;
int TOTAL_FRAMES_REQUIRED = 30;
color BACKGROUND_COLOR = color(0,255,0);
color FOREGROUND_COLOR = color(255,255,255);

int frameNumber;
PFont font;

void setup() {
  frameRate(30);
  size(FRAME_WIDTH,FRAME_HEIGHT);

  frameNumber = 0;
  font = loadFont("SansSerif-48.vlw");
}

void draw() {
  background(BACKGROUND_COLOR);
  color(FOREGROUND_COLOR);

  textFont(font,48);
  text(frameNumber+1,50,50);
  frameNumber++;
  
  if(frameNumber < TOTAL_FRAMES_REQUIRED) {
    saveFrame("frame-#####.png");
  }
  else {
    println("Complete.");
  }
}
