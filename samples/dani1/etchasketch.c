//
// Craig Vella Dani-I sample
//
// craigvella@gmail.com
// --------------------------------------------------------------------------

#include <dani1.h>
#include <dani1/dcursor.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

struct Pen {
   unsigned char x;
   unsigned char y;
};

char DrawingChar;
char KeyboardInput;

int main (void) 
{
   struct Pen p = {0,0};
   char title[] = "DANI-I Etch-a-sketch";
   char directions[] = "Arrows = Directions, Esc to Quit";
   time_t raw;
   time(&raw);
 
   DrawingChar = 0;
   dcursor(0);
   blankscreen();
   dcurxy(textCenter(title),14);
   fputs(title, stdout);
   dcurxy(textCenter(directions),29);
   fputs(directions, stdout);
   while (!agetch()); // Wait for a key to be pressed
   blankscreen();
   dcurxy(0,0);
   
   do {
      KeyboardInput = agetch();
      if (KeyboardInput) {
         switch (KeyboardInput) {
            case 0x80: // Up
               if (p.y != 0){
                  --p.y;
               }
            break;
            case 0x81: // Down
               if (p.y != 28) {
                  ++p.y;
               }
            break;
            case 0x82: // Left
               if (p.x != 0) {
                  --p.x;
               }
            break;
            case 0x83: // right
               if (p.x != 39) {
                  ++p.x;
               }
            break;
            case ']':
               ++DrawingChar;
            break;
            case '[':
               --DrawingChar;
            break;
         }
      }
      dplotcxy(p.x,p.y,DrawingChar);
      dcurxy(0,29);
      fputs("Pen: ", stdout);
      dplotcxy(5,29, DrawingChar);
      dcurxy(6,29);
      printf("-%02x, X: %u, Y: %u    ", DrawingChar, p.x, p.y);
      
   } while (KeyboardInput != 0x1B);

   blankscreen();
   dcurxy(0,0);
   puts("Thanks for playing!\n");
   dcursor(1);


   return 0;
}