// Global Variables
// other
int reset;
int offset;
// face
int faceX, faceY, faceDiameter;
// left eye
int leftEyeX, leftEyeY, leftEyeDiameter;
// right eye
int rightEyeX, rightEyeY, rightEyeDiameter;
// nose
int noseX1, noseX2, noseX3, noseY1, noseY2, noseY3;
// mouth
int mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
// button
int buttonX, buttonY, buttonWidth, buttonHeight;
// color
color buttonColour, red, silver, measlesColor, white, colorReset, x_red;
// measles
float measlesX, measlesY, measlesDiameter;
// text
String x;
PFont titleFont;
void setup() {
  size(1024, 768);
  size(1024, 768); // fullScreen(), displayWidth & displayHeight
  // fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  // face variables
  population();
  // draw the face
  //faceDraw();
  background(reset);
  // face
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}// end setup
// class for the edge mask
class Mask { 
  int outsideX; 
  float cPointX;
  Mask(int outsideX_1, float cPointX_1) {
    outsideX = outsideX_1;
    cPointX = cPointX_1;
  };
  void thing() { 
    beginShape();
    vertex(outsideX, 0);
    vertex( width/2, 0);
    bezierVertex(cPointX, 0, cPointX, height, width/2, height);
    vertex(width/2, height);
    vertex(outsideX, height);
    vertex(outsideX, 0);
    endShape();
  };
}
Mask maskRight = new Mask(width, (width/2)+(height/2)+(height/2*0.33));

void draw() {
  // drawing the face
  // measles
  // random part
  measlesX = random(height)+offset;
  measlesY = random(height);
  measlesDiameter = random(height * 1/80, height * 1/40 );
  // draw part
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  // left eye
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  // right eye
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  // nose
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  // mouth
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  // reset strokeWeight after mouth
  strokeWeight(reset);
  // remove unwanted
  // if it worked
  fill(silver);
  maskRight.thing();

  //button
  if (mouseY<buttonHeight && mouseY>buttonY && mouseX<width && mouseX>buttonX) { //Button Hoverover
    buttonColour = silver; //Hoverover
  } else {
    buttonColour = red;
  }// End IF
  fill(buttonColour); //red all the time, silver with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  // x on button
  fill(x_red);
  textAlign (CENTER, CENTER);
  textFont(titleFont, 30);
  text(x, buttonX, buttonY, buttonWidth, buttonHeight);
  // reset color
  fill(colorReset);
}// End draw()

void keyPressed () {
  // quit keyboard button
  if ( key == 'q' || key == 'Q') {
    exit();
  }// end button
}// End keyPressed()

void mousePressed() {
  if (mouseY<buttonHeight && mouseY>buttonY && mouseX<width && mouseX>buttonX) {
    exit();
  }
}// End mousePressed()
