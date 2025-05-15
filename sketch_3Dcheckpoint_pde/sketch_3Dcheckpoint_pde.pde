float rotx, roty;

void setup() {
  size(800, 800, P3D);
  textureMode(NORMAL);
  rotx = radians(0);
  roty = radians(0);
}

void draw() {
  background(255);
  cube(width/2,height/2,0,100,#2FF5F3);
  cube(width/2 +100,height/2,0,100,#2FF5F3);
  sphere(200);
}

void cube(int x, int y, int z, int size, color c) {
  pushMatrix();
  translate(x, y, z);
  fill(c, 100);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  box(size,size,size);
  popMatrix();
}

void mouseDragged() {
  rotx += (pmouseY - mouseY)*0.1;
  roty += (pmouseX - mouseX) *-0.1;
}
