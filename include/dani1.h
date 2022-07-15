/*****************************************************************************/
/*                                                                           */
/*                                  dani1.h                                  */
/*                                                                           */
/*                     DANI-I system-specific definitions                    */
/*                                                                           */
/*                                                                           */
/*                                                                           */
/* (C) 2022      Craig Vella                                                 */
/* Email:        CraigVella@gmail.com                                        */
/*                                                                           */
/* This software is provided 'as-is', without any expressed or implied       */
/* warranty.  In no event will the authors be held liable for any damages    */
/* arising from the use of this software.                                    */
/*                                                                           */
/* Permission is granted to anyone to use this software for any purpose,     */
/* including commercial applications, and to alter it and redistribute it    */
/* freely, subject to the following restrictions:                            */
/*                                                                           */
/* 1. The origin of this software must not be misrepresented; you must not   */
/*    claim that you wrote the original software. If you use this software   */
/*    in a product, an acknowledgment in the product documentation would be  */
/*    appreciated but is not required.                                       */
/* 2. Altered source versions must be plainly marked as such, and must not   */
/*    be misrepresented as being the original software.                      */
/* 3. This notice may not be removed or altered from any source              */
/*    distribution.                                                          */
/*                                                                           */
/*****************************************************************************/

#ifndef _DANI1_H
#define _DANI1_H

/* Check for errors */
#if !defined(__DANI1__)
#  error This module may only be used when compiling for the DANI-I
#endif

/*****************************************************************************/
/*                                   Data                                    */
/*****************************************************************************/

/*****************************************************************************/
/*                                 Hardware                                  */
/*****************************************************************************/

// #define RIOT3    (*(struct __6530*)0x1700)    // U25
// #define RIOT2    (*(struct __6530*)0x1740)    // U28

/*****************************************************************************/
/*                                   Code                                    */
/*****************************************************************************/

/* Read from tape */
//int __fastcall__ loadt (unsigned char);

/* Write to tape */
//int __fastcall__ dumpt (unsigned char, const void*, const void*);

void __fastcall__ blankscreen(void);               // Blankscreen with Monitor Method
char * __fastcall__ gets(char * str);              // Get string with Monitor method
unsigned char __fastcall__ agetch(void);           // Nonblocking getch call

/* End of danii.h */
#endif