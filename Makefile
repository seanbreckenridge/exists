CC=gcc
CFLAGS=-O3 -Wall
LOCAL_BIN="${HOME}/.local/bin/"
LOCAL_MAN="${HOME}/.local/share/man/man1/"

all: exists

install: exists
	mkdir -p $(LOCAL_MAN) $(LOCAL_BIN)
	cp ./exists $(LOCAL_BIN)
	cp ./exists.1 $(LOCAL_MAN)

exists: exists.c
	$(CC) $(CFLAGS) -o ./exists ./exists.c

clean:
	rm -f ./exists
