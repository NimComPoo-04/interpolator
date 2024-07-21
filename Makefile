CC = gcc
CFLAGS = -Wall -Wextra -ggdb -O0

SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

all: interp.exe

interp.exe: $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	rm -rf *.o interp.exe
