float rotx, roty;
PImage diamond, grassTop, dirt, grassSides;


void setup() {
  size(800, 800, P3D);
  textureMode(NORMAL);
  rotx = radians(0);
  roty = radians(0);
  diamond = loadImage("Diamond.png");
  grassTop = loadImage("Grass_Block_Top_C.png");
  grassSides = loadImage("Grass_Block_Side.png");
  dirt = loadImage("Dirt_(texture)_JE2_BE2.png");
}

void draw() {
  background(255);
  rotateX(rotx);
  rotateY(roty);
  dia(width/2, height/2, -300, 100, #2FF5F3);
  grass(width/2 +100, height/2, -300, 100, #2FF5F3);
  for(int i = 0; i < 100; i++){
    for(int j = 0; j < 100; j++){
    grass(i*100, -300, j*100, 100, #2FF5F3);
    }
  }
  sphere(200);
}

void grass(int x, int y, int z, int size, color c) {
  pushMatrix();
  translate(x, y, z);
  scale(size);
  fill(c, 100);
  noStroke();
  
  beginShape(QUADS);
  texture(grassTop);
  //top
  vertex(0,0,0,0,0);
  vertex(1,0,0,1,0);
  vertex(1,0,1,1,1);
  vertex(0,0,1,0,1);
  endShape();
  beginShape(QUADS);
  texture(dirt);
  //bottom
  vertex(0,1,0,0,0);
  vertex(1,1,0,1,0);
  vertex(1,1,1,1,1);
  vertex(0,1,1,0,1);
  endShape();
  beginShape(QUADS);
  texture(grassSides);
  //left
  vertex(0,0,0,0,0);
  vertex(0,0,1,1,0);
  vertex(0,1,1,1,1);
  vertex(0,1,0,0,1);
  //right
  vertex(1,0,0,0,0);
  vertex(1,0,1,1,0);
  vertex(1,1,1,1,1);
  vertex(1,1,0,0,1);
  //front
  vertex(0,0,1,0,0);
  vertex(1,0,1,1,0);
  vertex(1,1,1,1,1);
  vertex(0,1,1,0,1);
  //back
  vertex(0,0,0,0,0);
  vertex(1,0,0,1,0);
  vertex(1,1,0,1,1);
  vertex(0,1,0,0,1);
  
  
  //box(size, size, size);
  endShape();
  popMatrix();
}

void dia(int x, int y, int z, int size, color c) {
  pushMatrix();
  translate(x, y, z);
  scale(size);
  fill(c, 100);
  noStroke();
  
  beginShape(QUADS);
  texture(diamond);
  //top
  vertex(0,0,0,0,0);
  vertex(1,0,0,1,0);
  vertex(1,0,1,1,1);
  vertex(0,0,1,0,1);
  //bottom
  vertex(0,1,0,0,0);
  vertex(1,1,0,1,0);
  vertex(1,1,1,1,1);
  vertex(0,1,1,0,1);
  //left
  vertex(0,0,0,0,0);
  vertex(0,0,1,1,0);
  vertex(0,1,1,1,1);
  vertex(0,1,0,0,1);
  //right
  vertex(1,0,0,0,0);
  vertex(1,0,1,1,0);
  vertex(1,1,1,1,1);
  vertex(1,1,0,0,1);
  //front
  vertex(0,0,1,0,0);
  vertex(1,0,1,1,0);
  vertex(1,1,1,1,1);
  vertex(0,1,1,0,1);
  //back
  vertex(0,0,0,0,0);
  vertex(1,0,0,1,0);
  vertex(1,1,0,1,1);
  vertex(0,1,0,0,1);
  
  
  //box(size, size, size);
  endShape();
  popMatrix();
}

void mouseDragged() {
  rotx += (pmouseY - mouseY)*0.1;
  roty += (pmouseX - mouseX) *-0.1;
}
