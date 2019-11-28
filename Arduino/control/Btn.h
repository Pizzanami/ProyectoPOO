/*
Robotica Golem
Victor Yoguel Salazar Alanis
*/

#ifndef BTN_H
#define BTN_H 1

#define MILLIS_FOR_LONG_PRESSED 1000
#define MILLIS_FOR_SHORT_PRESSED 0

#include <Arduino.h>

class Btn
{
private:
	const byte port; 
	long long time; //momento en el que se presiono
	int timePressed; //cuanto ttempo duro presonado
	bool wasPressed; //si en la iteracion anterior estaba presionado
	bool checked; //si ya fue checado el presionado
public:
	Btn(byte port);
	bool isPressed();
	void check();
	bool isLongPressed();
	bool isShortPressed();
	void reset(); //resetea el chequeo
  uint8_t printit();
};
#endif
