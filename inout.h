#ifndef INOUT_H
#define INOUT_H

#include "types.h"

IO_RES OpenDevice(void);
void CloseDevice(void);
IO_RES WriteData(PVOID Data, ULONG Size);
IO_RES ReadData(PVOID Data, ULONG Size);
IO_RES ReadDataEx(PVOID Data, ULONG Size, ULONG* Readed);
void CloseDevice(void);

#endif

