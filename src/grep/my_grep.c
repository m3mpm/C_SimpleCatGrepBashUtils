#include "my_grep.h"

int main(int argc, char *argv[]) {
  int errFileName = 1;
  struct Flag flags;
  char fileName[SIZE_FILE_LINE] = {'\0'};
  char searchLine[SIZE_STRING];
  nullString(searchLine);
  initFlagsZero(&flags);
  parserGrep(argc, argv, &flags, searchLine, fileName);
  createSearchLine(argc, argv, &flags, searchLine, fileName, &errFileName);
  if (flags.errFlag == 1 || argc <= 2) {
    fprintf(stderr,
            "usage: ./my_grep [-e|-i|-v|-c|-n|-h|-s|-f|-o] [search string] "
            "[file ...]");
  } else {
    my_grep(argc, argv, &flags, searchLine, fileName, errFileName);
  }
  nullString(searchLine);
  return 0;
}

void nullString(char *string) {
  for (int i = 0; i < SIZE_STRING; i++) {
    string[i] = '\0';
  }
  string[SIZE_STRING - 1] = '\0';
}

void initFlagsZero(struct Flag *flags) {
  (*flags).e = 0;
  (*flags).i = 0;
  (*flags).v = 0;
  (*flags).c = 0;
  (*flags).l = 0;
  (*flags).n = 0;
  (*flags).h = 0;
  (*flags).s = 0;
  (*flags).f = 0;
  (*flags).o = 0;
  (*flags).errFlag = 0;
  (*flags).yesFlags = 0;
}

void parserGrep(int argc, char *argv[], struct Flag *flags, char *searchLine,
                char *fileName) {
  int rez = 0;
  int option_index = -1;
  const char *short_options = "e:ivclnhsf:o";
  const struct option long_options[] = {{NULL, 0, NULL, 0}};
  opterr = 0;
  while ((rez = getopt_long(argc, argv, short_options, long_options,
                            &option_index)) != -1) {
    if (rez == 'e') {
      flags->e = 1;
      flags->yesFlags = 1;
      flags->f = 0;
      cat_strings(searchLine, optarg);
      cat_strings(searchLine, "|");
      *optarg = '\0';
    } else if (rez == 'i') {
      flags->i = 1;
      flags->yesFlags = 1;
    } else if (rez == 'v') {
      flags->v = 1;
      flags->yesFlags = 1;
    } else if (rez == 'c') {
      flags->c = 1;
      flags->yesFlags = 1;
    } else if (rez == 'l') {
      flags->l = 1;
      flags->yesFlags = 1;
    } else if (rez == 'n') {
      flags->n = 1;
      flags->yesFlags = 1;
    } else if (rez == 'h') {
      flags->h = 1;
      flags->yesFlags = 1;
    } else if (rez == 's') {
      flags->s = 1;
      flags->yesFlags = 1;
    } else if (rez == 'f') {
      flags->f = 1;
      flags->yesFlags = 1;
      flags->e = 0;
      snprintf(fileName, SIZE_FILE_LINE, "%s", optarg);
      *optarg = '\0';
    } else if (rez == 'o') {
      flags->o = 1;
      flags->yesFlags = 1;
    } else if (rez == '?') {
      flags->errFlag = 1;
    }
    option_index = -1;
  }
}

void cat_strings(char *dest, char *src) {
  while (*dest != '\0') dest++;
  while (((*dest++ = *src++)) != '\0') continue;
}

void createSearchLine(int argc, char *argv[], struct Flag *flags,
                      char *searchLine, char *fileName, int *errFileName) {
  int sampleFlag = 0;
  if ((*flags).e == 1) {
    sampleFlag = 1;
    if (searchLine[(strlen(searchLine) - 1)] == '|')
      searchLine[(strlen(searchLine) - 1)] = '\0';
  }
  if ((*flags).f == 1) {
    FILE *file = fopen(fileName, "r");
    if (file == NULL) {
      *errFileName = 0;
    } else {
      *errFileName = 1;
      char ch;
      int i = 0;
      while ((ch = getc(file)) != EOF) {
        if (ch == '\n') {
          *(searchLine + i) = '|';
        } else {
          *(searchLine + i) = ch;
        }
        i++;
      }
      if (searchLine[strlen(searchLine) - 1] == '\n' ||
          searchLine[strlen(searchLine) - 1] == '|')
        searchLine[(strlen(searchLine) - 1)] = '\0';
      fclose(file);
    }
    sampleFlag = 1;
  }
  if (sampleFlag == 0) {
    for (int i = 1; i < argc; i++) {
      if (argv[i][0] != '-' && argv[i][0]) {
        if (sampleFlag == 0) {
          snprintf(searchLine, SIZE_STRING, "%s", argv[i]);
          *argv[i] = '\0';
          sampleFlag = 1;
          continue;
        }
      }
    }
  }
}
void my_grep(int argc, char *argv[], struct Flag *flags, char *searchLine,
             char *fileName, int errFileName) {
  char bufLine[SIZE_STRING];
  nullString(bufLine);
  regex_t regex;

  if ((*flags).yesFlags == 1) {
    int count_files = 0;
    for (int i = 1; i < argc; i++) {
      if (argv[i][0] != '-' && argv[i][0]) {
        count_files += 1;
      }
    }
    if ((*flags).i == 1)
      regcomp(&regex, searchLine, REG_ICASE | REG_EXTENDED);
    else
      regcomp(&regex, searchLine, REG_EXTENDED);

    for (int i = 1; i < argc; i++) {
      if (argv[i][0] != '-' && argv[i][0]) {
        FILE *file = NULL;
        if ((file = fopen(argv[i], "r")) != NULL && errFileName == 1) {
          int numberLine = 1;
          int numberFind = 0;

          while ((fgets(bufLine, SIZE_STRING, file)) != NULL) {
            int rezregex;
            int compare = 0;
            if ((*flags).v == 1) compare = REG_NOMATCH;
            rezregex = regexec(&regex, bufLine, 0, NULL, 0);
            if (rezregex == compare) {
              numberFind += 1;
              if (argc > 4 && (*flags).yesFlags == 1 && (*flags).h == 0 &&
                  (*flags).c == 0 && (*flags).l == 0 && count_files > 1) {
                printf("%s:", argv[i]);
              }
              if ((*flags).n == 1 && (*flags).c == 0 && (*flags).l == 0) {
                printf("%d:", numberLine);
              }
              if ((*flags).c == 0 && (*flags).l == 0 && (*flags).o == 0) {
                printf("%s", bufLine);
                if (bufLine[(strlen(bufLine) - 1)] != '\n') {
                  printf("\n");
                }
              }
              if ((*flags).c == 0 && (*flags).l == 0 && (*flags).o == 1) {
                int countb = 0;
                int lens = strlen(searchLine);
                while (bufLine[countb] != '\0') {
                  if (bufLine[countb] == searchLine[0]) {
                    int compares = 0;
                    for (int j = 0; j < lens; j++) {
                      if (bufLine[countb + j] == searchLine[j]) {
                        compares += 1;
                      }
                    }
                    if (compares == (lens)) {
                      printf("%s", searchLine);
                      printf("\n");
                    }
                  }
                  countb += 1;
                }
              }
            }
            numberLine += 1;
            nullString(bufLine);
          }

          if ((*flags).c == 1 || (*flags).l == 1) {
            if (argc > 4 && (*flags).c == 1 && (*flags).h == 0)
              printf("%s", argv[i]);
            if (argc > 3 && (*flags).l == 1 && numberFind != 0) {
              printf("%s", argv[i]);
              printf("\n");
            }
            if ((*flags).l == 0) {
              if (argc > 4 && (*flags).h == 0) {
                printf(":");
              }
              printf("%d", numberFind);
              printf("\n");
            }
          }

          fclose(file);
        } else {
          if ((*flags).s != 1) {
            if (errFileName == 0)
              fprintf(stderr, "grep: %s: No such file or directory\n",
                      fileName);
            else
              fprintf(stderr, "grep: %s: No such file or directory\n", argv[i]);
          }
        }
      }
    }
    regfree(&regex);
    nullString(bufLine);
  } else {
    for (int i = 1; i < argc; i++) {
      if (argv[i][0] != '-' && argv[i][0]) {
        FILE *file = fopen(argv[i], "r");
        if (file != NULL) {
          while ((fgets(bufLine, SIZE_STRING, file)) != NULL) {
            if (strstr(bufLine, searchLine)) {
              if (argc > 3) {
                printf("%s:", argv[i]);
              }
              printf("%s", bufLine);
            }
            nullString(bufLine);
          }
          fclose(file);
        } else {
          fprintf(stderr, "grep: %s: No such file or directory\n", argv[i]);
        }
      }
    }
    nullString(bufLine);
  }
}
