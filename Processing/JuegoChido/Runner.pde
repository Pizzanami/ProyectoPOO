public class Runner{ 
  private float d, x, y, nx;
  private int r, g, b, id;
  private float cx[];
  private float cy[];
  Runner(int id){
    cx = new float[5];
    cy = new float[5];
    this.id = id;
    if(id==0)
      x = width/4;
    else
      x = (width*3)/4;
    d = width/20.0;
    y = height - d;
    r = int(random(60, 255));
    g = int(random(60, 255));
    b = int(random(60, 255));
    cx[4] = d/2;
    cy[4] = 0;
    cx[3] = sqrt((d*d/8.0));
    cy[3] = sqrt((d*d/8.0));
    cx[2] = 0;
    cy[2] = d/2;
    cx[1] = -sqrt((d*d/8.0));
    cy[1] = sqrt((d*d/8.0));
    cx[0] = -d/2;
    cy[0] = 0;
  }
  public void dibuja(){
    fill(r,g,b);
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, y, d, d);
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
    mover();
  }
  public void mover(){
    
    //if(nx != valor del potenciometro*width/1024)
      nx = random(0,1024)*width/1024;
    x += (nx-x)/5.0;
  }
  public float enX(int id){
    return -cx[id]+x;
  }
  public float enY(int id){
    return -cy[id]+y;
  }
}
