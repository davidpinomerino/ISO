#!/bin/bash
#
#
#

i=1

while [ $i != 100 ]; do
	par=$(($i % 2))
	if [ $par == 0 ]; then
		echo $i
	fi
	i=$(($i + 1))
done
