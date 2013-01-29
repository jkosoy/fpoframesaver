int FRAME_WIDTH = 500;
int FRAME_HEIGHT = 500;
int TOTAL_FRAMES_REQUIRED = 15;

color BACKGROUND_COLOR = color(0,255,0);
color FOREGROUND_COLOR = color(255,255,255);

PVector FRAME_NUMBER_POS = new PVector(35,250);

PVector FPO_TEXT_POS = new PVector(35,150);
String FPO_TEXT = "Example FPO Text";

// no need to edit below this line.
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
  fill(FOREGROUND_COLOR);

  textFont(font,48);
  text(frameNumber+1,FRAME_NUMBER_POS.x,FRAME_NUMBER_POS.y);
  text(FPO_TEXT,FPO_TEXT_POS.x,FPO_TEXT_POS.y);
  frameNumber++;
  
  if(frameNumber < TOTAL_FRAMES_REQUIRED) {
    saveFrame("frame-#####.png");
  }
  else {
    println("Complete.");
  }
}
