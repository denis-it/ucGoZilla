#ifndef TYPES_H
#define TYPES_H

#include "config.h"

#ifdef _WIN32
#include <windows.h>
#else
typedef /*unsigned*/ char UCHAR;
#endif

typedef int BOOL;
#define FALSE 0
#define TRUE 1

typedef int INT;

typedef char CHAR;
typedef CHAR *PCHAR;

typedef unsigned char UINT8;
typedef UINT8 *PUINT8;

typedef unsigned short UINT16;
typedef UINT16 *PUINT16;

typedef unsigned int UINT32;
typedef UINT32 *PUINT32;

typedef unsigned long ULONG;
typedef void *PVOID;

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

#endif

