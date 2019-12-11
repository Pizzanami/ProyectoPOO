public class Menu{
  Juego juego;
  int c = 0;
  Menu(){
    juego = new Juego();
  };
  void ejecutar(){
    //if(c==2)
      juego.ejecutar();
     //leerBoton();
  };
  void leerBoton(){
    //if(valor del arduino 0)
    //  cosa de la tv random
    //if(valor del arduino 1)
    //  cosa de la tv random
    //if(valor del arduino 2)
      juego = new Juego();
      c = 2;
  };
}
