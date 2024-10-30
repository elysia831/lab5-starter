all: number_server

number_server: number-server.c http-server.h http-server.c
	gcc -std=c11 -Wall -Wno-unused-variable -fsanitize=address -g number-server.c http-server.h http-server.c

clean:
	rm -f number_server
