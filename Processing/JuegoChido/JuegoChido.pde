import processing.serial.*;
static Serial myPort;  
Juego juego = new Juego();
Menu menu = new Menu();
Arduino controles = new Arduino();
void setup(){
myPort = new Serial(this, Serial.list()[0], 115200);
  size(700, 500);
}
void draw(){
  menu.ejecutar();
  juego.ejecutar();
controles.leer();
}
