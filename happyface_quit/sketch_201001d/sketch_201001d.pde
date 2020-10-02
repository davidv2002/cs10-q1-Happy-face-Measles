//Global Variables
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, red, silver;

void setup() {
  size(400, 300);
  //Population
  buttonX = width*1/4;
  buttonY = height*1/4;
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
  red = #ED2626;
  silver = #D8D0D0;
}//End setup

void draw() {

  if (mouseX>width*1/4 && mouseX<width*3/4 && mouseY>height*1/4 && mouseY<height*3/4) { //Button Hoverover
    buttonColour = silver; //Hoverover
  } else {
    buttonColour = red;
  }// End IF
  fill(buttonColour); //red all the time, silver with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>width*1/4 && mouseX<width*3/4 && mouseY>height*1/4 && mouseY<height*3/4 ) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
