# Makefile
LDFLAGS=-lncurses

TARGET=snake

SRC=playground.c snake.c
OBJ=$(SRC:.c=.o)


$(TARGET): $(OBJ)
	cc $? -o $@ $(LDFLAGS)

clean:
	rm -fr *.o
	rm -fr $(TARGET) 


run:
	./$(TARGET)
