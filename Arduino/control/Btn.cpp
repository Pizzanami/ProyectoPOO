#include "Btn.h"
Btn::Btn(byte port): port(port) {
  pinMode(port, INPUT_PULLUP);
  reset();
}

bool Btn::isPressed() {
  return !digitalRead(port);
}

void Btn::reset() {
  listo = true;
  tiempoBtn = 0;
}

int Btn::check() {
  if(listo){
  if (isPressed()) {
    listo = false;
    tiempoBtn = millis();

  }
  return 0;
  }
  if(!listo){
  if (!isPressed()) {
    
    if (millis() - tiempoBtn < 2000) {
      return 1;
    }

  listo = true;
  }
  else{
    if (millis() - tiempoBtn > 2000) {
      return 2;
    }
    else{
      return 0;
    }
  }
  }
}
