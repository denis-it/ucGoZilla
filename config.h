#ifndef CONFIG_H
#define CONFIG_H

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
#define CFG_IO_TIMEOUT			10000

#endif

