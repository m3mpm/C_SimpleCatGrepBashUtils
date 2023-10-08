CC = gcc
CFLAGS = -Wall -Werror -Wextra -std=c11
OS = $(shell uname)
ifeq ($(OS), Linux)
	LIBS = -lcheck -lpthread -lrt -lm -lsubunit
else
	LIBS = -lcheck
endif
.PHONY: clean

all: my_cat

my_cat: my_cat.c my_cat.h
	$(CC) $(CFLAGS) my_cat.c -o my_cat

test: clean my_cat
	sh test_my_cat.sh

clean:
	rm -rf *.o a.out my_cat

rebuild: clean all