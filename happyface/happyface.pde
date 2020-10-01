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
// color
color red = #FA5151;
color measlesColor = red;
color white = 255;
color colorReset = white;
// measles
float measlesX, measlesY, measlesDiameter;
void setup() {
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

void draw() {
  // drawing the face
  // measles
  // random part
  measlesX = random(height)+offset;
  measlesY = random(height);
  measlesDiameter = random(height * 1/80, height * 1/40 );
  //draw part
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
  //remove unwanted
  triangle(offset, 0, leftEyeX, 0, offset, leftEyeY);
  triangle(offset, height, leftEyeX, height, offset, height/2 + leftEyeY);
}// End draw()

void keyPressed () {
  // quit keyboard button
  if ( key == 'q' || key == 'Q') {
    exit();
  }// end button
}// End keyPressed()

void mousePressed() {
}// End mousePressed()
