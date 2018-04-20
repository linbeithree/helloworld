#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stddef.h>

#define USAGE   \
    "\n  ./demo     rand    5" \
    "\n  ./demo     conter  5" \
    "\n"


extern int randdemo(int argc, char** argv);
extern int conterdemo(int argc, char** argv);

int main(int argc, char** argv)
{
    if(argc < 2) {
        printf(USAGE);
        return 0;
    }

    if((strcmp(argv[1], "help") == 0) || (strcmp(argv[1], "?") == 0)) {
        printf(USAGE);
        return 0;
    }

    if(strcmp(argv[1], "rand") == 0) {
        randdemo(argc, argv);
        return 0;
    }

    if(strcmp(argv[1], "conter") == 0) {
        conterdemo(argc, argv);
        return 0;
    }

    printf("\nwarning: wrong command,please execute \"./demo help\"\n");
    return 0;
}

