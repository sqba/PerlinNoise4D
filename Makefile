CC = gcc
#CFLAGS = -g # debug, no warnings
CFLAGS = -Wall -g # debug
#CFLAGS = -Wall -O # release

INCLUDES =

LFLAGS = -L/usr/local/lib

LIBS = -lm -lglut -lGLU -lGL -lgomp -lGLEW

SRCS = PNoise4D.c volume.c

MAIN = PNoise4D

OBJS = $(SRCS:.c=.o)

DEFINES = -D MULTITHREAD_ON

all: $(OBJS) 
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS) $(DEFINES)

clean:
	$(RM) *.o *~ $(MAIN)


