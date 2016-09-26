MAKE		= make

CC			= gcc
CWARN		= -Wall -Wextra -Werror
CINCLUDES	= -I. -I/usr/include/libusb-1.0
CFLAGS		= $(CWARN) $(CINCLUDES) -std=c99
LDFLAGS		= -lusb-1.0

TARGET		= ./ucGoZilla

SOURCES		= $(wildcard ./*.c)
OBJECTS		= $(SOURCES:.c=.o)

TAGSFILE	= ./tags
TAGSCMD		= ctags -o $(TAGSFILE) -a -R --c++-kinds=+p --fields=+iaS --extra=+q .

RM			= rm -fv

build: tags_build $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

clean: tags_clean
	$(RM) $(OBJECTS) $(TARGET)

rebuild: clean build

tags_build:
	$(TAGSCMD)

tags_clean:
	$(RM) $(TAGSFILE)

.SUFFIXES: .c .o

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

