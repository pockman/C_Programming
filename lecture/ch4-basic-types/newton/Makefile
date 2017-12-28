CC = gcc-mp-6
SRC = $(shell ls *.c)
TARGET=newton
DGB_DIR=$(SRC:.c=.dSYM)

CFLAGS = -g -O2 -save-temps -Wl,-map,$@.map
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $@ $?

clean:
	rm -fr $(TARGET)
	rm -fr *.s *.i *.o $(DGB_DIR)
	rm -fr *.bc
	rm -fr *.map
	rm -fr a.out*
	rm -fr *.dSYM
