#include "Btn.h"
bool isLong;
bool isShort;
/*
  Robotica Golem
  Victor Yoguel Salazar Alanis
*/
Btn::Btn(byte port): port(port) {
  pinMode(port, INPUT_PULLUP);
  reset();
}

bool Btn::isPressed() {
  return !digitalRead(port);
}

void Btn::reset() {
  wasPressed = false;
  checked = true;
  timePressed = 0;
  time = 0;
}

void Btn::check() {
  if (isPressed()) {

    if (checked && timePressed >= MILLIS_FOR_LONG_PRESSED) {
      return;
    }

    if (wasPressed) {
      timePressed = millis() - time;
    }
    else {
      time = millis();
    }
    wasPressed = true;
    checked = false;
  }
  else {
    if (checked)
      timePressed = 0;
    wasPressed = false;
  }
}

bool Btn::isLongPressed() {
  if (!checked)
    if (timePressed >= MILLIS_FOR_LONG_PRESSED) {
      checked = true;
      return true;
    }
  return false;
}

bool Btn::isShortPressed() {
  if (!isPressed())
    if (!checked)
      if (timePressed < MILLIS_FOR_LONG_PRESSED) {
        checked = true;
        return true;//timePressed > MILLIS_FOR_SHORT_PRESSED;
      }
  return false;
}
uint8_t Btn::printit() {
  if (isShortPressed()) {
    return 1;
  }
  else if (isLongPressed()) {
    return 2;
  }
  else {
    return 0;
  }
}
