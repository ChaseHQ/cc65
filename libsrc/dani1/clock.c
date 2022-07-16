#include <time.h>
#include <dani1/danitime.h>

int clock_gettime (clockid_t clock_id, struct timespec *tp) {
    struct danitime dt;
    struct tm convertTime;

    queryclock(&dt);

    convertTime.tm_year = dt.yearLow+100;
    convertTime.tm_mon = dt.month-1;
    convertTime.tm_mday = dt.day;
    convertTime.tm_wday = dt.dow-1;
    convertTime.tm_hour = dt.hour;
    convertTime.tm_min = dt.minute;
    convertTime.tm_sec = dt.second;
    convertTime.tm_isdst = -1;

    tp->tv_sec = mktime(&convertTime);
    clock_id = CLOCK_REALTIME;
    return 0;
}