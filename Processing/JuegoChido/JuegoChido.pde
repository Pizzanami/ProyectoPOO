import processing.serial.*;
static Serial myPort;
Runner a;
Obstaculo b, c;
Juego juego = new Juego();
Menu menu = new Menu();
Arduino controles = new Arduino();
void setup(){
    fullScreen();
    a = new Runner(1);
    b = new Obstaculo(2);
    c = new Obstaculo(1);
}
void draw(){
  background(0);
  a.dibuja();
  b.dib();
  c.dib();
  //menu.ejecutar();
  //juego.ejecutar();
  //controles.leer();
}
