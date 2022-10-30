import peasy.*;
PeasyCam cam;
void setup() {
  size(600, 600, P3D);
  cam = new PeasyCam(this, 500);
}

void draw() {
  background(0);
  noFill();
  stroke(255);

  // tdf(300);
  pushMatrix();
  
  rotateX(radians(frameCount*0.05));
  rotateY(radians(frameCount*0.1));
  //rotateZ(radians(frameCount*0.0));
  
  tdfs(10);
  popMatrix();
}


void tdf(float r) {

  r*=0.8;

  if (r > 10) {
    pushMatrix();
    translate(-r*2, 0, r);
    box(r);
    popMatrix();

    pushMatrix();
    translate(r*2, 0, -r);
    box(r);
    popMatrix();

    pushMatrix();
    translate(0, -r*2, r);
    box(r);
    popMatrix();

    pushMatrix();
    translate(0, r*2, -r);
    box(r);
    popMatrix();


    pushMatrix();
    translate(0, 0);

    box(r*4);
    popMatrix();

    tdf(r);
  }
}

void tdfs(float r) {

  r*=0.9;

  if (r > 5) {
    pushMatrix();
    translate(0, 0);
    sphereDetail(int(map(r, 400, 150, 1, 6)));
    sphere(r*8);
    popMatrix();

    tdfs(r);
  }
}
