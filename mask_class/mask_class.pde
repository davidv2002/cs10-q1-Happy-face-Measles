
size(1024, 768); // fullScreen(), displayWidth & displayHeight
class Mask { 
  //outside X cord, inside X cord and X cord of middle point of curve
  int outsideX, insideX, middleInsideX;
  Mask(int outsideX_1, int insideX_1, int middleInsideX_1) {
  outsideX = outsideX_1;
  insideX = insideX_1;
  middleInsideX = middleInsideX_1;
  };
    void thing() {
      fill(255, 255, 255); 
      beginShape();
      vertex(outsideX, 0);
      vertex(insideX, 0);
      bezierVertex(width/2 -  height/2 * 1.33, height, width/2 -  height/2 * 1.33, height/2, insideX, height);
      vertex(insideX, height);
      vertex(outsideX, height);
      vertex(outsideX, 0);
      endShape();
    };
}
ellipse(width / 2, height / 2, height, height);
Mask maskLeft = new Mask(0, width/2,(width - height)/2 );
maskLeft.thing();
