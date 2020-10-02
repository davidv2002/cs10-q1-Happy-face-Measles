
size(1024, 768); // fullScreen(), displayWidth & displayHeight
background(00,00,00);
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
ellipse(width / 2, height / 2, height, height);
Mask maskRight = new Mask(width, (width/2)+(height/2)+(height/2*0.33));
fill(#D8D0D0); 
maskRight.thing();
