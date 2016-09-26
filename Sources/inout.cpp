/*******************************************************************************
File:

Creted by PROTTOSS
Mail to PROTTOSS@mail.ru

Loader for setup ucGoZilla board
Created: 11.02.2010
*******************************************************************************/

#include <windows.h>
#include <stdio.h>
#include <setupapi.h>
#include <initguid.h>

#include "inout.h"

/*******************************************************************************
Def's
*******************************************************************************/
DEFINE_GUID(GUID_CLASS_USB_DEVICE, 0xA5DCBF10L, 0x6530, 0x11D2, 0x90, 0x1F, 0x00, 0xC0, 0x4F, 0xB9, 0x51, 0xED);
GUID g_DevGUID = GUID_CLASS_USB_DEVICE;

/* VID & PID for SAM-BA device */
const CHAR g_DevVID[] = "03eb";
const CHAR g_DevPID[] = "6124";

/* Hanles for device pipes */
HANDLE g_hWritePipe, g_hReadPipe;

/*******************************************************************************
Check VID & PID from device path
*******************************************************************************/
BOOL Check_VID_PID(PCHAR DevName)
{
    PCHAR ps;

    /* Find VID number */
	ps = strstr(DevName, "vid_");
    if(!ps)
    	return FALSE;
    ps += 4;

    /* Check VID number string */
    if(0 != strncmp(ps, g_DevVID, 4))
    	return FALSE;

    /* Find PID number */
	ps = strstr(DevName, "pid_");
    if(!ps)
    	return FALSE;
    ps += 4;

    /* Check PID number string */
    if(0 != strncmp(ps, g_DevPID, 4))
    	return FALSE;

	return TRUE;
}

/*******************************************************************************
Do the required PnP things in order to find available proper device
in the system at this time.

return HANDLE if the open and initialization was successful,
else INVLAID_HANDLE_VALUE.
*******************************************************************************/
IO_RES OpenDevice(void)
{
	HDEVINFO hDevInfo = INVALID_HANDLE_VALUE;
	SP_INTERFACE_DEVICE_DATA DevInfoData;
    PSP_INTERFACE_DEVICE_DETAIL_DATA DevDataDetail = NULL;
    CHAR DevName[MAX_PATH] = { 0 };
    ULONG pre_len = 0, req_len = 0, i = 0;

    /* Open a handle to the plug and play dev node. */
   	if(INVALID_HANDLE_VALUE == (hDevInfo = SetupDiGetClassDevs(&g_DevGUID, NULL, NULL, (DIGCF_PRESENT | DIGCF_INTERFACEDEVICE))))
    	return FAIL_SETUPDIGETCLASSDEVS;

   	/* Take a wild guess at the number of devices we have;
   	Be prepared to realloc and retry if there are more than we guessed */
   	DevInfoData.cbSize = sizeof(SP_INTERFACE_DEVICE_DATA);

    /* SetupDiEnumDeviceInterfaces() returns information about device interfaces
    exposed by one or more devices. Each call returns information about one interface;
	the routine can be called repeatedly to get information about several interfaces
    exposed by one or more devices. */
    while(SetupDiEnumDeviceInterfaces(hDevInfo, 0, &g_DevGUID, i, &DevInfoData))
   	{
        /*  */
        g_hWritePipe = INVALID_HANDLE_VALUE;
        g_hReadPipe = INVALID_HANDLE_VALUE;
		
		/* allocate a function class device data structure to receive the
    	goods about this particular device. */
    	SetupDiGetInterfaceDeviceDetail(
        	hDevInfo, &DevInfoData,
            NULL, 	/* probing so no output buffer yet */
            0,		/* probing so output buffer length of zero */
            &req_len,
            NULL);	/* not interested in the specific dev-node */

    	pre_len = req_len;
    	if(NULL == (DevDataDetail = (PSP_INTERFACE_DEVICE_DETAIL_DATA)malloc(pre_len)))
        	return FAIL_MALLOC_DEVDATADETAIL;
    	DevDataDetail->cbSize = sizeof(SP_INTERFACE_DEVICE_DETAIL_DATA);

    	/* Retrieve the information from Plug and Play. */
    	if(SetupDiGetInterfaceDeviceDetail(hDevInfo, &DevInfoData, DevDataDetail, pre_len, &req_len, NULL))
    	{
        	if(Check_VID_PID(DevDataDetail->DevicePath))
        	{
            	/*Check device name lenght */
                if(strlen(DevDataDetail->DevicePath) +  9 < MAX_PATH)
                {
            		/* Make path for write pipe */
        			strcpy(DevName, DevDataDetail->DevicePath);
					strcat(DevName, "\\PIPE00");

                	/* Open Write pipe */
            		g_hWritePipe = CreateFile(DevName, GENERIC_READ | GENERIC_WRITE,
                  		0, /* Exclusive access */
                  		NULL,	/* no SECURITY_ATTRIBUTES structure */
                  		OPEN_EXISTING,	/* No special create flags */
                  		FILE_FLAG_OVERLAPPED, /* Asunchronous operations */
                  		NULL); /* No template file */
                }
            }
        }
        free(DevDataDetail);
        if(INVALID_HANDLE_VALUE != g_hWritePipe)
        	break;
        i++;	/* Next index */
    }

    /* Destroys a device information set and frees all associated memory. */
    SetupDiDestroyDeviceInfoList(hDevInfo);
   	if(INVALID_HANDLE_VALUE == g_hWritePipe)
    {
    	if(0 == DevName[0])
    		return NOT_FOUND;
        else
    		return OPEN_FAIL;
    }
    return RES_OK;
}

/*******************************************************************************
Write data to device
*******************************************************************************/
void CloseDevice(void)
{
    CloseHandle(g_hWritePipe);
}

/*******************************************************************************
Write data to device
*******************************************************************************/
IO_RES WriteData(PVOID Data, ULONG Size)
{
	OVERLAPPED sync = {0,};
    ULONG xfer, err;
    IO_RES res = RES_OK;

    /* Create event */
    sync.hEvent = CreateEvent(0, TRUE, FALSE, NULL);
    if(sync.hEvent == NULL)
    	return WR_FAIL_CREATE_SYNC;

    /* Write data */
    if(!WriteFile(g_hWritePipe, Data, Size, &xfer, &sync))
    {
    	/* Check error */
        if(ERROR_IO_PENDING == (err = GetLastError()))
        {
            /* Pending write operation */
            err = WaitForSingleObject(sync.hEvent, CFG_IO_TIMEOUT);
            switch(err)
            {
        		case WAIT_OBJECT_0:
               		if(!GetOverlappedResult(g_hWritePipe, &sync, &xfer, TRUE))
                	   	res = WR_FAIL_GET_OVERLAPPED_RESULT;
                    break;
                case WAIT_TIMEOUT:
                	CancelIo(g_hWritePipe); 	/* Cancelled IO operation */
                    ResetEvent(sync.hEvent);
                	res = WRITE_TIMEOUT;
                    break;
                case WAIT_ABANDONED:
                default:
                	res = WR_FAIL_WAIT_FOR_SINGLE_OBJECT;
            }
        }
        else
        	res = WR_FAIL_WRITE_OPERATION;
    }
    ResetEvent(sync.hEvent);
    CloseHandle(sync.hEvent);
	return res;
}

/*******************************************************************************
Read data from device
*******************************************************************************/
IO_RES ReadData(PVOID Data, ULONG Size)
{
	OVERLAPPED sync = {0,};
    ULONG xfer, err;
    IO_RES res = RES_OK;

    /* Create event */
    sync.hEvent = CreateEvent(0, TRUE, FALSE, NULL);
    if(sync.hEvent == NULL)
    	return RD_FAIL_CREATE_SYNC;

	/* Read data */
    if(!ReadFile(g_hWritePipe, Data, Size, &xfer, &sync))
    {
    	/* Check error */
        if(ERROR_IO_PENDING == (err = GetLastError()))
        {
            /* Set pending operation */
            err = WaitForSingleObject(sync.hEvent, CFG_IO_TIMEOUT);
        	switch(err)
            {
            	case WAIT_OBJECT_0:	/* Wait read operation complete */
                	if(!GetOverlappedResult(g_hWritePipe, &sync, &xfer, TRUE))
                       res = RD_FAIL_GET_OVERLAPPED_RESULT;
                	break;
                case WAIT_TIMEOUT:
                	CancelIo(g_hWritePipe); 	/* Cancelled IO operation */
                    ResetEvent(sync.hEvent);
                	res = READ_TIMEOUT;
                    break;
                case WAIT_ABANDONED:
                default:
                	res = RD_FAIL_WAIT_FOR_SINGLE_OBJECT;
	        }
        }
        else
        	res = RD_FAIL_WRITE_OPERATION;
    }

    CloseHandle(sync.hEvent);
	return res;
}

