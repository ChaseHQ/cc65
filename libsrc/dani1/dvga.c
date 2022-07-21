#include <dani1/danivga.h>
#include <stdio.h>

#define SCREEN ((unsigned char *)0x8000)

void sb_copy(screenbuffer_t * screenbuffer) {
    unsigned char sh = 0;
    unsigned char sw = 0;
    unsigned char * s = SCREEN;
    while (sh < DANI_SCREEN_HEIGHT) {
        s++[0] = (*screenbuffer)[sh][sw++];
        if (sw == DANI_SCREEN_WIDTH) {
            sw = 0;
            sh++;
        }
    }
}