#include "Btn.h"
#include "Pot.h"
Pot pot1(A0);
Pot pot2(A1);
Btn boton(2);
void setup() {
  Serial.begin(9600);
}

void loop() {
	boton.check();
  Serial.print(pot1.valor());
  Serial.print("\t");
  Serial.print(pot2.valor());
  Serial.print("\t");
  Serial.print(boton.printit());
  Serial.println("\t");
}
