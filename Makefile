#/*
# *****************************
# *  214 Systems Programming  *
# *  Fall 2014                *
# *  Author: Amar Bakir       *
# *****************************
# */

CCFLAGS = -Wall -g -o

all: lib compile run

lib: sorted-list.c
	gcc -c sorted-list.c
	ar rv libsl.a sorted-list.o

compile:
	gcc $(CCFLAGS) slint mainint.c ./libsl.a
	gcc $(CCFLAGS) slintalloc mainintalloc.c ./libsl.a
	gcc $(CCFLAGS) sldouble maindouble.c ./libsl.a
	gcc $(CCFLAGS) sldoublealloc maindoublealloc.c ./libsl.a
	gcc $(CCFLAGS) slstring mainstring.c ./libsl.a
	gcc $(CCFLAGS) slstringalloc mainstringalloc.c ./libsl.a

run: 
	./slint
	./slintalloc
	./sldouble
	./sldoublealloc
	./slstring
	./slstringalloc

clean:
	rm -rf *.o
	rm -rf *.a

