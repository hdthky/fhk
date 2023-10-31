ifeq ($(origin CC),default)
CC = gcc
endif

all: fpthread.so

fpthread.so: fpthread.c
	$(CC) -fPIC -shared -o $@ $^

clean:
	rm -f fpthread.so