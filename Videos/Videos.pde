import processing.video.*; 

Movie movie; 

int vid =1;

void setup() {
  fullScreen();  
  movie = new Movie(this, str(vid)+".mov");  
  movie.loop();
  movie.speed(1.0);
}

void draw() {
  
  rectMode(CORNER);
  fill(0);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(movie, width/2, height/2,972,720);
  //dibuja4();
}





void movieEvent(Movie movie) {  
  movie.read();
}

void dibuja4(){
    imageMode(CORNER);
    image(movie, width/2-486, height/2-360,972/2,720/2);
    image(movie, width/2, height/2-360,972/2,720/2);
    image(movie, width/2, height/2,972/2,720/2);
    image(movie, width/2-486, height/2,972/2,720/2);
}
void dibuja9(){
    imageMode(CORNER);
    for(int i=0;i<9;i++)
    {
      image(movie,width/2-486 + (i%3)*(972/3),  height/2-360 + (i/3)*(720/3),972/3,720/3);
    }  
}
void dibuja16(){
    imageMode(CORNER);
    for(int i=0;i<16;i++)
    {
      image(movie,width/2-486 + (i%4)*(972/4),  height/2-360 + (i/4)*(720/4),972/4,720/4);
    }  
}
void dibuja25(){
    imageMode(CORNER);
    for(int i=0;i<25;i++)
    {
      image(movie,width/2-486 + (i%5)*(972/5),  height/2-360 + (i/5)*(720/5),972/5,720/5);
    }  
}
