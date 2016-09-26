/*******************************************************************************
File: utils.cpp

Creted by PROTTOSS
Mail to PROTTOSS@mail.ru
*******************************************************************************/

#include <windows.h>
#include <stdio.h>
#include <conio.h>

#include "config.h"
#include "utils.h"
#include "samba.h"
#include "inout.h"
#include "firmware.h"

/*******************************************************************************
Def's
*******************************************************************************/

#define VALIDATE(expr)			\
	do         					\
    {		   					\
		IO_RES res = (expr);	\
    	if(res)					\
			return res;			\
	}while(0)

/*******************************************************************************
Var's
*******************************************************************************/

/* Mail box for MCU send command and data */
MAIL_BOX	g_MailBox;

/*******************************************************************************
Print errors at dislpay
*******************************************************************************/
void ShowResult(IO_RES res)
{
	switch(res)
    {
        case RES_OK:
        	printf("OK");
            break;
        case FAIL_SETUPDIGETCLASSDEVS:
        	printf("Failed SetupDiGetClassDevs(...) operation");
            break;
        case FAIL_MALLOC_DEVDATADETAIL:
        	printf("Failed memory allocate for PSP_INTERFACE_DEVICE_DETAIL_DATA");
            break;
    	case WR_FAIL_WRITE_OPERATION:
        	printf("Failed WriteFile(...) operation");
            break;
        case WR_FAIL_CREATE_SYNC:
        	printf("Failed create sync event for write operation");
            break;
        case WR_FAIL_GET_OVERLAPPED_RESULT:
        	printf("Failed GetOverlappedResult(...) for write operation");
            break;
        case WR_FAIL_WAIT_FOR_SINGLE_OBJECT:
        	printf("Failed WaitForSingleObject(...) for write operation");
            break;
        case RD_FAIL_WRITE_OPERATION:
        	printf("Failed ReadFile(...) operation");
            break;
        case RD_FAIL_CREATE_SYNC:
        	printf("Failed create sync event for read operation");
            break;
        case RD_FAIL_GET_OVERLAPPED_RESULT:
        	printf("Failed GetOverlappedResult(...) for read operation");
            break;
        case RD_FAIL_WAIT_FOR_SINGLE_OBJECT:
        	printf("Failed WaitForSingleObject(...) for read operation");
            break;
        case RESP_BAD:
        	printf("Bad responce");
            break;
        case RESP_TO_BIG:
            printf("Responce to big");
        	break;
        case ARG_BAD:
        	printf("Bad argument");
            break;
        case READ_TIMEOUT:
        	printf("Read timeout");
            break;
        case WRITE_TIMEOUT:
            printf("Write timeout");
            break;
        case VERYFY_FAIL:
        	printf("Verification failed");
            break;
        case NOT_FOUND:
        	printf("Device not found");
            break;
        case OPEN_FAIL:
        	printf("Failed to open");
            break;
        case SAM_INIT_FAIL:
			printf("Timeout...My be inited before?\r\n");
            return;
        case SAM_WRITE_FLASH_FAIL:
			printf("MCU flash write failed");
            break;
        case WRONG_CPU_ARCHITECTURE:
			printf("MCU architecture wrong");
            break;
        case WRONG_CPU_TYPE:
			printf("MCU type wrong");
            break;
        case CPU_FLASH_MEMORY_TOO_SMALL:
			printf("MCU Flash memory size too small");
            break;
        default:
        	printf("Unknown error");
            break;
    }
    printf("!\r\n");
}

/*******************************************************************************
Check target CPU
*******************************************************************************/
IO_RES CheckCPU(UINT32 id, P_CHIP_MEM_SIZES mem_sizes)
{
    UINT32 val;

    val = id & (UINT32)0xE0;
    if(val != CFG_VALID_EPROC)
    	return WRONG_CPU_ARCHITECTURE;

    val = id & (UINT32)0x0FF00000;
    if(val != CFG_VALID_CHIP_ARCH)
    	return WRONG_CPU_TYPE;
        
    if(mem_sizes->flash_size < CFG_VALID_FLASH_SIZE)
    	return CPU_FLASH_MEMORY_TOO_SMALL;
    return RES_OK;
}

/*******************************************************************************
Write block to MCU SRAM
*******************************************************************************/
IO_RES WriteMemBlock(UINT32 addr, PUINT8 buf, INT len, BOOL show_pbar)
{
	INT progress = len / 16;
    INT i, n = 0;
    UINT8 s_byte, r_byte;

    for(i = 0; i < len; i++)
    {
       	s_byte = buf[i];

        VALIDATE(cmdWriteByte(addr, s_byte));
        VALIDATE(cmdReadByte(addr, &r_byte));
		if(s_byte != r_byte)
        {
           	printf("\r\n    At address 0x%08X: got 0x%08X, read 0x%08X\r\n", addr, s_byte, r_byte);
            return VERYFY_FAIL;
        }
        addr++;

        /* Make progress bar */
        if(show_pbar)
        {
        	n++;
        	if(n >= progress)
        	{
          		n = 0;
            	printf("#");
        	}
        }
    }

	return RES_OK;
}

/*******************************************************************************
Write firmware
*******************************************************************************/
IO_RES WriteFirmware(PUINT8 fw_data, INT fw_size, INT page_size)
{
    UINT32 addr = CFG_FIRMWARE_START;
    INT i, b_count;
    UINT32 boot_res;
    P_MAIL_BOX mb = &g_MailBox;
    INT y_pos;

    b_count = 0;
    y_pos = wherey();

    while(fw_size > 0)
    {
    	/* Set mail box */
     	memset((PUINT8)mb, sizeof(g_MailBox), 0);
    	mb->cmd = CMD_WRITE;
        mb->page_addr = addr;
        mb->page_size = page_size;
        if(page_size <= fw_size)
        	memcpy(mb->page_buf, fw_data, page_size);
        else
			memcpy(mb->page_buf, fw_data, fw_size);
        boot_res = RES_EXEC_OK;

        gotoxy(0, y_pos);
        printf("                                                       \r");
        gotoxy(0, y_pos);
        printf("    Send block %03d  ", b_count);

        /* Load mailbox */
    	VALIDATE(WriteMemBlock(CFG_MAIL_BOX_START, (PUINT8)mb, sizeof(MAIL_BOX), FALSE));

        /* Start loader */
    	VALIDATE(cmdGo(CFG_LOADER_START));

        /* Check result code */
        VALIDATE(cmdReadWord(CFG_MAIL_BOX_START, &boot_res));
        if(boot_res != RES_EXEC_OK)
          	return SAM_WRITE_FLASH_FAIL;

        printf("  OK");

        /* Set new parameters */
        addr += page_size;
        fw_size -= page_size;
        fw_data += page_size;
        b_count++;
	}

    gotoxy(0, y_pos);
    printf("                                                       ");
    gotoxy(0, y_pos);
	return RES_OK;
}

/*******************************************************************************
Wait user for select firmware
*******************************************************************************/
BOOL SelectFirmware(void)
{
    UINT8 key, f = 0;
    INT y_pos;

    printf("\r\n");
    printf("- Firmware date: %s\r\n", &g_Firmware[CFG_FW_DATE_IDX]);

	printf("\r\n");
	printf("- Select firmware mode:\r\n");
    printf("	1	- AVR STK500v2 emulator over COM-port\r\n");
    printf("	2	- AVR JTAGICEmkII emulator over COM-port\r\n");
    printf("\r\n");
    printf("	0	- exit from program\r\n");
    printf("\r\n");

    y_pos = wherey();
    while(f == 0)
    {
    	key = getch();
        gotoxy(0, y_pos);
        switch(key)
        {
        	case '0':
            	return FALSE;

            case '1':
            	g_Firmware[CFG_FW_MODE_IDX] = 0;
                f = 1;
                break;

            case '2':
            	g_Firmware[CFG_FW_MODE_IDX] = 1;
                f = 1;
                break;
        }
    }

    printf("- Mode %d selected\r\n", (key - 0x30));
    printf("\r\n");
    return TRUE;
}

/*******************************************************************************
Wait user for press Y/N button
*******************************************************************************/
BOOL UserWait(void)
{
    UINT8 key;
    INT y_pos;

	y_pos = wherey();
    while(1)
    {
    	key = getch();
        gotoxy(0, y_pos);

        if(key == 'y' || key == 'Y')
        	return TRUE;
		if(key == 'n' || key == 'N')
        	return FALSE;
    }
}
