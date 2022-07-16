/* Cursor functions
   Size of Screen is 40x30
   Always Offset by VRAM $8000
*/

#include <dani1/dcursor.h>
#include <string.h>

#define CURSOR_LOC ((unsigned char*)0x0018)
#define CURSOR_BLI ((unsigned char*)0x001A)

void dcurxy(unsigned char x, unsigned char y) {
    unsigned int newLoc = 0x8000;
    if (x >= 40 || y >= 30){
        return;
    }
    newLoc |= ((40*y)+x);
    CURSOR_LOC[0] = newLoc;
    CURSOR_LOC[1] = newLoc>>8;
}

void dcursor(unsigned char on) {
    if (on) {
        CURSOR_BLI[0] = 0xFF;
    } else {
        CURSOR_BLI[0] = 0x00;
    }
}

void dplotcxy(unsigned char x, unsigned char y, unsigned char c) {
    dcurxy(x,y);
    dplotc(c);
}

unsigned char getcxy(unsigned char x, unsigned char y) {
    unsigned int loc = 0x8000;
    loc |= ((40*y)+x);
    return ((unsigned char*)loc)[0];
}

unsigned char textCenter(char * string) {
   int center = 19 - (strlen(string) / 2);
   if (center < 0) return 0;
   return (unsigned char)center;
}