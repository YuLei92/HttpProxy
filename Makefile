COMPILER = g++
CFLAGS = -g -c -Wall

all:
	$(COMPILER) $(CFLAGS) myServer.cpp -o server.o
	$(COMPILER) -g server.o -o proxy
