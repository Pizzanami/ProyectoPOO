#include "Pot.h"
Btn pot1(2);
void setup() {
  Serial.begin(115200);
}

void loop() {
  pot1.isPressed();
}
