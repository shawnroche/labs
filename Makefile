CC=g++
CFLAGS= -std=c++11 -pthread -I


%.o: %.cpp
	$(CC) -c -o $@ $< $(CFLAGS) $(DEBUGFLAGS)

BUILD:Semaphore.o signal.o
	$(CC)-o signal Semaphore.o signal.o $(CFLAGS) $(DEBUGFLAGS)

DEBUG: Semaphore.o signal.o
	DEBUGFLAGS= -g -O0
	$(CC) -o signal Semaphore.o signal.o $(CFLAGS) $(DEBUGFLAGS)

CLEAN:
	rm *.o

INSTALL:
	cp ./signal ~/bin/
