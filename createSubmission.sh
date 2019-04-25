# This script creates the final submission files from gathered queues
# Assumes that the output directory has multiple folders.
# 
# Directory structure:
# 	createSubmission.sh
# 	output/ 
# 		program1/
#			AFL_output1
#			AFL_output2
#			...
#		program2/ 
#		...
#	submission/		<- Needs to be created before running the script
#		program1.txt	<- Created by the script
#		program2.txt
#		...

#!/bin/bash

for dname in output/*/; do
	dname=${dname#"output/"}
	dname=${dname%"/"}
	echo $dname 
	# Create txt files
	for filename in ./output/${dname}/*; do
		[ -e "$filename" ] || continue
		cat $filename | ./tools/bin_to_string >> $filename.temp.txt
	    done
	# Create the submission file
	cat ./output/${dname}/*.temp.txt >> ./submission/${dname}.txt
	# Clear out the temporary txt files
	rm ./output/${dname}/*.temp.txt
	done
