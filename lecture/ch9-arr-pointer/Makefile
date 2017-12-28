TARGET = overflow

CC = gcc-mp-6
SRC = $(shell ls [^_]*.c)
DGB_DIR=$(SRC:.c=.dSYM)

CFLAGS = -g -save-temps -Wl,-map,$@.map
$(TARGET): $(SRC:.c=.o)
	$(CC) $(CFLAGS) -o $@ $?

clean:
	rm -fr $(TARGET)
	rm -fr *.s *.i *.o $(DGB_DIR)
	rm -fr *.bc
	rm -fr *.map
	rm -fr a.out*
	rm -fr *.dSYM
