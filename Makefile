CC=gcc
CFLAGS=-O3 -Wall

all: exists

install: exists
	mkdir -p ~/.local/bin/
	mkdir -p ~/.local/share/man/man1/
	cp ./exists ~/.local/bin/
	cp ./exists.1 ~/.local/share/man/man1/

exists: exists.c
	$(CC) $(CFLAGS) -o ./exists ./exists.c

clean:
	rm -f ./exists

