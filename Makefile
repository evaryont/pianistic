CC = gcc
LDLIBS = -lSDL_mixer -l X11 -lXtst
SDLCONFIG = -g ${shell sdl-config --cflags --libs}

all: pianistic

pianistic: pianistic.c
	$(CC) -o $@ $< ${LDLIBS} ${SDLCONFIG}
