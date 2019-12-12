import processing.serial.*;
import processing.video.*; 
static Movie movie; 
static Movie tranz; 
static Serial myPort; 
Juego juego;
Menu menu = new Menu();
Arduino controles = new Arduino();
String video;
void setup(){
  //myPort = new Serial(this, Serial.list()[0], 115200);
  movie= new Movie(this, "../../../Videos/data/1.mov");
  tranz= new Movie(this,"../../../Videos/data/A.mov"); 
  fullScreen();
  juego = new Juego();
}
void draw(){
  background(0);
  //menu.ejecutar();
  juego.ejecutar();
  //controles.leer();
}
void chngVideo(String video){
  movie = new Movie(this,video);
  movie.loop();
}

void movieEvent(Movie movie) {  
  movie.read();
}
void mousePressed(){
  menu.newVideo(); 
}
void keyPressed(){
  menu.plusPlus();
  menu.speed();
}
