
class Atractor {
   Body body;
  float r;

  Atractor(float r_, float x, float y) {
    r = r_;
    // Define a body
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    // Set its position
    bd.position = box2d.coordPixelsToWorld(x,y);
    body = box2d.world.createBody(bd);

    // Make the body's shape a circle
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    
    body.createFixture(cs,1);

  }


  Vec2 attract(Planeta m) {
    float G = 900; 
   
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = m.body.getWorldCenter();
    
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    distance = constrain(distance,9,3);
    force.normalize();
    float strength = (G * 1 * m.body.m_mass) / (distance * distance); 
    force.mulLocal(strength);         
    return force;
  }

  void display() {
   
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(a);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
    image(sol,0,0,r*2,r*2);
    popMatrix();
  }
}

class Atractor2 extends Atractor{
  
  Atractor2(float r_, float x, float y){
    super(r_,x,y);
  }
  
  Vec2 atraer(Planeta2 b) {
    float G = 700; 
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = b.body.getWorldCenter();
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    distance = constrain(distance,10,3);
    force.normalize();
    float strength = (G * 1 * b.body.m_mass) / (distance * distance); 
    force.mulLocal(strength);         
    return force;
  }

  void display() {
    
    Vec2 pos = box2d.getBodyPixelCoord(body);
    
    float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(a);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
  //  image(sol,0,0,r*2,r*2);
    popMatrix();
  }
}
class Atractor3 extends Atractor{
  
  Atractor3(float r_, float x, float y){
    super(r_,x,y);
  }
  
  Vec2 atraer(Planeta3 c) {
    float G =700; // Strength of force
    // clone() makes us a copy
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = c.body.getWorldCenter();
    // Vector pointing from mover to attractor
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    // Keep force within bounds
    distance = constrain(distance,9,3);
    force.normalize();
    // Note the attractor's mass is 0 because it's fixed so can't use that
    float strength = (G * 1 * c.body.m_mass) / (distance * distance); // Calculate gravitional force magnitude
    force.mulLocal(strength);         // Get force vector --> magnitude * direction
    return force;
  }

  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
   // float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
 //   image(sol,0,0,r*2,r*2);
    popMatrix();
  }
}

class Atractor4 extends Atractor{
  
  Atractor4(float r_, float x, float y){
    super(r_,x,y);
  }
  
  Vec2 atraer(Planeta4 d) {
    float G =650; // Strength of force
    // clone() makes us a copy
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = d.body.getWorldCenter();
    // Vector pointing from mover to attractor
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    // Keep force within bounds
    distance = constrain(distance,9,3);
    force.normalize();
    // Note the attractor's mass is 0 because it's fixed so can't use that
    float strength = (G * 1 * d.body.m_mass) / (distance * distance); // Calculate gravitional force magnitude
    force.mulLocal(strength);         // Get force vector --> magnitude * direction
    return force;
  }

  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
   // float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
   // image(sol,0,0,r*2,r*2);
    popMatrix();
  }
}
class Atractor5 extends Atractor{
  
  Atractor5(float r_, float x, float y){
    super(r_,x,y);
  }
  
  Vec2 atraer(Planeta5 e) {
    float G =500; // Strength of force
    // clone() makes us a copy
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = e.body.getWorldCenter();
    // Vector pointing from mover to attractor
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    // Keep force within bounds
    distance = constrain(distance,9,3);
    force.normalize();
    // Note the attractor's mass is 0 because it's fixed so can't use that
    float strength = (G * 1 * e.body.m_mass) / (distance * distance); // Calculate gravitional force magnitude
    force.mulLocal(strength);         // Get force vector --> magnitude * direction
    return force;
  }

  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
   // float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
  //  image(sol,0,0,r*2,r*2);
    popMatrix();
  }
}
class Atractor6 extends Atractor{
  
  Atractor6(float r_, float x, float y){
    super(r_,x,y);
  }
  
  Vec2 atraer(Planeta6 f) {
    float G =400; // Strength of force
    // clone() makes us a copy
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = f.body.getWorldCenter();
    // Vector pointing from mover to attractor
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    // Keep force within bounds
    distance = constrain(distance,9,3);
    force.normalize();
    // Note the attractor's mass is 0 because it's fixed so can't use that
    float strength = (G * 1 * f.body.m_mass) / (distance * distance); // Calculate gravitional force magnitude
    force.mulLocal(strength);         // Get force vector --> magnitude * direction
    return force;
  }

  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
   // float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
  //  image(sol,0,0,r*2,r*2);
    popMatrix();
  }
}
class Atractor7 extends Atractor{
  
  Atractor7(float r_, float x, float y){
    super(r_,x,y);
  }
  
  Vec2 atraer(Planeta7 g) {
    float G =300; // Strength of force
    // clone() makes us a copy
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = g.body.getWorldCenter();
    // Vector pointing from mover to attractor
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    // Keep force within bounds
    distance = constrain(distance,9,3);
    force.normalize();
    // Note the attractor's mass is 0 because it's fixed so can't use that
    float strength = (G * 1 * g.body.m_mass) / (distance * distance); // Calculate gravitional force magnitude
    force.mulLocal(strength);         // Get force vector --> magnitude * direction
    return force;
  }

  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
   // float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
 //   image(sol,0,0,r*2,r*2);
    popMatrix();
  }
}
class Atractor8 extends Atractor{
  
  Atractor8(float r_, float x, float y){
    super(r_,x,y);
  }
  
  Vec2 atraer(Planeta8 h) {
    float G =300; // Strength of force
    // clone() makes us a copy
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = h.body.getWorldCenter();
    // Vector pointing from mover to attractor
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    // Keep force within bounds
    distance = constrain(distance,9,3);
    force.normalize();
    // Note the attractor's mass is 0 because it's fixed so can't use that
    float strength = (G * 1 * h.body.m_mass) / (distance * distance); // Calculate gravitional force magnitude
    force.mulLocal(strength);         // Get force vector --> magnitude * direction
    return force;
  }

  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
   // float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
   // image(sol,0,0,r*2,r*2);
    popMatrix();
  }
}
class Atractor9 extends Atractor{
  
  Atractor9(float r_, float x, float y){
    super(r_,x,y);
  }
  
  Vec2 atraer(Alien v) {
    float G =300; // Strength of force
    // clone() makes us a copy
    Vec2 pos = body.getWorldCenter();    
    Vec2 moverPos = v.body.getWorldCenter();
    // Vector pointing from mover to attractor
    Vec2 force = pos.sub(moverPos);
    float distance = force.length();
    // Keep force within bounds
    distance = constrain(distance,9,3);
    force.normalize();
    // Note the attractor's mass is 0 because it's fixed so can't use that
    float strength = (G * 1 * v.body.m_mass) / (distance * distance); // Calculate gravitional force magnitude
    force.mulLocal(strength);         // Get force vector --> magnitude * direction
    return force;
  }

  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
   // float a = body.getAngle();
    pushMatrix();
    translate(pos.x,pos.y);
   // rotate(a);
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
    
    popMatrix();
  }
}
