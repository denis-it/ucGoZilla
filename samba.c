#include <stdio.h>

#include "inout.h"
#include "samba.h"

#define VALIDATE(expr)			\
	do		 					\
	{							\
		IO_RES res = (expr);	\
		if(res)					\
			return res;			\
	}while(0)

IO_RES cmdInit(void)
{
	UCHAR buf[2];

	buf[0] = 'N';
	buf[1] = '#';

	VALIDATE(WriteData(buf, 2));
	VALIDATE(ReadData(buf, 2));

	if(buf[0] != 0x0A && buf[1] != 0x0D)
		return RESP_BAD;
	return RES_OK;
}

IO_RES cmdVersion(PCHAR rval, ULONG rlen)
{
	IO_RES res;

	PCHAR p = rval;
	ULONG plen = rlen;

	ULONG readed = 0;

	UCHAR buf[2];
	buf[0] = 'V';
	buf[1] = '#';

	res = WriteData(buf, sizeof(buf));
	if(res)
		return res;

	while(1)
	{
		res = ReadDataEx(p, plen, &readed);
		if(RES_OK != res)
			break;

		if(readed == 2 && p[0] == 0x0A)
		{
			if(p[1] != 0x0D)
				res = RESP_BAD;
			else
				*p = 0;
			break;
		}

		p += readed;
		plen -= readed;

		if(plen < 2)
		{
			res = RESP_TO_BIG;
			break;
		}
	}

	return res;
}

IO_RES cmdReadByte(UINT32 addr, PUINT8 pdata)
{
	UCHAR buf[20];
	IO_RES res;

	snprintf(buf, 20, "o%08X,1#", addr);

	res = WriteData(buf, 12);
	if(res)
		return res;
	return ReadData(pdata, 1);
};

IO_RES cmdReadHalf(UINT32 addr, PUINT16 pdata)
{
	UCHAR buf[20];
	IO_RES res;

	snprintf(buf, 20, "h%08X,2#", addr);

	res = WriteData(buf, 12);
	if(res)
		return res;
	return ReadData(pdata, 2);
};

IO_RES cmdReadWord(UINT32 addr, PUINT32 pdata)
{
	UCHAR buf[20];
	IO_RES res;

	snprintf(buf, 20, "w%08x,4#", addr);

	res = WriteData(buf, 12);
	if(res)
		return res;
	return ReadData(pdata, 4);
}

IO_RES cmdWriteByte(UINT32 addr, UINT8 data)
{
	UCHAR buf[20];

	snprintf(buf, 20, "O%08X,%02X#", addr, (UINT8)data);
	return WriteData(buf, 13);
};

IO_RES cmdWriteHalf(UINT32 addr, UINT16 data)
{
	UCHAR buf[20];

	snprintf(buf, 20, "H%08X,%04X#", addr, (UINT8)data);
	return WriteData(buf, 15);
};

IO_RES cmdWriteWord(UINT32 addr, UINT32 data)
{
	UCHAR buf[20];

	snprintf(buf, 20, "W%08x,%08x#", addr, (UINT32)data);
	return WriteData(buf, 19);
}

IO_RES cmdGo(UINT32 addr)
{
	UCHAR buf[20];

	snprintf(buf, 20, "G%08x#", addr);
	return WriteData(buf, 10);
}

