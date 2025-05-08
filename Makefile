.PHONY: all prepare compile link clean

CC=g++
CFLAGS=-c
INCLUDES=-Iinclude
PROJECT_NAME=gmt

all: prepare compile link

prepare: obj

obj:
	if [ ! -d "obj" ]; then mkdir obj; fi

compile: obj/main.o obj/game.o obj/hero.o obj/map.o

link: gmt

obj/main.o: src/main.cpp
	$(CC) $(CFLAGS) $(INCLUDES) src/main.cpp -o $@

obj/game.o: src/game.cpp
	$(CC) $(CFLAGS) $(INCLUDES) src/game.cpp -o $@

obj/hero.o: src/hero.cpp
	$(CC) $(CFLAGS) $(INCLUDES) src/hero.cpp -o $@

obj/map.o: src/map.cpp
	$(CC) $(CFLAGS) $(INCLUDES) src/map.cpp -o $@

gmt: obj/main.o obj/game.o obj/hero.o obj/map.o
	$(CC) obj/main.o obj/game.o obj/hero.o obj/map.o -o $@

clean:
	rm -rf obj gmt