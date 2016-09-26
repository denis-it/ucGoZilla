/*******************************************************************************
File:

Creted by PROTTOSS
Mail to PROTTOSS@mail.ru

Loader for setup ucGoZilla board
Created: 11.02.2010
*******************************************************************************/

#include <windows.h>
#include <stdio.h>

#include "config.h"
#include "samba.h"
#include "show.h"
#include "utils.h"
#include "inout.h"
#include "loader.h"
#include "firmware.h"

/*******************************************************************************

*******************************************************************************/
#pragma hdrstop
#pragma argsused

/*******************************************************************************
Def's
*******************************************************************************/

#define VALIDATE(expr)		\
	do         				\
    {		   				\
    	res = (expr);		\
    	if(res)				\
			goto error;		\
  	}while(0)

/*******************************************************************************
Var's
*******************************************************************************/

/* Buffer */
CHAR g_Buf[CFG_DATA_BUF_SIZE];

/*******************************************************************************
Entry point
*******************************************************************************/
int main(int argc, char *argv[])
{
    ULONG xfer;
    UINT32 d_word;
    IO_RES res;
    CHAR c;
    CHIP_MEM_SIZES mem_sizes;

    /* Show program name... */
    printf("\r\n");
    printf(" ATMEL AT91SAM processors flash memory programming utility v.%s\r\n", CFG_SW_VERSION);
    printf(" (c) PROTTOSS Electronic Laboratory 2010\r\n\r\n");

#if 1
	/* Starting */
    printf("- Searching device...");
    VALIDATE(OpenDevice());
    printf("Found!\r\n");

	/* Init SAM-BA application */
	printf("- Init SAM Boot Assistant...");
#if 1
    res = cmdInit();
    ShowResult(res);
#else
	printf("OK!\r\n");
#endif

#if 1
    /* Show internal app boot version */
    printf("- CPU boot version: ");
    VALIDATE(cmdVersion(g_Buf, CFG_DATA_BUF_SIZE));
	printf("%s\r\n", g_Buf);
#endif

	/* Get ID register */
    printf("- Get CPU ID-register at 0xFFFF:F240h... ");
    VALIDATE(cmdReadWord(0xfffff240, &d_word));
	printf("OK:\r\n\r\n");
    ShowChipID(d_word, &mem_sizes);
    printf("\r\n");

    /* Check processor type */
    printf("- Check valid CPU... ");
    VALIDATE(CheckCPU(d_word, &mem_sizes));
    printf("OK\r\n");

    /* If extended register ID exist, show it value */
    if(d_word & 0x80000000)
    {
      	printf("- Chip ID extended register value: ");
       	VALIDATE(cmdReadWord(0xfffff244, &d_word));
		printf("0x%X\r\n", d_word);
    }

    /* Show master clok */
    printf("- Get CPU Master clock register at 0xFFFF:FC30h... ");
    VALIDATE(cmdReadWord(0xfffffc30, &d_word));
	printf("OK\r\n");
    ShowMasterClock(d_word);

    if(FALSE == SelectFirmware())
    {
    	printf("Not selected item. Program exit...\r\n\r\n");
    	goto exit;
    }

    printf("- Proceed to download firmware? [y/n]");
    if(FALSE == UserWait())
    {
    	printf(" N\r\n");
    	printf("- Cancel operation\r\n");
        printf("- Please replug board for trying programm the next time.\r\n");
       	printf("- Program exit...\r\n\r\n");
    	goto exit;
    }
    printf(" Y\r\n");

    /* Set loader code in MCU SRAM */
    printf("\r\nSend loader at 0x%08X...", CFG_LOADER_START);
    VALIDATE(WriteMemBlock(CFG_LOADER_START, LDR_GetPtr(), LDR_GetSize(), TRUE));
    printf(" OK\r\n");
#if 1
	/* Write firmware */
	d_word = FW_GetSize() / mem_sizes.flash_page_size;	/* Calculate total blocks */
    if(d_word * mem_sizes.flash_page_size < FW_GetSize())
       	d_word += 1;

    printf("- Firmware size %d bytes\r\n", FW_GetSize());
    printf("- MCU page size %d bytes\r\n", mem_sizes.flash_page_size);
    printf("- Total blocks - %d. Start of writing blocks 0...%d\r\n", d_word, d_word - 1);
    VALIDATE(WriteFirmware(g_Firmware, FW_GetSize(), mem_sizes.flash_page_size));
    printf("\r\n");
    printf("- Firmware complete! Please, replug board for start firmware.\r\n");
    goto exit;
#endif
#endif

	/* Show error message */
error:
    ShowResult(res);

    /* Exit program */
exit:
	CloseDevice();
    printf("\r\n");
    return 0;
}



