public class Arduino{
//extends Serial;
private String valor;
import processing.serial.*;
private String[] list;
Arduino(){
  printArray(Serial.list());
  list=new String [3];
  list[0] = "0";
  list[1] = "0";
  list[2] = "0";
  // Open the port you are using at the rate you want:
 
}
void leer(){
  if (myPort.available() > 0 ) {
      valor += myPort.readString();
      if(valor.contains(".") && valor.contains("[")){
        //int a = indexOf(".");
        if(valor.indexOf("[") < valor.indexOf(".")){
           valor = valor.substring(valor.indexOf("[")+1, valor.indexOf("."));
           list = split(valor, ",");
           println(valor);
           valor = "";
        }
        else {
          valor = valor.substring(valor.indexOf(".")+1);
        }
      }
  }
  //println(list[0], "\t",list[1], "\t", list[2], "\t");
}
public int getPotenciometroIzq(){
  println(list[0]);
  return int(list[0]);
}
public int getPotenciometroDer(){
  return int(list[1]);
}
public int getBoton(){
  return int(list[2]);
}
}
