#include "Pot.h"
#include "Btn.h"
Pot pot1(A2);
Pot pot2(A3);
Btn boton(A1);
void setup() {
  Serial.begin(115200);
pinMode(13,OUTPUT);
}

void loop() {
      digitalWrite(13,0);
  Serial.print(1023-pot1.valor());
  Serial.print(",");
  Serial.print(pot2.valor());
  Serial.print(",");
  Serial.print(boton.check());
 // Serial.print(",");
  //Serial.print(boton.isPressed());
  Serial.print("\n");
  if(boton.check()==1){
    digitalWrite(13,1);

  }

}
