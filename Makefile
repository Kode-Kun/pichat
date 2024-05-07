CC=gcc
TARGET=build/main
SRC=src/main.c 
INCL=include/*
CFLAGS=-lm -lpthread -lrt -lX11 -ldl -std=c99

default:
	${CC} -o ${TARGET} ${INCL} ${SRC} ${CFLAGS}
clean:
	rm -f build/main
