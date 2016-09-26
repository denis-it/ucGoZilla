/*******************************************************************************
File: firmware.h

Creted by PROTTOSS
Mail to PROTTOSS@mail.ru

Routines for know size and address for firmware
*******************************************************************************/

#ifndef FIRMWARE_H
#define FIRMWARE_H
#include <stdio.h>

/*******************************************************************************
Public
*******************************************************************************/

extern unsigned char g_Firmware[];
unsigned int FW_GetSize(void);	/* Return firmware code array size in bytes */

/*******************************************************************************
*******************************************************************************/
#endif /* #ifndef FIRMWARE_H */


