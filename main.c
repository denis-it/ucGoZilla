#include <stdio.h>

#include "config.h"
#include "samba.h"
#include "show.h"
#include "utils.h"
#include "inout.h"
#include "loader.h"
#include "firmware.h"

#define VALIDATE(expr)		\
	do		 				\
	{						\
		res = (expr);		\
		if(res)				\
			goto error;		\
	}while(0)

#define UNUSED __attribute__((unused))

CHAR g_Buf[CFG_DATA_BUF_SIZE];

int main(int argc UNUSED, char *argv[] UNUSED)
{
	UINT32 d_word;
	IO_RES res;
	CHIP_MEM_SIZES mem_sizes;

	printf("\r\n");
	printf(" ATMEL AT91SAM processors flash memory programming utility v.%s\r\n", CFG_SW_VERSION);
	printf(" (c) PROTTOSS Electronic Laboratory 2010\r\n\r\n");

#if 1
	printf("- Searching device...");
	VALIDATE(OpenDevice());
	printf("Found!\r\n");

	printf("- Init SAM Boot Assistant...");
#if 1
	res = cmdInit();
	ShowResult(res);
#else
	printf("OK!\r\n");
#endif

#if 1
	printf("- CPU boot version: ");
	VALIDATE(cmdVersion(g_Buf, CFG_DATA_BUF_SIZE));
	printf("%s\r\n", g_Buf);
#endif

	printf("- Get CPU ID-register at 0xFFFF:F240h... ");
	VALIDATE(cmdReadWord(0xfffff240, &d_word));
	printf("OK:\r\n\r\n");
	ShowChipID(d_word, &mem_sizes);
	printf("\r\n");

	printf("- Check valid CPU... ");
	VALIDATE(CheckCPU(d_word, &mem_sizes));
	printf("OK\r\n");

	if(d_word & 0x80000000)
	{
		printf("- Chip ID extended register value: ");
		VALIDATE(cmdReadWord(0xfffff244, &d_word));
		printf("0x%X\r\n", d_word);
	}

	printf("- Get CPU Master clock register at 0xFFFF:FC30h... ");
	VALIDATE(cmdReadWord(0xfffffc30, &d_word));
	printf("OK\r\n");
	ShowMasterClock(d_word);

	if(FALSE == SelectFirmware())
	{
		printf("Not selected item. Program exit...\r\n\r\n");
		goto exit;
	}

	printf("- Proceed to download firmware? [y/n] ");
	if(FALSE == UserWait())
	{
		printf("- Cancel operation\r\n");
		printf("- Please replug board for trying programm the next time.\r\n");
		printf("- Program exit...\r\n\r\n");
		goto exit;
	}

	printf("\r\nSend loader at 0x%08X... ", CFG_LOADER_START);
	VALIDATE(WriteMemBlock(CFG_LOADER_START, LDR_GetPtr(), LDR_GetSize(), TRUE));
	printf(" OK\r\n");
#if 1
	VALIDATE(WriteFirmware(g_Firmware, FW_GetSize(), mem_sizes.flash_page_size));
	printf("\r\n");
	printf("- Firmware complete! Please, replug board for start firmware.\r\n");
	goto exit;
#endif
#endif

error:
	ShowResult(res);

exit:
	CloseDevice();
	printf("\r\n");
	return 0;
}



