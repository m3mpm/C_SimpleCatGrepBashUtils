CC = gcc
CFLAGS = -Wall -Werror -Wextra -std=c11
OS = $(shell uname)
ifeq ($(OS), Linux)
	LIBS = -lcheck -lpthread -lrt -lm -lsubunit
else
	LIBS = -lcheck
endif
.PHONY: clean

all: my_grep

my_grep: my_grep.c my_grep.h
	$(CC) $(CFLAGS) my_grep.c -o my_grep

test: clean my_grep
	sh test_my_grep.sh

clean:
	rm -rf *.o a.out my_grep

rebuild: clean all