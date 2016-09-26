#ifndef SAMBA_H
#define SAMBA_H

#include "utils.h"

IO_RES cmdInit(void);
IO_RES cmdVersion(PCHAR rval, ULONG rlen);
IO_RES cmdReadByte(UINT32 addr, PUINT8 pdata);
IO_RES cmdReadHalf(UINT32 addr, PUINT16 pdata);
IO_RES cmdReadWord(UINT32 addr, PUINT32 pdata);
IO_RES cmdWriteByte(UINT32 addr, UINT8 data);
IO_RES cmdWriteHalf(UINT32 addr, UINT16 data);
IO_RES cmdWriteWord(UINT32 addr, UINT32 data);
IO_RES cmdWriteFile(UINT32 addr, PUINT8 data, INT len);

IO_RES cmdGo(UINT32 addr);

#endif

