public class Video {
  public int vid =1;
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
    if(lastP != (menu.controles.getPotenciometroDer()+1)/512.0 && millis()-lastT > 1000){
      lastT = millis(); 
      lastP = (menu.controles.getPotenciometroDer()+1)/512.0;
      sanic = (menu.controles.getPotenciometroDer()+1)/512.0;
    }
    cuadros=(menu.controles.getPotenciometroIzq()+1)/100;
    if(cuadros==0)
    cuadros=1;
    movie.loop();
    //movie.speed(sanic);  
    imageMode(CENTER);
    dibujaM();
    grid();
  };
  
  void newVideo()
  {
    movie.stop();
    tranz.loop();
    imageMode(CORNER);
    image(tranz, 0, 0, width, height);
    vid=int(random(1, 215));
    noVideo="../../../Videos/data/"+str(vid)+".mov"; 
    chngVideo(noVideo);
  }


  
  void plusPlus() {
    cuadros=(menu.controles.getPotenciometroIzq()+1)/1000;
  }
  void speed() {
    sanic=(menu.controles.getPotenciometroIzq()+1)/1000;
  }


  void grid() {
    for (int i=0; i<100; i++) {
      line(0, i*10, width, i*10);
    }
    for (int i=0; i<200; i++) {
      line(i*10, 0, i*10, height);
    }
  }

  void dibujaM() {
    imageMode(CORNER);
    for (int i=0; i<(cuadros*cuadros); i++)
    {
      image(movie, width/2-486 + (i%cuadros)*(972/cuadros), height/2-360 + (i/cuadros)*(720/cuadros), 972/cuadros, 720/cuadros);
    }
  }
}
