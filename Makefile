CC=gcc
TARGETC=build/client
TARGETS=build/server
SRC=src/main.c
CFLAGS=-lraylib -lm -lpthread -lrt -lX11 -ldl -std=c99
INCLUDE=-Iinclude/
CLIENT_FLAG=-DCLIENT_IMPLEMENTATION
SERVER_FLAG=-DSERVER_IMPLEMENTATION

client:
	${CC} -o ${TARGETC} ${SRC} ${INCLUDE} ${CFLAGS} ${CLIENT_FLAG}
server:
	${CC} -o ${TARGETS} ${SRC} ${INCLUDE} ${CFLAGS} ${SERVER_FLAG}
clean:
	rm -f build/main build/server build/client
