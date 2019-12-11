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
  void ejecutar(){
    dibuja();
    chocar();
  }
  void dibuja(){
    for(int i = 0; i < 4; i++){
      a[i].dib();
    }
    player[0].dibuja();
    player[1].dibuja();
  }
  
  void chocar(){
    //if(choco())
  }
}
