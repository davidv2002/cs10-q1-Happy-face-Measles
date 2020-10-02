void faceDraw() {
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
  strokeWeight(reset);
};
