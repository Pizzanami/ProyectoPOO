#ifndef Pot_h
#define Pot_h
#include <arduino.h>
class Pot
{
  private:
    uint8_t pin;
  public:
    Pot(uint8_t potPin);
    int valor();
};
#endif
