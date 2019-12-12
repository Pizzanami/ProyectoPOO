import processing.video.*; 

Movie movie;
Movie tranz; 

int vid =1;
int cuadros=1;

void setup() {
  fullScreen();
  movie = new Movie(this, str(vid)+".mov");
  tranz = new Movie(this,"A.mov");
  movie.loop();
  movie.speed(1.0);
}

void draw() {
  rectMode(CORNER);
  fill(0);
  rect(0,0,width,height);
  imageMode(CENTER);
  dibujaM();
  grid();
}

void mousePressed()
{
  movie.stop();
  tranz.loop();
  image(tranz,width/2-486, height/2-360,972,720);
  vid=int(random(1,215));
  movie = new Movie(this, str(vid)+".mov");
  movie.loop();
}

void movieEvent(Movie movie) {  
  movie.read();
}

void keyPressed(){
  if(key=='D'||key=='d')
  {
    if(cuadros<10)
      cuadros++;
  }
  else if(key=='A'||key=='a')
  {  
    if(cuadros>1)
      cuadros--;
  }
}
void grid(){
  for(int i=0;i<100;i++){
    line(0,i*10,width,i*10);
  }
  for(int i=0;i<200;i++){
    line(i*10,0,i*10,height);
  }
}
void dibujaM(){
    imageMode(CORNER);
    for(int i=0;i<(cuadros*cuadros);i++)
    {
      image(movie,width/2-486 + (i%cuadros)*(972/cuadros), height/2-360 + (i/cuadros)*(720/cuadros),972/cuadros,720/cuadros);
    }  
}
