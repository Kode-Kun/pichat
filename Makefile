CC=gcc
TARGET=build/main
SRC=src/main.c include/*
CFLAGS=-lm -lpthread -lrt -lX11 -ldl -std=c99

default:
	${CC} -o ${TARGET} ${SRC} ${CFLAGS}
clean:
	rm -f build/main
