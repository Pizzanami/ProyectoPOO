public class Runner{ 
  private float d, x;
  private int r, g, b;
  Runner(int id){
    if(id==0)
      x = width/4;
    else
      x = (width*3)/4;
    d = width/20.0;
    r = int(random(60, 255));
    g = int(random(60, 255));
    b = int(random(60, 255));
  }
  public void dibuja(){
    fill(r,g,b);
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, height - d, d, d);
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
    mover();
  }
  public void mover(){
    //x = valor del potenciometro*width/1024
  }
}
