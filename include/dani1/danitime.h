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