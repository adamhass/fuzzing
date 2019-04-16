/*
	### testcases_to_text.c

	Reads from stdin and creates an arg v array the same way afl does.
	Then outputs the final array as single space delimitted row of strings.

*/

#include<stdio.h>
#include "/Users/adam/Documents/CINTE/5/devops/fuzzing/afl-2.52b/experimental/argv_fuzzing/argv-fuzz-inl.h"

int
main (int argc, char **argv)
{
    AFL_INIT_ARGV();

    for(int i=1;i<argc;i++)
    {
        printf("%s",argv[i]);
        printf(" ");
    }
    printf("\n");
    fflush(stdout);
    return 0;
}