float rotx, roty;

void setup(){
 size(800,800,P3D);
 rotx = radians(45);
 roty = radians(45);
}

void draw(){
  background(255);
  translate(width/2 - 100,height/2,0);
  fill(#2FF5F3,100);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  box(100,100,100);
  
}

void mouseDragged(){
 rotx += (pmouseY - mouseY)*0.1; 
  roty += (pmouseX - mouseX) *-0.1;
}
