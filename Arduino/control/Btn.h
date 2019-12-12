<<<<<<< HEAD
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
	int tiempoBtn; //cuanto ttempo duro presonado
  int tiempoMostrando;
  int last;
bool listo=true;
public:
	Btn(byte port);
	bool isPressed();
	int check();
	void reset(); //resetea el chequeo
};
#endif
=======
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
>>>>>>> master
