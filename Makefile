CC=gcc
CFLAGS=-O -Wall

all: exists

exists: exists.c
	$(CC) $(CFLAGS) -o exists exists.c

clean:
	rm -f exists

