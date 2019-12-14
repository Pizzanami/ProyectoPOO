public class Video {
  public int vid =1, pot;
  private int cuadros=1;
  private float sanic=1.0, lastP;
  private long lastT;
  private String noVideo;
  private int x;
  Video() {
    lastP = 0;
    lastT = -1001;
  };
  void ejecutar()
  {
    pot = menu.controles.getPotenciometroDer();
    /*if(pot <= 50)
      sanic = 0.1;
    else if(pot <= 100)
      sanic = 0.2;
    else if(pot <= 150)
      sanic = 0.3;
    else if(pot <= 200)
      sanic = 0.4;
    else if(pot <= 250)
      sanic = 0.5;
    else if(pot <= 300)
      sanic = 0.6;
    else if(pot <= 350)
      sanic = 0.7;
    else if(pot <= 400)
      sanic = 0.8;
    else if(pot <= 450)
      sanic = 0.9;
    else if(pot <= 500)
      sanic = 1.0;
    else if(pot <= 550)
      sanic = 1.1;
    else if(pot <= 600)
      sanic = 1.2;
    else if(pot <= 650)
      sanic = 1.3;
    else if(pot <= 700)
      sanic = 1.4;
    else if(pot <= 750)
      sanic = 1.5;
    else if(pot <= 800)
      sanic = 1.6;
    else if(pot <= 850)
      sanic = 1.7;
    else if(pot <= 900)
      sanic = 1.8;
    else if(pot <= 950)
      sanic = 1.9;
    else
      sanic = 2.0;
    movie.speed(sanic);*/
    cuadros=(menu.controles.getPotenciometroIzq()+1)/100;
    if(cuadros==0)
    cuadros=1;
    movie.loop();
    //movie.speed(sanic);  
    imageMode(CENTER);
    dibujaM();
    grid();
  };
  void grid() {
    int i = 0;
    for (i=0; i<100; i++) {
      //fill(255, 255, 255, 0);
      stroke(0);
      strokeWeight(1);
      line(0, i*10, width, i*10);
    }
    for (i=0; i<200; i++) {
      //fill(255, 255, 255, 0);
      stroke(0);
      strokeWeight(1);
      line(i*10, 0, i*10, height);
    }
  }
  void newVideo()
  {
    vid=int(random(1, 236));
    noVideo="../../../Videos/data/"+str(vid)+".mov"; 
    chngVideo(noVideo);
    //movie.speed(sanic); 
  }
void change(){
  imageMode(CORNER);
  image(tranz, 0, 0, width, height);
  tranz.loop();
}
  void plusPlus() {
    cuadros=(menu.controles.getPotenciometroIzq()+1)/1000;
  }
  void speed() {
    sanic=(menu.controles.getPotenciometroIzq()+1)/1000;
  }

  void dibujaM() {
    imageMode(CORNER);
    for (int i=0; i<(cuadros*cuadros); i++)
    {
      image(movie, width/2-486 + (i%cuadros)*(972/cuadros), height/2-360 + (i/cuadros)*(720/cuadros), 972/cuadros, 720/cuadros);
    }
    if(pot <= 205)
      filter(OPAQUE);
    else if(pot <= 410)
      filter(THRESHOLD);//
    else if(pot <= 615)
      filter(GRAY);
    else if(pot <= 820)
      filter(INVERT);//
    else 
      filter(POSTERIZE, 5);
  }
}
