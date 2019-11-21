#include "Pot.h"
Pot::Pot(uint8_t potPin) {
  pin = potPin;
}
int Pot::valor() {
  return analogRead(pin);
}
