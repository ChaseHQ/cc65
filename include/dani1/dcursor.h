/* DANI-I Cursor Methods */

#ifndef __DANI_CURSOR_H
#define __DANI_CURSOR_H

#if !defined(__DANI1__)
#  error This module may only be used when compiling for the DANI-I
#endif

void dcurxy(unsigned char x, unsigned char y);
void dcursor(unsigned char on);
void __fastcall__ dplotc (unsigned char c);
void dplotcxy(unsigned char x, unsigned char y, unsigned char c);
unsigned char getcxy(unsigned char x, unsigned char y);
unsigned char textCenter(char * string);

#endif