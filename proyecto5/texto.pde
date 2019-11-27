class Texto{
  
  void Tcaso1(){
    PFont f = createFont("game_over.ttf",48);
    textFont(f);
    textAlign(CORNER);
    fill(255);
     textSize(130);
    text("SISTEMA SOLAR en 8 bits",220,180);
    textSize(60);
    text("Presiona con el mouse para continuar",330,590);
}
  void Tcaso2(){
     fill(255);
     textSize(70);
    text("Bienvenido al sistema solar en 8 bits",255,50);
   text("todos tus planetas favoritos",255,100);
   text("girando alrededor del sol",255,150);
   textSize(55);
   text("Presiona > 1 < y espera una sorpresa espacial ",255,200);
   text("Presiona > Q < para quitarlo, puedes ponerlo",255,250);
   text("otra vez si lo desceas.",255,300);
    text("presiona la pantalla con el mouse para terminar tu viaje",255,350);
    text("ESPACIAL !!",255,400);
   fill(255);
    textSize(60);
    text("Presiona con el mouse para continuar",330,590);
}

 void Tcaso3(){
 fill(0);
    textSize(130);
    text("Aterrizaste astronauta",300,100);
    textSize(80);
    text("Presiona con el mouse para viajar otra vez",270,170);
 }
 
}
