public class Arduino{
//extends Serial;
private String valor;
  import processing.serial.*;
public String[] list=new String [3];
Arduino(){
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
 
}
void leer(){
if (myPort.available() > 0 ) {
    valor = myPort.readString();
     list = split(valor, ",");
    for(int i =0; i<3 ; i++){
    println(list[i]);

    }}
}
}
