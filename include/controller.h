#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <stdint.h>

/*
for atmega328p 16MHz
TOH 350ns   5.6cycles       ~ 6cylces
TOL 800ns   12.8 cycles     ~ 13cycles

T1H 700ns   11.2cycles      ~ 11cycles
T1L 600ns   9.6cycles       ~ 10cycles

RES >50us   800cycles
*/

void writeData();

#endif //CONTROLLER_H