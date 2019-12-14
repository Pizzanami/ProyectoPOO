public class Juego{
  Obstaculo a[];
  Runner player[];
  PImage fondo;
  int time;
  Juego(){
    time = 20;
    a = new Obstaculo[4];
    player = new Runner[2];
    for(int i = 0; i < 4; i++){
      a[i] = new Obstaculo(i);
    }
    player[0] = new Runner(0);
    player[1] = new Runner(1);
    fondo = loadImage("fondo.gif");
  }
  public void ejecutar(){
    if(chocar() == 2)
      dibuja();
    if(chocar() == 0){
      imageMode(CORNER);
      image(tranz, 0, 0, width, height);
      tranz.loop();
      /*noStroke();
      fill(255,255,255,100);
      rect(width/3.0, height/3.0, width/3.0, height/3.0);*/
      fill(0);
      textSize(70);
      textAlign(CENTER, CENTER);
      text("Ganó el jugador 1",width/2.0, height/2.0);
    }
    if(chocar() == 1){
      imageMode(CORNER);
      image(tranz, 0, 0, width, height);
      tranz.loop();
      /*noStroke();
      fill(255,255,255,100);
      rect(width/3.0, height/3.0, width/3.0, height/3.0);*/
      fill(0);
      textSize(70);
      textAlign(CENTER, CENTER);
      text("Ganó el jugador 2",width/2.0, height/2.0);
    }
  }
  public void dibuja(){
    if(time == 0){
      for(int i = 0; i < 4; i++){
        a[i].dib();
      }
    }
    else
      time--;
    player[0].dibuja();
    player[1].dibuja();
  }
  
  private int chocar(){
     for(int i = 0; i < 4; i++){
      for(int id = 0; id < 5; id++){
        if(a[i].dentro(player[0].enX(id), player[0].enY(id))==true){
          return 0;
        }
      }
    }
    for(int i = 0; i < 4; i++){
      for(int id = 0; id < 5; id++){
        if(a[i].dentro(player[1].enX(id), player[1].enY(id))==true){
          return 1;
        } 
      }
    }
    return 2;
  }
}
