/*******************************************************************************
File: config.h

Creted by PROTTOSS
Mail to PROTTOSS@mail.ru
*******************************************************************************/

#ifndef CONFIG_H
#define CONFIG_H

#include <windows.h>

/*******************************************************************************
Def's
*******************************************************************************/

/* This software version */
#define CFG_SW_VERSION 			"1.32"

/* Firmware version positions */
#define CFG_FW_MODE_IDX			0x34
#define CFG_FW_DATE_IDX			0x38

/* Size of data buffer */
#define CFG_DATA_BUF_SIZE		256

/* Loader start address */
#define CFG_LOADER_START		0x00202000

/* Wait time, while loader write data block to flash */
#define CFG_LOADER_WAIT_FLASH_WRITE_TIME	0

/* Firmware start address */
#define CFG_FIRMWARE_START		0x00100000

/* Data buffer size */
#define CFG_PAGE_BUF_SIZE		256
#define CFG_MAIL_BOX_START		(CFG_LOADER_START + 4)
#define CFG_MAIL_BOX_SIZE		(CFG_PAGE_BUF_SIZE + 128)

/* Valid chip ID fields */
#define CFG_VALID_EPROC			(2 << 5)		/* ARM7TDMI */
#define CFG_VALID_CHIP_ARCH		(0x70 << 20)	/* AT91SAM7S series */
#define CFG_VALID_FLASH_SIZE	64				/* Minimum 64 kBytes */

/* Write/Read operations timeout in milliseconds */
#define CFG_IO_TIMEOUT			 10000 


/*******************************************************************************
Type's
*******************************************************************************/

/* Command codes */
typedef enum __BOOT_CMD
{	
  	CMD_INIT = 0,		/* initialization command code. */
	CMD_FULL_ERASE,		/* full erase command code. */
	CMD_WRITE,			/* write command code. */
	CMD_READ,			/* read command code. */
	CMD_LOCK,			/* lock command code. */
	CMD_UNLOCK,			/* unlock command code. */
	CMD_GPNVM,			/* set/clear GPNVM command code. */
	CMD_SECURITY,		/* set security bit command code. */
	CMD_BUFFER_ERASE,	/* buffer erase command code. */
	  
} BOOT_CMD;

/* Result return codes */
typedef enum __BOOT_RES
{
	RES_EXEC_OK = 0,
	RES_DEV_UNKNOWN,
	RES_WRITE_FAIL,
	RES_READ_FAIL,
	RES_PROTECT_FAIL,
	RES_UNPROTECT_FAIL,
	RES_ERASE_FAIL,
	RES_NO_DEV,
	RES_ALIGN_ERROR,
	RES_BAD_BLOCK,
	RES_UNKNOWN_CMD,
	  
} BOOT_RES;

/* Mail box for telling messages host <-> loader */
typedef struct __MAIL_BOX
{	
  	UINT32	ret_val;	/* Return value to host from loader */
    UINT32	cmd;		/* Loader command */
	UINT32	page_addr;	/* MCU Page addr */
	UINT32	page_size;	/* MCU Page len */
	UINT8	page_buf[CFG_PAGE_BUF_SIZE];	/* Page buffer */
	
} MAIL_BOX, *P_MAIL_BOX;

/* Result codes */
typedef enum __IO_RES
{
	RES_OK = 0,
    NOT_FOUND,
    OPEN_FAIL,
	RESP_BAD,
    RESP_TO_BIG,
    FAIL_SETUPDIGETCLASSDEVS,
    FAIL_MALLOC_DEVDATADETAIL,
    WR_FAIL_WRITE_OPERATION,
    WR_FAIL_CREATE_SYNC,
    WR_FAIL_GET_OVERLAPPED_RESULT,
    WR_FAIL_WAIT_FOR_SINGLE_OBJECT,
    RD_FAIL_WRITE_OPERATION,
    RD_FAIL_CREATE_SYNC,
    RD_FAIL_GET_OVERLAPPED_RESULT,
    RD_FAIL_WAIT_FOR_SINGLE_OBJECT,
    ARG_BAD,
    READ_TIMEOUT,
    WRITE_TIMEOUT,
    VERYFY_FAIL,
    SAM_INIT_FAIL,
    SAM_WRITE_FLASH_FAIL,
    WRONG_CPU_ARCHITECTURE,
    WRONG_CPU_TYPE,
    CPU_FLASH_MEMORY_TOO_SMALL,
    
} IO_RES;

/*******************************************************************************
*******************************************************************************/
#endif	/* #ifndef CONFIG_H */

 