import processing.serial.*;
static Serial myPort;  
Juego juego = new Juego();
Menu menu = new Menu();
Arduino controles = new Arduino();
void setup(){
    fullScreen();
}
void draw(){
  menu.ejecutar();
  juego.ejecutar();
controles.leer();
}
