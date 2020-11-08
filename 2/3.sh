#!/bin/bash

n=1
exitcode=0

rm test.txt 2> /dev/null || touch test.txt

while [ $exitcode -le 0 ]; do
	n=$(( n+1 ))
	./fails.sh >> test.txt 2>> test.txt
	exitcode=$(( $? ))
	if [[ $? -eq 1 ]]; then
		return
	fi
done

echo "program is running for $n times"
