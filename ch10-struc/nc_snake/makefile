# Makefile
LDFLAGS=-lncurses

TARGET=snake

SRC=playground.c snake.c
OBJ=$(SRC:.c=.o)


$(TARGET): $(OBJ)

clean:
	rm -fr *.o
	rm -fr snake


run:
	./snake
