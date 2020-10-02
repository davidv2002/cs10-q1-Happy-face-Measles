
size(1024, 768); // fullScreen(), displayWidth & displayHeight
class Mask { 
  //outside X cord, inside X cord and X cord of middle point of curve
  int outsideX, cPointX;
  Mask(int outsideX_1, int cPointX_1) {
    outsideX = outsideX_1;
    cPointX = cPointX_1;
  };
  void thing() {
    fill(255, 255, 255); 
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
ellipse(width / 2, height / 2, height, height);
Mask maskLeft = new Mask(width, (width/2)+(height/2)+round((height/2*0.33)));
maskLeft.thing();
