#include <dani1.h>
#include <dani1/dcursor.h>
#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int main(void) {
    char inputBuffer[100] = {};
    unsigned int number;
    unsigned int guess = 0x00;
    unsigned char gameover = 0;
    time_t t;
    char title[] = "DANI-I Guess the number";
    char desc[] = "Random based on RTC";
    srand(time(&t));
    blankscreen();
    dcurxy(textCenter(title),14);
    fputs(title,stdout);
    dcurxy(textCenter(desc),15);
    fputs(desc,stdout);
    while(!agetch()); /* Wait for a key to be pressed */
    blankscreen();
    fputs("Q Quits at any time\n\n",stdout);
    number = rand() % 100 + 1;
    while (inputBuffer[0] != 'Q' && inputBuffer[0] != 'q' && !gameover) {
        fputs("Enter a guess between 1-100: ",stdout);
        gets(inputBuffer);
        guess = strtoul(inputBuffer,0,0);
        if (number > guess) {
            fputs("Think Larger! \n\n",stdout);
        } else if (number < guess) {
            fputs("Think smaller! \n\n",stdout);
        } else {
            fputs("Winner winner chicken dinner!\n\n",stdout);
            gameover = 1;
        }
    }
    return 0;
}