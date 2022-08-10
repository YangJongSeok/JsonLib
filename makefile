# Makefile

all : libjson.so

libjson.so : json.o
	gcc -shared -Wl -o libjson.so json.o

json.o : json.c
	gcc -Wall -c -o json.o json.c -fPIC

clean :
	rm -rf *.o libjson