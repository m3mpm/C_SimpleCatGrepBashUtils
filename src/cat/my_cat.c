#include "my_cat.h"

int main(int argc, char *argv[]) {
  struct Flag flags;
  initFlagsZero(&flags);
  if (argc == 1 || (argc == 2 && !strcmp(*(argv + 1), "-"))) {
    readPrintConsole();
  } else if (argc >= 2) {
    praserFlagsString(argc, argv, &flags);
    if (flags.flag_praser_error != 1) {
      if (flags.flag_b == 0 && flags.flag_e == 0 && flags.flag_n == 0 &&
          flags.flag_s == 0 && flags.flag_t == 0 && flags.flag_v == 0 &&
          flags.flag_T == 0 && flags.flag_E == 0 &&
          flags.flag_numberFiles != 0) {
        readPrintFilesF(argc, argv, &flags);
      } else {
        readPrintFilesF(argc, argv, &flags);
      }
    } else {
      fprintf(stderr, "usage: ./my_cat [-benstvTE] [file ...]");
    }
  }
  return 0;
}

void initFlagsZero(struct Flag *flags) {
  (*flags).flag_b = 0;
  (*flags).flag_e = 0;
  (*flags).flag_n = 0;
  (*flags).flag_s = 0;
  (*flags).flag_t = 0;
  (*flags).flag_v = 0;
  (*flags).flag_E = 0;
  (*flags).flag_T = 0;
  (*flags).flag_numberFiles = 0;
  (*flags).flag_praser_error = 0;
}

void readPrintConsole() {
  int ch;
  while ((ch = getchar()) != EOF) {
    putchar(ch);
  }
}

void praserFlagsString(int argc, char *argv[], struct Flag *flags) {
  int i;
  int countFiles = 0;
  for (i = 1; i < argc; i++) {
    if (argv[i][0] == '-' && argv[i][1] != '-') {
      size_t x;
      for (x = 1; x < strlen(argv[i]); x++) {
        if (argv[i][x] == 'b') {
          flags->flag_b = 1;
        } else if (argv[i][x] == 'e') {
          flags->flag_e = 1;
          flags->flag_v = 1;
        } else if (argv[i][x] == 'n') {
          flags->flag_n = 1;
        } else if (argv[i][x] == 's') {
          flags->flag_s = 1;
        } else if (argv[i][x] == 't') {
          flags->flag_t = 1;
          flags->flag_v = 1;
        } else if (argv[i][x] == 'v') {
          flags->flag_v = 1;
        } else if (argv[i][x] == 'E') {
          flags->flag_E = 1;
        } else if (argv[i][x] == 'T') {
          flags->flag_T = 1;
        } else {
          flags->flag_praser_error = 1;
        }
      }
    } else if (argv[i][0] == '-' && argv[i][1] == '-') {
      if (!strcmp(argv[i], "--number-nonblank"))
        flags->flag_b = 1;
      else if (!strcmp(argv[i], "--number"))
        flags->flag_n = 1;
      else if (!strcmp(argv[i], "--squeeze-blank"))
        flags->flag_s = 1;
      else if (!strcmp(argv[i], "--show-ends"))
        flags->flag_E = 1;
      else if (!strcmp(argv[i], "--show-tabs"))
        flags->flag_T = 1;
      else
        flags->flag_praser_error = 1;
    } else {
      countFiles += 1;
      flags->flag_numberFiles = countFiles;
    }
  }
}

void readPrintFilesF(int argc, char *argv[], struct Flag *flags) {
#ifdef __linux__
  int lineNumber = 1;  // Linux
#endif
  for (int i = 1; i < argc; i++) {
    if (argv[i][0] != '-') {
      FILE *fp = fopen(argv[i], "rt");
      if (fp != NULL) {
        int ch;
#ifdef __APPLE__
        int lineNumber = 1;  // Mac
#endif
        int newLine = 1;
        int countEmpLines = 0;
        int fe = 1;
        while ((ch = fgetc(fp)) != EOF) {
          if (ch != '\n') fe = 0;

          if (flags->flag_s == 1) {
            if (ch == '\n') {
              countEmpLines += 1;
            } else {
              countEmpLines = 0;
            }
          }

          if (fe == 1 && countEmpLines == 2) {
            countEmpLines = 1;
            continue;
          } else if (fe == 0 && countEmpLines == 3) {
            countEmpLines = 2;
            continue;
          }

          if (flags->flag_b == 1 && newLine == 1) {
            if (ch != '\n') {
              printf("%6d\t", lineNumber);
              lineNumber++;
            }
          }

          if ((flags->flag_n == 1 && flags->flag_b == 0) && newLine == 1) {
            printf("%6d\t", lineNumber);
            lineNumber++;
          }

          if ((flags->flag_e == 1 || flags->flag_E == 1) && ch == '\n') {
            printf("$");
          }

          if ((ch >= 0 && ch != 9 && ch != 10 && ch < 32) &&
              flags->flag_v == 1) {
            putchar('^');
            ch += 64;
            putchar(ch);
          } else if (ch == 127 && flags->flag_v == 1) {
            printf("^");
            ch -= 64;
            putchar(ch);
          } else if (ch > 127 && ch < 160 && flags->flag_v == 1) {
            ch -= 64;
            printf("M-^");
            putchar(ch);
#ifdef __APPLE__
            if (ch == 'J' && (flags->flag_b == 1 || flags->flag_n == 1)) {
              printf("%6d\t", lineNumber);
              lineNumber += 1;
            }
#endif
#ifdef __linux__
          } else if (ch > 159 && ch < 255 && flags->flag_v == 1) {
            printf("M-");
            ch -= 128;
            putchar(ch);
          } else if (ch == 255 && flags->flag_v == 1) {
            printf("M-^");
            ch -= 192;
            putchar(ch);
#endif
          } else if (flags->flag_t == 1 && flags->flag_v == 1 && ch == '\t') {
            printf("^I");
          } else if (flags->flag_T == 1 && ch == '\t') {
            printf("^I");
          } else {
            putchar(ch);
          }

          // flag of new line
          newLine = 0;
          if (ch == '\n') {
            newLine = 1;
          }
        }
        fclose(fp);
      } else {
        fprintf(stderr, "No such file or directory");
      }
    }
  }
}
