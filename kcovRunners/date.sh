#!/bin/bash
filename='./submission/date.txt'
n=1
while read line; do
	# reading each line
	kcov --collect-only /root/coverage/ /root/coreutils/src/date $line
	done < $filename