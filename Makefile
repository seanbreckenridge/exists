CC=gcc
CFLAGS=-O3 -Wall

all: exists

install: exists
	sudo cp ./exists /usr/local/bin/
	sudo cp ./exists.1 /usr/local/share/man/man1/

exists: exists.c
	$(CC) $(CFLAGS) -o exists exists.c

clean:
	rm -f exists

