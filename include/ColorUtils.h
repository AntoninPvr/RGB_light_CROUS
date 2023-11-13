#ifndef COLORUTILS_H
#define COLORUTILS_H

#include <stdint.h>

class RGB {
    public:
    RGB();
    RGB(uint8_t, uint8_t, uint8_t);

    private:
    uint8_t r, g, b;
};

#endif //COLORUTILS_H