#ifndef STRIP_H
#define STRIP_H

#include <stdint.h>

class Strip {
    public:
        Strip(uint16_t);
        
        void setDataPin(uint8_t);
        void show();

    private:
        uint8_t dataPin;
        uint16_t nLeds;

};

#endif //STRIP_H