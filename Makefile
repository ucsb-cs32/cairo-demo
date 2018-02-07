CC=g++                                                                                              
#Compiler Optionen 

MAIN= cairoDemo

#the cairo header directory
CAIRO_CFLAGS=$(shell pkg-config --cflags cairo)
CAIRO_LIBS=$(shell pkg-config --libs cairo)

CXXFLAGS= -Wall -DEBUG $(CAIRO_CFLAGS)

#actual compiling

all: $(MAIN)

cairoDemo: cairoDemo.o
	$(CC) $(CXXFLAGS) -o $@ $< $(CAIRO_CFLAGS) $(CAIRO_LIBS)

clean:
	/bin/rm -f *.o $(MAIN)
