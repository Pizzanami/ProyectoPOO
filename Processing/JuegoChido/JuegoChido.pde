import processing.serial.*;
static Serial myPort;  
Juego juego = new Juego();
Menu menu = new Menu();
Sensores Arduino = new Sensores();
void setup(){
myPort = new Serial(this, Serial.list()[2], 9600);
  size(700, 500);
}
void draw(){
  menu.ejecutar();
  juego.ejecutar();
Arduino.leer();
}
