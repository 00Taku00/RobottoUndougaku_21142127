void xyzAxis(float len){
  // x axis
  fill(255,0,0);
  pushMatrix();
  translate(len/2,0,-80);
  box(len,10,1);
  popMatrix();
  
  // y axis
  fill(0,255,0);
  pushMatrix();
  translate(0,len/2,-80);
  box(10,len,1);
  popMatrix();
}
