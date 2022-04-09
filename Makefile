SHELL := /bin/bash

all:		compiler
	source ./compile.sh && \
	compile spec.ç spec.c -I. && \
	cc -I. spec.c && ./a.out
# TODO: delete macro after last iteration
compiler:	compiler.c ft
	cc -g -I. compiler.c -o çc
nocedille:
	cp spec.ç spec.c && cc -I. spec.c && ./a.out
diff:
	make > a.txt
	make nocedille > b.txt
	diff a.txt b.txt
clean:
	rm -rf spec_compiler
	rm -rf a.txt
	rm -rf b.txt
	rm -rf spec.c
	rm -rf spec_compiler.c
	rm -rf a.out
	rm -rf *.dSYM
fclean:	clean
	rm -rf çc
