#ifndef BTN_H
#define BTN_H
#include <Arduino.h>
class Btn
{
private:
	const byte port; 
	int tiempoBtn; //cuanto ttempo duro presonado
bool listo=true;
public:
	Btn(byte port);
	bool isPressed();
	int check();
	void reset(); //resetea el chequeo
};
#endif
