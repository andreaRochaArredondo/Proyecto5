import processing.sound.*;
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
PImage mercurio;
PImage sol;
PImage venus;
PImage tierra;
PImage marte;
PImage jupiter;
PImage saturno;
PImage urano;
PImage neptuno;
PImage star;
PImage alien;
PImage meteoro;
PImage fondo3;
PImage fondo1;
PImage fondo2;

SoundFile bit;
Texto tx;

int pantalla = 0;
float x;
float y;
float s;
float z;
boolean aparecio = false;
int contador;
ArrayList <Alien> aliens;

Box2DProcessing box2d;

Planeta[] movers = new Planeta[1]; 
Planeta2[] plan = new Planeta2[1];
Planeta3[] plane = new Planeta3[1];
Planeta4[] planet = new Planeta4[1];
Planeta5[] planets = new Planeta5[1];
Planeta6[] planetd = new Planeta6[1];
Planeta7[] planetf = new Planeta7[1];
Planeta8[] planetg = new Planeta8[1];
Alien[] alienn = new Alien[1];

Atractor a;
Atractor2 b;
Atractor3 c;
Atractor4 d;
Atractor5 e;
Atractor6 f;
Atractor7 g;
Atractor8 h;
Atractor9 v;

class flujoPantallas{
  int estado;
  
  flujoPantallas(){
    this.estado = 0;
  }
  
  void display(){
    switch(this.estado){
    case 0:
      imageMode(CORNER);
      image(fondo1,0,0); 
      tx.Tcaso1();
    break;
    case 1:
      imageMode(CORNER);
      image(fondo2,0,0); 
      tx.Tcaso2();
    break;
    case 2:
      background(0);

  box2d.step();

 
  
   if(random(2)>1.80){
     aparecio = true;
     x = random(900);
     y = random(600);
     s = random(900);
     z = random(600);
  }
  
  if(aparecio == true){
    imageMode(CENTER);
    image(star,x,y,15,15);
    imageMode(CENTER);
    image(star,s,z,10,10);
    contador++;
  }
   a.display();
  
  if(contador>30){
    aparecio = false;
    contador = 0;
  }

  for (int i = 0; i < movers.length; i++) {
    Vec2 force = a.attract(movers[i]);
    movers[i].applyForce(force);
    movers[i].display();
  }
  
  for (int i = 0; i < plan.length; i++) {
    Vec2 force = b.atraer(plan[i]);
   plan[i].applyForce(force);
    plan[i].display();
  }
  for (int i = 0; i < plane.length; i++) {
    Vec2 force = c.atraer(plane[i]);
   plane[i].applyForce(force);
    plane[i].display();
  }
  for (int i = 0; i < planet.length; i++) {
    Vec2 force = d.atraer(planet[i]);
   planet[i].applyForce(force);
    planet[i].display();
  }
   for (int i = 0; i < planets.length; i++) {
    Vec2 force = e.atraer(planets[i]);
   planets[i].applyForce(force);
    planets[i].display();
  }
  for (int i = 0; i < planetd.length; i++) {
    Vec2 force = f.atraer(planetd[i]);
   planetd[i].applyForce(force);
    planetd[i].display();
  }
  for (int i = 0; i < planetf.length; i++) {
    Vec2 force = g.atraer(planetf[i]);
   planetf[i].applyForce(force);
    planetf[i].display();
  }
  for (int i = 0; i < planetg.length; i++) {
    Vec2 force = h.atraer(planetg[i]);
   planetg[i].applyForce(force);
    planetg[i].display();
  }
   if( key == '1'){
    for (int i = 0; i < alienn.length; i++) {
    Vec2 force = v.atraer(alienn[i]);
   alienn[i].applyForce(force);
    alienn[i].display();
  }
  }
    break;
    case 3:
      imageMode(CORNER);
      image(fondo3,0,0); 
      tx.Tcaso3();
    break;
  }
  }
  
  void cambioPantalla(){
    estado++;
  if(estado>3){
    estado = 0;
  }
  }
  
  
}

flujoPantallas uno;

void setup(){
  size(999,660);
  uno = new flujoPantallas();
  smooth();

  box2d = new Box2DProcessing(this);
  box2d.createWorld();

  box2d.setGravity(0,0);

  for (int i = 0; i < movers.length; i++) {
  movers[i] = new Planeta(12,width/3,height/3);
  }
  for (int i = 0; i < plan.length; i++) {
    plan[i] = new Planeta2(15,width/5,height/5);
  }
   for (int i = 0; i < plane.length; i++) {
    plane[i] = new Planeta3(20,width/4,height/4);
  }
  for (int i = 0; i < planet.length; i++) {
    planet[i] = new Planeta4(20,width/6,height/6);
  }
  for (int i = 0; i < planets.length; i++) {
    planets[i] = new Planeta5(30,width/7,height/7);
  }
  for (int i = 0; i < planetd.length; i++) {
    planetd[i] = new Planeta6(39,width/8,height/8);
  }
  for (int i = 0; i < planetf.length; i++) {
    planetf[i] = new Planeta7(17,width/9,height/9);
  }
  for (int i = 0; i < planetg.length; i++) {
    planetg[i] = new Planeta8(12,width/9.5,height/9.5);
  }
  for (int i = 0; i < alienn.length; i++) {
    alienn[i] = new Alien(40,width/9.5,height/9.5);
  }
  a = new Atractor(60,width/2,height/2);
  b = new Atractor2(40,width/2,height/2);
  c = new Atractor3(40,width/2,height/2);
  d = new Atractor4(40,width/2,height/2);
  e = new Atractor5(40,width/2,height/2);
  f = new Atractor6(40,width/2,height/2);
  g = new Atractor7(40,width/2,height/2);
  h = new Atractor8(40,width/2,height/2);
  v = new Atractor9(40,width/2,height/2);
  
  tx = new Texto();
  
  mercurio = loadImage("Sprite-0002.png");
  sol = loadImage("Sprite-0001.png");
  venus = loadImage("Sprite-0003.png");
  tierra = loadImage("Sprite-0004.png");
  marte = loadImage("Sprite-0005.png");
  jupiter = loadImage("Sprite-0006.png");
  saturno = loadImage("Sprite-0007.png");
  urano = loadImage("Sprite-0008.png");
  neptuno = loadImage("Sprite-0009.png");
  star = loadImage("star.png");
  alien = loadImage("alien.png");
  meteoro = loadImage("meteoro.png");
  fondo3 = loadImage("fondo1.jpg");
  fondo1 = loadImage("fondo2.jpg");
  fondo2 = loadImage("fondo3.jpg");
  
   aliens = new ArrayList<Alien>();
   
  bit= new SoundFile(this,"space.mp3");
  bit.loop();
}


void draw(){
  uno.display();
}

void mousePressed(){
  uno.cambioPantalla();
  pantalla ++;
  
}

void keyPressed(){
  if(key == 'q'){
 aliens.add(new Alien(40,width/9.5,height/9.5));
 }
}
