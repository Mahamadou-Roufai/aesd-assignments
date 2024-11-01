#!/bin/bash

set -e
set -u

filesdir="."
searchstr="linux"

if [ $# -lt 2 ] 
then 
	echo "Le nombre d'argument est insuffisant"
	exit 1
fi

filesdir=$1
searchstr=$2

if [ -d $filesdir ] 
then
	:
else
	echo "Le repertoire $filesdir n'existe pas"
	exit 1
fi
	
X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"



