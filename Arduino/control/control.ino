#include "Pot.h"
#include "Btn.h"
Pot pot1(A0);
Pot pot2(A1);
Btn boton(2);
void setup() {
  Serial.begin(115200);
}

void loop() {
	boton.check();
  Serial.print(pot1.valor());
  Serial.print(",");
  Serial.print(pot2.valor());
  Serial.print(",");
  Serial.print(boton.printit());
  Serial.print("\n");
}
