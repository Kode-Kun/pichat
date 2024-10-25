CC=gcc
TARGETC=build/client
TARGETS=build/server
SRC=src/main.c include/*
CFLAGS=-lm -lpthread -lrt -lX11 -ldl -std=c99
CLIENT_FLAG=-DCLIENT_IMPLEMENTATION
SERVER_FLAG=-DSERVER_IMPLEMENTATION

client:
	${CC} -o ${TARGETC} ${SRC} ${CFLAGS} ${CLIENT_FLAG}
server:
	${CC} -o ${TARGETS} ${SRC} ${CFLAGS} ${SERVER_FLAG}
clean:
	rm -f build/main build/server build/client
