public class Menu {

  public int vid =1;
  int cuadros=1;
  float sanic=1.0;
  String noVideo;

  Menu() {
  };
  void ejecutar()
  {
    movie.loop();
    movie.speed(sanic);  
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
    if (key=='D'||key=='d')
    {
      if (cuadros<10)
        cuadros++;
    } else if (key=='A'||key=='a')
    {  
      if (cuadros>1)
        cuadros--;
    }
  }
  void speed() {
    if (key=='W'||key=='w')
    {
      if (sanic<=1.8)
      {
        sanic=sanic+0.1;
      }
    } else if (key=='S'||key=='s')
    {  
      if (sanic>=0.1)
      {
        sanic=sanic-0.1;
      }
    }
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
