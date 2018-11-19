COMPILER = g++
CFLAGS = -g -c -Wall

all:
	$(COMPILER) $(CFLAGS) myServer.cpp -o server.o
	$(COMPILER) -g server.o -o proxy

	$(COMPILER) $(CFLAGS) myClient.cpp -o client.o
	$(COMPILER) -g client.o -o client
