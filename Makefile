all: fpthread.so

fpthread.so: fpthread.c
	gcc -fPIC -shared -o $@ $^

clean:
	rm -f fpthread.so