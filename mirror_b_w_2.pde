PImage img;
boolean shouldDraw = true;
int count = 1;
int faceNum = 1;


void setup() {
  size(600, 600);
  img = loadImage("face4.jpg");
  smooth();
  shouldDraw = true;
}

void draw() {
  drawImage();
  stroke(0);
  strokeWeight(random(30));
  point(mouseX, mouseY);
  point((600-mouseX), mouseY);
  strokeWeight(20);
  stroke(0, 40);
  point((mouseX-10), (mouseY-10));
  point(((600-mouseX)+10), (mouseY-10));
}

void mouseDragged() {
  stroke(int(random(80, 255)), int(random(80, 255)), int(random(80, 255)));
  strokeWeight(random(20, 30));
  point(mouseX, mouseY);
  point((600-mouseX), mouseY);
}

void drawImage() {
  if (shouldDraw) { 
    image(img, 0, 0);
    shouldDraw=false;
  }
}

void keyReleased() {
  if (key == 's' || key == 'S') {
    save("drawing" + count++ + ".jpg");
  }

//  if (key == CODED) {
//    if (keyCode == UP) {
//      if(faceNum>3){
//        faceNum=1;
//      }
//        img = loadImage("face" + faceNum + ".jpg");
//        faceNum++;
//        shouldDraw=true;
//    }
//  }
}


void mouseClicked() {
  if(faceNum>4){
        faceNum=1;
      }
        img = loadImage("face" + faceNum + ".jpg");
        faceNum++;
        shouldDraw=true;
}

