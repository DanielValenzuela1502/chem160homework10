#!/bin/bash
if [ ! -f $1 ] ; then
	echo "No file found"
	exit 1
fi
intregex='^[0-9]+$'
if ! [[ $2 =~ $intregex ]] ; then
	echo "Second argument must be an integer"
	exit 1
fi
if [ $3 -gt 1000 ] ; then
        echo "File too short for specified lines"
	exit 1
fi
if [ $2 -gt 1000 ] ; then
	echo "File too short for specified lines"
	exit 1
fi
echo "Head:"
head -n $2 $1
echo "Tail:"
tail -n $3 $1
