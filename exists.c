#include <stdio.h>
#include <string.h>
#include <unistd.h>

#define BUFFER_SIZE 1024

int main(int argc, char *argv[]) {

  // handle args
  int invert = 0;
  int c;
  while ((c = getopt(argc, argv, "vh")) != -1) {
    switch (c) {
    case 'v':
      invert = 1;
      break;
    case 'h':
      printf("Usage:\texists [-v] [-h]\n"
             "Read filenames from STDIN, prints files that exist to STDOUT\n\n"
             "  -h\t\tshow list of command-line options\n"
             "  -v\t\tinverts output, prints filenames that don't exist\n");
      return 1;
    case '?':
      break;
    }
  }

  // loop through STDIN and print if exists
  char line_buffer[BUFFER_SIZE];
  size_t len;
  while (fgets(line_buffer, BUFFER_SIZE, stdin) != NULL) {
    len = strlen(line_buffer);
    line_buffer[--len] = '\0';
    // if file exists
    if (access(line_buffer, F_OK) != -1) {
      // exists, dont invert
      if (!invert)
        printf("%s\n", line_buffer);
    } else {
      // doesnt exist, invert
      if (invert)
        printf("%s\n", line_buffer);
    }
  }
  return 0;
}
