#ifndef SRC_MY_CAT_H_
#define SRC_MY_CAT_H_

#include <stdio.h>
#include <string.h>

struct Flag {
  int flag_b;
  int flag_e;
  int flag_n;
  int flag_s;
  int flag_t;
  int flag_v;
  int flag_E;
  int flag_T;
  int flag_numberFiles;
  int flag_praser_error;
};

void initFlagsZero(struct Flag *);
void readPrintConsole();
void praserFlagsString(int argc, char *argv[], struct Flag *);
void readPrintFilesF(int argc, char *argv[], struct Flag *);

#endif  // SRC_MY_CAT_H_
