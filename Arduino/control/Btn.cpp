#include "Btn.h"

Btn::Btn(uint8_t pin): pin(pin) {
  pinMode(pin, INPUT_PULLUP);
}

uint8_t Btn::isPressed() {
  activo = digitalRead(pin);
milliSecs=pulseInLong(pin, LOW);
    Serial.println(milliSecs);
    if (milliSecs < 1000) {
      return 2;
    }
    else {
      return 1;
    }
  }
