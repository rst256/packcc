all: clean packcc

clean:
	rm -rf bin calc.h calc.c

packcc:
	mkdir bin
	gcc -o bin/packcc src/packcc.c

example:
	bin/packcc calc.peg
	gcc -o bin/calc calc.c
