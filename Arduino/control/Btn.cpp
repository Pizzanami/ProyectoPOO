#include "Btn.h"
Btn::Btn(byte port): port(port) {
  pinMode(port, INPUT_PULLUP);
  reset();
}

Btn::Btn(uint8_t pin): pin(pin) {
  pinMode(pin, INPUT_PULLUP);
}

void Btn::reset() {
  listo = true;
  tiempoBtn = 0;
  tiempoMostrando = 0;
}

int Btn::check() {
  if(listo){
    if(millis()<tiempoMostrando)
      return last;
    if (isPressed()) {
      listo = false;
      tiempoBtn = millis();
    }
    return 0;
  }
  else {
    tiempoMostrando = millis()+100;
    if (!isPressed()) {
      listo = true;
      if (millis() - tiempoBtn < 300) {
        last = 1;
        return 1;
      }
      else {
        last = 2;
        return 2; 
      }
    }
    else{
      last = 0;
      return 0;
    }
  }
}
