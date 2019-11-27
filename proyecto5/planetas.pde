
class Planeta {

  // We need to keep track of a Body and a radius
  Body body;
  float r;

  Planeta(float r_, float x, float y) {
    r = r_;
    // Define a body
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;

    // Set its position
    bd.position = box2d.coordPixelsToWorld(x,y);
    body = box2d.world.createBody(bd);

    // Make the body's shape a circle
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    
    // Define a fixture
    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 0.02;
    fd.friction = 0.3;
    fd.restitution = 0.3;

    body.createFixture(fd);

    body.setLinearVelocity(new Vec2(random(10),random(50)));
    body.setAngularVelocity(random(1,-1));
  }

  void applyForce(Vec2 v) {
    body.applyForce(v, body.getWorldCenter());
  }


  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
   // float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(150);
    stroke(0);
    strokeWeight(1);
    image(mercurio,0,0,r*2,r*2);
    popMatrix();
  }
}

class Planeta2 extends Planeta{
  
  Planeta2(float r_, float x, float y){
    super(r_,x,y);
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
 //  float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(150);
    stroke(0);
    strokeWeight(1);
    image(venus,0,0,r*2,r*2);
    popMatrix();
  }
}
class Planeta3 extends Planeta{
  
  Planeta3(float r_, float x, float y){
    super(r_,x,y);
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
 //  float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(150);
    stroke(0);
    strokeWeight(1);
    image(tierra,0,0,r*2,r*2);
    popMatrix();
  }
}
class Planeta4 extends Planeta{
  
  Planeta4(float r_, float x, float y){
    super(r_,x,y);
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
 //  float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(150);
    stroke(0);
    strokeWeight(1);
    image(marte,0,0,r*2,r*2);
    popMatrix();
  }
}
class Planeta5 extends Planeta{
  
  Planeta5(float r_, float x, float y){
    super(r_,x,y);
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
 //  float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(150);
    stroke(0);
    strokeWeight(1);
    image(jupiter,0,0,r*2,r*2);
    popMatrix();
  }
}
class Planeta6 extends Planeta{
  
  Planeta6(float r_, float x, float y){
    super(r_,x,y);
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
 //  float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(150);
    stroke(0);
    strokeWeight(1);
    image(saturno,0,0,r*2,r*2);
    popMatrix();
  }
}
class Planeta7 extends Planeta{
  
  Planeta7(float r_, float x, float y){
    super(r_,x,y);
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
 //  float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(150);
    stroke(0);
    strokeWeight(1);
    image(urano,0,0,r*2,r*2);
    popMatrix();
  }
}
class Planeta8 extends Planeta{
  
  Planeta8(float r_, float x, float y){
    super(r_,x,y);
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
 //  float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(150);
    stroke(0);
    strokeWeight(1);
    image(neptuno,0,0,r*2,r*2);
    popMatrix();
  }
}

class Alien extends Planeta{
  
  Alien(float r_, float x, float y){
    super(r_,x,y);
  }
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
 //  float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(150);
    stroke(0);
    strokeWeight(1);
    image(alien,0,0,r*2,r*2);
    popMatrix();
  }
}
