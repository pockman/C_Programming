TARGET = fpoint
SRC = $(shell ls *.c)

$(TARGET) : $(SRC:.c=.o)
	gcc -o $@ $?

clean:
	rm $(TARGET)
