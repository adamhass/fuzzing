# Fuzzing

This repo is for a project of Fuzzing the Ubuntu core-utils as part of a fuzzing competition.
By using AFL-fuzzing as described in the full [Submission report](submission/README.md) we were able to achieve ~75% line-coverage.

This repo contains the extra tools, our used dictionaries and seeds.

The fuzzing is performed using afl-fuzz, with limited simple inputs and [dictionaries](https://lcamtuf.blogspot.com/2015/01/afl-fuzz-making-up-grammar-with.html) used instead of grammars or other more complex variants.

The [input folder](input) contains the files used for inputs, the [dictionaries folder](dictionaries) contains the dictionaries used for fuzzing.
The submission folder is the folder submitted for the competition, and a much longer readme.

# Scripts
The [src](src) folder contains the bin_to_string.c program, which is called by [createSubmission.sh](createSubmission.sh) to convert the binary outputs of AFL to a space separated string of arguments.  

[createGcovTests.sh](createGcovTests.sh) creates runnable .sh scripts from the submission files, which can be uploaded to a container and ran with [tests/runTests.sh](tests/runTests.sh).

[kickstart.sh](kickstart.sh) and [collectQueues.sh](collectQueues.sh) were used for starting the fuzzing on nodes which were already started with a prepared image.
