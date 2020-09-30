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
void setup() {
  size(1024, 768); // fullScreen(), displayWidth & displayHeight
  // fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  // face variables
  population();
}// end setup

void draw() {
    // drawing the face
  // face
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
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
  reset = 1;
  //mesals
 strokeWeight(reset);
 int randomX = round(random(0, height)+offset);
 int randomY = round(random(0, height));
 fill(#c43636);
 ellipse(randomX, randomY, 5, 5);
 noFill();
}// End draw()

void keyPressed () {
  // quit keyboard button
  if( key == 'q' || key == 'Q') {exit();}// end button
}// End keyPressed()

void mousePressed() {
}// End mousePressed()
