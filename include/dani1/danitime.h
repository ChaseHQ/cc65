#ifndef __DANI_TIME_H
#define __DANI_TIME_H

#if !defined(__DANI1__)
#  error This module may only be used when compiling for the DANI-I
#endif

#include <time.h>

struct danitime {
    unsigned char yearHigh;
    unsigned char yearLow;
    unsigned char month;
    unsigned char day;
    unsigned char dow;
    unsigned char hour;
    unsigned char minute;
    unsigned char second;
};

void __fastcall__ queryclock(struct danitime * dt_buff);       // Query the clock and put it here

#endif