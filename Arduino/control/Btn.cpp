#include "Btn.h"
/*
Robotica Golem
Victor Yoguel Salazar Alanis
*/
Btn::Btn(byte port):port(port){
  pinMode(port, INPUT_PULLUP);
  reset();
}

bool Btn::isPressed(){
  return !digitalRead(port);
}

void Btn::reset(){
  wasPressed = false;
  checked = true;
  timePressed = 0;
  time = 0;
}

void Btn::check(){
  if(isPressed()){

    if(checked && timePressed >= MILLIS_FOR_LONG_PRESSED){
      return;
    }

    if(wasPressed){
      timePressed = millis() - time;
    } 
    else {
      time = millis();
    }
    wasPressed = true;
    checked = false;
  }
  else {
    if(checked)
      timePressed = 0;
    wasPressed = false;
  }
}

uint8_t Btn::isLongPressed(){
  if(!checked)
    if(timePressed >= MILLIS_FOR_LONG_PRESSED){
      checked = true;
      return 3;
    }
  return 0;
}

uint8_t Btn::isShortPressed(){
  if(!isPressed())
    if(!checked)
      if(timePressed < MILLIS_FOR_LONG_PRESSED){
        checked = true;
        return 2;//timePressed > MILLIS_FOR_SHORT_PRESSED;
      }
  return 0;
}
