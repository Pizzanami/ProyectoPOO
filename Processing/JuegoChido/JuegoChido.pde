import processing.serial.*;
import processing.video.*; 
static Movie movie; 
static Movie tranz; 
static Serial myPort; 
String video;
Menu menu;
void setup(){
  myPort = new Serial(this, Serial.list()[0], 115200);
  movie= new Movie(this, "../../../Videos/data/1.mov");
  tranz= new Movie(this,"../../../Videos/data/A.mov"); 
  fullScreen();
  menu = new Menu();
}
void draw(){
  background(0);
  menu.ejecutar();
}
void chngVideo(String video){
  movie = new Movie(this,video);
  movie.loop();
}

void movieEvent(Movie movie) {  
  movie.read();
}
/*void mousePressed(){
  menu.video.newVideo(); 
}
void keyPressed(){
  menu.video.plusPlus();
  menu.video.speed();
}*/
