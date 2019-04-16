# This script creates the final submission files from gathered queues
#!/bin/bash

for dname in output/*/; do
	dname=${dname#"output/"}
	dname=${dname%"/"}
	echo $dname 
	# Create txt files
	for filename in ./output/${dname}/*; do
		[ -e "$filename" ] || continue
		cat $filename > ./tools/bin_to_string > $filename.temp.txt
	    done
	# Create the submission file
	cat ./output/${dname}/*.temp.txt > ./submission/${dname}.txt
	# Clear out the temporary
	rm ./output/${dname}/*.temp.txt
	done

# cat ./output/cat/* > ./submission/cat.txt
# cat ./output/date/* > ./submission/date.txt
# cat ./output/df/* > ./submission/df.txt
# cat ./output/echo/* > ./submission/echo.txt
# cat ./output/ln/* > ./submission/ln.txt
# cat ./output/mkdir/* > ./submission/mkdir.txt
# cat ./output/mv/* > ./submission/mv.txt
# cat ./output/pwd/* > ./submission/pwd.txt
# cat ./output/touch/* > ./submission/touch.txt
# cat ./output/uname/* > ./submission/uname.txt
# cat ./output/cp/* > ./submission/cp.txt
# cat ./output/dd/* > ./submission/dd.txt
# cat ./output/dir/* > ./submission/dir.txt
# cat ./output/false/* > ./submission/false.txt
# cat ./output/ls/* > ./submission/ls.txt
# cat ./output/mktemp/* > ./submission/mktemp.txt
# cat ./output/printf/* > ./submission/printf.txt
# cat ./output/sleep/* > ./submission/sleep.txt
# cat ./output/true/* > ./submission/true.txt
# cat ./output/vdir/* > ./submission/vdir.txt