# Fuzzing Competition Submission

Anders Sjöbom [asjobom@kth.se](mailto:asjobom@kth.se)   
Adam Hasselberg [adamhas@kth.se](mailto:adamhas.kth.se)

## Fuzzing Method Used
In our project we have opted to use AFL and it's out of the box functions as much as possible. AFL Fuzzes it's inputs in a number of different ways, primarily by flipping bits in the test-cases to create mutations. Continuously monitoring for new coverage being achieved to store new useful testcases. AFL also supports fuzzing with dictionaries, which the author describes as "making up a grammar with a dictionary on hand" [[grammar fuzzing source]](https://lcamtuf.blogspot.com/2015/01/afl-fuzz-making-up-grammar-with.html) 

Dictionaries allows AFL to fuzz with specific pre-defined strings and string replacements rather than just bitshifts. Since reaching different code largely depends on the fuzzing to find different combinations of parameters expressed as strings this should give us better results than not using grammars or dictionaries at all.


Fuzzing with AFL and dictionaries thus allows us to feed two types of input for a fuzzing job: (1) inputs which AFL will mutate, and (2) a dictionary with words which the fuzzer will use in its mutations. From our reading of AFL documentation it's best to keep only one input if two are "functionally the same", making the analogy to only keep one small jpeg photo rather than multiple vacation photos. Our interpretation of this is that to fuzz a command line utils argv string, the string "-n 1" is functionally the same as a much longer string like "-n 1 -d 'test' -r ", they're both just strings of flags. We therefor keep the input limited to one small sample string per util, and create a dictionary per util which we insert all parameters we can find in the utils man pages as different words.


## What we did
The process of fuzzing the 20 coreutils was achieved in a number of small incremental steps with the goal of having all 20 utils fuzzed in the cloud on separate kubernetes pods in parallell over several days. The steps to achieve this were: Decide on a fuzzing tool, fuzz a single util on a pod and see progress, fuzz all utils on separate pods, collect outputs and measure coverage we achieved, evaluate and improve fuzzing if necassery.

Fuzzing a single util took a lot of reading, compiling, packaging, deploying and testing. For AFL to be able to fuzz, the binary files need to be instrumented, or compiled with specific debugging information. AFL provides a compiler for this purpose which we used. But, AFL does not support fuzzing program arguments out of the box. AFL feeds its inputs as std-input to programs, so to fuzz the arguments we need to modify the C-files such that they will read their arguments from std-in. AFL provides instructions in [argv-fuzz-inl.h](https://github.com/mirrorer/afl/blob/2fb5a3482ec27b593c57258baae7089ebdc89043/experimental/argv_fuzzing/argv-fuzz-inl.h) .

After properly compiling the modified binary we were able to see progress, and were able to modify the other utils the same way. After that we could start deploying the pods on a Google Cloud kubernetes cluster. We decided to kill pods that didn't make progress for several hours.

Finally, in order to secure the minimum 50\% coverage requirement we manually inspected our coverage and added manual inputs at the top of the submission files until the minimum coverage was achieved.

## Discussion
From our initial reading about the different tools available we got the impression that the most used "standard" tool for fuzzing was American Fuzzy Lop, AFL. There were plenty of resources online for the tool, and it looked like something which would be useful to get familiar with. If we had more time we would've likely switched over to a different tool, as our experience with trying to fuzz the coreutils for this competition was not great. There are likely better solutions that could be stitched together where more emphasis could be put on analyzing line-coverage reports and human-readable test-cases more easily. 

In hindsight, we could have probably have achieved higher coverage with less effort if we had done the manual inspections and manual creation of test cases from the start. However this wouldn't have been a fuzzing approach. The rules of the competition (specifically of achieving maximum line coverage of the specific .c files, rather than path coverage or finding crashes) means that manually creating test cases is fairly easy once you have a decent workflow. 