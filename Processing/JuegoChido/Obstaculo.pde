public class Obstaculo{
  float x, y;
  float h, w;
  int r, g, b, id;
  Obstaculo(int id){
    h = random(height/12.0, height/6.0);
    w = random(width/15.0, width/3.0);
    x = random(width - w);
    y = -h-210*id;
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
  }
  void dib(){
    y += 5;
    fill(r, g, b);
    rectMode(CORNER);
    rect(x, y, w, h);
    if(y > height)
      reset();
  }
  void reset(){
    h = random(height/12.0, height/6.0);
    w = random(width/15.0, width/3.0);
    x = random(width - w);
    y = -h;
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
    if(id == 1){
      h = height/15.0;
      w = width/20.0;
    }
    if(id == 2){
      h = height/4.0;
      w = width/2.0;
    }
  }
  boolean dentro(float xp, float yp){
    if(xp >= x && xp <= x+w && yp >= y && yp <= y+h)
      return true;
    return false;
  }
}
