CFLAGS 	= -Wall -Werror -Wextra #-g
DEPS 	= Makefile
NAME 	= liblist.a 


all: 	$(NAME)
re:		fclean all

list.o: $(DEPS) list.h list.c
	cc $(CFLAGS) -c list.c -o list.o

$(NAME): $(DEPS) list.o 
	ar -rcs $(NAME) list.o

test: $(NAME) test.c
	cc $(CFLAGS) test.c $(NAME) -o test 

run-test: test
	valgrind ./test

clean: $(DEPS)
	rm -rf ./test test.dSYM list.o

fclean: $(DEPS)	clean 
	rm -rf $(NAME)


