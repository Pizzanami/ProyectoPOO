#include "Btn.h"
#include "Pot.h"
Btn pot1(2);
void setup() {
  Serial.begin(9600);
}

void loop() {
  pot1.isPressed();
}
