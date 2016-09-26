#include <stdio.h>
#include <libusb.h>
#include <assert.h>
#include <string.h>

#include "inout.h"

#define VERIFY(x) \
	assert((x) == 0)

#define SUCCESS(x) \
do \
{ \
	const int r = x; \
	if (r != LIBUSB_SUCCESS) \
	{ \
		printf("%s == %s\r\n", #x, libusb_error_name(r)); \
		assert(r == LIBUSB_SUCCESS); \
	} \
} \
while(0)

libusb_context* context = NULL;

libusb_device_handle* handle = NULL;
const int interface = 1;

void DetachKernelDriver(libusb_device_handle* handle, const int interface)
{
	const int kernel_driver_active = libusb_kernel_driver_active(handle, interface);
	assert(kernel_driver_active  == 0
		   || kernel_driver_active == 1
		   || kernel_driver_active == LIBUSB_ERROR_NOT_SUPPORTED);
	if (kernel_driver_active == 1)
	{
		VERIFY(libusb_detach_kernel_driver(handle, interface));
	}
}

IO_RES OpenDevice(void)
{
	IO_RES res = NOT_FOUND;

	VERIFY(libusb_init(&context));
	libusb_set_debug(context, 0);

	libusb_device** devices = NULL;
	const ssize_t devices_count = libusb_get_device_list(context, &devices);
	assert(devices_count >= 0 && devices != NULL);

	for (int i = 0; i < devices_count; ++i)
	{
		libusb_device* device = devices[i];
		assert(device != NULL);

		struct libusb_device_descriptor desc;
		VERIFY(libusb_get_device_descriptor(device, &desc));

		const uint16_t idVendor = 0x03eb;	// VID & PID for
		const uint16_t idProduct = 0x6124;	// SAM-BA device

		if (desc.idVendor == idVendor && desc.idProduct == idProduct)
		{
			assert(device != NULL);

			assert(handle == NULL);
			VERIFY(libusb_open(device, &handle));
			assert(handle != NULL);

			DetachKernelDriver(handle, interface);
			VERIFY(libusb_claim_interface(handle, interface));

			res = RES_OK;

			break;
		}
	}

	libusb_free_device_list(devices, 1);
	return res;
}

void CloseDevice(void)
{
	if(handle != NULL)
	{
		libusb_close(handle);
		handle = NULL;
	}

	if(context != NULL)
	{
		libusb_exit(context);
		context = NULL;
	}
}

IO_RES WriteData(PVOID Data, ULONG Size)
{
	const int WriteEndpointAddr = 1;

	int transferred = 0;
	const unsigned int timeout = 10000;

	SUCCESS(libusb_bulk_transfer(handle, WriteEndpointAddr, Data, Size, &transferred, timeout));
	assert((ULONG)transferred == Size);
	
	return RES_OK;
}

IO_RES ReadData(PVOID Data, ULONG Size)
{
	return ReadDataEx(Data, Size, NULL);
}

IO_RES ReadDataEx(PVOID Data, ULONG Size, ULONG* Readed)
{
	const int ReadEndpointAddr = 130;
	const unsigned int timeout = 10000;

	int transferred = 0;

	SUCCESS(libusb_bulk_transfer(handle, ReadEndpointAddr, Data, Size, &transferred, timeout));
	if (Readed != NULL)
	{
		*Readed = (ULONG)transferred;
	}

	return RES_OK;
}
