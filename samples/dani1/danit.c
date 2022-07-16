#include <dani1.h>
#include <dani1/dcursor.h>
#include <stdio.h>
#include <time.h>

int main(void) {
    char formattedTime[100];
    time_t rawtime;
    struct tm * info;
    blankscreen();

    while (agetch() != 'q') {
        time(&rawtime);
        info = localtime(&rawtime);
        strftime(formattedTime,100,"%m/%d/%Y - %I:%M:%S%p",info);
        dcurxy(textCenter(formattedTime),14);
        printf("%s",formattedTime);
    }
    
    return 0;
}