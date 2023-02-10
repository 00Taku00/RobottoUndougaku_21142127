# RobottoUndougaku_21142127

#xyzAxis
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


#wormrobot
float baseH = 10;

float armW = 10;
float armD = 10;
float armL = 10;

float armW1 = 10;
float armW2 = 10;
float armW3 = 10;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float l3 = 0;

float dif = 0.1;


void setup(){
  size(1200, 800, P3D);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'x'){
      angle0 = angle0 + dif*10;
    }
    if(key == 'X'){
      angle0 = angle0 - dif*10;
    }
    if(key == 'Y'){
      angle1 = angle1 + dif*10;
    }
    if(key == 'Y'){
      angle1 = angle1 - dif*10;
    }
    if(keyCode == UP){
      angle2 = angle2 + dif;
    }
    if(keyCode == DOWN){
      angle2 = angle2 - dif;
    }
    if(keyCode == RIGHT){
      angle3 = angle3 + dif;
    }
    if(keyCode == LEFT){
      angle3 = angle3 - dif;
    }
    
    if(key == 'R'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  xyzAxis(20); //xyzAxis @ base
  translate(0,0,baseH/2-80);
  fill(150);
  box(10,10,baseH);
  
  //1st link
  rotateZ(radians(angle1));
  translate(0,0,baseH/2+armL/2);
  fill(255);
  box(armW,armD,armL);
  
  //2nd link
  //go to 2nd joint
  translate(0,0,0);
  rotateX(radians(angle2));  
  rotateY(radians(angle3));  
  //go to center of 2nd joint
  translate(0,0,armL/2);
  fill(120);
  box(armW,armD,armL);
  
  //3rd-10th link
  for(int i = 0; i < 9; i +=1){
    
    translate(0, 0, armL/2);
    rotateX(radians(angle2));
    rotateY(radians(angle3));
    translate(0, 0, armL/2);
    fill(50+20*i);
    box(armW,armD,armL);
  } 
}
