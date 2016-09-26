/*******************************************************************************
File:

Creted by PROTTOSS
Mail to PROTTOSS@mail.ru

Loader for setup ucGoZilla board
Created: 11.02.2010
*******************************************************************************/

#ifndef INOUT_H
#define INOUT_H

#include <windows.h>
#include <stdio.h>

#include "utils.h"

/*******************************************************************************
Def's
*******************************************************************************/

/*******************************************************************************
Public functions
*******************************************************************************/

IO_RES OpenDevice(void);
void CloseDevice(void);
IO_RES WriteData(PVOID Data, ULONG Size);
IO_RES ReadData(PVOID Data, ULONG Size);
void CloseDevice(void);

#endif	/* INOUT_H */


