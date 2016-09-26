#ifndef SHOW_H
#define SHOW_H

#include "types.h"

typedef struct __CHIP_MEM_SIZES
{
	UINT32 flash_size;
	UINT32 flash_page_size;
	UINT32 sram_size;

} CHIP_MEM_SIZES, *P_CHIP_MEM_SIZES;

void ShowChipID(UINT32 id, P_CHIP_MEM_SIZES mem_sizes);
void ShowMasterClock(UINT32 reg);

#endif

