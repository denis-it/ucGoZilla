#ifndef UTILS_H
#define UTILS_H

#include "config.h"
#include "show.h"

void ShowResult(IO_RES res);
IO_RES WriteMemBlock(UINT32 addr, PUINT8 buf, INT len, BOOL show_pbar);
IO_RES WriteFirmware(PUINT8 fw_data, INT fw_size, INT page_size);
IO_RES CheckCPU(UINT32 cpu_id, P_CHIP_MEM_SIZES mem_sizes);
BOOL SelectFirmware(void);
BOOL UserWait(void);

#endif

