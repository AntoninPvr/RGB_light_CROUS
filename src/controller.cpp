#include "controller.h"

void writeData() {
    asm volatile (
        "mov %0"
        :
        : "r"()
        : "r16"
    );
}