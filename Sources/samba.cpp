/*******************************************************************************
File:

Creted by PROTTOSS
Mail to PROTTOSS@mail.ru

Loader for setup ucGoZilla board
Created: 11.02.2010
*******************************************************************************/

#include <windows.h>
#include <stdio.h>

#include "inout.h"
#include "samba.h"

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
Connect to SAM-BA
*******************************************************************************/
IO_RES cmdInit(void)
{
	UCHAR buf[2];

	buf[0] = 'N';	/* Send initialize command */
    buf[1] = '#';

    /* Send request */
    VALIDATE(WriteData(buf, 2));

    /* Get responce */
	VALIDATE(ReadData(buf, 2));
    
    /* Check responce code */
    if(buf[0] != 0x0A && buf[1] != 0x0D)
    	return RESP_BAD;
	return RES_OK;
}

/*******************************************************************************
Get version
*******************************************************************************/
IO_RES cmdVersion(PCHAR rval, ULONG rlen)
{
    UCHAR buf[2];
    PCHAR p;
    IO_RES res;
    ULONG i = 0;

    buf[0] = 'V';	/* Send initialize command */
    buf[1] = '#';

    /* Send request */
    res = WriteData(buf, 2);
    if(res)
    	return res;

    /* Read version string */
    p = rval;
    while(1)
    {
		res = ReadData(p, 1);
    	if(RES_OK != res)
        	break;
        if(*p == 0x0A)	/* Check end of string */
            break;
        p++;
        i++;
        if(i >= rlen - 2) /* Responce too big */
        {
        	res = RESP_TO_BIG;
            break;
        }
    }

    /* Get last control */
    if(RES_OK == res)
    {
    	if(i > 0)
    	{
    		p++;
    		res = ReadData(p, 1);
    		if(RES_OK == res)
    		{
    			if(*p != 0x0D)
        			res = RESP_BAD;
            	else
            		rval[i] = 0;	/* End of string */
    		}
        }
        else
    		res = RESP_BAD;
    }
    return res;
}

/*******************************************************************************
Read byte from device
*******************************************************************************/
IO_RES cmdReadByte(UINT32 addr, PUINT8 pdata)
{
	UCHAR buf[20];
    IO_RES res;

    /* Make request */
    snprintf(buf, 20, "o%08X,1#", addr);

    res = WriteData(buf, 12);	/* Send request */
    if(res)
    	return res;
    return ReadData(pdata, 1);	/* Get responce */
};

/*******************************************************************************
Read half from device
*******************************************************************************/
IO_RES cmdReadHalf(UINT32 addr, PUINT16 pdata)
{
	UCHAR buf[20];
    IO_RES res;

    /* Make request */
    snprintf(buf, 20, "h%08X,2#", addr);

    res = WriteData(buf, 12);	/* Send request */
    if(res)
    	return res;
    return ReadData(pdata, 2);	/* Get responce */
};

/*******************************************************************************
Read word from device
*******************************************************************************/
IO_RES cmdReadWord(UINT32 addr, PUINT32 pdata)
{
	UCHAR buf[20];
    IO_RES res;

    snprintf(buf, 20, "w%08x,4#", addr);

    res = WriteData(buf, 12);	/* Send request */
    if(res)
    	return res;
    return ReadData(pdata, 4);	/* Get responce */
}

/*******************************************************************************
Write byte to device
*******************************************************************************/
IO_RES cmdWriteByte(UINT32 addr, UINT8 data)
{
	UCHAR buf[20];

    snprintf(buf, 13, "O%08X,%02X#", addr, (UINT8)data);
    return WriteData(buf, 13);
};

/*******************************************************************************
Write half to device
*******************************************************************************/
IO_RES cmdWriteHalf(UINT32 addr, UINT16 data)
{
	UCHAR buf[20];

    snprintf(buf, 15, "H%08X,%04X#", addr, (UINT8)data);
    return WriteData(buf, 15);
};

/*******************************************************************************
Write word to device
*******************************************************************************/
IO_RES cmdWriteWord(UINT32 addr, UINT32 data)
{
    UCHAR buf[20];

    snprintf(buf, 19, "W%08x,%08x#", addr, (UINT32)data);
    return WriteData(buf, 19);
}

/*******************************************************************************
Start loaded application from address
*******************************************************************************/
IO_RES cmdGo(UINT32 addr)
{
	UCHAR buf[20];
    PCHAR p;
    ULONG len;
    IO_RES res;

    snprintf(buf, 10, "G%08x#", addr);
    return WriteData(buf, 10);
}




