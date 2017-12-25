CC = gcc-mp-6
SRC = $(shell ls *.c)
TARGET=sizeof sizeof.386
DGB_DIR=$(SRC:.c=.dSYM)

CFLAGS = -g -save-temps -Wl,-map,$@.map
all: $(TARGET)

sizeof: sizeof.c
	${CC} $(CFLAGS) -o $@ $<


sizeof.386: sizeof.c
	${CC} $(CFLAGS) -arch i386 -o $@ $<

clean:
	rm -fr $(TARGET)
	rm -fr *.s *.i *.o $(DGB_DIR)
	rm -fr *.bc
	rm -fr *.map
