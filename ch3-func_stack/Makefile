CC = gcc-mp-6
SRC = $(shell ls *.c)
TARGET=$(SRC:.c=)
DGB_DIR=$(SRC:.c=.dSYM)



##CFLAGS = -O  -g -save-temps -Wl,-map,$@.map
CFLAGS =  -std=c99 -g -save-temps -Wl,-map,$@.map
all: $(TARGET)

clean:
	rm -fr $(TARGET)
	rm -fr *.s *.i *.o $(DGB_DIR)
	rm -fr *.bc
	rm -fr *.map
