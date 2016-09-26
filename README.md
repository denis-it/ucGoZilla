# ucGoZilla

This is a fork of original Windows-only flash tool for [ucGoZilla](http://prottoss.com/projects/ucgozilla/ucgozilla.htm) AVR programmer.

## Modifications

1. Cross-platform support implemented, underlying libraries replaced. `libusb-1.0` is being used now (you will additionally need `libusb0` and `libusbK` for Windows). You will find these libraries inside `bin` directory.

1. Windows driver changed. Due to `libusb0` usage Windows driver has been replaced with `libusb0.sys`. `INF`-file has been rewritten (update from old version supported). `SYS` and `INF` files are placed inside `drv` directory.

1. File extensions replaced with `.c` (because there are no C++ code).

1. `ISO C99` standard is being used.

1. Useless comments removed.

1. Custom data types (`PVOID`, `UCHAR`, etc.) extracted to `types.h`.

1. Borland `conio` library replaced with standard IO library.

1. Device interaction code (`inout.h`, `inout.c`) has been completely rewritten using `libusb-1.0` library (`libusb-1.0` header is placed inside `include` directory).

1. Borland-specific files has been removed, the project builds with `make` utility (use `Makefile.win` with [MinGW](http://www.mingw.org/) and [Dev C++](https://sourceforge.net/projects/orwelldevcpp/) on Windows).

# Additional info

This is 32-bit project (libraries inside `dll` directory are 32-bit also).

Special thanks to [Prottos](http://prottoss.com/).
