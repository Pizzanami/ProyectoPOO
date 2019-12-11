public class Arduino{
//extends Serial;
private String valor;
  import processing.serial.*;
private String[] list=new String [3];
Arduino(){
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
 
}
void leer(){
if (myPort.available() > 0 ) {
    valor = myPort.readString();
     list = split(valor, ",");
}
}
public int getPotenciometroIzq(){
  return int(list[0]);
}
public int getPotenciometroDer(){
  return int(list[1]);
}
public int getBoton(){
  return int(list[2]);
}
}
