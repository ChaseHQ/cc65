
#ifndef __DANI_VGA_H
#define __DANI_VGA_H

#if !defined(__DANI1__)
#  error This module may only be used when compiling for the DANI-I
#endif

#define DANI_SCREEN_WIDTH  40
#define DANI_SCREEN_HEIGHT 30

typedef unsigned char screenbuffer_t[DANI_SCREEN_HEIGHT][DANI_SCREEN_WIDTH];
typedef unsigned char dvga_character[8];

void __fastcall__ blankscreen(void);               // Blankscreen with Monitor Method
void sb_copy(screenbuffer_t * screenbuffer);       // Screen Buffer Swap, must be 40x30
void __fastcall__ dstorechar(dvga_character * character, unsigned char location);

#endif