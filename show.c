#include <stdio.h>

#include "show.h"

void ShowChipID(UINT32 id, P_CHIP_MEM_SIZES mem_sizes)
{
	UINT32 val;

	val = id & (UINT32)0x1F;
	printf("- Device version: %d\r\n", val);

	printf("- CPU Type: ");
	val = id & (UINT32)0xE0;
	switch(val)
	{
		case 1 << 5:
			printf("ARM946ES");
			break;
		case 2 << 5:
			printf("ARM7TDMI");
			break;
		case 4 << 5:
			printf("ARM920T");
			break;
		case 5 << 5:
			printf("ARM926EJS");
			break;
		default:
			printf("Unknown - %X", (id & (UINT32)0x0E0) >> 5);
	}
	printf("\r\n");

	printf("- Nonvolatile Program Memory: ");
	val = id & (UINT32)0x0F00;
	switch(val)
	{
		case 0:
			printf("None");
			mem_sizes->flash_size = 0;
			mem_sizes->flash_page_size = 0;
			break;
		case 1 << 8:
			printf("8 Kbytes");
			mem_sizes->flash_size = 8;
			mem_sizes->flash_page_size = 0;
			break;
		case 2 << 8:
			printf("16 Kbytes");
			mem_sizes->flash_size = 16;
			mem_sizes->flash_page_size = 64;
			break;
		case 3 << 8:
			printf("32 Kbytes");
			mem_sizes->flash_size = 32;
			mem_sizes->flash_page_size = 128;
			break;
		case 5 << 8:
			printf("64 Kbytes");
			mem_sizes->flash_size = 64;
			mem_sizes->flash_page_size = 128;
			break;
		case 7 << 8:
			printf("128 Kbytes");
			mem_sizes->flash_size = 128;
			mem_sizes->flash_page_size = 256;
			break;
		case 9 << 8:
			printf("256 Kbytes");
			mem_sizes->flash_size = 256;
			mem_sizes->flash_page_size = 256;
			break;
		case 10 << 8:
			printf("512 Kbytes");
			mem_sizes->flash_size = 512;
			mem_sizes->flash_page_size = 256;
			break;
		case 12 << 8:
			printf("1024 Kbytes");
			mem_sizes->flash_size = 1024;
			mem_sizes->flash_page_size = 0;
			break;
		case 14 << 8:
			printf("2048 Kbytes");
			mem_sizes->flash_size = 2048;
			mem_sizes->flash_page_size = 0;
			break;
		default:
			printf("Unknown - %X", (id & (UINT32)0x0F00) >> 8);
			mem_sizes->flash_size = 0;
			break;
	}
	printf("\r\n");

	printf("- Second Nonvolatile Program Memory: ");
	val = id & (UINT32)0x0F000;
	switch(val)
	{
		case 0:
			printf("None");
			break;
		case 1 << 12:
			printf("8 Kbytes");
			break;
		case 2 << 12:
			printf("16 Kbytes");
			break;
		case 3 << 12:
			printf("32 Kbytes");
			break;
		case 5 << 12:
			printf("64 Kbytes");
			break;
		case 7 << 12:
			printf("128 Kbytes");
			break;
		case 9 << 12:
			printf("256 Kbytes");
			break;
		case 10 << 12:
			printf("512 Kbytes");
			break;
		case 12 << 12:
			printf("1024 Kbytes");
			break;
		case 14 << 12:
			printf("2048 Kbytes");
			break;
		default:
			printf("Unknown - %X", (id & (UINT32)0x0F000) >> 12);
			break;
	}
	printf("\r\n");

	printf("- Internal SRAM: ");
	val = id & (UINT32)0x0F0000;
	switch(val)
	{
		case 1 << 16:
			printf("1 Kbytes");
			break;
		case 2 << 16:
			printf("2 Kbytes");
			break;
		case 3 << 16:
			printf("6 Kbytes");
			break;
		case 4 << 16:
			printf("112 Kbytes");
			break;
		case 5 << 16:
			printf("4 Kbytes");
			break;
		case 6 << 16:
			printf("80 Kbytes");
			break;
		case 7 << 16:
			printf("160 Kbytes");
			break;
		case 8 << 16:
			printf("8 Kbytes");
			break;
		case 9 << 16:
			printf("16 Kbytes");
			break;
		case 10 << 16:
			printf("32 Kbytes");
			break;
		case 11 << 16:
			printf("64 Kbytes");
			break;
		case 12 << 16:
			printf("128 Kbytes");
			break;
		case 13 << 16:
			printf("256 Kbytes");
			break;
		case 14 << 16:
			printf("96 Kbytes");
			break;
		case 15 << 16:
			printf("512 Kbytes");
			break;
		default:
			printf("Unknown - %X", (id & (UINT32)0x0F000) >> 12);
			break;
	}
	printf("\r\n");

	printf("- Architecture ID: ");
	val = id & (UINT32)0x0FF00000;
	switch(val)
	{
		case 0x19 << 20:
			printf("AT91SAM9xx");
			break;
		case 0x29 << 20:
			printf("AT91SAM9XExx");
			break;
		case 0x34 << 20:
			printf("AT91x34");
			break;
		case 0x37 << 20:
			printf("CAP7");
			break;
		case 0x39 << 20:
			printf("CAP9");
			break;
		case 0x3B << 20:
			printf("CAP11");
			break;
		case 0x40 << 20:
			printf("AT91x40");
			break;
		case 0x42 << 20:
			printf("AT91x42");
			break;
		case 0x55 << 20:
			printf("AT91x55");
			break;
		case 0x60 << 20:
			printf("AT91SAM7Axx");
			break;
		case 0x61 << 20:
			printf("AT91SAM7AQxx");
			break;
		case 0x63 << 20:
			printf("AT91x63");
			break;
		case 0x70 << 20:
			printf("AT91SAM7Sxx");
			break;
		case 0x71 << 20:
			printf("AT91SAM7XCxx");
			break;
		case 0x72 << 20:
			printf("AT91SAM7SExx");
			break;
		case 0x75 << 20:
			printf("AT91SAM7Xxx");
			break;
		case 0x92 << 20:
			printf("AT91x92");
			break;
		case 0xF0 << 20:
			printf("AT75Cxx");
			break;
		default:
			printf("Unknown - %X", (id & (UINT32)0x0FF00000) >> 20);
			break;
	}
	printf(" Series\r\n");

	printf("- Nonvolatile Program Memory Type: ");
	val = id & (UINT32)0x70000000;
	switch(val)
	{
		case 0 << 28:
			printf("ROM");
			break;
		case 1 << 28:
			printf("ROMless or on-chip Flash");
			break;
		case 2 << 28:
			printf("Embedded Flash");
			break;
		case 3 << 28:
			printf("ROM (NVPSZ) and Embedded Flash (NVPSIZ2)");
			break;
		case 4 << 28:
			printf("SRAM emulating ROM");
			break;
		default:
			printf("Unknown - %X", (id & (UINT32)0x70000000) >> 28);
			break;
	}
	printf("\r\n");
}

void ShowMasterClock(UINT32 reg)
{
	UINT32 val;

	printf("- Master clock selected: ");
	val = reg & (UINT32)0x00000003;
	switch(val)
	{
		case 0:
			printf("Slow");
			break;
		case 1:
			printf("Main");
			break;
		case 4:
			printf("PLL");
			break;
		default:
			printf("Unknown");
			break;
	}
	printf("\r\n");

	val = reg &(UINT32)0x0000001C;
	printf("- Master clock prescaler: ");
	switch(val)
	{
		case (0 << 2):
			printf("1");
			break;
		case (1 << 2):
			printf("2");
			break;
		case (2 << 2):
			printf("4");
			break;
		case (3 << 2):
			printf("8");
			break;
		case (4 << 2):
			printf("16");
			break;
		case (5 << 2):
			printf("32");
			break;
		case (6 << 2):
			printf("64");
			break;
		default:
			printf("unknown");
			break;
	}
	printf("\r\n");
}

