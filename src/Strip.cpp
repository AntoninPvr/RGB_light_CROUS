#include "strip.h"

Strip::Strip(uint16_t nLeds) {
    this->nLeds = nLeds;
}

void Strip::setDataPin(uint8_t pin) {
    this->dataPin = pin;
}

void Strip::show() {

}