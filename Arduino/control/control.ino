#include "Btn.h"
#include "Pot.h"
Pot pot1(A0);
Pot pot2(A1);
void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print(pot1.valor());
  Serial.print("\t");
  Serial.println(pot2.valor());
}
