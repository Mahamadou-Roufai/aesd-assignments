#!/bin/bash


writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]; then 
	echo "There is an error upon an argument"
	exit 1
fi

if [ -d "$( dirname "$writefile")" ]; then 
	:
else
	mkdir -p "$( dirname "$writefile")"
fi

if echo "$writestr" | cat > "$writefile"; then 
	echo "File created successful "
else
	echo "Error while creating file"
	exit 1
fi
