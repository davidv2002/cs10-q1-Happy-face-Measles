void population () {
  faceX = width / 2;
  faceY = height / 2;
  faceDiameter = height;
  // left eye variables
  leftEyeX = width * 3/8;
  leftEyeY = height * 1/4;
  leftEyeDiameter = height / 7;
  // right eye variables
  rightEyeX = width * 5/8;
  rightEyeY = leftEyeY;
  rightEyeDiameter = leftEyeDiameter;
  // nose
  // top point
  noseX1 = faceX;
  noseY1 = height * 3/8;
  // left point
  noseX2 = width * 7/16;
  noseY2 = height * 9/16;
  // right point
  noseX3 = width * 9/16;
  noseY3 = noseY2;
  // mouth
  mouthThick = 7;
  // left point
  mouthX1 = leftEyeX;
  mouthY1 = height * 3/4;
  // right point
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  //reset
  reset = 1;
  // offset
  offset = (width - height)/2;
};
