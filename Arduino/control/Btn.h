#ifndef BTN_H
#define BTN_H
#include <Arduino.h>
class Btn
{
  private:
    const uint8_t pin;
    uint8_t activo;
    unsigned long milliSecs;
  public:
    Btn(uint8_t pin);
    uint8_t isPressed();

};
#endif
