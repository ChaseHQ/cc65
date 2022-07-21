#include <dani1.h>
#include <dani1/danivga.h>
#include <dani1/dcursor.h>
#include <unistd.h>

#include "snakegfx.h"

dvga_character charbuffer;
screenbuffer_t screenbuffer;

struct Snake {
    unsigned char x;
    unsigned char y;
};

unsigned char direction = 0;
unsigned char input = 0;

unsigned char snakelen = 1;

struct Snake snakehead =   {1,0};
struct Snake snaketail =   {0,0};
struct Snake snakedelete = {0,0};

unsigned char headpiece = GFX_SNAKEHEAD_RIGHT;

void processInput() {
    input = agetch();

    switch (input) {
        case 0x83: /* right */
            if (direction != 1) {
                direction = 0;
                headpiece = GFX_SNAKEHEAD_RIGHT;
            }      
        break;
        case 0x82: /* left */
            if (direction != 0) {
                direction = 1;
                headpiece = GFX_SNAKEHEAD_LEFT;
            }
        break;
        case 0x80: /* up */
            if (direction != 3) {
                direction = 2;
                headpiece = GFX_SNAKEHEAD_UP;
            }
        break;
        case 0x81: /* down */
            if (direction != 2) {
                direction = 3;
                headpiece = GFX_SNAKEHEAD_DOWN;
            }
        break;
    }
}

void moveSnake() {
    snakedelete.x = snaketail.x;
    snakedelete.y = snaketail.y;
    switch (direction) {
        case 0:
            if (++snakehead.x == DANI_SCREEN_WIDTH) {
                snakehead.x = 0;
            }
        break;
        case 1:
            if (--snakehead.x == 255) {
                snakehead.x = DANI_SCREEN_WIDTH-1;
            }
        break;
        case 2:
            if (--snakehead.y == 255) {
                snakehead.y = DANI_SCREEN_HEIGHT-1;
            }
        break;
        case 3:
            if (++snakehead.y == DANI_SCREEN_HEIGHT) {
                snakehead.y = 0;
            }
        break;
    }
}

void draw() {
    dplotcxy(snakedelete.x,snakedelete.y,0);
    dplotcxy(snakehead.x,snakehead.y,headpiece);
    sleep(5); 
}

void loadGfx() {
    unsigned char x;
    for (x = 0; x < GFX_TILECOUNT; ++x) {
        dstorechar(&gfx_tiles[x], GFX_START+x);
    }
}

void main(void)
{   
    loadGfx();
    blankscreen();
    while (input != 'Q' && input != 'q') {
        processInput();
        moveSnake();
        draw();
    }
}