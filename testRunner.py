# This is intended to be a test-runner which can execute all our tests to generate coverage report

import os

command = sys.argv[1]
f = open("/root/fuzzing/submission/"+command+".txt", "r")
for x in f:
  os.system("/root/coreutils/src/"+command+" "+x)