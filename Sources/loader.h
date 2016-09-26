/*******************************************************************************
File: loader.h

Creted by PROTTOSS
Mail to PROTTOSS@mail.ru

Routines for know size and address for loader
*******************************************************************************/

#ifndef LOADER_H
#define LOADER_H
#include <stdio.h>

/*******************************************************************************
Public
*******************************************************************************/

#pragma inline
unsigned char *LDR_GetPtr(void)	/* Get loader pointer */
{
	extern unsigned char loader[];
    return loader;
};

int LDR_GetSize(void)	/* Return loader code array size in bytes */
#if 0
{
	return (int)(sizeof(loader));
}
#endif
;

/*******************************************************************************
*******************************************************************************/
#endif /* #ifndef LOADER_H */
