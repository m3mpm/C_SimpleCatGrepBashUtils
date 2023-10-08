#ifndef SRC_MY_GREP_H_
#define SRC_MY_GREP_H_

#define SIZE_STRING 9000
#define SIZE_FILE_LINE 1024
#define SIZE_TMP_F 100

#include <getopt.h>
#include <regex.h>
#include <stdio.h>
#include <string.h>

struct Flag {
  int e;
  int i;
  int v;
  int c;
  int l;
  int n;
  int h;
  int s;
  int f;
  int o;
  int errFlag;
  int yesFlags;
};

void nullString(char *string);
void initFlagsZero(struct Flag *);
// void cat_strings(char *searchLine, char *optarg);
void cat_strings(char *searchLine, char *optarg);
void parserGrep(int argc, char *argv[], struct Flag *, char *searchLine,
                char *fileName);
void createSearchLine(int argc, char *argv[], struct Flag *, char *searchLine,
                      char *fileName, int *errFileName);
void my_grep(int argc, char *argv[], struct Flag *, char *searchLine,
             char *fileName, int errFileName);
void flag_o(char *bufLine, char *searchLine);

#endif  //  SRC_MY_GREP_H_
