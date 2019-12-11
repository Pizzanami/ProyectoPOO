import processing.serial.*;
static Serial myPort;
Menu menu;
Arduino controles = new Arduino();
void setup(){
    fullScreen();
    menu = new Menu();
  }
void draw(){
  background(0);
  menu.ejecutar();
}
