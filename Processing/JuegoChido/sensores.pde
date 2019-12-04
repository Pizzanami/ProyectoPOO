public class Arduino{
//extends Serial;
private String valor;
  import processing.serial.*;

Arduino(){
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
 
}
void leer(){
while (myPort.available() > 0 ) {
    valor = myPort.readString();
    print(valor);
  }
}
}
