public class Juego{
  Obstaculo a[];
  Runner player[];
  Juego(){
    a = new Obstaculo[4];
    player = new Runner[2];
    for(int i = 0; i < 4; i++){
      a[i] = new Obstaculo(i);
    }
    player[0] = new Runner(0);
    player[1] = new Runner(1);
  }
  public void ejecutar(){
    dibuja();
    if(chocar() == 0){
      fill(255);
      rect(width/3.0, height/3.0, width/3.0, height/3.0);
      fill(0);
      textSize(30);
      textAlign(CENTER, CENTER);
      text("Gano el jugador 2",width/3.0, height/3.0);
    }
    if(chocar() == 1){
      fill(255);
      rect(width/3.0, height/3.0, width/3.0, height/3.0);
      fill(0);
      textSize(30);
      textAlign(CENTER, CENTER);
      text("Gano el jugador 1",width/3.0, height/3.0);
    }
  }
  public void dibuja(){
    for(int i = 0; i < 4; i++){
      a[i].dib();
    }
    player[0].dibuja();
    player[1].dibuja();
  }
  
  private int chocar(){
     for(int i = 0; i < 4; i++){
      for(int id = 0; id < 5; id++){
        if(a[i].dentro(player[0].enX(id), player[0].enY(id))){
          return 0;
        }
      }
    }
    for(int i = 0; i < 4; i++){
      for(int id = 0; id < 5; id++){
        if(a[i].dentro(player[1].enX(id), player[1].enY(id))){
          return 1;
        } 
      }
    }
    return 2;
  }
}
