# This script creates the final submission files from gathered queues
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
	# Clear out the temporary
	rm ./output/${dname}/*.temp.txt
	done
