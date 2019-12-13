public class Menu{
  Juego juego;
  Video video;
  Arduino controles;
  int estado, lastB;
  long lastT;
  Menu(){
    video = new Video();
    controles = new Arduino();
    juego = new Juego();
    estado = 0;
  }
  void ejecutar(){
    controles.leer();
    cambiarEstado();
    if(estado == 0){
      video.ejecutar();
    }
    if(estado == 2){
      juego.ejecutar();
    }
  }
  void cambiarEstado(){
    int boton = controles.getBoton();
    //println(boton);
    if(boton == 1){
      lastB = 1;
      lastT = millis();
    }
    if(boton == 2){
      lastB = 2;
    }
    if(boton == 0){
      if(lastB == 2){
        movie.stop();
        juego = new Juego();
        estado = 2;
      }
      if(lastB == 1){
        if(estado == 2){
          video = new Video();
        }
          video.newVideo();
          estado = 0;
        }
      
      lastB = 0;
    }
  }
} 
