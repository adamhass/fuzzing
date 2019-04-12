# Fuzzing

This repo is for a project of Fuzzing the Ubuntu core-utils.
The purpose is to experiment with fuzzing, afl, and kubernetes.

The fuzzing is performed using afl-fuzz, with limited simple inputs and [dictionaries](https://lcamtuf.blogspot.com/2015/01/afl-fuzz-making-up-grammar-with.html) used instead of grammars or other more complex variants.

The input folder contains the files used for inputs, the dictionaries folder contains the dictionaries used for fuzzing.
